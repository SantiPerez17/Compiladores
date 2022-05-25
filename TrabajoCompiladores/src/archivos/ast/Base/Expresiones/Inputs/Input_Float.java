package archivos.ast.Base.Expresiones.Inputs;

import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Tipo;

public class Input_Float extends Expresion {
    public Input_Float(Tipo tipo) {
        super(Tipo.Float);
    }

    public Input_Float(String nombre) {
        super("Input_Float");
    }

    public Input_Float(Tipo tipo, String nombre) {
        super("Input_Float", Tipo.Float);
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        //this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }
}
