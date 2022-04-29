package ast.operaciones.unarias;

import ast.base.Expresion;
import ast.base.Tipo;

public class NOT extends OperacionUnaria{
    public NOT(Expresion expresion) {
        super(expresion);
    }

    public NOT(String nombre, Expresion expresion) {
        super(nombre, expresion);
    }

    public NOT(Expresion expresion, Tipo tipo) {
        super(expresion, tipo);
    }

    public NOT(String nombre, Expresion expresion, Tipo tipo) {
        super(nombre, expresion, tipo);
    }
}
