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

        //@x3 = global i32 5 		; Asigna un entero int32
        //@z = global double 8.7 	; Asigna un flotante doble
        //@valorbool = global i1 0 	; Asigna un booleano

        //Bool,
        //Int,
        //Float,
        //CTE_STRING
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        if (this.getTipo().equals(Tipo.Int)){
            resultado.append(String.format("%1$s = global i32 0\n", this.getIr_ref()));
        } else if (this.getTipo().equals(Tipo.Float)){
            resultado.append(String.format("%1$s = global double 0.0\n", this.getIr_ref()));
        } else if (this.getTipo().equals(Tipo.Bool)){
            resultado.append(String.format("%1$s = global i1 true\n", this.getIr_ref()));
        } else {
            resultado.append(String.format("%1$s = global i1 ''\n", this.getIr_ref()));
        }
        return resultado.toString();
    }

}