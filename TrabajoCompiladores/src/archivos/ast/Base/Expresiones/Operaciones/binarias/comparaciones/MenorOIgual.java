package archivos.ast.Base.Expresiones.Operaciones.binarias.comparaciones;

import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Expresiones.Operaciones.binarias.OperacionBinaria;
import archivos.ast.Base.Tipo;

public class MenorOIgual extends OperacionBinaria {

    public MenorOIgual(Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(tipo, izquierda, derecha);
    }

    public MenorOIgual(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public MenorOIgual(String nombre, Expresion izquierda, Expresion derecha) {
        super(nombre, izquierda, derecha);
    }

    public MenorOIgual(String nombre, Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(nombre, tipo, izquierda, derecha);
    }

    @Override
    protected String getNombreOperacion() {
        return null;
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