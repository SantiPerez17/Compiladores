package archivos.jflexyjcup.ast.Operaciones.binarias.arismeticos;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;
import archivos.jflexyjcup.ast.Operaciones.binarias.OperacionBinaria;

public class Multiplicacion extends OperacionBinaria {
    public Multiplicacion(String nombre, Expresion izquierda, Expresion derecha) {
        super("*", izquierda, derecha);
    }

    public Multiplicacion(String nombre, Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(nombre, tipo, izquierda, derecha);
    }

    public Multiplicacion(Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(tipo, izquierda, derecha);
    }

    public Multiplicacion(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public Multiplicacion(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super( "*",Tipo.Unknown, izquierda, derecha);
    }
}