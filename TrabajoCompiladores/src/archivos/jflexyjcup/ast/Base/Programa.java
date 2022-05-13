package archivos.jflexyjcup.ast.Base;

//import archivos.jflexyjcup.MiParser;
import archivos.jflexyjcup.ast.Sentencias.Sentencia;
import com.google.common.collect.Multimap;


import java.util.List;

public class Programa extends Nodo{

    Multimap<String, String> tablaSimbolos2;
    private final List<Sentencia> sentencias;


    public String getId() {
        return "nodo_programa";
    }

    public Programa(List<Sentencia> sentencias) {
        this.sentencias = sentencias;
    }

    public Programa(String nombre, List<Sentencia> sentencias) {
        super(nombre);
        this.sentencias = sentencias;
    }

    public Programa(Multimap<String, String> tablaSimbolos2, List<Sentencia> sentencias) {
        this.tablaSimbolos2 = tablaSimbolos2;
        this.sentencias = sentencias;
    }

    public Programa(String nombre, Multimap<String, String> tablaSimbolos2, List<Sentencia> sentencias) {
        super(nombre);
        this.tablaSimbolos2 = tablaSimbolos2;
        this.sentencias = sentencias;
    }

    public String graficar() {
        // Acá se dispara la invocación a los métodos graficar() de los nodos.
        // Como la Impresion no tiene padre, se inicia pasando null.
        StringBuilder resultado = new StringBuilder();
        resultado.append("graph G {");
        resultado.append(this.graficar(null));
        for (Sentencia s:sentencias){
            resultado.append(s.graficar(this.getId()));
        }
        resultado.append("}");
        return resultado.toString();
    }

}