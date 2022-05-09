package archivos.jflexyjcup.ast.Operaciones.binarias.arismeticos;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;
import archivos.jflexyjcup.ast.Operaciones.binarias.OperacionBinaria;

public class Division extends OperacionBinaria {

    public Division(String nombre, Expresion izquierda, Expresion derecha) {
        super("/", izquierda, derecha);
    }

    public Division(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super("/", tipo, izquierda, derecha);
    }
}