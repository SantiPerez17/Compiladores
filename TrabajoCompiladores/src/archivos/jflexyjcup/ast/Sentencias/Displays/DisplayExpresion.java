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

}