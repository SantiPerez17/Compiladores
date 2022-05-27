package archivos.ast.Base.Expresiones.Operaciones.unarias.conversiones;

import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Tipo;

public class EnteroAFlotante extends OperacionConversion{

    public EnteroAFlotante(Expresion expresion) {
        super("INT a FLOAT", expresion, Tipo.Float);
    }

    public EnteroAFlotante(String nombre, Expresion expresion) {
        super("INT a FLOAT", expresion);
    }

    @Override
    protected String getNombreOperacion() {
        return "INT a FLOAT";
    }

    @Override
    public String get_llvm_op_code(Tipo tipo) {
        return "sitofp";
    }

    @Override
    public void setTipo(Tipo tipo) {
        getExpresion().setTipo(Tipo.Float);
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        //this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }
}