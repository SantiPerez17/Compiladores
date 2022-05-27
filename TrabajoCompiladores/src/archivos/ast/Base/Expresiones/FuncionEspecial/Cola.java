package archivos.ast.Base.Expresiones.FuncionEspecial;

import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Tipo;
import archivos.ast.Sentencias.Sentencia;

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
        super(nombre, tipo);
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

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        resultado.append(";Cola:\n");
        //this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }
}
