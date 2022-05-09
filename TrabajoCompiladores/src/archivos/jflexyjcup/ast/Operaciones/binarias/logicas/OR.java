package archivos.jflexyjcup.ast.Operaciones.binarias.logicas;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;
import archivos.jflexyjcup.ast.Operaciones.binarias.OperacionBinaria;

public class OR extends OperacionBinaria {

    public OR(Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(Tipo.Bool, izquierda, derecha);
    }

    public OR(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public OR(String nombre, Expresion izquierda, Expresion derecha) {
        super("OR", izquierda, derecha);
    }

    public OR(String nombre, Tipo tipo, Expresion izquierda, Expresion derecha) {
        super("OR", Tipo.Bool, izquierda, derecha);
    }
}
