package archivos.jflexyjcup.ast.Operaciones.unarias;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

public class MenosUnario extends OperacionUnaria{
    public MenosUnario(Expresion expresion, Tipo tipo) {
        super(expresion, expresion.getTipo());
    }

    public MenosUnario(String nombre, Expresion expresion, Tipo tipo) {
        super(nombre, expresion, expresion.getTipo());
    }

    public MenosUnario(String nombre, Expresion expresion) {
        super(nombre, expresion);
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder resultado = new StringBuilder();
        resultado.append(super.graficar(idPadre));
        resultado.append(this.getExpresion().graficar(this.getId()));
        return resultado.toString();
    }
}
