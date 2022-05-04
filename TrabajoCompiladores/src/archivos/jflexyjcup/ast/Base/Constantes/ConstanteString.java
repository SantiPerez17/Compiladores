package archivos.jflexyjcup.ast.Base.Constantes;

import archivos.jflexyjcup.ast.Base.Tipo;

public class ConstanteString extends  Constante{
    public ConstanteString(String valor, String nombre) {
        super(valor, nombre);
    }

    public ConstanteString(String valor, Tipo tipo, String nombre) {
        super(valor, Tipo.CTE_STRING, nombre);
    }

    public ConstanteString(String valor, Tipo tipo) {
        super(valor, Tipo.CTE_STRING);
    }
}
