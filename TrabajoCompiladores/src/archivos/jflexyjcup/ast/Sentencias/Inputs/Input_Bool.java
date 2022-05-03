package archivos.jflexyjcup.ast.Sentencias.Inputs;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

public class Input_Bool extends Expresion {
   private Expresion ExpBooleana;

    public Expresion getExpBooleana() {
        return ExpBooleana;
    }

    public void setExpBooleana(Expresion expBooleana) {
        ExpBooleana = expBooleana;
    }

    public Input_Bool(Tipo tipo, Expresion expBooleana) {
        super(tipo);
        ExpBooleana = expBooleana;
    }

    public Input_Bool(String nombre, Expresion expBooleana) {
        super(nombre);
        ExpBooleana = expBooleana;
    }

    public Input_Bool(Tipo tipo, String nombre, Expresion expBooleana) {
        super(tipo, nombre);
        ExpBooleana = expBooleana;
    }

    public Input_Bool(Tipo tipo) {
        super(Tipo.BOOL);
    }

    public Input_Bool(String nombre) {
        super(nombre);
    }

    public Input_Bool(Tipo tipo, String nombre) {
        super(Tipo.BOOL, nombre);
    }
}
