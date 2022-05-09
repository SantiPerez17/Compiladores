package archivos.jflexyjcup.ast.Operaciones.binarias.logicas;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;
import archivos.jflexyjcup.ast.Operaciones.binarias.OperacionBinaria;

public class AND extends OperacionBinaria {

    public AND(Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(Tipo.Bool, izquierda, derecha);
    }

    public AND(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public AND(String nombre, Expresion izquierda, Expresion derecha) {
        super("AND", izquierda, derecha);
    }

    public AND(String nombre, Tipo tipo, Expresion izquierda, Expresion derecha) {
        super("AND", Tipo.Bool, izquierda, derecha);
    }
}
