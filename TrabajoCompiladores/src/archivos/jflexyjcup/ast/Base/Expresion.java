package archivos.jflexyjcup.ast.Base;

public abstract class Expresion extends Nodo{

    public Tipo getTipo() {
        return tipo;
    }

    public void setTipo(Tipo tipo) {
        this.tipo = tipo;
    }

    private Tipo tipo;
    private String ir_ref;

    public String getIr_ref() {
        return ir_ref;
    }

    public void setIr_ref(String ir_ref) {
        this.ir_ref = ir_ref;
    }

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
