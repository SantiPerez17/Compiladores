package archivos.ast.Sentencias.SentenciaInteraciones;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Sentencias.Sentencia;

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

    @Override
    public String getEtiqueta() {
        return String.format("Sentencia%n - [ While ] -");
    }

    public While(String nombre, Expresion condicion, List<Sentencia> sentencias) {
        super(nombre);
        this.condicion = condicion;
        Sentencias = sentencias;
    }

    @Override
    public String graficar(String idPadre) {
        //Se crea un StringBuilder
        StringBuilder resultado = new StringBuilder();
        //Se agrega en el StringBuilder el String del metodo graficar con el id del padre
        resultado.append(super.graficar(idPadre));
        //se grafica la condicion
        resultado.append(this.condicion.graficar(this.getId()));
        //se crea un nodo llamado DO y se conecta con el nodo de esta clase.
        resultado.append(String.format("%1$s[label=\"%2$s\"]\n", this.getId()+1, "DO"));
        resultado.append(String.format("%1$s--%2$s\n", this.getId(), this.getId()+1));
        //se grafican las sentencias las cuales estan conectadas al nodo DO.
        for (Sentencia s:Sentencias){
            resultado.append(s.graficar(this.getId()+1));
        }
        return resultado.toString();
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        StringBuilder resultado_sentencias = new StringBuilder();
        resultado.append(";___While___\n");
        String etiquetaCondicion = CodeGeneratorHelper.getNewTag();
        resultado.append("br label %" + etiquetaCondicion + "\n");
        resultado.append(etiquetaCondicion+":\n");
        resultado.append(this.getCondicion().generarCodigo());
        for (Sentencia sentencia: this.getSentencias()){
            resultado_sentencias.append(sentencia.generarCodigo());
        }
        String etiquetaDo = CodeGeneratorHelper.getNewTag();
        String etiquetaSiguiente = CodeGeneratorHelper.getNewTag();
        resultado.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", this.getCondicion().getIr_ref(), "%" + etiquetaDo, "%" + etiquetaSiguiente));
        resultado.append(etiquetaDo+":\n");
        resultado.append(resultado_sentencias);
        resultado.append("br label %" + etiquetaCondicion + "\n");
        resultado.append(etiquetaSiguiente+":\n");
        return resultado.toString();
    }
}
