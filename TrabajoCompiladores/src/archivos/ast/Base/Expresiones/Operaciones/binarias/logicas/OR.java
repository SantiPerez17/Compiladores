package archivos.ast.Base.Expresiones.Operaciones.binarias.logicas;

import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Expresiones.Operaciones.binarias.OperacionBinaria;
import archivos.ast.Base.Tipo;

public class OR extends OperacionBinaria {

    public OR(Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(Tipo.Bool, izquierda, derecha);
    }

    public OR(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public OR(String nombre, Expresion izquierda, Expresion derecha) {
        super("OR", izquierda, derecha);
    }

    public OR(String nombre, Tipo tipo, Expresion izquierda, Expresion derecha) {
        super("OR", Tipo.Bool, izquierda, derecha);
    }

    @Override
    protected String getNombreOperacion() {
        return "OR";
    }

    @Override
    public String get_llvm_op_code(Tipo tipo) {
        return null;
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        //this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }
}
