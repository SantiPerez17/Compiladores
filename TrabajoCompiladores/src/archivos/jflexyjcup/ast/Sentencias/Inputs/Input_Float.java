package archivos.jflexyjcup.ast.Sentencias.Inputs;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

public class Input_Float extends Expresion {
    public Input_Float(Tipo tipo) {
        super(Tipo.Float);
    }

    public Input_Float(String nombre) {
        super(nombre);
    }

    public Input_Float(Tipo tipo, String nombre) {
        super(Tipo.Float, nombre);
    }
}
