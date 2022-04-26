package ast.operaciones.unarias.conversiones;

import ast.base.Expresion;
import ast.base.Tipo;
import java_cup.runtime.SyntaxTreeDFS;

public class EnteroAFlotante extends OperacionConversion{


    public EnteroAFlotante(Expresion expresion) {
        super("entero a flotante", expresion, Tipo.FLOAT);
    }

   /* @Override
    public <T> T accept(Visitor<T> v) throws ExcepcionDeAlcance {
        return v.visit(this);
    }

    @Override
    public EnteroAFlotante accept_transfomer(Transformer t) throws ExcepcionDeTipos{
        return t.transform(this);
    }
*/
}
