package archivos.jflexyjcup.ast.Operaciones.unarias.conversiones;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

public class FlotanteAEntero extends OperacionConversion{

    public FlotanteAEntero(Expresion expresion) {
        super("FLOAT a INT", expresion, Tipo.Int);
    }

    public FlotanteAEntero(String nombre, Expresion expresion) {
        super("FLOAT a INT", expresion);
    }


    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        //this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }
}