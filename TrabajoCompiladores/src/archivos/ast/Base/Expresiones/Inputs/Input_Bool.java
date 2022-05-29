package archivos.ast.Base.Expresiones.Inputs;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Tipo;

public class Input_Bool extends Expresion {
    public Input_Bool(Tipo tipo) {
        super(tipo);
    }

    public Input_Bool(String nombre) {
        super("Input_Bool");
    }

    public Input_Bool(Tipo tipo, String nombre) {
        super("Input_Bool", Tipo.Bool);
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        resultado.append(";Input_Bool:\n");
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        String dest = this.getIr_ref();
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        String temp = this.getIr_ref();
        resultado.append(dest + " = alloca i1\n");
        resultado.append(String.format("%1$s = call i1 (i8*, ...) @scanfb(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @bool_read_format, i64 0, i64 0), i1* %2$s)\n", temp, dest));
        //%dest = alloca i32
        //%temp = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ int_read_format, i64 0, i64 0), i32* %dest)
        return resultado.toString();
    }
}
