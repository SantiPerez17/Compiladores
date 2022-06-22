package archivos.ast.Sentencias.SentenciaInteraciones;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Programa;
import archivos.ast.Sentencias.Sentencia;

import java.util.List;

public class While extends Sentencia {
    private Expresion condicion;
    private List<Sentencia> Sentencias; // Lista con sentencias.
    private String etiqueta_while_interno;

    public String getEtiqueta_while_interno(){
        return etiqueta_while_interno;
    }

    public void setEtiqueta_while_interno(String etiqueta_while_interno) {
        this.etiqueta_while_interno = etiqueta_while_interno;
    }

    public Expresion getCondicion() {
        return condicion;
    }

    public void setCondicion(Expresion condicion) {
        this.condicion = condicion;
    }

    public List<Sentencia> getSentencias() {
        return Sentencias;
    }

    public void setSentencias(List<Sentencia> sentencias) {
        Sentencias = sentencias;
    }

    public While(Expresion condicion, List<Sentencia> sentencias) {
        this.condicion = condicion;
        Sentencias = sentencias;
    }

    @Override
    public String getEtiqueta() {
        return String.format("Sentencia%n - [ While ] -");
    }

    public While(String nombre, Expresion condicion, List<Sentencia> sentencias) {
        super(nombre);
        this.condicion = condicion;
        Sentencias = sentencias;
    }

    @Override
    public String graficar(String idPadre) {
        //Se crea un StringBuilder
        StringBuilder resultado = new StringBuilder();
        //Se agrega en el StringBuilder el String del metodo graficar con el id del padre
        resultado.append(super.graficar(idPadre));
        //se grafica la condicion
        resultado.append(this.condicion.graficar(this.getId()));
        //se crea un nodo llamado DO y se conecta con el nodo de esta clase.
        resultado.append(String.format("%1$s[label=\"%2$s\"]\n", this.getId()+1, "DO"));
        resultado.append(String.format("%1$s--%2$s\n", this.getId(), this.getId()+1));
        //se grafican las sentencias las cuales estan conectadas al nodo DO.
        for (Sentencia s:Sentencias){
            resultado.append(s.graficar(this.getId()+1));
        }

        this.setEtiquetaLLVM("etiq"+ CodeGeneratorHelper.getNewTag());
        Programa.etiquetasGeneradas += "Etiqueta: " + this.getEtiquetaLLVM() + " - Nombre: " + this.getNombre() + " - HashId: " + this.getId() + "\n";

        return resultado.toString();
    }

    @Override
    public String generarCodigo(String etiqueta) {
        StringBuilder resultado = new StringBuilder();
        StringBuilder resultado_sentencias = new StringBuilder();
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        this.setEtiquetaLLVM(etiqueta.replaceAll("Cola","").replaceAll(":\n",""));
        this.setEtiqueta_while_interno(etiqueta.replace(":\n",""));
        resultado.append("\n"+etiqueta);
        resultado.append(";___While___\n");

        //Genero el codigo para la condicion
        resultado.append(this.condicion.generarCodigo(etiqueta));
        this.Sentencias.get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaSentencias = "%"+Sentencias.get(0).getIr_ref();
        this.setIr_ref(CodeGeneratorHelper.getNewTag());

        //Recorro las sentencias y genero codigo para cada una de ellas
        int aux = 0;
        for (Sentencia s: Sentencias){
            if (aux>0){
                this.Sentencias.get(aux).setIr_ref(CodeGeneratorHelper.getNewTag());
            }
            try{
                //Si la ultima sentencia es un while, guardo la etiqueta para poder usarla
                if(Sentencias.get(Sentencias.size()-1).getNombre().equals("While")){
                    this.setEtiqueta_while_interno("%etiq"+(CodeGeneratorHelper.getNextTag()+1));
                }
            } catch (Exception e){
            }

            //Si es un IfElse, genero el codigo y reemplazo las etiquetas XX por la etiqueta correspondiente
            if(s.getNombre() == "IfElse"){
                resultado_sentencias.append(s.generarCodigo(this.Sentencias.get(aux).getIr_ref()+":\n"));
                String proxima_etiqueta = "%etiq"+(CodeGeneratorHelper.getNextTag()+1);
                boolean aux2 = true;
                while(aux2){
                    try{
                        int start = resultado_sentencias.indexOf(" label %etiqXX");
                        resultado_sentencias.replace(start,start+14," label "+proxima_etiqueta);
                    }catch(Exception e){
                        aux2=false;
                    }
                }
            } else {
                //Sino, simplemente genero el codigo para la sentencia
                resultado_sentencias.append(s.generarCodigo(this.Sentencias.get(aux).getIr_ref()+":\n"));
            }
            aux+=1;
        }

        //Aqui hacemos algunos cambios de etiquetas
        try{

            //Si la ultima sentencia es un While, debo cambiar la etiqueta de la ultima sentencia para que vuelva al while original
            if(Sentencias.get(aux-1).getNombre().equals("While")) {
                While w = (While) Sentencias.get(aux - 1);
                String etiqueta_correccion = String.format("br i1 %1$s, label %2$s, label %3$s", w.condicion.getIr_ref(), "%"+w.Sentencias.get(0).getEtiquetaLLVM(), "%etiq" + (CodeGeneratorHelper.getNextTag() + 1));
                int start = resultado_sentencias.indexOf(etiqueta_correccion);
                int end = etiqueta_correccion.length() + start;
                String nueva_etiqueta = String.format("br i1 %1$s, label %2$s, label %3$s", w.condicion.getIr_ref(), "%"+w.Sentencias.get(0).getEtiquetaLLVM(), "%" + etiqueta.replace(":\n", ""));
                resultado_sentencias.replace(start, end, nueva_etiqueta);
                String siguiente = "%etiq" + (CodeGeneratorHelper.getNextTag() + 1);
                resultado.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", this.condicion.getIr_ref(), etiquetaSentencias, siguiente));
                resultado.append(resultado_sentencias);

                //Si la ultima sentencia es un ifelse, tambien debo cambiar las ultimas etiquetas de sus sentencias para que vuelvan al while original.
            } else if (Sentencias.get(aux-1).getNombre().equals("IfElse")) {
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                boolean aux2 = true;
                while (aux2) {
                    try {
                        int start2 = resultado_sentencias.indexOf(String.format(" label %1$s\n", "%" + this.getIr_ref()));
                        int end2 = (String.format(" label %1$s\n", "%" + this.getIr_ref())).length() + start2;
                        resultado_sentencias.replace(start2, end2, String.format(" label %1$s\n", "%" + etiqueta_while_interno));
                    } catch (Exception e) {
                        aux2 = false;
                    }
                }
                String siguiente = "%etiq" + (CodeGeneratorHelper.getNextTag() + 1);
                resultado.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", this.condicion.getIr_ref(), etiquetaSentencias, siguiente));
                resultado.append(resultado_sentencias);

                //Si la ultima sentencia es un if simple, tambien debo cambiar la ultima etiqueta de su ultima sentencia por la del while.
            } else if (Sentencias.get(aux-1).getNombre().equals("IfSimple")){
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                boolean aux2 = true;
                while (aux2) {
                    try {
                        int start2 = resultado_sentencias.indexOf(String.format(" label %1$s\n", "%" + this.getIr_ref()));
                        int end2 = (String.format(" label %1$s\n", "%" + this.getIr_ref())).length() + start2;
                        resultado_sentencias.replace(start2, end2, String.format(" label %1$s\n", "%" + etiqueta_while_interno));
                    } catch (Exception e) {
                        aux2 = false;
                    }
                }
                String siguiente = "%etiq" + (CodeGeneratorHelper.getNextTag() + 1);
                resultado.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", this.condicion.getIr_ref(), etiquetaSentencias, siguiente));
                resultado.append(resultado_sentencias);
            } else {

                //Si no es ni un while ni un ifelse ni un ifsimple, deberia llegar aqui y hacer el cambio de etiquetas correspondiente para que apunten al while
                String siguiente4 = "%etiqXX";
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                int start2 = resultado_sentencias.indexOf(String.format("br label %1$s\n", "%"+this.getIr_ref()));
                int end2 = (String.format("br label %1$s\n", "%"+this.getIr_ref())).length()+start2;
                resultado_sentencias.delete(start2,end2);
                resultado_sentencias.append(String.format("br label %1$s\n", siguiente4));
                int start3 = resultado_sentencias.indexOf(String.format("br label %1$s\n", "%etiqXX"));
                int end3 = (String.format("br label %1$s\n", "%etiqXX")).length()+start3;
                resultado_sentencias.delete(start3,end3);
                String siguiente = "%etiq" + (CodeGeneratorHelper.getNextTag() + 1);
                resultado.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", this.condicion.getIr_ref(), etiquetaSentencias, siguiente));
                resultado.append(resultado_sentencias);
                resultado.append(String.format("br label %1$s\n", "%"+etiqueta.replace(":\n","")));
            }
        } catch (Exception e){

            //Si la sentencia no llega a tener nombre, deberia llegar aqui y hacer igualmente el cambio de etiquetas correspondiente
            String siguiente4 = "%etiqXX";
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            int start2 = resultado_sentencias.indexOf(String.format("br label %1$s\n", "%"+this.getIr_ref()));
            int end2 = (String.format("br label %1$s\n", "%"+this.getIr_ref())).length()+start2;
            resultado_sentencias.delete(start2,end2);
            resultado_sentencias.append(String.format("br label %1$s\n", siguiente4));
            int start3 = resultado_sentencias.indexOf(String.format("br label %1$s\n", "%etiqXX"));
            int end3 = (String.format("br label %1$s\n", "%etiqXX")).length()+start3;
            resultado_sentencias.delete(start3,end3);
            String siguiente = "%etiq" + (CodeGeneratorHelper.getNextTag() + 1);
            resultado.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", this.condicion.getIr_ref(), etiquetaSentencias, siguiente));
            resultado.append(resultado_sentencias);
            resultado.append(String.format("br label %1$s\n", "%"+etiqueta.replace(":\n","")));
        }

        //Este tramo de codigo simplemente hace una limpieza de etiquetas basuras ocacionadas por la cola.
        try{
            String cadena = ":\n;___While___\n\n";
            int start = resultado.indexOf(cadena);
            int end = start+ (cadena).length();
            Character c = resultado.charAt(start);
            while(!c.equals('\n')){
                start-=1;
                c = resultado.charAt(start);
            }
            resultado.delete(start+1,end);
        }catch (Exception e){

        }
        return resultado.toString();
    }
}
