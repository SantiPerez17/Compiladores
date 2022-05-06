package archivos.jflexyjcup.ast.Operaciones.binarias.comparaciones;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;
import archivos.jflexyjcup.ast.Operaciones.binarias.OperacionBinaria;

public class Igual extends OperacionBinaria {
    public Igual(String nombre, Expresion izquierda, Expresion derecha) {
        super("==", izquierda, derecha);
    }

    public Igual(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super(izquierda, derecha, Tipo.Bool);
    }

    public Igual(Expresion izquierda, Expresion derecha, Tipo tipo, String nombre) {
        super(izquierda, derecha, Tipo.Bool, nombre);
    }
}
