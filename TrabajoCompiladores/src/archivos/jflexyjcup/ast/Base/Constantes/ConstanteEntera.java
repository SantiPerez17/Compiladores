package archivos.jflexyjcup.ast.Base.Constantes;

import archivos.jflexyjcup.ast.Base.Tipo;

public class ConstanteEntera extends Constante{

    public ConstanteEntera(String valor, String nombre) {
        super(valor, nombre);
    }

    public ConstanteEntera(String valor, Tipo tipo, String nombre) {
        super(valor, Tipo.INTEGER, nombre);
    }

    public ConstanteEntera(String valor, Tipo tipo) {
        super(valor, Tipo.INTEGER);
    }
}
