package archivos.ast.Base.Constantes;

import archivos.CodeGeneratorHelper;
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
    public String generarCodigo(String etiqueta) {
        StringBuilder resultado = new StringBuilder();
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        if (this.getValor().equals("true")){
            resultado.append(String.format("%1$s = add i1 0, %2$s\n", this.getIr_ref(), "1"));
        } else {
            resultado.append(String.format("%1$s = add i1 0, %2$s\n", this.getIr_ref(), "0"));
        }


        return resultado.toString();
    }
}
