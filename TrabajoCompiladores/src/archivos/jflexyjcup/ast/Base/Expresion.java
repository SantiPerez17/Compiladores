package archivos.jflexyjcup.ast.Base;

public abstract class Expresion extends Nodo{

    private Tipo tipo;

    public Expresion(Tipo tipo) {
        this.tipo = tipo;
    }

    public Expresion(String nombre) {
        super(nombre);
    }

    public Expresion(Tipo tipo, String nombre) {
        super(nombre);
        this.tipo = tipo;
    }


    public Tipo getTipo() {
        return tipo;
    }

    public void setTipo(Tipo tipo) {
        this.tipo = tipo;
    }

}
