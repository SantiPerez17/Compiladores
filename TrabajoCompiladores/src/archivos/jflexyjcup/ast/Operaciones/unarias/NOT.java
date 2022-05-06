package archivos.jflexyjcup.ast.Operaciones.unarias;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

public class NOT extends OperacionUnaria{
    public NOT(Expresion expresion, Tipo tipo) {
        super(expresion, tipo);
    }

    public NOT(String nombre, Expresion expresion) {
        super("NOT",expresion);
    }

    public NOT(String nombre, Expresion expresion, Tipo tipo) {
        super("NOT", expresion, tipo);
    }
}
