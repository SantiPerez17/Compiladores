package archivos.jflexyjcup.ast.Operaciones.binarias.comparaciones;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;
import archivos.jflexyjcup.ast.Operaciones.binarias.OperacionBinaria;

public class MenorOIgual extends OperacionBinaria {

    public MenorOIgual(Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(tipo, izquierda, derecha);
    }

    public MenorOIgual(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public MenorOIgual(String nombre, Expresion izquierda, Expresion derecha) {
        super(nombre, izquierda, derecha);
    }

    public MenorOIgual(String nombre, Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(nombre, tipo, izquierda, derecha);
    }
}
