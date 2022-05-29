package archivos.ast.Sentencias.SentenciaInteraciones;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Sentencias.Sentencia;

import java.util.List;

public class While extends Sentencia {
    private Expresion condicion;
    private List<Sentencia> Sentencias; // Lista con sentencias.

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
    public String generarCodigo() {
        //Falta resolver lo de la etiqueta del while...
        StringBuilder resultado = new StringBuilder();
        resultado.append(";While_"+ this.getId() +":\n");
        this.setIr_ref(CodeGeneratorHelper.getNewTag());
        resultado.append(this.condicion.generarCodigo());
        this.Sentencias.get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaSentencias = "%"+Sentencias.get(0).getIr_ref();
        this.setIr_ref(CodeGeneratorHelper.getNewTag());
        resultado.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", this.condicion.getIr_ref(), etiquetaSentencias, "%"+this.getIr_ref()));
        resultado.append(Sentencias.get(0).getIr_ref()+":\n");
        for (Sentencia s: Sentencias){
            resultado.append(s.generarCodigo());
        }
        resultado.delete(resultado.indexOf(this.Sentencias.get(Sentencias.size()-1).getIr_ref()+":\n"),resultado.indexOf(this.Sentencias.get(Sentencias.size()-1).getIr_ref()+":\n")+(this.Sentencias.get(Sentencias.size()-1).getIr_ref()+":\n").length());
        resultado.append(String.format("br label %1$s\n", "etiq6"));
        resultado.append(this.getIr_ref()+":\n");
        return resultado.toString();
    }
}
