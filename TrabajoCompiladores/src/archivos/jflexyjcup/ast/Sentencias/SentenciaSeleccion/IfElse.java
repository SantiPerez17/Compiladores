package archivos.jflexyjcup.ast.Sentencias.SentenciaSeleccion;

import archivos.jflexyjcup.ast.Sentencias.Sentencia;
import archivos.jflexyjcup.ast.Base.Expresion;

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

}
