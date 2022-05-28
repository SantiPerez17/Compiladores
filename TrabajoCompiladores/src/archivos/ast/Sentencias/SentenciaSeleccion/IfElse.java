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
        StringBuilder resultado = new StringBuilder();
        resultado.append(super.graficar(idPadre));
        resultado.append(this.condicion.graficar(this.getId()));
        resultado.append(String.format("%1$s[label=\"%2$s\"]\n", this.getId()+1, "THEN"));
        resultado.append(String.format("%1$s--%2$s\n", this.getId(), this.getId()+1));
        for (Sentencia s:sentencias1){
            resultado.append(s.graficar(this.getId()+1));
        }
        resultado.append(String.format("%1$s[label=\"%2$s\"]\n", this.getId()+2, "ELSE"));
        resultado.append(String.format("%1$s--%2$s\n", this.getId(), this.getId()+2));
        for (Sentencia s:sentencias2){
            resultado.append(s.graficar(this.getId()+2));
        }

        return resultado.toString();
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        resultado.append(";IfElse:\n");
        this.setIr_ref(CodeGeneratorHelper.getNewTag());
        resultado.append(this.getIr_ref()+":\n");
        resultado.append(this.condicion.generarCodigo());
        this.sentencias1.get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        this.sentencias2.get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        this.setIr_ref(CodeGeneratorHelper.getNewTag());
        resultado.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", this.condicion.getIr_ref(), "%"+sentencias1.get(0).getIr_ref(), "%"+sentencias2.get(0).getIr_ref()));
        //etiq1:
        //  %aux5 = icmp eq i32 %aux4, 10      ;   Comparación %aux4 que tiene c y 10
        //br i1 %aux5, label %etiq3, label %etiq4

        resultado.append(sentencias1.get(0).getIr_ref()+":\n");
        for (Sentencia s: sentencias1){
            resultado.append(s.generarCodigo());
            //etiq3:
            //  %temp141 = call i32 @puts(i8* getelementptr ([7 x i8], [7 x i8] * @gb.141 , i32 0, i32 0))		;Imprime Es 10
            //br label %fin
        }
        resultado.append(String.format("br label %1$s\n", "%" + this.getIr_ref()));

        resultado.append(sentencias2.get(0).getIr_ref()+":\n");
        for (Sentencia s: sentencias2){
            resultado.append(s.generarCodigo());
            //etiq4:
            //  %temp143 = call i32 @puts(i8* getelementptr ([10 x i8], [10 x i8] * @gb.143 , i32 0, i32 0))	;Imprime No es 10
            //br label %fin
            //fin:
        }
        resultado.append(String.format("br label %1$s\n", "%" + this.getIr_ref()));
        resultado.append(this.getIr_ref()+":\n");
        return resultado.toString();
    }

}
