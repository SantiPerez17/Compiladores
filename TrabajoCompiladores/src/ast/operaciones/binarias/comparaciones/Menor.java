package ast.operaciones.binarias.comparaciones;

import ast.base.Expresion;
import ast.base.Tipo;
import ast.operaciones.binarias.OperacionBinaria;

public class Menor extends OperacionBinaria {

    public Menor(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public Menor(Expresion izquierda, Expresion derecha, String nombre) {
        super(izquierda, derecha, "Menor");
    }

    public Menor(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super(izquierda, derecha, tipo);
    }

    public Menor(Expresion izquierda, Expresion derecha, Tipo tipo, String nombre) {
        super(izquierda, derecha, tipo, "Menor");
    }
}
