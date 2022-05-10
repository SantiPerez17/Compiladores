package archivos.jflexyjcup.ast.Sentencias.Inputs;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

public class Input_Int extends Expresion {
    public Input_Int(Tipo tipo) {
        super(tipo);
    }

    public Input_Int() {
    }

    public Input_Int(String nombre) {
        super(nombre);
    }

    public Input_Int(String nombre, Tipo tipo) {
        super(nombre, tipo);
    }
}
