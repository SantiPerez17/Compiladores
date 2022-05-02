package ast.Sentencias.SentenciaInteraciones;

import ast.Sentencias.Sentencia;
import ast.base.Bloque;
import ast.base.Expresion;

public class While extends Sentencia {
    private Expresion condicion;
    private Bloque Sentencias;

    public Expresion getCondicion() {
        return condicion;
    }

    public void setCondicion(Expresion condicion) {
        this.condicion = condicion;
    }

    public Bloque getSentencias() {
        return Sentencias;
    }

    public void setSentencias(Bloque sentencias) {
        Sentencias = sentencias;
    }

    public While(Expresion condicion, Bloque sentencias) {
        this.condicion = condicion;
        Sentencias = sentencias;
    }

    public While(String nombre, Expresion condicion, Bloque sentencias) {
        super("While");
        this.condicion = condicion;
        Sentencias = sentencias;
    }
}
