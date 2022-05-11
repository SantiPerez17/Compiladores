package archivos.jflexyjcup.ast.Base;

public class Identificador extends Expresion{

    public Identificador(Tipo tipo) {
        super(tipo);
    }

    public Identificador() {
    }

    public Identificador(String nombre) {
        super(nombre);
    }

    public Identificador(String nombre, Tipo tipo) {
        super(nombre, tipo);
    }

    @Override
    public String getEtiqueta() {
        return " ID - [ " + this.getNombre() + " ] - " + "\n Tipo: "+ this.getTipo();
    }
}