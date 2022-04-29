package ast.Sentencias;

import ast.base.Expresion;
import ast.base.Identificador;

public class Asignacion extends Sentencia{

    private Identificador identificador;
    private Expresion expresion;

    public Asignacion(Identificador id, Expresion e){
        this.identificador = id;
        this.expresion = e;
    }

    public void setIdentificador(Identificador identificador) {
        this.identificador = identificador;
    }

    public void setExpresion(Expresion expresion) {
        this.expresion = expresion;
    }

    public Identificador getIdentificador(){
        return identificador;
    }

    public Expresion getExpresion(){
        return expresion;
    }

    protected String getNombreOperacion() {
        return ":=";
    }

    @Override
    public String getEtiqueta() {
        return String.format("%s", this.getNombreOperacion());
    }

   /* @Override
    public <T> T accept(Visitor<T> v) throws ExcepcionDeAlcance{
        return v.visit(this);
    }

    @Override
    public Asignacion accept_transfomer(Transformer t) throws ExcepcionDeTipos{
        return t.transform(this);
    }*/

}