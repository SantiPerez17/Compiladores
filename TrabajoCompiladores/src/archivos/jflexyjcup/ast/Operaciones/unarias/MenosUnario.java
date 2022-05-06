package archivos.jflexyjcup.ast.Operaciones.unarias;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

public class MenosUnario extends OperacionUnaria{
    private String signo =  "-";
    public MenosUnario(Expresion expresion, Tipo tipo) {
        super(expresion, tipo);
    }

    public MenosUnario(String nombre, Expresion expresion, Tipo tipo) {
        super(nombre, expresion, tipo);
    }

    public void graficar (String idPadre){
        //getExpresion().getEtiqueta()
    }


}
