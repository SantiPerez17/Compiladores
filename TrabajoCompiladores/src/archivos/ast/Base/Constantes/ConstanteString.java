package archivos.ast.Base.Constantes;

import archivos.ast.Base.Tipo;

public class ConstanteString extends  Constante{

    public ConstanteString(String valor, String nombre) {
        super(valor, nombre);
    }

    public ConstanteString(String valor, Tipo tipo, String nombre) {
        super(valor, Tipo.CTE_STRING, nombre);
    }
    public ConstanteString(String valor, Tipo tipo) {
        super(valor, Tipo.CTE_STRING);
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        resultado.append(";ConstanteString:\n");
        //@str = private constant [11 x i8] c"Hola mundo\00"
        //this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }
}
