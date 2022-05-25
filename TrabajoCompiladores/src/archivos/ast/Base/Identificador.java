package archivos.ast.Base;

import archivos.ast.Base.Expresiones.Expresion;

public class Identificador extends Expresion {

    public Identificador(Tipo tipo) {
        super(tipo);
    }

    public Identificador() {
    }

    public Identificador(String nombre) {
        super(nombre);
    }

    public Identificador(String nombre, Tipo tipo) {
        super(nombre, tipo);
    }

    @Override
    public String getEtiqueta() {
        return " ID - [ " + this.getNombre() + " ] - " + "\n Tipo: "+ this.getTipo();
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        //this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }

}