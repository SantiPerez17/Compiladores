package archivos.jflexyjcup.ast.Base.Constantes;

import archivos.jflexyjcup.ast.Base.Tipo;

public class ConstanteBool extends Constante {

    public ConstanteBool(String valor, String nombre) {
        super(valor, nombre);
    }

    public ConstanteBool(String valor, Tipo tipo, String nombre) {
        super(valor, Tipo.BOOL, nombre);
    }

    public ConstanteBool(String valor, Tipo tipo) {
        super(valor, Tipo.BOOL);
    }
}
