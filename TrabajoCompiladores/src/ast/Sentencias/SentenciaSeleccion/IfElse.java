package ast.Sentencias.SentenciaSeleccion;

import ast.Sentencias.Sentencia;
import ast.base.Bloque;
import ast.base.Expresion;

public class IfElse extends Sentencia {
    private Expresion condicion;
    private Bloque sentencias1;
    private Bloque sentencias2;

    public Expresion getCondicion() {
        return condicion;
    }

    public void setCondicion(Expresion condicion) {
        this.condicion = condicion;
    }

    public Bloque getSentencias1() {
        return sentencias1;
    }

    public void setSentencias1(Bloque sentencias1) {
        this.sentencias1 = sentencias1;
    }

    public Bloque getSentencias2() {
        return sentencias2;
    }

    public void setSentencias2(Bloque sentencias2) {
        this.sentencias2 = sentencias2;
    }

    public IfElse(Expresion condicion, Bloque sentencias1, Bloque sentencias2) {
        this.condicion = condicion;
        this.sentencias1 = sentencias1;
        this.sentencias2 = sentencias2;
    }

    public IfElse(String nombre, Expresion condicion, Bloque sentencias1, Bloque sentencias2) {
        super(nombre);
        this.condicion = condicion;
        this.sentencias1 = sentencias1;
        this.sentencias2 = sentencias2;
    }
}
