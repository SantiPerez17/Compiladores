package ast.base;

public class Programa extends Nodo{

    private Bloque cuerpo;

    public Programa(Bloque cuerpo) {
        this.cuerpo = cuerpo;
    }

    public Bloque getCuerpo() {
        return cuerpo;
    }

    public void setCuerpo(Bloque cuerpo) {
        this.cuerpo = cuerpo;
    }

    /*@Override
    public <T> T accept(Visitor<T> v) throws ExcepcionDeAlcance{
        return v.visit(this);
    }

    @Override
    public Programa accept_transfomer(Transformer t) throws ExcepcionDeTipos{
        return t.transform(this);
    }*/

}