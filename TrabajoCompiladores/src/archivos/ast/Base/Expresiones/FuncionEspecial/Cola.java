package archivos.ast.Base.Expresiones.FuncionEspecial;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Identificador;
import archivos.ast.Base.Tipo;
import archivos.ast.Sentencias.Asignacion;
import archivos.ast.Sentencias.Sentencia;
import archivos.ast.Sentencias.SentenciaSeleccion.IfElse;

public class Cola extends Expresion {
    private Asignacion asignacion;
    private IfElse ifelse;
    private Identificador acum;

    public Cola(Tipo tipo, Asignacion asignacion, IfElse ifelse, Identificador acum) {
        super(tipo);
        this.asignacion = asignacion;
        this.ifelse = ifelse;
        this.acum = acum;
    }

    public Cola(Asignacion asignacion, IfElse ifelse, Identificador acum) {
        this.asignacion = asignacion;
        this.ifelse = ifelse;
        this.acum = acum;
    }

    public Cola(String nombre, Asignacion asignacion, IfElse ifelse, Identificador acum) {
        super(nombre);
        this.asignacion = asignacion;
        this.ifelse = ifelse;
        this.acum = acum;
    }

    public Cola(String nombre, Tipo tipo, Asignacion asignacion, IfElse ifelse, Identificador acum) {
        super(nombre, tipo);
        this.asignacion = asignacion;
        this.ifelse = ifelse;
        this.acum = acum;
    }

    @Override
    public String getEtiqueta() {
        return " Cola - [ " + this.getNombre() + " ] - " + "\n Tipo: "+ this.getTipo();
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder resultado = new StringBuilder();
        resultado.append(this.ifelse.graficar("nodo_programa"));
        //resultado.append(super.graficar(idPadre));
        //for (Sentencia s:lista_sentencias){
        //    resultado.append(s.graficar("nodo_programa"));
        //}
        return resultado.toString();
    }

    @Override
    public String generarCodigo(String etiqueta) {
        StringBuilder resultado = new StringBuilder();
        resultado.append(";Cola\n");

        StringBuilder resultado_asignacion = new StringBuilder();
        this.asignacion.setIr_ref(CodeGeneratorHelper.getNewTag());
        resultado_asignacion.append(this.asignacion.generarCodigo(this.asignacion.getIr_ref()+":\n"));

        //Primer IfElse
        StringBuilder resultado_condicion_primer_ifelse = new StringBuilder();
        this.ifelse.setIr_ref(CodeGeneratorHelper.getNewTag());
        resultado_condicion_primer_ifelse.append(this.ifelse.getIr_ref()+":\n");
        ifelse.getSentencias1().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaIfElse1Sentencias1 = "%"+ifelse.getSentencias1().get(0).getIr_ref();
        ifelse.getSentencias2().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaIfElse1Sentencias2 = "%"+ifelse.getSentencias2().get(0).getIr_ref();
        resultado_condicion_primer_ifelse.append(ifelse.getCondicion().generarCodigo(ifelse.getIr_ref()+":\n"));
        resultado_condicion_primer_ifelse.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", ifelse.getCondicion().getIr_ref(), etiquetaIfElse1Sentencias1, etiquetaIfElse1Sentencias2));

        //Segundo IfElse
        StringBuilder resultado_condicion_segundo_ifelse = new StringBuilder();
        IfElse ifelse2 = (IfElse) this.ifelse.getSentencias1().get(0);
        ifelse2.setIr_ref(CodeGeneratorHelper.getNewTag());
        resultado_condicion_segundo_ifelse.append(ifelse2.getIr_ref()+":\n");
        ifelse2.getSentencias1().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaIfElse2Sentencias1 = "%"+ifelse2.getSentencias1().get(0).getIr_ref();
        ifelse2.getSentencias2().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaIfElse2Sentencias2 = "%"+ifelse2.getSentencias2().get(0).getIr_ref();
        resultado_condicion_segundo_ifelse.append(ifelse2.getCondicion().generarCodigo(ifelse2.getIr_ref()+":\n"));
        resultado_condicion_segundo_ifelse.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", ifelse2.getCondicion().getIr_ref(), etiquetaIfElse2Sentencias1, etiquetaIfElse2Sentencias2));

        //Tercer IfElse
        StringBuilder resultado_sentencias_tercer_ifelse = new StringBuilder();
        IfElse ifelse3 = (IfElse) ifelse2.getSentencias1().get(0);
        ifelse3.setIr_ref(CodeGeneratorHelper.getNewTag());
        resultado_sentencias_tercer_ifelse.append(ifelse3.getIr_ref()+":\n");
        ifelse3.getSentencias1().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaIfElse3Sentencias1 = "%"+ifelse3.getSentencias1().get(0).getIr_ref();
        ifelse3.getSentencias2().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaIfElse3Sentencias2 = "%"+ifelse3.getSentencias2().get(0).getIr_ref();
        resultado_sentencias_tercer_ifelse.append(ifelse3.getCondicion().generarCodigo(ifelse3.getIr_ref()+":\n"));
        resultado_sentencias_tercer_ifelse.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", ifelse3.getCondicion().getIr_ref(), etiquetaIfElse3Sentencias1, etiquetaIfElse3Sentencias2));

        //Sentencias Tercer IfElse
        int aux3 = 0;
        for(Sentencia sentencia: ifelse3.getSentencias1()){
            IfElse ifelse4 = (IfElse) sentencia;
            ifelse4.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado_sentencias_tercer_ifelse.append(ifelse4.getIr_ref()+":\n");
            ifelse4.getSentencias1().get(aux3).setIr_ref(CodeGeneratorHelper.getNewTag());
            String etiquetaIfElse4Sentencias1 = "%"+ifelse4.getSentencias1().get(aux3).getIr_ref();
            ifelse4.getSentencias2().get(aux3).setIr_ref(CodeGeneratorHelper.getNewTag());
            String etiquetaIfElse4Sentencias2 = "%"+ifelse4.getSentencias2().get(aux3).getIr_ref();
            resultado_sentencias_tercer_ifelse.append(ifelse4.getCondicion().generarCodigo(ifelse4.getIr_ref()+":\n"));
            resultado_sentencias_tercer_ifelse.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", ifelse3.getCondicion().getIr_ref(), etiquetaIfElse4Sentencias1, etiquetaIfElse4Sentencias2));
            int aux7 = 0;
            for (Sentencia s: ifelse4.getSentencias1()){
                if (aux7>0){
                    ifelse4.getSentencias1().get(aux7).setIr_ref(CodeGeneratorHelper.getNewTag());
               }
                resultado_sentencias_tercer_ifelse.append(s.generarCodigo(ifelse4.getSentencias1().get(aux7).getIr_ref()+":\n"));
                aux7+=1;
            }
            String siguiente4 = "%etiq" + (CodeGeneratorHelper.getNextID() + 1);
            resultado_sentencias_tercer_ifelse.append(String.format("br label %1$s\n", siguiente4));
            int aux8 = 0;
            for (Sentencia s: ifelse4.getSentencias2()){
                if (aux8>0){
                    ifelse4.getSentencias2().get(aux8).setIr_ref(CodeGeneratorHelper.getNewTag());
                }
                resultado_sentencias_tercer_ifelse.append(s.generarCodigo(ifelse4.getSentencias2().get(aux8).getIr_ref()+":\n"));
                aux8+=1;
            }
            resultado_sentencias_tercer_ifelse.append(String.format("br label %1$s\n", siguiente4));
        }

        //Else del tercer if
        String siguiente3 = "%etiq" + (CodeGeneratorHelper.getNextID() + 1);
        resultado_sentencias_tercer_ifelse.append(String.format("br label %1$s\n", siguiente3));
        int aux6 = 0;
        for (Sentencia s: ifelse3.getSentencias2()){
            if (aux6>0){
                ifelse3.getSentencias2().get(aux6).setIr_ref(CodeGeneratorHelper.getNewTag());
            }
            resultado_sentencias_tercer_ifelse.append(s.generarCodigo(ifelse3.getSentencias2().get(aux6).getIr_ref()+":\n"));
            aux6+=1;
        }
        resultado_sentencias_tercer_ifelse.append(String.format("br label %1$s\n", siguiente3));

        //Else del segundo if
        StringBuilder resultado_sentencias_segundo_ifelse = new StringBuilder();
        String siguiente2 = "%etiq" + (CodeGeneratorHelper.getNextID() + 1);
        resultado_sentencias_segundo_ifelse.append(String.format("br label %1$s\n", siguiente2));
        int aux5 = 0;
        for (Sentencia s: ifelse2.getSentencias2()){
            if (aux5>0){
                ifelse2.getSentencias2().get(aux5).setIr_ref(CodeGeneratorHelper.getNewTag());
            }
            resultado_sentencias_segundo_ifelse.append(s.generarCodigo(ifelse2.getSentencias2().get(aux5).getIr_ref()+":\n"));
            aux5+=1;
        }
        resultado_sentencias_segundo_ifelse.append(String.format("br label %1$s\n", siguiente2));

        //Else del primer if
        StringBuilder resultado_sentencias_primer_ifelse = new StringBuilder();
        String siguiente1 = "%etiq" + (CodeGeneratorHelper.getNextID() + 1);
        resultado_sentencias_primer_ifelse.append(String.format("br label %1$s\n", siguiente1));
        int aux4 = 0;
        for (Sentencia s: this.ifelse.getSentencias2()){
            if (aux4>0){
                this.ifelse.getSentencias2().get(aux4).setIr_ref(CodeGeneratorHelper.getNewTag());
            }
            resultado_sentencias_primer_ifelse.append(s.generarCodigo(this.ifelse.getSentencias2().get(aux4).getIr_ref()+":\n"));
            aux4+=1;
        }
        resultado_sentencias_primer_ifelse.append(String.format("br label %1$s\n", siguiente1));

        //Asignacion de la variable acum
        StringBuilder resultado_asignacion_acum = new StringBuilder();
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        resultado_asignacion_acum.append(String.format("%1$s = load i32, i32* @%2$s\n", this.getIr_ref(), this.acum.getNombre()));

        resultado.append(resultado_asignacion);
        resultado.append(resultado_condicion_primer_ifelse);
        resultado.append(resultado_condicion_segundo_ifelse);
        resultado.append(resultado_sentencias_tercer_ifelse);
        resultado.append(resultado_sentencias_segundo_ifelse);
        resultado.append(resultado_sentencias_primer_ifelse);
        resultado.append(resultado_asignacion_acum);
        return resultado.toString();
    }
}
