package archivos.jflexyjcup.ast.Sentencias.SentenciaInteraciones;

import archivos.jflexyjcup.ast.Sentencias.Sentencia;
import archivos.jflexyjcup.ast.Base.Expresion;

import java.util.List;

public class While extends Sentencia {
    private Expresion condicion;
    private List<Sentencia> Sentencias;

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

    public While(String nombre, Expresion condicion, List<Sentencia> sentencias) {
        super(nombre);
        this.condicion = condicion;
        Sentencias = sentencias;
    }
}
