package archivos.ast.Base.Expresiones.Inputs;

import archivos.CodeGeneratorHelper;
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
    public String generarCodigo(String etiqueta) {
        StringBuilder resultado = new StringBuilder();
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        String destaux = this.getIr_ref();
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        String temp = this.getIr_ref();
        resultado.append(destaux + " = alloca double\n");
        resultado.append(String.format("%1$s = call double (i8*, ...) @scanfd(i8* getelementptr inbounds ([4 x i8], [4 x i8] * @double_read_format, i64 0, i64 0), double* %2$s)\n", temp, destaux));
        return resultado.toString();
    }
}
