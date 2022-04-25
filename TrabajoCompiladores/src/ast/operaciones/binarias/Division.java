package ast.operaciones.binarias;

import ast.base.Expresion;
import ast.base.Tipo;

public class Division extends OperacionBinaria {

    public Division(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha, "/");
    }

    public Division(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super(izquierda, derecha, tipo, "/");
    }
}