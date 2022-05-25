package archivos.jflexyjcup;

import java.io.FileReader;
import java.io.StringWriter;

import archivos.jflexyjcup.MiParser;
import java_cup.runtime.Symbol;

import javax.swing.*;

/**
 *
 * @author itt
 */
public class EjemploJavaCup {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
        // TODO code application logic here
        String path = "pruebas.txt";
        System.out.println("Análisis sintáctico iniciado:");
        MiLexico lexer = new MiLexico(new FileReader(path));
        MiParser parser = new MiParser(lexer);
        Symbol p = parser.parse();
        StringWriter Reglas = new StringWriter();
        Reglas.append(parser.reglas);
        try{Object a = parser.parse().toString();System.out.println(Reglas+"Análisis sintáctico finalizado.");}
        catch (Exception e){System.out.println(e.getMessage());};

    }
}