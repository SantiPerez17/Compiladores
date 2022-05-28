package archivos.ast.Base.Expresiones.Operaciones.binarias.logicas;

import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Expresiones.Operaciones.binarias.OperacionBinaria;
import archivos.ast.Base.Tipo;

public class AND extends OperacionBinaria {

    public AND(Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(Tipo.Bool, izquierda, derecha);
    }

    public AND(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public AND(String nombre, Expresion izquierda, Expresion derecha) {
        super("AND", izquierda, derecha);
    }

    public AND(String nombre, Tipo tipo, Expresion izquierda, Expresion derecha) {
        super("AND", Tipo.Bool, izquierda, derecha);
    }

    @Override
    protected String getNombreOperacion() {
        return "AND";
    }

    @Override
    public String get_llvm_op_code(Tipo tipo) {
        if(tipo == Tipo.Int){
            return "sdiv";
        } else {
            return "fsdiv";
        }
    }

}
