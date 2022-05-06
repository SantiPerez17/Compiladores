package archivos.jflexyjcup.ast.Operaciones.binarias;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

public abstract class OperacionBinaria extends Expresion {
    private Expresion izquierda;
    private Expresion derecha;

    public OperacionBinaria(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super(tipo);
        this.izquierda = izquierda;
        this.derecha = derecha;
    }

    public OperacionBinaria(String nombre, Expresion izquierda, Expresion derecha) {
        super(nombre);
        this.izquierda = izquierda;
        this.derecha = derecha;
    }

    public OperacionBinaria(Expresion izquierda, Expresion derecha, Tipo tipo, String nombre) {
        super(tipo, nombre);
        this.izquierda = izquierda;
        this.derecha = derecha;
    }

    public void setIzquierda(Expresion izquierda) {
        this.izquierda = izquierda;
    }

    public void setDerecha(Expresion derecha) {
        this.derecha = derecha;
    }

    public Expresion getIzquierda(){
        return izquierda;
    }

    public Expresion getDerecha(){
        return derecha;
    }

    @Override
    public String getEtiqueta() {
        if(this.getTipo() != null){
            return String.format("%s %s", this.getNombre(), this.getTipo());
        }
        return String.format("%s", this.getNombre());
    }

    @Override
    public String graficar(String idPadre) {
        final String miId = this.getId();
        return super.graficar(idPadre) +
                izquierda.graficar(miId) +
                derecha.graficar(miId);
    }
}
