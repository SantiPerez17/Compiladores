package archivos.jflexyjcup;

import java.util.*;

public class TablaSimboloV {

    private static Vector tabla = new Vector();

    public TablaSimboloV() {

    }

    public static void creaEntrada(String nombre, String tipo) {
        String subStr;
        SimboloV e = TablaSimboloV.busca(nombre);
        if (e == null) {
            //System.out.println("Objeto no encontrado, se puede agregar.");
            e = new SimboloV(nombre, tipo);
            tabla.addElement(e);
        }
        else {

        }
    }

    public static String getTipo(String nombre) {
        SimboloV e = TablaSimboloV.busca(nombre);
        if (e == null) {
            //throw new VarNoDefExc(nombre);
        }
        return e.getTipo();
    }

    public static double getValor (String nombre) {
        SimboloV e = TablaSimboloV.busca(nombre);
        if (e == null) {
            //throw new VarNoDefExc(nombre);
        }
        return e.getValor();
    }

    public static void setValor(String pnombre, double pval) {
        SimboloV e = null;
        int i = 0;
        while (i < tabla.size()) {
            e = (SimboloV)tabla.elementAt(i);
            if (e.getNombre().equals(pnombre)) {
                e.setValor(pval);
                tabla.set(i, e);
                break;
            }
            e = null;
            i++;
        }
    }

    public static Vector getTabla() {
        return tabla;
    }

    public static SimboloV busca(String nombre) {
        SimboloV e = null;
        int i = 0;
        while (i < tabla.size()) {
            e = (SimboloV)tabla.elementAt(i);
            //System.out.println("Esta buscando " + nombre + ", va por " + e.getNombre());
            if (e.getNombre().equals(nombre)) {
                break;
            }
            e = null;
            i++;
        }
        return e;
    }

}
