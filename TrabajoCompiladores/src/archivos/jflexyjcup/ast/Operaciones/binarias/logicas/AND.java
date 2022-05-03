package archivos.jflexyjcup.ast.Operaciones.binarias.logicas;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;
import archivos.jflexyjcup.ast.Operaciones.binarias.OperacionBinaria;

public class AND extends OperacionBinaria {


    public AND(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super(izquierda, derecha, Tipo.BOOL);
    }

    public AND(Expresion izquierda, Expresion derecha, Tipo tipo, String nombre) {
        super(izquierda, derecha, Tipo.BOOL, "AND");
    }
}
