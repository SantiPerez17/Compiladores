package archivos.ast.Base.Expresiones.Operaciones.unarias;

import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Tipo;

public class MenosUnario extends OperacionUnaria{

    public MenosUnario(Expresion expresion, Tipo tipo) {
        super(expresion, expresion.getTipo());
    }

    public MenosUnario(String nombre, Expresion expresion, Tipo tipo) {
        super(nombre, expresion, expresion.getTipo());
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

    public MenosUnario(String nombre, Expresion expresion) {
        super(nombre, expresion);
    }

}
