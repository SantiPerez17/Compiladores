package archivos.jflexyjcup.ast.Operaciones.unarias;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

public class NOT extends OperacionUnaria{
    public NOT(Expresion expresion, Tipo tipo) {
        super(expresion, expresion.getTipo());
    }

    public NOT(String nombre, Expresion expresion) {
        super("NOT",expresion);
    }

    public NOT(String nombre, Expresion expresion, Tipo tipo) {
        super("NOT", expresion, expresion.getTipo());
    }
    @Override
    public String graficar(String idPadre) {
        StringBuilder resultado = new StringBuilder();
        resultado.append(super.graficar(idPadre));
        resultado.append(this.getExpresion().graficar(this.getId()));
        return resultado.toString();
    }
}
