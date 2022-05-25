package archivos.jflexyjcup.ast.Operaciones.unarias;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

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
    /*@Override
    public String graficar(String idPadre) {
        StringBuilder resultado = new StringBuilder();
        resultado.append(super.graficar(idPadre));
        resultado.append(this.getExpresion().graficar(this.getId()));
        return resultado.toString();
    }*/

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        //this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }
}
