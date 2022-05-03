package archivos.jflexyjcup.ast.Sentencias;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Identificador;
import archivos.jflexyjcup.ast.Base.Tipo;

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

    public Tipo getTipoExpresion(Expresion expresion) {
        return  expresion.getTipo();
    }

    public Tipo getTipoIdentificador(Identificador identificador) {
        return  identificador.getTipo();
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
}