package archivos.ast.Sentencias.SentenciaInteraciones;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
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
        StringBuilder resultado = new StringBuilder();
        resultado.append(super.graficar(idPadre));
        resultado.append(this.condicion.graficar(this.getId()));
        resultado.append(String.format("%1$s[label=\"%2$s\"]\n", this.getId()+1, "DO"));
        resultado.append(String.format("%1$s--%2$s\n", this.getId(), this.getId()+1));
        for (Sentencia s:Sentencias){
            resultado.append(s.graficar(this.getId()+1));
        }
        return resultado.toString();
    }

    @Override
    public String generarCodigo(String etiqueta) {
        StringBuilder resultado = new StringBuilder();
        StringBuilder resultado_sentencias = new StringBuilder();
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        this.setEtiqueta_while_interno(etiqueta.replace(":\n",""));
        resultado.append("\n"+etiqueta);
        resultado.append(";___While___\n");
        resultado.append(this.condicion.generarCodigo(etiqueta));
        this.Sentencias.get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaSentencias = "%"+Sentencias.get(0).getIr_ref();
        this.setIr_ref(CodeGeneratorHelper.getNewTag());

        int aux = 0;
        for (Sentencia s: Sentencias){
            if (aux>0){
                this.Sentencias.get(aux).setIr_ref(CodeGeneratorHelper.getNewTag());
            }
            try{
                if(Sentencias.get(Sentencias.size()-1).getNombre().equals("While")){
                    this.setEtiqueta_while_interno("%etiq"+(CodeGeneratorHelper.getNextTag()+1));
                }
            } catch (Exception e){
            }
            if(s.getNombre() == "IfElse"){
                resultado_sentencias.append(s.generarCodigo(this.Sentencias.get(aux).getIr_ref()+":\n"));
                String proxima_etiqueta = "%etiq"+(CodeGeneratorHelper.getNextTag()+1);
                boolean aux2 = true;
                while(aux2){
                    try{
                        int start = resultado_sentencias.indexOf("br label %etiqXX");
                        resultado_sentencias.replace(start,start+16,"br label "+proxima_etiqueta);
                    }catch(Exception e){
                        aux2=false;
                    }
                }
            } else {
                resultado_sentencias.append(s.generarCodigo(this.Sentencias.get(aux).getIr_ref()+":\n"));
            }
            aux+=1;
        }

        try{
            if(Sentencias.get(aux-1).getNombre().equals("While")) {
                While w = (While) Sentencias.get(aux - 1);
                String etiqueta_correccion = String.format("br i1 %1$s, label %2$s, label %3$s", w.condicion.getIr_ref(), this.getEtiqueta_while_interno(), "%etiq" + (CodeGeneratorHelper.getNextTag() + 1));
                int start = resultado_sentencias.indexOf(etiqueta_correccion);
                int end = etiqueta_correccion.length() + start;
                String nueva_etiqueta = String.format("br i1 %1$s, label %2$s, label %3$s", w.condicion.getIr_ref(), this.getEtiqueta_while_interno(), "%" + etiqueta.replace(":\n", ""));
                resultado_sentencias.replace(start, end, nueva_etiqueta);

                String siguiente = "%etiq" + (CodeGeneratorHelper.getNextTag() + 1);
                resultado.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", this.condicion.getIr_ref(), etiquetaSentencias, siguiente));
                resultado.append(resultado_sentencias);
            } else if (Sentencias.get(aux-1).getNombre().equals("IfElse")){
                //Completar con lo que deberia hacer cuando tengo un ifelse anidado dentro de un while (Tomar las ultimas dos etiquetas del then y del else y cambiarlas por la del while)
                String siguiente4 = "%etiqWW";
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                int start2 = resultado_sentencias.indexOf(String.format("br label %1$s\n", "%"+this.getIr_ref()));
                int end2 = (String.format("br label %1$s\n", "%"+this.getIr_ref())).length()+start2;
                resultado_sentencias.replace(start2,end2,String.format("br label %1$s\n", "%"+etiqueta_while_interno));

                String siguiente = "%etiq" + (CodeGeneratorHelper.getNextTag() + 1);
                resultado.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", this.condicion.getIr_ref(), etiquetaSentencias, siguiente));
                resultado.append(resultado_sentencias);
            } else {
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
