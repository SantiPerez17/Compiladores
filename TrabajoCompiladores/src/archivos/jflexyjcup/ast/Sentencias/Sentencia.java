package archivos.jflexyjcup.ast.Sentencias;

import archivos.jflexyjcup.ast.Base.Nodo;

public abstract class Sentencia extends Nodo {
    public Sentencia() {
    }
    public Sentencia(String nombre) {
        super(nombre);
    }

    //@Override
    //public String generarCodigo() {
        //StringBuilder resultado = new StringBuilder();
        //this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        //return resultado.toString();
    //}
}
