package archivos.jflexyjcup.ast.Operaciones.unarias.conversiones;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;
import archivos.jflexyjcup.ast.Operaciones.unarias.OperacionUnaria;

public abstract class OperacionConversion extends OperacionUnaria {

    public OperacionConversion(Expresion expresion, Tipo tipo) {
        super(expresion, tipo);
    }

    public OperacionConversion(String nombre, Expresion expresion) {
        super(nombre, expresion);
    }

    public OperacionConversion(String nombre, Expresion expresion, Tipo tipo) {
        super(nombre, expresion, tipo);
    }

}