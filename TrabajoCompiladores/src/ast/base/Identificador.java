package ast.base;

public class Identificador extends Expresion{


    public Identificador(String nombre){
        super(Tipo.UNKNOWN, nombre);
    }

    public Identificador(String nombre, Tipo tipo){
        super(tipo, nombre);
    }

    @Override
    public String getEtiqueta() {
        return String.format(String.format("Ident %s %s", this.getNombre(), this.getTipo()));
    }

    /*@Override
    public <T> T accept(Visitor<T> v) {
        return v.visit(this);
    }

    @Override
    public Identificador accept_transfomer(Transformer t) throws ExcepcionDeTipos{
        return t.transform(this);
    }*/

}