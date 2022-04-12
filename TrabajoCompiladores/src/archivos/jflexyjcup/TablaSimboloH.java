package archivos.jflexyjcup;

import java.util.*;

public class TablaSimboloH {

    Hashtable t;

    public TablaSimboloH() {
        t = new Hashtable();
    }

    public SimboloH insertar(String nombre) {
        SimboloH s = new SimboloH(nombre, new Integer(0));
        t.put(nombre, s);
        return s;
    }

    public SimboloH buscar(String nombre) {
        return (SimboloH)(t.get(nombre));
    }

    public void imprimir() {
        Iterator it = t.values().iterator();
        while(it.hasNext()) {
            SimboloH s = (SimboloH)it.next();
            System.out.println(s.nombre + ": " + s.valor);
        }
    }

}
