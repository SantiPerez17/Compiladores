package archivos.ast.Sentencias.SentenciaSeleccion;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Sentencias.Sentencia;

import java.util.List;

public class IfElse extends Sentencia {
    private Expresion condicion;
    private List<Sentencia> sentencias1;
    private List<Sentencia> sentencias2;

    public Expresion getCondicion() {
        return condicion;
    }

    public void setCondicion(Expresion condicion) {
        this.condicion = condicion;
    }

    public List<Sentencia> getSentencias1() {
        return sentencias1;
    }

    public void setSentencias1(List<Sentencia> sentencias1) {
        this.sentencias1 = sentencias1;
    }

    public List<Sentencia> getSentencias2() {
        return sentencias2;
    }

    public void setSentencias2(List<Sentencia> sentencias2) {
        this.sentencias2 = sentencias2;
    }

    public IfElse(){}

    public IfElse(Expresion condicion, List<Sentencia> sentencias1, List<Sentencia> sentencias2) {
        this.condicion = condicion;
        this.sentencias1 = sentencias1;
        this.sentencias2 = sentencias2;
    }

    public IfElse(String nombre, Expresion condicion, List<Sentencia> sentencias1, List<Sentencia> sentencias2) {
        super(nombre);
        this.condicion = condicion;
        this.sentencias1 = sentencias1;
        this.sentencias2 = sentencias2;
    }

    @Override
    public String getEtiqueta() {
        return String.format("Sentencia%n - [ If Else ] -");
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
        for (Sentencia s:sentencias1){
            //se grafican las sentencias las cuales estan conectadas al nodo THEN.
            resultado.append(s.graficar(this.getId()+1));
        }
        //se crea un nodo llamado ELSE y se conecta con el nodo de esta clase.
        resultado.append(String.format("%1$s[label=\"%2$s\"]\n", this.getId()+2, "ELSE"));
        resultado.append(String.format("%1$s--%2$s\n", this.getId(), this.getId()+2));
        for (Sentencia s:sentencias2){
            //se grafican las sentencias las cuales estan conectadas al nodo ELSE.
            resultado.append(s.graficar(this.getId()+2));
        }
        //Se retorna como tipo String
        return resultado.toString();
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        StringBuilder resultado_sentencias1 = new StringBuilder();
        StringBuilder resultado_sentencias2 = new StringBuilder();
        resultado.append(";___IfElse___\n");
        resultado.append(this.getCondicion().generarCodigo());
        for (Sentencia sentencia: this.getSentencias1()){
            resultado_sentencias1.append(sentencia.generarCodigo());
        }
        for (Sentencia sentencia: this.getSentencias2()){
            resultado_sentencias2.append(sentencia.generarCodigo());
        }
        String etiquetaThen = CodeGeneratorHelper.getNewTag();
        String etiquetaElse = CodeGeneratorHelper.getNewTag();
        String etiquetaSiguiente = CodeGeneratorHelper.getNewTag();
        resultado.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", this.getCondicion().getIr_ref(), "%" + etiquetaThen, "%" + etiquetaElse));
        resultado.append(etiquetaThen+":\n");
        resultado.append(resultado_sentencias1);
        resultado.append("br label %" + etiquetaSiguiente + "\n");
        resultado.append(etiquetaElse+":\n");
        resultado.append(resultado_sentencias2);
        resultado.append("br label %" + etiquetaSiguiente + "\n");
        resultado.append(etiquetaSiguiente+":\n");
        return resultado.toString();
    }

}
