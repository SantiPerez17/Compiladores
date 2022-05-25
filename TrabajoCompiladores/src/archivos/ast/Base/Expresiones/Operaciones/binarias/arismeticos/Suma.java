package archivos.ast.Base.Expresiones.Operaciones.binarias.arismeticos;

import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Tipo;
import archivos.ast.Base.Expresiones.Operaciones.binarias.OperacionBinaria;

public class Suma extends OperacionBinaria {

    public Suma(Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(tipo, izquierda, derecha);
    }

    public Suma(Expresion izquierda, Expresion derecha) {
        super(izquierda, derecha);
    }

    public Suma(String nombre, Expresion izquierda, Expresion derecha) {
        super(nombre, izquierda, derecha);
    }

    public Suma(String nombre, Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(nombre, tipo, izquierda, derecha);
    }

    @Override
    protected String getNombreOperacion() {
        return "+";
    }

    @Override
    public String get_llvm_op_code(Tipo tipo) {
        if(tipo == Tipo.Int){
            return "add";
        } else {
            return "fadd";
        }
    }
}