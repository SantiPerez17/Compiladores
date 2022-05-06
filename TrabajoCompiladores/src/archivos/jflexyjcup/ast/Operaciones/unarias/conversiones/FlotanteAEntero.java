package archivos.jflexyjcup.ast.Operaciones.unarias.conversiones;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

public class FlotanteAEntero extends OperacionConversion{

    public FlotanteAEntero(Expresion expresion) {
        super("FLOAT a INT", expresion, Tipo.Int);
    }

    public FlotanteAEntero(String nombre, Expresion expresion) {
        super("FLOAT a INT", expresion);
    }
}