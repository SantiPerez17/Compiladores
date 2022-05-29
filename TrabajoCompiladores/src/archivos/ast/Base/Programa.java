package archivos.ast.Base;

//import archivos.jflexyjcup.MiParser;

import archivos.CodeGeneratorHelper;
import archivos.ast.Sentencias.Sentencia;

import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;

public class Programa extends Nodo{

    public TreeMap<String, ArrayList<String>> tablaSimbolos2;
    private final List<Sentencia> sentencias;

    public String getId() {
        return "nodo_programa";
    }

    public Programa(List<Sentencia> sentencias) {
        this.sentencias = sentencias;
    }

    public Programa(String nombre, List<Sentencia> sentencias) {
        super(nombre);
        this.sentencias = sentencias;
    }

    public Programa(TreeMap<String, ArrayList<String>> tablaSimbolos2, List<Sentencia> sentencias) {
        this.tablaSimbolos2 = tablaSimbolos2;
        this.sentencias = sentencias;
    }

    public Programa(String nombre, TreeMap<String, ArrayList<String>> tablaSimbolos2, List<Sentencia> sentencias) {
        super(nombre);
        this.tablaSimbolos2 = tablaSimbolos2;
        this.sentencias = sentencias;
    }

    public String graficar() {
        // Acá se dispara la invocación a los métodos graficar() de los nodos.
        // Como la Impresion no tiene padre, se inicia pasando null.
        StringBuilder resultado = new StringBuilder();
        resultado.append("graph G {");
        resultado.append(this.graficar(null));
        for (Sentencia s:sentencias){
            resultado.append(s.graficar(this.getId()));
        }
        resultado.append("}");
        return resultado.toString();
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        resultado.append(";Programa: 'Prueba'\n");
        resultado.append("source_filename = \"pruebas.txt\"\n");
        resultado.append("target datalayout = \"e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128\"\n");
        resultado.append("target triple = \"x86_64-pc-windows-msvc19.11.0\"\n\n");
        resultado.append("declare i32 @puts(i8*)\n");
        resultado.append("declare i32 @scanf(i8*, ...)\n");
        resultado.append("declare double @scanfd(i8*, ...)\n");
        resultado.append("declare i1 @scanfb(i8*, ...)\n");
        resultado.append("@.integer = private constant [4 x i8] c\"%d\\0A\\00\"\n");
        resultado.append("@.double = private constant [5 x i8] c\"%lf\\0A\\00\"\n");
        resultado.append("@int_read_format = unnamed_addr constant [3 x i8] c\"%d\\00\"\n");
        resultado.append("@double_read_format = unnamed_addr constant [4 x i8] c\"%lf\\00\"\n");
        resultado.append("@bool_read_format = unnamed_addr constant [3 x i8] c\"%b\\00\"\n\n");

        StringBuilder resultado_programa = new StringBuilder();

        for (String s : tablaSimbolos2.keySet()){
            String nombre = s;
            String tipo = tablaSimbolos2.get(s).get(1);
            String tipoll;
            if (tipo == "Int"){
                tipoll = "i32";
                resultado.append("@" + nombre + " = global " + tipoll + " 0\n");
            } else if (tipo == "Float") {
                tipoll = "double";
                resultado.append("@" + nombre + " = global " + tipoll + " 0.0\n");
            } else if (tipo == "Bool"){
                tipoll = "i1";
                resultado.append("@" + nombre + " = global " + tipoll + " 0\n");
            } else {
                String cadena = tablaSimbolos2.get(s).get(2);
                int caracteres = cadena.length() + 3;
                tipoll = "private constant [" + caracteres + " x i8]";
                resultado.append("@" + nombre + " = " + tipoll + " c\"\\0A" + cadena + "\\0A\\00\"\n");
            }
        }
        resultado.append("\n");

        resultado.append("define i32 @main(i32, i8**) {\n\t");
        this.setIr_ref(CodeGeneratorHelper.getNewTag());
        resultado.append(this.getIr_ref()+":\n\t");
        for (Sentencia s: getSentencias()) {
            resultado_programa.append(s.generarCodigo());
        }

        resultado.append(resultado_programa.toString().replaceAll("\n", "\n\t"));
        //resultado.append(String.format("%1$s = call i32 (i8*, ...) @printf(i8* getelementptr([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %2$s)\n", CodeGeneratorHelper.getNewPointer(), this.getExpresion().getIr_ref()));
        resultado.append("\n\tret i32 0\n}\n");

        return resultado.toString();
    }

    private List<Sentencia> getSentencias() {
        return sentencias;
    }
}