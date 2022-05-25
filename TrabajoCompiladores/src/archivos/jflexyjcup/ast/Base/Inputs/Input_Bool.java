package archivos.jflexyjcup.ast.Base.Inputs;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

public class Input_Bool extends Expresion {
    public Input_Bool(Tipo tipo) {
        super(tipo);
    }

    public Input_Bool(String nombre) {
        super("Input_Bool");
    }

    public Input_Bool(Tipo tipo, String nombre) {
        super("Input_Bool", Tipo.Bool);
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        //this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }
}
