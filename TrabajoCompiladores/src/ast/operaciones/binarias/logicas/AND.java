package ast.operaciones.binarias.logicas;

import ast.base.Expresion;
import ast.base.Tipo;
import ast.operaciones.binarias.OperacionBinaria;

public class AND extends OperacionBinaria {
    public AND(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha, "AND");
    }

    public AND(Expresion izquierda, Expresion derecha, String nombre) {
        super(izquierda, derecha, nombre);
    }

    public AND(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super(izquierda, derecha, tipo);
    }

    public AND(Expresion izquierda, Expresion derecha, Tipo tipo, String nombre) {
        super(izquierda, derecha, tipo, "AND");
    }
}
