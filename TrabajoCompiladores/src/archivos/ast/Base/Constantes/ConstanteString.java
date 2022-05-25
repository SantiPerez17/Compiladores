package archivos.ast.Base.Constantes;

import archivos.ast.Base.Tipo;

public class ConstanteString extends  Constante{
    public ConstanteString(String valor, String nombre) {
        super(valor, "Cadena de Caracteres");
    }

    public ConstanteString(String valor, Tipo tipo, String nombre) {
        super(valor, Tipo.CTE_STRING, "Cadena de Caracteres");
    }
    public ConstanteString(String valor, Tipo tipo) {
        super(valor, Tipo.CTE_STRING);
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        //this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }
}
