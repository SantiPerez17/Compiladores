package archivos.jflexyjcup.ast.Sentencias.Inputs;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

public class Input_Int extends Expresion {
    public Input_Int(Tipo tipo) {
        super(Tipo.Int);
    }

    public Input_Int(String nombre) {
        super(nombre);
    }

    public Input_Int(Tipo tipo, String nombre) {
        super(Tipo.Int, nombre);
    }
}
