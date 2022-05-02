package ast.operaciones.binarias.comparaciones;

import ast.base.Expresion;
import ast.base.Tipo;
import ast.operaciones.binarias.OperacionBinaria;

public class Igual extends OperacionBinaria {
    public Igual(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public Igual(Expresion izquierda, Expresion derecha, String nombre) {
        super(izquierda, derecha, "Igual");
    }

    public Igual(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super(izquierda, derecha, tipo);
    }

    public Igual(Expresion izquierda, Expresion derecha, Tipo tipo, String nombre) {
        super(izquierda, derecha, tipo, nombre);
    }
}
