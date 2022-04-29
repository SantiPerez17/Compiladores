package ast.operaciones.binarias.arismeticos;

import ast.base.Expresion;
import ast.base.Tipo;
import ast.operaciones.binarias.OperacionBinaria;

public class Resta extends OperacionBinaria {

    public Resta(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha, "+");
    }

    public Resta(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super(izquierda, derecha, tipo, "+");
    }
}