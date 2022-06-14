package archivos.ast.Base;

//import archivos.jflexyjcup.MiParser;

import archivos.CodeGeneratorHelper;
import archivos.ast.Sentencias.Sentencia;

import java.text.Normalizer;
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
        // Como no tiene padre, se inicia pasando null.
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
    public String generarCodigo(String etiqueta) {

        //Declaracion del target y de las funciones y variables auxiliares para la utilizacion de los displays y los inputs
        StringBuilder resultado = new StringBuilder();
        resultado.append(";Programa: 'Prueba'\n");
        resultado.append("source_filename = \"pruebas.txt\"\n");
        resultado.append("target datalayout = \"e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128\"\n");
        resultado.append("target triple = \"x86_64-pc-windows-msvc19.29.30145\"\n\n");
        resultado.append("declare i32 @puts(i8*)\n");
        resultado.append("declare i32 @printf(i8*, ...)\n");
        resultado.append("declare i32 @scanf(i8* %0, ...)\n");
        resultado.append("@.integer = private constant [4 x i8] c\"%d\\0A\\00\"\n");
        resultado.append("@.double = private constant [4 x i8] c\"%f\\0A\\00\"\n");
        resultado.append("@.bool = private constant [4 x i8] c\"%d\\0A\\00\"\n");
        resultado.append("@int_read_format = unnamed_addr constant [3 x i8] c\"%d\\00\"\n");
        resultado.append("@double_read_format = unnamed_addr constant [4 x i8] c\"%lf\\00\"\n");

        //Se recorre la tabla de simbolos y se declaran todas las variables encontradas, incluyendo las cadenas de caracteres
        for (String s : tablaSimbolos2.keySet()){
            String nombre = Normalizer.normalize(s, Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", "");
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
                String cadena = Normalizer.normalize(tablaSimbolos2.get(s).get(2), Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", "");
                int caracteres = cadena.length() + 3;
                tipoll = "private constant [" + caracteres + " x i8]";
                resultado.append("@" + nombre + " = " + tipoll + " c\"\\0A" + cadena + "\\0A\\00\"\n");
            }
        }

        //Se define el main del programa y se recorre el listado de sentencias, llamando de cada una su funcion generarCodigo(String etiqueta)
        resultado.append("\ndefine i32 @main(i32, i8**) {\n\t");
        StringBuilder resultado_programa = new StringBuilder();
        for (Sentencia s: getSentencias()) {

            //Si es un IfElse, llamo al generarCodigo() del IfElse, y luego reemplazo las etiquetas XX con la etiqueta que corresponde a la siguiente sentencia a la cual deben ir.
            if(s.getNombre() == "IfElse"){
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado_programa.append(s.generarCodigo(this.getIr_ref()+":\n"));
                String proxima_etiqueta = "%etiq"+(CodeGeneratorHelper.getNextTag()+1);
                boolean aux = true;
                while(aux){
                    try{
                        int start = resultado_programa.indexOf(" label %etiqXX");
                        resultado_programa.replace(start,start+14," label "+proxima_etiqueta);
                    }catch(Exception e){
                        aux=false;
                    }
                }
            } else {

                //Sino, simplemente llamo al generarCodigo() de la sentencia.
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado_programa.append(s.generarCodigo(this.getIr_ref()+":\n"));
            }
        }

        resultado.append(resultado_programa.toString().replaceAll("\n", "\n\t"));
        this.setIr_ref(CodeGeneratorHelper.getNewTag());
        resultado.append("\n\t"+this.getIr_ref()+":\n");
        resultado.append("\tret i32 0\n}\n");

        //Aqui quitamos todos los caracteres NO ASCII del codigo generado
        resultado = new StringBuilder(Normalizer.normalize(resultado.toString(), Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", ""));
        return resultado.toString();
    }

    private List<Sentencia> getSentencias() {
        return sentencias;
    }
}