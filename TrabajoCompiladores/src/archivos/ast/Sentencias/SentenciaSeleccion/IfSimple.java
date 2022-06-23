package archivos.ast.Sentencias.SentenciaSeleccion;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Sentencias.Sentencia;

import java.util.List;

public class IfSimple extends Sentencia {
    private Expresion condicion;
    private List<Sentencia> Sentencias; //hacer lista con sentencias

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

    public IfSimple(Expresion condicion, List<Sentencia> sentencias) {
        this.condicion = condicion;
        Sentencias = sentencias;
    }

    public IfSimple(String nombre, Expresion condicion, List<Sentencia> sentencias) {
        super(nombre);
        this.condicion = condicion;
        Sentencias = sentencias;
    }
    @Override
    public String getEtiqueta() {
        return String.format("Sentencia%n - [ If Simple ] -");
    }

    @Override
    public String graficar(String idPadre) {
        //Se crea un StringBuilder
        StringBuilder resultado = new StringBuilder();
        //Se agrega en el StringBuilder el String del metodo graficar con el id del padre
        resultado.append(super.graficar(idPadre));
        //se grafica la condicion
        resultado.append(this.condicion.graficar(this.getId()));
        //se crea un nodo llamado THEN y se conecta con el nodo de esta clase.
        resultado.append(String.format("%1$s[label=\"%2$s\"]\n", this.getId()+1, "THEN"));
        resultado.append(String.format("%1$s--%2$s\n", this.getId(), this.getId()+1));
        for (Sentencia s:Sentencias){
            //se grafican las sentencias las cuales estan conectadas al nodo THEN.
            resultado.append(s.graficar(this.getId()+1));
        }
        return resultado.toString();
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        StringBuilder resultado_sentencias = new StringBuilder();
        resultado.append(";___IfSimple___\n");
        resultado.append(this.getCondicion().generarCodigo());
        for (Sentencia sentencia: this.getSentencias()){
            resultado_sentencias.append(sentencia.generarCodigo());
        }
        String etiquetaThen = CodeGeneratorHelper.getNewTag();
        String etiquetaSiguiente = CodeGeneratorHelper.getNewTag();
        resultado.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", this.getCondicion().getIr_ref(), "%" + etiquetaThen, "%" + etiquetaSiguiente));
        resultado.append(etiquetaThen+":\n");
        resultado.append(resultado_sentencias);
        resultado.append("br label %" + etiquetaSiguiente + "\n");
        resultado.append(etiquetaSiguiente+":\n");
        return resultado.toString();
    }
}
