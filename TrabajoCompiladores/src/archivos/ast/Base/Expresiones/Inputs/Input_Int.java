package archivos.ast.Base.Expresiones.Inputs;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Tipo;

public class Input_Int extends Expresion {
    public Input_Int(Tipo tipo) {
        super(tipo);
    }

    public Input_Int() {
    }

    public Input_Int(String nombre) {
        super("Input_Int");
    }

    public Input_Int(String nombre, Tipo tipo) {
        super("Input_Int", tipo);
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        resultado.append(";Input_Int:\n");
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        String dest = this.getIr_ref();
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        String temp = this.getIr_ref();
        resultado.append(dest + " = alloca i32\n");
        resultado.append(String.format("%1$s = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %2$s)\n", temp, dest));
        //%dest = alloca i32
        //%temp = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ int_read_format, i64 0, i64 0), i32* %dest)
        return resultado.toString();
    }
}
