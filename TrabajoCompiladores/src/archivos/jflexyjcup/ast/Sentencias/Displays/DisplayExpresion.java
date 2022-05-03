package archivos.jflexyjcup.ast.Sentencias.Displays;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Sentencias.Sentencia;

public class DisplayExpresion extends Sentencia {

    private final Expresion expresion;

    public DisplayExpresion(Expresion e) {
        super("DisplayExpresion");
        this.expresion = e;
    }

    public Expresion getExpresion(){
        return this.expresion;
    }

   /* @Override
    public <T> T accept(Visitor<T> v) throws ExcepcionDeAlcance {
        return v.visit(this);
    }

    @Override
    public <R> R accept_transfomer(Transformer t) throws ExcepcionDeTipos {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }*/

}