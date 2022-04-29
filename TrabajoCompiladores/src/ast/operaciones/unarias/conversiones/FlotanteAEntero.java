package ast.operaciones.unarias.conversiones;

import ast.base.Expresion;
import ast.base.Tipo;

public class FlotanteAEntero extends OperacionConversion{

    public FlotanteAEntero(Expresion expresion) {
        super("FLOAT a INT", expresion, Tipo.INTEGER);
    }

  /*  @Override
    public <T> T accept(Visitor<T> v) throws ExcepcionDeAlcance {
        return v.visit(this);
    }

    @Override
    public FlotanteAEntero accept_transfomer(Transformer t) throws ExcepcionDeTipos{
        return t.transform(this);
    }*/

}