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
        if (this.expresion.getTipo().equals(Tipo.Int)){
            resultado.append(String.format("%1$s = call i32 (i8*, ...) @scanf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %2$s)\n", this.getIr_ref(), this.expresion.getIr_ref()));
        } else if(this.expresion.getTipo().equals(Tipo.Float)){
            resultado.append(String.format("%1$s = call double (i8*, ...) @scanfd(i8* getelementptr ([5 x i8], [5 x i8]* @.double, i64 0, i64 0), double %2$s)\n", this.getIr_ref(), this.expresion.getIr_ref()));
        }
        String siguiente = "%etiq" + (CodeGeneratorHelper.getNextID() + 1);
        resultado.append(String.format("br label %1$s\n", siguiente));
        return resultado.toString();
    }
}