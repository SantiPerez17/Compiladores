package archivos.jflexyjcup.ast.Operaciones.binarias.comparaciones;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;
import archivos.jflexyjcup.ast.Operaciones.binarias.OperacionBinaria;

public class MayorOIgual extends OperacionBinaria {
    public MayorOIgual(Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(tipo, izquierda, derecha);
    }

    public MayorOIgual(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public MayorOIgual(String nombre, Expresion izquierda, Expresion derecha) {
        super(nombre, izquierda, derecha);
    }

    public MayorOIgual(String nombre, Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(nombre, tipo, izquierda, derecha);
    }
}
