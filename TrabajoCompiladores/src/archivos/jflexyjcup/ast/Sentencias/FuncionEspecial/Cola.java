package archivos.jflexyjcup.ast.Sentencias.FuncionEspecial;

import archivos.jflexyjcup.ast.Base.*;
import archivos.jflexyjcup.ast.Sentencias.Sentencia;
import archivos.jflexyjcup.ast.Sentencias.SentenciaSeleccion.IfElse;

import java.util.ArrayList;
import java.util.List;

public class Cola extends Expresion {
    private List<Sentencia> lista_sentencias = new ArrayList<>();
    private final Identificador acum;

    public Cola(Tipo tipo, List<Sentencia> lista_sentencias, Identificador acum) {
        super(tipo);
        this.lista_sentencias = lista_sentencias;
        this.acum = acum;
    }

    public Cola(List<Sentencia> lista_sentencias, Identificador acum) {
        this.lista_sentencias = lista_sentencias;
        this.acum = acum;
    }

    public Cola(String nombre, List<Sentencia> lista_sentencias, Identificador acum) {
        super(nombre);
        this.lista_sentencias = lista_sentencias;
        this.acum = acum;
    }

    public Cola(String nombre, Tipo tipo, List<Sentencia> lista_sentencias, Identificador acum) {
        super(nombre, Tipo.Int);
        this.lista_sentencias = lista_sentencias;
        this.acum = acum;
    }

    @Override
    public String getEtiqueta() {
        return " Cola - [ " + this.getNombre() + " ] - " + "\n Tipo: "+ this.getTipo();
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder resultado = new StringBuilder();
        resultado.append(super.graficar(idPadre));
        resultado.append(this.acum.graficar(idPadre));
        for (Sentencia s:lista_sentencias){
            resultado.append(s.graficar("nodo_programa"));
        }
        return resultado.toString();
    }
}
