package ast.instrucciones;

import ast.base.Expresion;

public class Display extends Sentencia{

    private final Expresion expresion;

    public Display(Expresion e) {
        super("Display");
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