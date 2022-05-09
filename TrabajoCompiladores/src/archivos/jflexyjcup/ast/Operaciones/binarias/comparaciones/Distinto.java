package archivos.jflexyjcup.ast.Operaciones.binarias.comparaciones;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;
import archivos.jflexyjcup.ast.Operaciones.binarias.OperacionBinaria;

public class Distinto extends OperacionBinaria {
    public Distinto(Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(tipo, izquierda, derecha);
    }

    public Distinto(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public Distinto(String nombre, Expresion izquierda, Expresion derecha) {
        super(nombre, izquierda, derecha);
    }

    public Distinto(String nombre, Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(nombre, tipo, izquierda, derecha);
    }
}
