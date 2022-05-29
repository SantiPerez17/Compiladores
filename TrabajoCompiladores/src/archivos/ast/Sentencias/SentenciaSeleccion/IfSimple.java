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
        StringBuilder resultado = new StringBuilder();
        resultado.append(super.graficar(idPadre));
        resultado.append(this.condicion.graficar(this.getId()));
        resultado.append(String.format("%1$s[label=\"%2$s\"]\n", this.getId()+1, "THEN"));
        resultado.append(String.format("%1$s--%2$s\n", this.getId(), this.getId()+1));
        for (Sentencia s:Sentencias){
            resultado.append(s.graficar(this.getId()+1));
        }
        return resultado.toString();
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        resultado.append(";IfSimple:\n");
        resultado.append(this.condicion.generarCodigo());
        this.Sentencias.get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        this.setIr_ref(CodeGeneratorHelper.getNewTag());
        resultado.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", this.condicion.getIr_ref(), "%"+Sentencias.get(0).getIr_ref(), "%"+this.getIr_ref()));
        //etiq1:
        //  %aux5 = icmp eq i32 %aux4, 10      ;   Comparación %aux4 que tiene c y 10
        //br i1 %aux5, label %etiq3, label %etiq4

        resultado.append(Sentencias.get(0).getIr_ref()+":\n");
        for (Sentencia s: Sentencias){
            resultado.append(s.generarCodigo());
            //etiq3:
            //  %temp141 = call i32 @puts(i8* getelementptr ([7 x i8], [7 x i8] * @gb.141 , i32 0, i32 0))		;Imprime Es 10
            //br label %fin
        }
        resultado.delete(resultado.indexOf(this.Sentencias.get(Sentencias.size()-1).getIr_ref()+":\n"),resultado.indexOf(this.Sentencias.get(Sentencias.size()-1).getIr_ref()+":\n")+(this.Sentencias.get(Sentencias.size()-1).getIr_ref()+":\n").length());
        resultado.append(String.format("br label %1$s\n", "%" + this.getIr_ref()));
        resultado.append(this.getIr_ref()+":\n");
        return resultado.toString();
    }
}
