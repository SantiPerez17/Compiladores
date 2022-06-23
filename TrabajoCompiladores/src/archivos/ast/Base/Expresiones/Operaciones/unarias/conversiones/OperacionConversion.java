package archivos.ast.Base.Expresiones.Operaciones.unarias.conversiones;

import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Expresiones.Operaciones.unarias.OperacionUnaria;
import archivos.ast.Base.Tipo;

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

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        //Esta no se utiliza, se realiza la conversion en la clase EnteroAFlotante
        return resultado.toString();
    }
}