package ast.operaciones.binarias.arismeticos;

import ast.base.Expresion;
import ast.base.Tipo;
import ast.operaciones.binarias.OperacionBinaria;

public class Suma extends OperacionBinaria {

    public Suma(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha, "+");
    }

    public Suma(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super(izquierda, derecha, tipo, "+");
    }
}