package archivos.ast.Base.Expresiones.Constantes;

import archivos.ast.Base.Tipo;
import archivos.CodeGeneratorHelper;

public class ConstanteEntera extends Constante{

    public ConstanteEntera(String valor, String nombre) {
        super(valor, nombre);
    }

    public ConstanteEntera(String valor, Tipo tipo, String nombre) {
        super(valor, Tipo.Int, nombre);
    }

    public ConstanteEntera(String valor, Tipo tipo) {
        super(valor, Tipo.Int);
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }
}
