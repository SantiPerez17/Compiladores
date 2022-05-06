package archivos.jflexyjcup.ast.Operaciones.binarias.arismeticos;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;
import archivos.jflexyjcup.ast.Operaciones.binarias.OperacionBinaria;

public class Suma extends OperacionBinaria {
    public Suma(String nombre, Expresion izquierda, Expresion derecha) {
        super("+", izquierda, derecha);
    }

    public Suma(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super(izquierda, derecha, tipo, "+");
    }
}