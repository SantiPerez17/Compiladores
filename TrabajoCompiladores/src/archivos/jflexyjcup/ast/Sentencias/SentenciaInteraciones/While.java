package archivos.jflexyjcup.ast.Sentencias.SentenciaInteraciones;

import archivos.jflexyjcup.ast.Sentencias.Sentencia;
import archivos.jflexyjcup.ast.Base.Expresion;

import java.util.List;

public class While extends Sentencia {
    private Expresion condicion;
    private List<Sentencia> Sentencias; // Lista con sentencias.

    public Expresion getCondicion() {
        return condicion;
    }

    public void setCondicion(Expresion condicion) {
        this.condicion = condicion;
    }

    public List<Sentencia> getSentencias() {
        return Sentencias;
    }

    public void setSentencias(List<Sentencia> sentencias) {
        Sentencias = sentencias;
    }

    public While(Expresion condicion, List<Sentencia> sentencias) {
        this.condicion = condicion;
        Sentencias = sentencias;
    }

    public While(String nombre, Expresion condicion, List<Sentencia> sentencias) {
        super(nombre);
        this.condicion = condicion;
        Sentencias = sentencias;
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder resultado = new StringBuilder();
        resultado.append(super.graficar(idPadre));
        resultado.append(this.condicion.graficar(this.getId()));
        resultado.append(String.format("%1$s[label=\"%2$s\"]\n", this.getId()+1, "DO"));
        resultado.append(String.format("%1$s--%2$s\n", this.getId(), this.getId()+1));
        for (Sentencia s:Sentencias){
            resultado.append(s.graficar(this.getId()+1));
        }
        return resultado.toString();
    }
}
