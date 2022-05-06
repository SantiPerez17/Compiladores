package archivos.jflexyjcup.ast.Operaciones.binarias.comparaciones;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;
import archivos.jflexyjcup.ast.Operaciones.binarias.OperacionBinaria;

public class MayorOIgual extends OperacionBinaria {
    public MayorOIgual(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super(izquierda, derecha, tipo);
    }

    public MayorOIgual(String nombre, Expresion izquierda, Expresion derecha) {
        super(">=", izquierda, derecha);
    }

    public MayorOIgual(Expresion izquierda, Expresion derecha, Tipo tipo, String nombre) {
        super(izquierda, derecha, tipo, nombre);
    }
}
