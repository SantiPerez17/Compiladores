package archivos.jflexyjcup.ast.Base;

public class Identificador extends Expresion{

    public Identificador(String nombre, Tipo tipo){
        super(tipo, nombre);
    }

    public Identificador(String nombre) {
        super(nombre);
    }

    @Override
    public String getEtiqueta() {
        return String.format(String.format("Ident %s %s", this.getNombre(), this.getTipo()));
    }



}