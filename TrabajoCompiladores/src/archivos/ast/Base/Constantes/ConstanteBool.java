package archivos.ast.Base.Constantes;

import archivos.ast.Base.Tipo;

public class ConstanteBool extends Constante {

    public ConstanteBool(String valor, String nombre) {
        super(valor, nombre);
    }

    public ConstanteBool(String valor, Tipo tipo, String nombre) {
        super(valor, Tipo.Bool, nombre);
    }

    public ConstanteBool(String valor, Tipo tipo) {
        super(valor, Tipo.Bool);
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        //this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }
}
