package archivos.jflexyjcup.ast.Sentencias.Displays;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Sentencias.Sentencia;

public class DisplayExpresion extends Display {

    private final Expresion expresion;

    public DisplayExpresion(Expresion expresion) {
        this.expresion = expresion;
    }

    public DisplayExpresion(String nombre, Expresion expresion) {
        super(nombre);
        this.expresion = expresion;
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder grafico = new StringBuilder();
        grafico.append(expresion.graficar(this.getId()));
        return grafico.toString();
    }
}