package ast.operaciones.binarias.comparaciones;

import ast.base.Expresion;
import ast.base.Tipo;
import ast.operaciones.binarias.OperacionBinaria;

public class Mayor extends OperacionBinaria {
    public Mayor(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public Mayor(Expresion izquierda, Expresion derecha, String nombre) {
        super(izquierda, derecha, "Mayor");
    }

    public Mayor(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super(izquierda, derecha, tipo);
    }

    public Mayor(Expresion izquierda, Expresion derecha, Tipo tipo, String nombre) {
        super(izquierda, derecha, tipo, "Mayor");
    }
}
