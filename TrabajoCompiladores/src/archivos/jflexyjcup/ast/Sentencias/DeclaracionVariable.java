package archivos.jflexyjcup.ast.Sentencias;

import archivos.jflexyjcup.ast.Base.Identificador;
import archivos.jflexyjcup.ast.Base.Tipo;

public class DeclaracionVariable extends Sentencia{

    private Identificador id;
    private Tipo tipo;

    public DeclaracionVariable(Identificador id, Tipo tipo){
        this.id = id;
        this.tipo = tipo;
    }

    public Identificador getId() {
        return id;
    }

    public void setId(Identificador id) {
        this.id = id;
    }

    public Tipo getTipo() {
        return tipo;
    }

    public void setTipo(Tipo tipo) {
        this.tipo = tipo;
    }

}
