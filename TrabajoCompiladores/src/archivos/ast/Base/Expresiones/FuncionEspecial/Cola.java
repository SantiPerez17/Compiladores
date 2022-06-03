package archivos.ast.Base.Expresiones.FuncionEspecial;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Identificador;
import archivos.ast.Base.Tipo;
import archivos.ast.Sentencias.Asignacion;
import archivos.ast.Sentencias.Displays.DisplayCadenaCaracteres;
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

    public void colasInternas(List<Expresion> expresiones) {
        List<Cola> colasInternasAux = new ArrayList<>();
        for (Expresion e : expresiones) {
            if(e.getNombre() == "Cola") {
                colasInternasAux.add((Cola) e);
            }
        }
        if (colasInternasAux.size()>0){
            for (Cola c: colasInternasAux){
                this.getColas().add(c);
                colasInternas(c.getExpresiones());
            }
        }
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
    public String generarCodigo(String identificador_etiqueta) {
        StringBuilder resultado = new StringBuilder();
        int start = identificador_etiqueta.indexOf("-.-");
        String iden = identificador_etiqueta.substring(0,start);
        String etiqueta = identificador_etiqueta.substring(start+3);

        //Asignacion del pivot
        StringBuilder resultado_asignacion = new StringBuilder();
        resultado_asignacion.append(this.asignacion.generarCodigo(etiqueta));

        //Primer IfElse
        StringBuilder resultado_condicion_primer_ifelse = new StringBuilder();
        this.ifelse.setIr_ref(CodeGeneratorHelper.getNewTag());
        resultado_condicion_primer_ifelse.append("\n"+this.ifelse.getIr_ref()+":\n");
        resultado_condicion_primer_ifelse.append(";___Primer IfElse___\n");
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
        resultado_condicion_segundo_ifelse.append("\n"+etiquetaIfElse1Sentencias1.substring(1)+":\n");
        resultado_condicion_segundo_ifelse.append(";___Segundo IfElse___\n");
        ifelse2.getSentencias1().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaIfElse2Sentencias1 = "%"+ifelse2.getSentencias1().get(0).getIr_ref();
        ifelse2.getSentencias2().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaIfElse2Sentencias2 = "%"+ifelse2.getSentencias2().get(0).getIr_ref();
        resultado_condicion_segundo_ifelse.append(ifelse2.getCondicion().generarCodigo(etiquetaIfElse1Sentencias1.substring(1)+":\n"));
        resultado_condicion_segundo_ifelse.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", ifelse2.getCondicion().getIr_ref(), etiquetaIfElse2Sentencias1, etiquetaIfElse2Sentencias2));

        //Tercer IfElse
        StringBuilder resultado_sentencias_tercer_ifelse = new StringBuilder();
        IfElse ifelse3 = (IfElse) ifelse2.getSentencias1().get(0);
        ifelse3.setIr_ref(CodeGeneratorHelper.getNewTag());
        resultado_sentencias_tercer_ifelse.append("\n"+etiquetaIfElse2Sentencias1.substring(1)+":\n");
        resultado_sentencias_tercer_ifelse.append(";___Tercer IfElse___\n");
        ifelse3.getSentencias1().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaIfElse3Sentencias1 = "%"+ifelse3.getSentencias1().get(0).getIr_ref();
        ifelse3.getSentencias2().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
        String etiquetaIfElse3Sentencias2 = "%"+ifelse3.getSentencias2().get(0).getIr_ref();
        resultado_sentencias_tercer_ifelse.append(ifelse3.getCondicion().generarCodigo(etiquetaIfElse2Sentencias1.substring(1)+":\n"));
        resultado_sentencias_tercer_ifelse.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", ifelse3.getCondicion().getIr_ref(), etiquetaIfElse3Sentencias1, etiquetaIfElse3Sentencias2));

        //Sentencias Tercer IfElse
        int aux = 0;
        for(Sentencia sentencia: ifelse3.getSentencias1()){
            IfElse ifelse4 = (IfElse) sentencia;
            if(aux == 0){
                resultado_sentencias_tercer_ifelse.append("\n"+etiquetaIfElse3Sentencias1.substring(1)+":\n");
                resultado_sentencias_tercer_ifelse.append(";___Condicion___\n");
                resultado_sentencias_tercer_ifelse.append(ifelse4.getCondicion().generarCodigo(etiquetaIfElse3Sentencias1.substring(1)+":\n"));
            } else {
                ifelse4.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado_sentencias_tercer_ifelse.append("\n"+ifelse4.getIr_ref()+":\n");
                resultado_sentencias_tercer_ifelse.append(";___Condicion___\n");
                resultado_sentencias_tercer_ifelse.append(ifelse4.getCondicion().generarCodigo(ifelse4.getIr_ref()+":\n"));
            }
            ifelse4.getSentencias1().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
            String etiquetaIfElse4Sentencias1 = "%"+ifelse4.getSentencias1().get(0).getIr_ref();
            ifelse4.getSentencias2().get(0).setIr_ref(CodeGeneratorHelper.getNewTag());
            String etiquetaIfElse4Sentencias2 = "%"+ifelse4.getSentencias2().get(0).getIr_ref();
            resultado_sentencias_tercer_ifelse.append(String.format("br i1 %1$s, label %2$s, label %3$s\n", ifelse4.getCondicion().getIr_ref(), etiquetaIfElse4Sentencias1, etiquetaIfElse4Sentencias2));

            int aux7 = 0;
            for (Sentencia s: ifelse4.getSentencias1()){
                if(aux7>0){
                    ifelse4.getSentencias1().get(aux7).setIr_ref(CodeGeneratorHelper.getNewTag());
                }
                resultado_sentencias_tercer_ifelse.append(s.generarCodigo(ifelse4.getSentencias1().get(aux7).getIr_ref()+":\n"));
                aux7+=1;
            }
            if(aux == ifelse3.getSentencias1().size()-1){
                //Asignacion de la variable acum
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado_sentencias_tercer_ifelse.append("\n"+this.getIr_ref()+":\n");
                resultado_sentencias_tercer_ifelse.append(";___Asignacion___\n");
                resultado_sentencias_tercer_ifelse.append(this.acum.generarCodigo(etiqueta));
                resultado_sentencias_tercer_ifelse.append(String.format("store i32 %1$s, i32* @%2$s\n", this.acum.getIr_ref(), iden));
                resultado_sentencias_tercer_ifelse.append(String.format("br label %1$s\n", "%etiqXX"));
            } else {
                String siguiente3 = "%etiq" + (CodeGeneratorHelper.getNextID()+7);
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                int start1 = resultado_sentencias_tercer_ifelse.indexOf(String.format("br label %1$s\n", "%"+this.getIr_ref()));
                int end1 = (String.format("br label %1$s\n", "%"+this.getIr_ref())).length()+start1;
                resultado_sentencias_tercer_ifelse.delete(start1,end1);
                resultado_sentencias_tercer_ifelse.append(String.format("br label %1$s\n", siguiente3));
            }

            resultado_sentencias_tercer_ifelse.append(ifelse4.getSentencias2().get(0).generarCodigo(etiquetaIfElse4Sentencias2.substring(1)+":\n"));

            if(aux == ifelse3.getSentencias1().size()-1){
                String siguiente4 = "%etiqXX";
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                int start2 = resultado_sentencias_tercer_ifelse.indexOf(String.format("br label %1$s\n", "%"+this.getIr_ref()));
                int end2 = (String.format("br label %1$s\n", "%"+this.getIr_ref())).length()+start2;
                resultado_sentencias_tercer_ifelse.delete(start2,end2);
                resultado_sentencias_tercer_ifelse.append(String.format("br label %1$s\n", siguiente4));
            }
            aux+=1;
        }

        //Else del tercer if
        DisplayCadenaCaracteres dcc3 = (DisplayCadenaCaracteres) ifelse3.getSentencias2().get(0);
        dcc3.setIr_ref(CodeGeneratorHelper.getNewTag());
        resultado_sentencias_tercer_ifelse.append("\n"+etiquetaIfElse3Sentencias2.substring(1)+":\n");
        resultado_sentencias_tercer_ifelse.append(";___Else del tercer if___\n");
        dcc3.setIr_ref(CodeGeneratorHelper.getNewPointer());
        String cadena3 = (String) dcc3.getCadenaCaracteres().getValor();
        int caracteres3 = cadena3.length() + 3;
        resultado_sentencias_tercer_ifelse.append(String.format("%1$s = call i32 @puts(i8* getelementptr ([" + caracteres3 + " x i8], [" + caracteres3 + " x i8] * @%2$s, i32 0, i32 0))\n", dcc3.getIr_ref(), dcc3.getCadenaCaracteres().getNombre()));
        String siguiente3 = "%etiq" + (CodeGeneratorHelper.getNextID() + 5);
        resultado_sentencias_tercer_ifelse.append(String.format("br label %1$s\n", siguiente3));

        //Else del segundo if
        StringBuilder resultado_sentencias_segundo_ifelse = new StringBuilder();
        DisplayCadenaCaracteres dcc2 = (DisplayCadenaCaracteres) ifelse2.getSentencias2().get(0);
        dcc2.setIr_ref(CodeGeneratorHelper.getNewTag());
        resultado_sentencias_segundo_ifelse.append("\n"+etiquetaIfElse2Sentencias2.substring(1)+":\n");
        resultado_sentencias_segundo_ifelse.append(";___Else del segundo if___\n");
        dcc2.setIr_ref(CodeGeneratorHelper.getNewPointer());
        String cadena2 = (String) dcc2.getCadenaCaracteres().getValor();
        int caracteres2 = cadena2.length() + 3;
        resultado_sentencias_segundo_ifelse.append(String.format("%1$s = call i32 @puts(i8* getelementptr ([" + caracteres2 + " x i8], [" + caracteres2 + " x i8] * @%2$s, i32 0, i32 0))\n", dcc2.getIr_ref(), dcc2.getCadenaCaracteres().getNombre()));
        String siguiente2 = "%etiq" + (CodeGeneratorHelper.getNextID() + 3);
        resultado_sentencias_segundo_ifelse.append(String.format("br label %1$s\n", siguiente2));

        //Else del primer if
        StringBuilder resultado_sentencias_primer_ifelse = new StringBuilder();
        DisplayCadenaCaracteres dcc1 = (DisplayCadenaCaracteres) ifelse.getSentencias2().get(0);
        dcc1.setIr_ref(CodeGeneratorHelper.getNewTag());
        resultado_sentencias_primer_ifelse.append("\n"+etiquetaIfElse1Sentencias2.substring(1)+":\n");
        resultado_sentencias_primer_ifelse.append(";___Else del primer if___\n");
        dcc1.setIr_ref(CodeGeneratorHelper.getNewPointer());
        String cadena1 = (String) dcc1.getCadenaCaracteres().getValor();
        int caracteres1 = cadena1.length() + 3;
        resultado_sentencias_primer_ifelse.append(String.format("%1$s = call i32 @puts(i8* getelementptr ([" + caracteres1 + " x i8], [" + caracteres1 + " x i8] * @%2$s, i32 0, i32 0))\n", dcc1.getIr_ref(), dcc1.getCadenaCaracteres().getNombre()));
        String siguiente1 = "%etiq" + (CodeGeneratorHelper.getNextID()+1);
        resultado_sentencias_primer_ifelse.append(String.format("br label %1$s\n", siguiente1));

        int start3 = resultado_sentencias_tercer_ifelse.indexOf(String.format("br label %1$s\n", "%etiqXX"));
        int end3 = (String.format("br label %1$s\n", "%etiqXX")).length()+start3;
        resultado_sentencias_tercer_ifelse.replace(start3,end3,"br label " + siguiente1 + "\n");
        int start4 = resultado_sentencias_tercer_ifelse.indexOf(String.format("br label %1$s\n", "%etiqXX"));
        int end4 = (String.format("br label %1$s\n", "%etiqXX")).length()+start4;
        resultado_sentencias_tercer_ifelse.replace(start4,end4,"br label " + siguiente1 + "\n");

        resultado.append(resultado_asignacion);
        resultado.append(resultado_condicion_primer_ifelse);
        resultado.append(resultado_condicion_segundo_ifelse);
        resultado.append(resultado_sentencias_tercer_ifelse);
        resultado.append(resultado_sentencias_segundo_ifelse);
        resultado.append(resultado_sentencias_primer_ifelse);

        return resultado.toString();
    }

}
