package archivos.ast.Base.Expresiones.FuncionEspecial;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Identificador;
import archivos.ast.Base.Tipo;
import archivos.ast.Sentencias.Sentencia;

import java.util.List;

public class Cola extends Expresion {

    private List<Expresion> expresiones;
    private Expresion pivot;
    private List<Sentencia> sentencias;
    private Identificador acum;
    private Identificador acumAux;

    public List<Expresion> getExpresiones() {
        return expresiones;
    }

    public void setExpresiones(List<Expresion> expresiones) {
        this.expresiones = expresiones;
    }

    public Expresion getPivot() {
        return pivot;
    }

    public void setPivot(Expresion pivot) {
        this.pivot = pivot;
    }

    public List<Sentencia> getSentencias() {
        return sentencias;
    }

    public void setSentencias(List<Sentencia> sentencias) {
        this.sentencias = sentencias;
    }

    public Identificador getAcum() {
        return acum;
    }

    public void setAcum(Identificador acum) {
        this.acum = acum;
    }

    public Identificador getAcumAux() {
        return acumAux;
    }

    public void setAcumAux(Identificador acumAux) {
        this.acumAux = acumAux;
    }

    public Cola(String nombre, Tipo tipo, List<Expresion> expresiones, Expresion pivot, List<Sentencia> sentencias, Identificador acum, Identificador acumAux) {
        super(nombre, tipo);
        this.expresiones = expresiones;
        this.pivot = pivot;
        this.sentencias = sentencias;
        this.acum = acum;
        this.acumAux = acumAux;
    }

    @Override
    public String getEtiqueta() {
        return " Cola - [ " + this.getNombre() + CodeGeneratorHelper.getNewID() + " ] - " + "\n Tipo: "+ this.getTipo();
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder resultado = new StringBuilder();
        resultado.append(super.graficar(idPadre));
        if(this.getExpresiones() != null){
            for (Expresion expresion: this.getExpresiones()){
                resultado.append(expresion.graficar(this.getId()));
            }
        }
        for (Sentencia sentencia:this.getSentencias()){
            resultado.append(sentencia.graficar(this.getId()));
        }
        return resultado.toString();
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        if(this.getExpresiones() != null){
            for (Expresion expresion: this.getExpresiones()){
                resultado.append(expresion.generarCodigo());
            }
        }
        for (Sentencia sentencia:this.getSentencias()){
            resultado.append(sentencia.generarCodigo());
        }
        this.setIr_ref("%aux" + CodeGeneratorHelper.getNextPointer());
        return resultado.toString();
    }

}
