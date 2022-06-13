package archivos.ast.Base.Expresiones.FuncionEspecial;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Expresiones.Operaciones.binarias.OperacionBinaria;
import archivos.ast.Base.Expresiones.Operaciones.unarias.OperacionUnaria;
import archivos.ast.Base.Identificador;
import archivos.ast.Base.Tipo;
import archivos.ast.Sentencias.Asignacion;
import archivos.ast.Sentencias.Sentencia;
import archivos.ast.Sentencias.SentenciaSeleccion.IfElse;

import java.util.ArrayList;
import java.util.List;

public class Cola extends Expresion {

    public Asignacion getAsignacion() {
        return asignacion;
    }

    public void setAsignacion(Asignacion asignacion) {
        this.asignacion = asignacion;
    }

    public List<Expresion> getColas() {
        return colas;
    }

    public void setColas(List<Expresion> colas) {
        this.colas = colas;
    }

    public IfElse getIfelse() {
        return ifelse;
    }

    public void setIfelse(IfElse ifelse) {
        this.ifelse = ifelse;
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

    public List<Sentencia> getIfelse_colas() {
        return ifelse_colas;
    }

    public void setIfelse_colas(List<Sentencia> ifelse_colas) {
        this.ifelse_colas = ifelse_colas;
    }

    private List<Expresion> expresiones;
    private Expresion pivot;

    private Asignacion asignacion;
    private List<Expresion> colas;
    private IfElse ifelse;
    private List<Sentencia> ifelse_colas;
    private Identificador acum;
    private Identificador acumAux;


    public Cola(Tipo tipo, Asignacion asignacion, List<Expresion> colas,IfElse ifelse,List<Sentencia> ifelse_colas, Identificador acum, Identificador acumAux, List<Expresion> expresiones, Expresion pivot) {
        super(tipo);
        this.asignacion = asignacion;
        this.colas = colas;
        this.ifelse = ifelse;
        this.acum = acum;
        this.acumAux = acumAux;
        this.expresiones = expresiones;
        this.pivot = pivot;
    }

    public Cola(Asignacion asignacion, List<Expresion> colas, IfElse ifelse,List<Sentencia> ifelse_colas, Identificador acum, Identificador acumAux, List<Expresion> expresiones, Expresion pivot) {
        this.asignacion = asignacion;
        this.colas = colas;
        this.ifelse = ifelse;
        this.ifelse_colas = ifelse_colas;
        this.acum = acum;
        this.acumAux = acumAux;
        this.expresiones = expresiones;
        this.pivot = pivot;
    }

    public Cola(String nombre, Asignacion asignacion, List<Expresion> colas, IfElse ifelse,List<Sentencia> ifelse_colas, Identificador acum, Identificador acumAux, List<Expresion> expresiones, Expresion pivot) {
        super(nombre);
        this.asignacion = asignacion;
        this.colas = colas;
        this.ifelse = ifelse;
        this.ifelse_colas = ifelse_colas;
        this.acum = acum;
        this.acumAux = acumAux;
        this.expresiones = expresiones;
        this.pivot = pivot;
    }

    public Cola(String nombre, Tipo tipo, Asignacion asignacion, List<Expresion> colas, IfElse ifelse,List<Sentencia> ifelse_colas, Identificador acum, Identificador acumAux, List<Expresion> expresiones, Expresion pivot) {
        super(nombre, tipo);
        this.asignacion = asignacion;
        this.colas = colas;
        this.ifelse = ifelse;
        this.ifelse_colas = ifelse_colas;
        this.acum = acum;
        this.acumAux = acumAux;
        this.expresiones = expresiones;
        this.pivot = pivot;
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
                this.getColas().add(c);
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
        //Se genera un nuevo nodo que muestre la etiqueta de Cola, y lo une con el nodo del idPadre
        resultado.append(String.format("%1$s[label=\"%2$s\"]\n", this.getId()+1, this.getEtiqueta()));
        resultado.append(String.format("%1$s--%2$s\n", idPadre, this.getId()+1));
        resultado.append(this.ifelse.graficar("nodo_programa"));
        return resultado.toString();
    }

    @Override
    public String generarCodigo(String etiqueta) {
        StringBuilder resultado = new StringBuilder();
        //Aqui simplemente llamamos al metodo generarCodigo(String etiqueta) del IfElse, para que genere el codigo de los ifelse anidados generados previamente en el parser.
        //Especificamos en la etiqueta que viene de una cola porque tiene un comportamiento diferente al de un IfElse ordinario.
        resultado.append(this.ifelse.generarCodigo(etiqueta+"Cola"));
        return resultado.toString();
    }

}
