package archivos.jflexyjcup.ast.Operaciones.binarias.arismeticos;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;
import archivos.jflexyjcup.ast.Operaciones.binarias.OperacionBinaria;

public class Suma extends OperacionBinaria {

    public Suma(Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(tipo, izquierda, derecha);
    }

    public Suma(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public Suma(String nombre, Expresion izquierda, Expresion derecha) {
        super("+", izquierda, derecha);
    }

    public Suma(String nombre, Tipo tipo, Expresion izquierda, Expresion derecha) {
        super("+", tipo, izquierda, derecha);
    }
}