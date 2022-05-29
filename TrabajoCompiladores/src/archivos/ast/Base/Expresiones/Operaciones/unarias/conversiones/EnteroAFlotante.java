package archivos.ast.Base.Expresiones.Operaciones.unarias.conversiones;

import archivos.CodeGeneratorHelper;
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
    public String generarCodigo(String etiqueta) {
        StringBuilder resultado = new StringBuilder();
        resultado.append(this.getExpresion().generarCodigo(etiqueta));
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        resultado.append(String.format("%1$s = sitofp i32 %2$s to double\n", this.getIr_ref(), this.getExpresion().getIr_ref()));
        return resultado.toString();
    }
}