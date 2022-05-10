package archivos.jflexyjcup.ast.Operaciones.binarias;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

public abstract class OperacionBinaria extends Expresion {
    private final Expresion izquierda;
    private final Expresion derecha;

    public OperacionBinaria(Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(tipo);
        this.izquierda = izquierda;
        this.derecha = derecha;
    }

    public OperacionBinaria(Expresion izquierda, Expresion derecha) {
        this.izquierda = izquierda;
        this.derecha = derecha;
    }

    public OperacionBinaria(String nombre, Expresion izquierda, Expresion derecha) {
        super(nombre);
        this.izquierda = izquierda;
        this.derecha = derecha;
    }


    public OperacionBinaria(String nombre, Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(nombre, tipo);
        this.izquierda = izquierda;
        this.derecha = derecha;
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder grafico = new StringBuilder();
        grafico.append(super.graficar(idPadre));
        grafico.append(izquierda.graficar(this.getId()));
        grafico.append(derecha.graficar(this.getId()));
        return grafico.toString();
    }
}
