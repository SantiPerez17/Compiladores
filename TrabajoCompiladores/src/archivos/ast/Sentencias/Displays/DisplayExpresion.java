package archivos.ast.Sentencias.Displays;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Tipo;

public class DisplayExpresion extends Display {

    private final Expresion expresion;

    public DisplayExpresion(Expresion expresion) {
        this.expresion = expresion;
    }

    public DisplayExpresion(String nombre, Expresion expresion) {
        super(nombre);
        this.expresion = expresion;
    }

    @Override
    public String getEtiqueta() {
        return String.format("Sentencia%n - [ Display Expresion ] -");
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder resultado = new StringBuilder();
        resultado.append(super.graficar(idPadre));
        resultado.append(this.expresion.graficar(this.getId()));
        return resultado.toString();
    }

    @Override
    public String generarCodigo(String etiqueta) {
        StringBuilder resultado = new StringBuilder();
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        resultado.append("\n"+etiqueta);
        resultado.append(";___DisplayExpresion___\n");
        resultado.append(this.expresion.generarCodigo(etiqueta));
        if (this.expresion.getTipo().equals(Tipo.Int)) {
            resultado.append(String.format("%1$s = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %2$s)\n", this.getIr_ref(), this.expresion.getIr_ref()));
        } else if(this.expresion.getTipo().equals(Tipo.Float)) {
            resultado.append(String.format("%1$s = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %2$s)\n", this.getIr_ref(), this.expresion.getIr_ref()));
        } else if(this.expresion.getTipo().equals(Tipo.Bool)) {
            this.setIr_ref(CodeGeneratorHelper.getNewPointer());
            String temp_int = this.getIr_ref();
            this.setIr_ref(CodeGeneratorHelper.getNewPointer());
            resultado.append(String.format("%1$s = zext i1 %2$s to i32\n", temp_int, this.expresion.getIr_ref()));
            resultado.append(String.format("%1$s = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.bool, i32 0, i32 0), i32 %2$s)\n", this.getIr_ref(), temp_int));
        }
        String siguiente = "%etiq" + (CodeGeneratorHelper.getNextTag() + 1);
        resultado.append(String.format("br label %1$s\n", siguiente));
        return resultado.toString();
    }
}