package archivos.ast.Base.Expresiones.FuncionEspecial;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Tipo;
import archivos.ast.Sentencias.Sentencia;
import archivos.ast.Sentencias.SentenciaSeleccion.IfElse;

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
    public String generarCodigo(String etiqueta) {
        StringBuilder resultado = new StringBuilder();
        StringBuilder condicion_ifelse1 = new StringBuilder();
        StringBuilder resultado_sentencias1_ifelse1 = new StringBuilder();
        StringBuilder resultado_sentencias2_ifelse1 = new StringBuilder();
        StringBuilder condicion_ifelse2 = new StringBuilder();
        StringBuilder resultado_sentencias1_ifelse2 = new StringBuilder();
        StringBuilder resultado_sentencias2_ifelse2 = new StringBuilder();
        StringBuilder condicion_ifelse3 = new StringBuilder();
        StringBuilder resultado_sentencias1_ifelse3 = new StringBuilder();
        StringBuilder resultado_sentencias2_ifelse3 = new StringBuilder();
        StringBuilder condicion_ifelse4 = new StringBuilder();
        StringBuilder resultado_sentencias1_ifelse4 = new StringBuilder();
        StringBuilder resultado_sentencias2_ifelse4 = new StringBuilder();
        resultado.append(etiqueta);
        resultado.append(";Cola\n");

        //Primer IfElse
        this.lista_sentencias.get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        IfElse ifelse1 = (IfElse) this.lista_sentencias.get(0);
        ifelse1.getSentencias1().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaIfElse1Sentencias1 = "%"+ifelse1.getSentencias1().get(0).getIr_ref();
        ifelse1.getSentencias2().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaIfElse1Sentencias2 = "%"+ifelse1.getSentencias2().get(0).getIr_ref();
        condicion_ifelse1.append(ifelse1.getCondicion().generarCodigo(ifelse1.getIr_ref()+":\n"));

        //Segundo IfElse
        ifelse1.setIr_ref(CodeGeneratorHelper.getNewTag());
        IfElse ifelse2 = (IfElse) ifelse1.getSentencias1().get(0);
        ifelse2.getSentencias1().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaIfElse2Sentencias1 = "%"+ifelse2.getSentencias1().get(0).getIr_ref();
        ifelse2.getSentencias2().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaIfElse2Sentencias2 = "%"+ifelse2.getSentencias2().get(0).getIr_ref();
        condicion_ifelse2.append(ifelse2.getCondicion().generarCodigo(ifelse2.getIr_ref()+":\n"));

        //Tercer IfElse
        ifelse2.setIr_ref(CodeGeneratorHelper.getNewTag());
        IfElse ifelse3 = (IfElse) ifelse2.getSentencias1().get(0);
        ifelse3.getSentencias1().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaIfElse3Sentencias1 = "%"+ifelse3.getSentencias1().get(0).getIr_ref();
        ifelse3.getSentencias2().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaIfElse3Sentencias2 = "%"+ifelse3.getSentencias2().get(0).getIr_ref();
        condicion_ifelse3.append(ifelse3.getCondicion().generarCodigo(ifelse3.getIr_ref()+":\n"));

        //Cuarto IfElse
        ifelse3.setIr_ref(CodeGeneratorHelper.getNewTag());
        IfElse ifelse4 = (IfElse) ifelse3.getSentencias1().get(0);
        ifelse4.getSentencias1().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaIfElse4Sentencias1 = "%"+ifelse4.getSentencias1().get(0).getIr_ref();
        ifelse4.getSentencias2().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaIfElse4Sentencias2 = "%"+ifelse4.getSentencias2().get(0).getIr_ref();
        condicion_ifelse4.append(ifelse4.getCondicion().generarCodigo(ifelse4.getIr_ref()+":\n"));
        int aux7 = 0;
        for (Sentencia s: ifelse4.getSentencias1()){
            if (aux7>0){
                ifelse4.getSentencias1().get(aux7).setIr_ref(CodeGeneratorHelper.getNewTag());
            }
            resultado_sentencias1_ifelse4.append(s.generarCodigo(ifelse4.getSentencias1().get(aux7).getIr_ref()+":\n"));
            aux7+=1;
        }

        //Else del cuarto if
        int aux8 = 0;
        for (Sentencia s: ifelse4.getSentencias2()){
            if (aux8>0){
                ifelse4.getSentencias2().get(aux8).setIr_ref(CodeGeneratorHelper.getNewTag());
            }
            resultado_sentencias2_ifelse4.append(s.generarCodigo(ifelse4.getSentencias2().get(aux8).getIr_ref()+":\n"));
            aux8+=1;
        }
        String siguiente4 = "%etiq" + (CodeGeneratorHelper.getNextID() + 1);
        resultado_sentencias1_ifelse3.append(condicion_ifelse4);
        resultado_sentencias1_ifelse3.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", ifelse4.getCondicion().getIr_ref(), etiquetaIfElse4Sentencias1, etiquetaIfElse4Sentencias2));
        resultado_sentencias1_ifelse3.append(resultado_sentencias1_ifelse4);
        resultado_sentencias1_ifelse3.append(String.format("br label %1$s\n", siguiente4));
        resultado_sentencias1_ifelse3.append(resultado_sentencias2_ifelse4);
        resultado_sentencias1_ifelse3.append(String.format("br label %1$s\n", siguiente4));

        //Else del tercer if
        int aux6 = 0;
        for (Sentencia s: ifelse3.getSentencias2()){
            if (aux6>0){
                ifelse3.getSentencias2().get(aux6).setIr_ref(CodeGeneratorHelper.getNewTag());
            }
            resultado_sentencias2_ifelse3.append(s.generarCodigo(ifelse3.getSentencias2().get(aux6).getIr_ref()+":\n"));
            aux6+=1;
        }
        String siguiente3 = "%etiq" + (CodeGeneratorHelper.getNextID() + 1);
        resultado_sentencias1_ifelse2.append(condicion_ifelse3);
        resultado_sentencias1_ifelse2.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", ifelse3.getCondicion().getIr_ref(), etiquetaIfElse3Sentencias1, etiquetaIfElse3Sentencias2));
        resultado_sentencias1_ifelse2.append(resultado_sentencias1_ifelse3);
        resultado_sentencias1_ifelse2.append(String.format("br label %1$s\n", siguiente3));
        resultado_sentencias1_ifelse2.append(resultado_sentencias2_ifelse3);
        resultado_sentencias1_ifelse2.append(String.format("br label %1$s\n", siguiente3));

        //Else del segundo if
        int aux5 = 0;
        for (Sentencia s: ifelse2.getSentencias2()){
            if (aux5>0){
                ifelse2.getSentencias2().get(aux5).setIr_ref(CodeGeneratorHelper.getNewTag());
            }
            resultado_sentencias2_ifelse2.append(s.generarCodigo(ifelse2.getSentencias2().get(aux5).getIr_ref()+":\n"));
            aux5+=1;
        }
        String siguiente2 = "%etiq" + (CodeGeneratorHelper.getNextID() + 1);
        resultado_sentencias1_ifelse1.append(condicion_ifelse2);
        resultado_sentencias1_ifelse1.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", ifelse2.getCondicion().getIr_ref(), etiquetaIfElse2Sentencias1, etiquetaIfElse2Sentencias2));
        resultado_sentencias1_ifelse1.append(resultado_sentencias1_ifelse2);
        resultado_sentencias1_ifelse1.append(String.format("br label %1$s\n", siguiente2));
        resultado_sentencias1_ifelse1.append(resultado_sentencias2_ifelse2);
        resultado_sentencias1_ifelse1.append(String.format("br label %1$s\n", siguiente2));

        //Else del primer if
        int aux4 = 0;
        for (Sentencia s: ifelse1.getSentencias2()){
            if (aux4>0){
                ifelse1.getSentencias2().get(aux4).setIr_ref(CodeGeneratorHelper.getNewTag());
            }
            resultado_sentencias2_ifelse1.append(s.generarCodigo(ifelse1.getSentencias2().get(aux4).getIr_ref()+":\n"));
            aux4+=1;
        }
        String siguiente1 = "%etiq" + (CodeGeneratorHelper.getNextID() + 1);
        resultado.append(condicion_ifelse1);
        resultado.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", ifelse1.getCondicion().getIr_ref(), etiquetaIfElse1Sentencias1, etiquetaIfElse1Sentencias2));
        resultado.append(resultado_sentencias1_ifelse1);
        resultado.append(String.format("br label %1$s\n", siguiente1));
        resultado.append(resultado_sentencias2_ifelse1);
        resultado.append(String.format("br label %1$s\n", siguiente1));

        return resultado.toString();
    }
}
