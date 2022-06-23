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

    public Expresion getExpresion() {
        return expresion;
    }

    @Override
    public String getEtiqueta() {
        return String.format("Sentencia%n - [ Display Expresion ] -");
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder resultado = new StringBuilder();
        //Se crea un stringbuilder
        resultado.append(super.graficar(idPadre));
        //se llama al metodo graficar mandandole el id del padre para poder conectar
        resultado.append(this.expresion.graficar(this.getId()));
        //se agrega ademas tambien el graficar de la expresion con el ID de esta clase.
        return resultado.toString();
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        resultado.append(";___DisplayExpresion___\n");
        resultado.append(this.getExpresion().generarCodigo());
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        if (this.getExpresion().getTipo().equals(Tipo.Int)) {
            resultado.append(String.format("%1$s = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %2$s)\n", this.getIr_ref(), this.getExpresion().getIr_ref()));
        } else if(this.getExpresion().getTipo().equals(Tipo.Float)) {
            resultado.append(String.format("%1$s = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %2$s)\n", this.getIr_ref(), this.getExpresion().getIr_ref()));
        } else if(this.getExpresion().getTipo().equals(Tipo.Bool)) {
            String temp_int = CodeGeneratorHelper.getNewPointer();
            resultado.append(String.format("%1$s = zext i1 %2$s to i32\n", temp_int, this.getExpresion().getIr_ref()));
            resultado.append(String.format("%1$s = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.bool, i32 0, i32 0), i32 %2$s)\n", this.getIr_ref(), temp_int));
        }
        return resultado.toString();
    }
}