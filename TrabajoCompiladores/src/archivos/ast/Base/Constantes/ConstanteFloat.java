package archivos.ast.Base.Constantes;

import archivos.ast.Base.Tipo;
import archivos.CodeGeneratorHelper;

public class ConstanteFloat extends Constante{
    public ConstanteFloat(String valor, String nombre) {
        super(valor, nombre);
    }

    public ConstanteFloat(String valor, Tipo tipo, String nombre) {
        super(valor, Tipo.Float, nombre);
    }

    public ConstanteFloat(String valor, Tipo tipo) {
        super(valor, Tipo.Float);
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        resultado.append(";ConstanteFloat:\n");
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        resultado.append(String.format("%1$s = add double 0.0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }
}
