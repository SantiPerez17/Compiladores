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

    public Input_Float( String nombre, Tipo tipo) {
        super(nombre, Tipo.Float);
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        String destaux = CodeGeneratorHelper.getNewPointer();
        String temp = CodeGeneratorHelper.getNewPointer();
        String temp_double = CodeGeneratorHelper.getNewPointer();
        resultado.append(destaux + " = alloca double\n");
        resultado.append(String.format("%1$s = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8] * @double_read_format, i64 0, i64 0), double* %2$s)\n", temp, destaux));
        resultado.append(String.format("%1$s = load double, double* %2$s\n", temp_double, destaux));
        return resultado.toString();
    }
}
