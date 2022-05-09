package archivos.jflexyjcup.ast.Operaciones.binarias.comparaciones;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;
import archivos.jflexyjcup.ast.Operaciones.binarias.OperacionBinaria;

public class Menor extends OperacionBinaria {

    public Menor(Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(tipo, izquierda, derecha);
    }

    public Menor(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public Menor(String nombre, Expresion izquierda, Expresion derecha) {
        super(nombre, izquierda, derecha);
    }

    public Menor(String nombre, Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(nombre, tipo, izquierda, derecha);
    }
}
