package archivos.ast.Base.Expresiones.FuncionEspecial;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Expresiones.Operaciones.binarias.OperacionBinaria;
import archivos.ast.Base.Expresiones.Operaciones.unarias.OperacionUnaria;
import archivos.ast.Base.Identificador;
import archivos.ast.Base.Tipo;
import archivos.ast.Sentencias.Sentencia;

import java.util.ArrayList;
import java.util.List;

public class Cola extends Expresion {

    private List<Expresion> expresiones;
    private Expresion pivot;
    private List<Expresion> colas_internas;
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

    public List<Expresion> getColasInternas() {
        return colas_internas;
    }

    public void setColasInternas(List<Expresion> colas_internas) {
        this.colas_internas = colas_internas;
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

    public Cola(String nombre, Tipo tipo, List<Expresion> expresiones, Expresion pivot, List<Expresion> colas_internas, List<Sentencia> sentencias, Identificador acum, Identificador acumAux) {
        super(nombre, tipo);
        this.expresiones = expresiones;
        this.pivot = pivot;
        this.colas_internas = colas_internas;
        this.sentencias = sentencias;
        this.acum = acum;
        this.acumAux = acumAux;
    }

    //Este metodo recursivo se encarga de apilar las colas internas. Contempla si la cola esta dentro de una expresion binaria o unaria. Se llama desde el parser, y las guarda en la lista de colas
    public void colasInternas(List<Expresion> expresiones) {
        List<Cola> colasInternasAux = new ArrayList<>();
        for (Expresion e : expresiones) {
            if(e.getNombre() == "Cola") {
                colasInternasAux.add((Cola) e);
            } else {
                try{
                    OperacionBinaria ob = (OperacionBinaria) e;
                    if(ob.getIzquierda().getNombre().equals("Cola")){
                        colasInternasAux.add((Cola) ob.getIzquierda());
                    }
                    if(ob.getDerecha().getNombre().equals("Cola")){
                        colasInternasAux.add((Cola) ob.getDerecha());
                    }
                }catch (Exception e1){
                    try{
                        OperacionUnaria ou = (OperacionUnaria) e;
                        if(ou.getExpresion().getNombre().equals("Cola")){
                            colasInternasAux.add((Cola) ou.getExpresion());
                        }
                    }catch (Exception e2){
                    }
                }
            }
        }
        //Aqui se hace la recursion, enviando por parametro las expresiones de las colas encontradas.
        if (colasInternasAux.size()>0){
            for (Cola c: colasInternasAux){
                this.getColasInternas().add(c);
                colasInternas(c.getExpresiones());
            }
        }
    }

    @Override
    public String getEtiqueta() {
        return " Cola - [ " + this.getNombre() + CodeGeneratorHelper.getNewID() + " ] - " + "\n Tipo: "+ this.getTipo();
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder resultado = new StringBuilder();
        for (Sentencia sentencia:this.getSentencias()){
            resultado.append(sentencia.graficar(this.getId()));
        }
        return resultado.toString();
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        for (Sentencia sentencia:this.getSentencias()){
            resultado.append(sentencia.generarCodigo());
        }
        return resultado.toString();
    }

}
