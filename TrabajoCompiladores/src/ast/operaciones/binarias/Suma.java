package ast.operaciones.binarias;

import ast.base.Expresion;
import ast.base.Tipo;

public class Suma extends OperacionBinaria {

    public Suma(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha, "+");
    }

    public Suma(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super(izquierda, derecha, tipo, "+");
    }
}