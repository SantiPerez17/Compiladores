package archivos.jflexyjcup.ast.Sentencias.FuncionEspecial;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;
import archivos.jflexyjcup.ast.Sentencias.Sentencia;

import java.util.ArrayList;
import java.util.List;

public class Cola extends Expresion {
    private List<Sentencia> lista_sentencias = new ArrayList<>();

    public Cola(Tipo tipo, List<Sentencia> lista_sentencias) {
        super(tipo);
        this.lista_sentencias = lista_sentencias;
    }

    public Cola(List<Sentencia> lista_sentencias) {
        this.lista_sentencias = lista_sentencias;
    }

    public Cola(String nombre, List<Sentencia> lista_sentencias) {
        super(nombre);
        this.lista_sentencias = lista_sentencias;
    }

    public Cola(String nombre, Tipo tipo, List<Sentencia> lista_sentencias) {
        super(nombre, Tipo.Int);
        this.lista_sentencias = lista_sentencias;
    }

    @Override
    public String getEtiqueta() {
        return " Cola - [ " + this.getNombre() + " ] - " + "\n Tipo: "+ this.getTipo();
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder resultado = new StringBuilder();
        //resultado.append(super.graficar(idPadre));
        for (Sentencia s:lista_sentencias){
            resultado.append(s.graficar("nodo_programa"));
        }
        return resultado.toString();
    }
}
