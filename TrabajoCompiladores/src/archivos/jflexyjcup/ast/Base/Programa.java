package archivos.jflexyjcup.ast.Base;

//import archivos.jflexyjcup.MiParser;
import archivos.jflexyjcup.ast.Sentencias.Sentencia;
import com.google.common.collect.Multimap;


import java.util.List;

public class Programa extends Nodo{
    Multimap<String, String> tablaSimbolos2;
    private List<Sentencia> sentencias;

    public Multimap<String, String> getTablaSimbolos2() {
        return tablaSimbolos2;
    }

    public Programa(Multimap<String, String> tablaSimbolos2 ){
        this.tablaSimbolos2 = tablaSimbolos2;
    }

    public Programa(Multimap<String, String> tablaSimbolos2, List<Sentencia> sentencias) {
        this.tablaSimbolos2 = tablaSimbolos2;
        this.sentencias = sentencias;
    }
    public Programa(List<Sentencia> sentencias){
        this.sentencias=sentencias;
    }

    public Programa(String nombre, Multimap<String, String> tablaSimbolos2, List<Sentencia> sentencias) {
        super(nombre);
        this.tablaSimbolos2 = tablaSimbolos2;
        this.sentencias = sentencias;
    }
}