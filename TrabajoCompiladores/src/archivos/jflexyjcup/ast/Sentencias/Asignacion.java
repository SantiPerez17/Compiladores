package archivos.jflexyjcup.ast.Sentencias;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Identificador;

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
        if(expresion.getNombre() == "Cola"){
            grafico.append(expresion.graficar("nodo_programa"));
            grafico.append(super.graficar("nodo_programa"));
            grafico.append(identificador.graficar(this.getId()));
            Identificador identificador1 = new Identificador("acum",expresion.getTipo());
            grafico.append(identificador1.graficar(this.getId()));
        } else {
            grafico.append(super.graficar(idPadre));
            grafico.append(identificador.graficar(this.getId()));
            grafico.append(expresion.graficar(this.getId()));
        }
        return grafico.toString();
    }
}