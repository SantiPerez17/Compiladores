package archivos.jflexyjcup.ast.Base;

public abstract class Expresion extends Nodo{
    public Tipo getTipo() {
        return tipo;
    }

    public void setTipo(Tipo tipo) {
        this.tipo = tipo;
    }

    private Tipo tipo;

    public Expresion(Tipo tipo) {
        this.tipo = tipo;
    }

    public Expresion() {
    }

    public Expresion(String nombre) {
        super(nombre);
    }

    public Expresion(String nombre, Tipo tipo) {
        super(nombre);
        this.tipo = tipo;
    }

    public String getEtiqueta() {
       return "- [ " + this.getNombre() + " ] - " + "\n Tipo: "+ this.tipo;
    }

}
