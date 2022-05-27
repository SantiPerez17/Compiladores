package archivos.ast.Base.Expresiones.Inputs;

import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Tipo;

public class Input_Int extends Expresion {
    public Input_Int(Tipo tipo) {
        super(tipo);
    }

    public Input_Int() {
    }

    public Input_Int(String nombre) {
        super(nombre);
    }

    public Input_Int(String nombre, Tipo tipo) {
        super(nombre, tipo);
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        resultado.append(";Input_Int:\n");
        //this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }
}
