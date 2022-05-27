package archivos.ast.Base.Expresiones.Inputs;

import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Tipo;

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
        resultado.append(";Input_Bool:\n");
        //this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }
}
