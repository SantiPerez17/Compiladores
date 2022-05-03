package archivos.jflexyjcup.ast.Base;

import archivos.jflexyjcup.ast.Sentencias.DeclaracionVariable;

import java.util.List;

public class SectorDeclaraciones extends Nodo {

    private List<DeclaracionVariable> Declaraciones;

    public List<DeclaracionVariable> getDeclaraciones() {
        return Declaraciones;
    }

    public void setDeclaraciones(List<DeclaracionVariable> declaraciones) {
        Declaraciones = declaraciones;
    }
}
