package archivos.ast.Base.Expresiones.Operaciones.unarias.conversiones;

import archivos.CodeGeneratorHelper;
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
        //%vdestino = sitofp i32 %vorigen to float

        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        resultado.append(String.format("%1$s = sitofp i32 %2$s to float\n", this.getIr_ref(), this.getExpresion().getIr_ref()));
        return resultado.toString();
    }
}