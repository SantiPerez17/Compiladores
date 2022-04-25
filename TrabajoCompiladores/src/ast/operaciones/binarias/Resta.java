package ast.operaciones.binarias;

import ast.base.Expresion;
import ast.base.Tipo;

public class Resta extends OperacionBinaria {

    public Resta(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha, "+");
    }

    public Resta(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super(izquierda, derecha, tipo, "+");
    }
}