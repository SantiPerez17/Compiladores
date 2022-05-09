package archivos.jflexyjcup.ast.Sentencias;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Identificador;
import archivos.jflexyjcup.ast.Base.Tipo;

public class Asignacion extends Sentencia{

    private final Identificador identificador;
    private final Expresion expresion;

    public Asignacion(Identificador identificador, Expresion expresion) {
        this.identificador = identificador;
        this.expresion = expresion;
    }

    public Asignacion(String nombre, Identificador identificador, Expresion expresion) {
        super(nombre);
        this.identificador = identificador;
        this.expresion = expresion;
    }

    protected String getNombreOperacion() {
        return ":=";
    }

    @Override
    public String getEtiqueta() {
        return String.format("%s", this.getNombreOperacion());
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder grafico = new StringBuilder();
        grafico.append(identificador.graficar(this.getId())).append(expresion.graficar(this.getId()));
        return grafico.toString();
    }
}