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

    public Input_Bool(String nombre, Tipo tipo) {
        super(nombre, Tipo.Bool);
    }

    @Override
    public String generarCodigo(String etiqueta) {
        StringBuilder resultado = new StringBuilder();
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        String destaux = this.getIr_ref();
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        String temp = this.getIr_ref();
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        String temp_int = this.getIr_ref();
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        String temp_bool = this.getIr_ref();

        //Se genera una variable auxiliar para almacenar el resultado, luego se llama a la funcion @scanf, se almacena su resultado en la variable auxiliar, y finalmente se trunca al tipo bool
        resultado.append(destaux + " = alloca i32\n");
        resultado.append(String.format("%1$s = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %2$s)\n", temp, destaux));
        resultado.append(String.format("%1$s = load i32, i32* %2$s\n", temp_int, destaux));
        resultado.append(String.format("%1$s = trunc i32 %2$s to i1\n", temp_bool, temp_int));
        return resultado.toString();
    }
}
