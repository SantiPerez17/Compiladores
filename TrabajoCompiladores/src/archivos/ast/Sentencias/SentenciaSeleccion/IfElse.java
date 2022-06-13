package archivos.ast.Sentencias.SentenciaSeleccion;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Sentencias.Sentencia;

import java.util.List;

public class IfElse extends Sentencia {
    private Expresion condicion;
    private List<Sentencia> sentencias1;
    private List<Sentencia> sentencias2;

    public Expresion getCondicion() {
        return condicion;
    }

    public void setCondicion(Expresion condicion) {
        this.condicion = condicion;
    }

    public List<Sentencia> getSentencias1() {
        return sentencias1;
    }

    public void setSentencias1(List<Sentencia> sentencias1) {
        this.sentencias1 = sentencias1;
    }

    public List<Sentencia> getSentencias2() {
        return sentencias2;
    }

    public void setSentencias2(List<Sentencia> sentencias2) {
        this.sentencias2 = sentencias2;
    }

    public IfElse(){}

    public IfElse(Expresion condicion, List<Sentencia> sentencias1, List<Sentencia> sentencias2) {
        this.condicion = condicion;
        this.sentencias1 = sentencias1;
        this.sentencias2 = sentencias2;
    }

    public IfElse(String nombre, Expresion condicion, List<Sentencia> sentencias1, List<Sentencia> sentencias2) {
        super(nombre);
        this.condicion = condicion;
        this.sentencias1 = sentencias1;
        this.sentencias2 = sentencias2;
    }

    @Override
    public String getEtiqueta() {
        return String.format("Sentencia%n - [ If Else ] -");
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder resultado = new StringBuilder();
        resultado.append(super.graficar(idPadre));
        resultado.append(this.condicion.graficar(this.getId()));
        resultado.append(String.format("%1$s[label=\"%2$s\"]\n", this.getId()+1, "THEN"));
        resultado.append(String.format("%1$s--%2$s\n", this.getId(), this.getId()+1));
        for (Sentencia s:sentencias1){
            resultado.append(s.graficar(this.getId()+1));
        }
        resultado.append(String.format("%1$s[label=\"%2$s\"]\n", this.getId()+2, "ELSE"));
        resultado.append(String.format("%1$s--%2$s\n", this.getId(), this.getId()+2));
        for (Sentencia s:sentencias2){
            resultado.append(s.graficar(this.getId()+2));
        }

        return resultado.toString();
    }

    @Override
    public String generarCodigo(String etiqueta) {
        StringBuilder resultado = new StringBuilder();
        StringBuilder resultado_sentencias1 = new StringBuilder();
        StringBuilder resultado_sentencias2 = new StringBuilder();
        String etiqueta_cola = etiqueta;
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        this.setEtiquetaLLVM(etiqueta.replaceAll("Cola","").replaceAll(":\n",""));
        resultado.append("\n"+etiqueta_cola.replaceAll("Cola",""));
        resultado.append(";___IfElse___\n");
        resultado.append(this.condicion.generarCodigo(etiqueta_cola.replaceAll("Cola","")));
        this.sentencias1.get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaSentencias1 = "%"+sentencias1.get(0).getIr_ref();
        this.sentencias2.get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaSentencias2 = "%"+sentencias2.get(0).getIr_ref();
        this.setIr_ref(CodeGeneratorHelper.getNewTag());

        int aux = 0;
        for (Sentencia s: sentencias1){
            if (aux>0){
                this.sentencias1.get(aux).setIr_ref(CodeGeneratorHelper.getNewTag());
            }
            if(etiqueta.contains("Cola")){
                resultado_sentencias1.append(s.generarCodigo(this.sentencias1.get(aux).getIr_ref()+"Cola:\n"));
                if(aux == 2){
                    try{
                        int start2 = resultado_sentencias1.indexOf(String.format("br label %1$s\n", "%etiq"+(CodeGeneratorHelper.getNextTag()+1)));
                        int end2 = String.format("br label %1$s\n", "%etiq"+(CodeGeneratorHelper.getNextTag()+1)).length()+start2;
                        resultado_sentencias1.replace(start2,end2,String.format("br label %1$s\n", "%etiqZZ"));
                    } catch (Exception e){
                    }
                }
            } else {
                if(s.getNombre() == "IfElse"){
                    resultado_sentencias1.append(s.generarCodigo(this.sentencias1.get(aux).getIr_ref()+":\n"));
                    String proxima_etiqueta = "%etiq"+(CodeGeneratorHelper.getNextTag()+1);
                    boolean aux2 = true;
                    while(aux2){
                        try{
                            int start = resultado_sentencias1.indexOf(" label %etiqXX");
                            resultado_sentencias1.replace(start,start+14," label "+proxima_etiqueta);
                        }catch(Exception e){
                            aux2=false;
                        }
                    }
                } else {
                    resultado_sentencias1.append(s.generarCodigo(this.sentencias1.get(aux).getIr_ref()+":\n"));
                }
            }
            aux+=1;
        }

        if(!etiqueta.contains("Cola")){
            try{
                String siguiente4 = "%etiqXX";
                int start2 = resultado_sentencias1.indexOf(String.format("br label %1$s\n", "%etiq"+(CodeGeneratorHelper.getNextTag()+1)));
                int end2 = (String.format("br label %1$s\n", ("%etiq"+(CodeGeneratorHelper.getNextTag()+1)))).length()+start2;
                resultado_sentencias1.replace(start2,end2,String.format("br label %1$s\n", siguiente4));
                //resultado_sentencias1.append(String.format("br label %1$s\n", siguiente4));
            } catch (Exception e){
                try{
                    String siguiente4 = "%etiqXX";
                    int start2 = resultado_sentencias1.indexOf(String.format(", label %1$s\n", "%etiq"+(CodeGeneratorHelper.getNextTag()+1)));
                    int end2 = (String.format(", label %1$s\n", ("%etiq"+(CodeGeneratorHelper.getNextTag()+1)))).length()+start2;
                    resultado_sentencias1.replace(start2,end2,String.format(", label %1$s\n", siguiente4));
                } catch (Exception e1){
                }
            }
        }

        int aux2 = 0;
        for (Sentencia s: sentencias2){
            if (aux2>0){
                this.sentencias2.get(aux2).setIr_ref(CodeGeneratorHelper.getNewTag());
            }
            if(etiqueta.contains("Cola")){
                resultado_sentencias2.append(s.generarCodigo(this.sentencias2.get(aux2).getIr_ref()+"Cola:\n"));
                try{
                    int start = resultado_sentencias1.indexOf("br label %etiqZZ");
                    resultado_sentencias1.replace(start,start+16,"br label %etiq"+(CodeGeneratorHelper.getNextTag()+1));
                }catch (Exception e){
                }
            } else {
                if(s.getNombre() == "IfElse"){
                    resultado_sentencias2.append(s.generarCodigo(this.sentencias2.get(aux2).getIr_ref()+":\n"));
                    String proxima_etiqueta = "%etiq"+(CodeGeneratorHelper.getNextTag()+1);
                    boolean aux3 = true;
                    while(aux3){
                        try{
                            int start = resultado_sentencias2.indexOf(" label %etiqXX");
                            resultado_sentencias2.replace(start,start+14," label "+proxima_etiqueta);
                        }catch(Exception e){
                            aux3=false;
                        }
                    }
                } else {
                    resultado_sentencias2.append(s.generarCodigo(this.sentencias2.get(aux2).getIr_ref()+":\n"));
                }
            }
            aux2+=1;
        }

        resultado.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", this.condicion.getIr_ref(), etiquetaSentencias1, etiquetaSentencias2));
        resultado.append(resultado_sentencias1);
        resultado.append(resultado_sentencias2);

        try{
            String cadena = ":\n;___IfElse___\n\n";
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
