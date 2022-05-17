package archivos.jflexyjcup.ast.Operaciones.binarias.arismeticos;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;
import archivos.jflexyjcup.ast.Operaciones.binarias.OperacionBinaria;

public class Division extends OperacionBinaria {

    public Division(String nombre, Expresion izquierda, Expresion derecha) {
        super("/", izquierda, derecha);
    }

    public Division(String nombre, Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(nombre, tipo, izquierda, derecha);
    }

    public Division(Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(tipo, izquierda, derecha);
    }

    public Division(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public Division(Expresion izquierda, Expresion derecha, Tipo tipo) {
        super("/", Tipo.Unknown, izquierda, derecha);
    }

    @Override
    protected String getNombreOperacion() {
        return "/";
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