package archivos.ast.Base.Expresiones.Operaciones.binarias.arismeticos;

import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Tipo;
import archivos.ast.Base.Expresiones.Operaciones.binarias.OperacionBinaria;

public class Resta extends OperacionBinaria {
    public Resta(Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(tipo, izquierda, derecha);
    }

    public Resta(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public Resta(String nombre, Expresion izquierda, Expresion derecha) {
        super(nombre, izquierda, derecha);
    }

    public Resta(String nombre, Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(nombre, tipo, izquierda, derecha);
    }

    @Override
    protected String getNombreOperacion() {
        return "-";
    }

    @Override
    public String get_llvm_op_code(Tipo tipo) {
        if(tipo == Tipo.Int){
            return "sub";
        } else {
            return "fsub";
        }
    }
}