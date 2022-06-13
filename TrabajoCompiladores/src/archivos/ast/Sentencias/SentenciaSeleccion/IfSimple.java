package archivos.ast.Sentencias.SentenciaSeleccion;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Sentencias.Sentencia;

import java.util.List;

public class IfSimple extends Sentencia {
    private Expresion condicion;
    private List<Sentencia> Sentencias; //hacer lista con sentencias

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

    public IfSimple(Expresion condicion, List<Sentencia> sentencias) {
        this.condicion = condicion;
        Sentencias = sentencias;
    }

    public IfSimple(String nombre, Expresion condicion, List<Sentencia> sentencias) {
        super(nombre);
        this.condicion = condicion;
        Sentencias = sentencias;
    }
    @Override
    public String getEtiqueta() {
        return String.format("Sentencia%n - [ If Simple ] -");
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder resultado = new StringBuilder();
        resultado.append(super.graficar(idPadre));
        resultado.append(this.condicion.graficar(this.getId()));
        resultado.append(String.format("%1$s[label=\"%2$s\"]\n", this.getId()+1, "THEN"));
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
        this.setEtiquetaLLVM(etiqueta.replaceAll("Cola","").replaceAll(":\n",""));
        resultado.append("\n"+etiqueta);
        resultado.append(";___IfSimple___\n");

        //Generamos el codigo para la condicion
        resultado.append(this.condicion.generarCodigo(etiqueta));
        this.Sentencias.get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaSentencias = "%"+Sentencias.get(0).getIr_ref();
        this.setIr_ref(CodeGeneratorHelper.getNewTag());

        //Recorremos las sentencias y generamos el codigo para cada una de ellas.
        int aux = 0;
        for (Sentencia s: Sentencias){
            if (aux>0){
                this.Sentencias.get(aux).setIr_ref(CodeGeneratorHelper.getNewTag());
            }

            //Si es un ifElse, genero el codigo normal y hago el reemplazo de las etiquetas XX por las que corresponden.
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

        //Agregamos la condicion, y luego las sentencias del then.
        String siguiente = "%etiq" + (CodeGeneratorHelper.getNextTag() + 1);
        resultado.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", this.condicion.getIr_ref(), etiquetaSentencias, siguiente));
        resultado.append(resultado_sentencias);

        //Este tramo de codigo simplemente hace una limpieza de etiquetas basuras ocacionadas por la cola.
        try{
            String cadena = ":\n;___IfSimple___\n\n";
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
