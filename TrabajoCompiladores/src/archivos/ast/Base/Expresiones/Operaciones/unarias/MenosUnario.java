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

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        //this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }
}
