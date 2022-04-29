package ast.Sentencias.FuncionEspecial;

import ast.base.Expresion;
import ast.base.Tipo;

import java.util.ArrayList;
import java.util.List;

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

    public FuncionEspecialCola(String pivot, List<Expresion> expresiones, boolean expresionesIsNull) {
        Pivot = pivot;
        Expresiones = expresiones;
        ExpresionesIsNull = expresionesIsNull;
    }
}
