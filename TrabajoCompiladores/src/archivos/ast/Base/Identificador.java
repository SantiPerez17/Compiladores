package archivos.ast.Base;

import archivos.CodeGeneratorHelper;
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
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        if (this.getTipo().equals(Tipo.Int)) {
            resultado.append(String.format("%1$s = load i32, i32* @%2$s\n", this.getIr_ref(), this.getNombre()));
        } else if (this.getTipo().equals(Tipo.Float)) {
            resultado.append(String.format("%1$s = load double, double* @%2$s\n", this.getIr_ref(), this.getNombre()));
        } else if (this.getTipo().equals(Tipo.Bool)) {
            resultado.append(String.format("%1$s = load i1, i1* @%2$s\n", this.getIr_ref(), this.getNombre()));
        }
        return resultado.toString();
    }

}