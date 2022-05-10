package archivos.jflexyjcup.ast.Operaciones.unarias;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

public abstract class  OperacionUnaria extends Expresion{
    private Expresion expresion;

    public OperacionUnaria(String nombre, Expresion expresion) {
        super(Tipo.valueOf(nombre));
        this.expresion = expresion;
    }

    public OperacionUnaria(Expresion expresion, Tipo tipo) {
        super(tipo);
        this.expresion = expresion;
    }

    public OperacionUnaria(String nombre, Expresion expresion, Tipo tipo) {
        super(nombre, tipo);
        this.expresion = expresion;
    }

    public Expresion getExpresion() {
        return expresion;
    }

    public void setExpresion(Expresion expresion) {
        this.expresion = expresion;
    }

    @Override
    public String graficar(String idPadre) {
        final String miId = this.getId();
        return super.graficar(idPadre) +  expresion.graficar(miId);
    }

}