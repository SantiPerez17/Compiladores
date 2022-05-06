package archivos.jflexyjcup.ast.Base.Constantes;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

public class Constante extends Expresion {
    private final String valor;

    public Constante(String valor, String nombre) {
        super(nombre);
        this.valor = valor;
    }

    public Constante(String valor, Tipo tipo, String nombre) {
        super(tipo, nombre);
        this.valor = valor;
    }

    public Constante(String valor, Tipo tipo) {
        super(tipo);
        this.valor = valor;
    }

    public Object getValor() {
        return valor;
    }

    @Override
    public String getEtiqueta() {
        return String.format(String.format("Const %s %s", getValor(), this.getTipo()));
    }
}