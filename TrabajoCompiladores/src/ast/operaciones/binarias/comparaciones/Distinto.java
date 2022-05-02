package ast.operaciones.binarias.comparaciones;

import ast.base.Expresion;
import ast.base.Tipo;
import ast.operaciones.binarias.OperacionBinaria;

public class Distinto extends OperacionBinaria {
    public Distinto(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public Distinto(Expresion izquierda, Expresion derecha, String nombre) {
        super(izquierda, derecha, "Distinto");
    }

    public Distinto(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super(izquierda, derecha, tipo);
    }

    public Distinto(Expresion izquierda, Expresion derecha, Tipo tipo, String nombre) {
        super(izquierda, derecha, tipo, "Distinto"); //!= <>
    }
}
