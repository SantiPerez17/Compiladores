package archivos.ast.Base.Expresiones.Operaciones.unarias;

import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Tipo;

public class NOT extends OperacionUnaria{

    public NOT(Expresion expresion, Tipo tipo) {
        super(expresion, expresion.getTipo());
    }

    public NOT(String nombre, Expresion expresion) {
        super(nombre,expresion);
    }

    public NOT(String nombre, Expresion expresion, Tipo tipo) {
        super(nombre, expresion, Tipo.Bool);
    }

    @Override
    protected String getNombreOperacion() {
        return "NOT";
    }

    @Override
    public String get_llvm_op_code(Tipo tipo) {
        //Esta no se utiliza, se resuelve en la clase OperacionUnaria
        return "not i1";
    }

}
