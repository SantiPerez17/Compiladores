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

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        //this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }
}
