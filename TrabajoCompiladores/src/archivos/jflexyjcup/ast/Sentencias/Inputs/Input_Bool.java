package archivos.jflexyjcup.ast.Sentencias.Inputs;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

public class Input_Bool extends Expresion {
    public Input_Bool(Tipo tipo) {
        super(tipo);
    }

    public Input_Bool(String nombre) {
        super("Input_Bool");
    }

    public Input_Bool(Tipo tipo, String nombre) {
        super(tipo, "Input_Bool");
    }
}
