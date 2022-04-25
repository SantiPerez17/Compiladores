package ast.operaciones.unarias;

import ast.base.Expresion;
import ast.base.Tipo;

public abstract class  OperacionUnaria extends Expresion{
    private Expresion expresion;

    public OperacionUnaria(Expresion expresion) {
        super(Tipo.UNKNOWN);
        this.expresion = expresion;
    }

    public OperacionUnaria(String nombre, Expresion expresion) {
        super(Tipo.UNKNOWN, nombre);
        this.expresion = expresion;
    }

    public OperacionUnaria(Expresion expresion, Tipo tipo) {
        super(tipo);
        this.expresion = expresion;
    }

    public OperacionUnaria(String nombre, Expresion expresion, Tipo tipo) {
        super(tipo, nombre);
        this.expresion = expresion;
    }

    public Expresion getExpresion() {
        return expresion;
    }

    public void setExpresion(Expresion expresion) {
        this.expresion = expresion;
    }

}}