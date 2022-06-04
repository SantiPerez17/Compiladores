package archivos.ast.Base.Expresiones.Operaciones.binarias.comparaciones;

import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Expresiones.Operaciones.binarias.OperacionBinaria;
import archivos.ast.Base.Tipo;

public class MayorOIgual extends OperacionBinaria {
    public MayorOIgual(Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(tipo, izquierda, derecha);
    }

    public MayorOIgual(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public MayorOIgual(String nombre, Expresion izquierda, Expresion derecha) {
        super(nombre, izquierda, derecha);
    }

    public MayorOIgual(String nombre, Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(nombre, tipo, izquierda, derecha);
    }

    @Override
    protected String getNombreOperacion() {
        return ">=";
    }

    @Override
    public String get_llvm_op_code(Tipo tipo) {
        if(tipo == Tipo.Int){
            return "icmp sge i32";
        } else {
            return "fcmp uge double";
        }
    }

}
