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
        resultado.append(";Identificador:\n");

        //@x3 = global i32 5 		; Asigna un entero int32
        //@z = global double 8.7 	; Asigna un flotante doble
        //@valorbool = global i1 0 	; Asigna un booleano

        //Bool,
        //Int,
        //Float,
        //CTE_STRING

        return resultado.toString();
    }

}