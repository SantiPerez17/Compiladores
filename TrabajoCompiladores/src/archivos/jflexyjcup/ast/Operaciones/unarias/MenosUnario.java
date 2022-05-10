package archivos.jflexyjcup.ast.Operaciones.unarias;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

public class MenosUnario extends OperacionUnaria{

    public MenosUnario(Expresion expresion, Tipo tipo) {
        super(expresion, tipo);
    }

    public MenosUnario(String nombre, Expresion expresion, Tipo tipo) {
        super(nombre, expresion, tipo);
    }

    public MenosUnario(String nombre, Expresion expresion, String signo) {
        super("-", expresion);
    }
}
