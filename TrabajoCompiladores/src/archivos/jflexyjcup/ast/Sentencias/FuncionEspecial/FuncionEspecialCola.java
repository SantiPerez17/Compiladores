package archivos.jflexyjcup.ast.Sentencias.FuncionEspecial;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

import java.util.List;
/// no es necesaria esta clase.. se arma directo en el cup.


//int a = 5.5+ 4
//int a = 9.5 ??? a == 9 ERROR y advertir que se pierde precision
//float a = 5.5 + 4 == a = 9.5 te deja

public class FuncionEspecialCola extends Expresion {
    private String Pivot;
    private List<Expresion> Expresiones;
    private boolean ExpresionesIsNull = true;

    public FuncionEspecialCola(Tipo tipo, String pivot, List<Expresion> expresiones, boolean expresionesIsNull) {
        super(tipo);
        Pivot = pivot;
        Expresiones = expresiones;
        ExpresionesIsNull = expresionesIsNull;
    }

    public FuncionEspecialCola(String nombre, String pivot, List<Expresion> expresiones, boolean expresionesIsNull) {
        super(nombre);
        Pivot = pivot;
        Expresiones = expresiones;
        ExpresionesIsNull = expresionesIsNull;
    }

    public String getPivot() {
        return Pivot;
    }

    public void setPivot(String pivot) {
        Pivot = pivot;
    }

    public List<Expresion> getExpresiones() {
        return Expresiones;
    }

    public void setExpresiones(List<Expresion> expresiones) {
        if (!expresiones.isEmpty()) {
            Expresiones = expresiones;
            ExpresionesIsNull=false;
        }
        else{
            Expresiones = null;
            ExpresionesIsNull = true;
        }
    }

    public boolean isExpresionesIsNull() {
        return ExpresionesIsNull;
    }

    public void setExpresionesIsNull(boolean expresionesIsNull) {
        ExpresionesIsNull = expresionesIsNull;
    }

    public FuncionEspecialCola(Tipo tipo, String nombre, String pivot, List<Expresion> expresiones, boolean expresionesIsNull) {
        super(tipo, nombre);
        Pivot = pivot;
        Expresiones = expresiones;
        ExpresionesIsNull = expresionesIsNull;
    }

}
