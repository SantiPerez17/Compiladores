package ast.operaciones.binarias.arismeticos;

import ast.base.Expresion;
import ast.base.Tipo;
import ast.operaciones.binarias.OperacionBinaria;

public class Division extends OperacionBinaria {

    public Division(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha, "/");
    }

    public Division(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super(izquierda, derecha, tipo, "/");
    }
}