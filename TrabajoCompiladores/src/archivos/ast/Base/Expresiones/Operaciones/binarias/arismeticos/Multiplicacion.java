package archivos.ast.Base.Expresiones.Operaciones.binarias.arismeticos;

import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Tipo;
import archivos.ast.Base.Expresiones.Operaciones.binarias.OperacionBinaria;

public class Multiplicacion extends OperacionBinaria {
    public Multiplicacion(String nombre, Expresion izquierda, Expresion derecha) {
        super(nombre, izquierda, derecha);
    }

    public Multiplicacion(String nombre, Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(nombre, tipo, izquierda, derecha);
    }

    public Multiplicacion(Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(tipo, izquierda, derecha);
    }

    public Multiplicacion(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public Multiplicacion(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super(tipo, izquierda, derecha);
    }

    @Override
    protected String getNombreOperacion() {
        return "*";
    }

    @Override
    public String get_llvm_op_code(Tipo tipo) {
        if(tipo == Tipo.Int){
            return "mul";
        } else {
            return "fmul";
        }
    }

}