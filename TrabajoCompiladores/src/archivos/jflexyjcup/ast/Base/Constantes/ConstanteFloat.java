package archivos.jflexyjcup.ast.Base.Constantes;

import archivos.jflexyjcup.ast.Base.Tipo;

public class ConstanteFloat extends Constante{
    public ConstanteFloat(String valor, String nombre) {
        super(valor, nombre);
    }

    public ConstanteFloat(String valor, Tipo tipo, String nombre) {
        super(valor, Tipo.FLOAT, nombre);
    }

    public ConstanteFloat(String valor, Tipo tipo) {
        super(valor, Tipo.FLOAT);
    }
}
