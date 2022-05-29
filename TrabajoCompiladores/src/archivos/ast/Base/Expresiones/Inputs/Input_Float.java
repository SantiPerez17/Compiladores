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
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        resultado.append(";Input_Float:\n");
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        String destaux = this.getIr_ref();
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        String temp = this.getIr_ref();
        resultado.append(destaux + " = alloca double\n");
        resultado.append(String.format("%1$s = call double (i8*, ...) @scanfd(i8* getelementptr inbounds ([4 x i8], [4 x i8] * @double_read_format, i64 0, i64 0), double* %2$s)\n", temp, destaux));
        //%dest = alloca float
        //%destaux = alloca double
        //%temp = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @double_read_format, i64 0, i64 0), double* %dest_aux)
        //%temp_double = load double, double* %dest_aux
        //%temp_float = fptrunc double %temp_double to float :trucamos double a float
        //%dest = store float %temp_float, float* %dest
        return resultado.toString();
    }
}
