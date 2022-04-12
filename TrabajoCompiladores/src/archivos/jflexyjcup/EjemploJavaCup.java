package archivos.jflexyjcup;

import java.io.FileReader;
import archivos.jflexyjcup.MiParser;

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
        String path = "TrabajoCompiladores/src/archivos/jflexyjcup/pruebas.txt";
        System.out.println("Análisis sintáctico iniciado:");
        MiLexico lexer = new MiLexico(new FileReader(path));
        MiParser parser = new MiParser(lexer);
        try{Object a = parser.parse();System.out.println("Análisis sintáctico finalizado.");}
        catch (Exception e){System.out.println(e.getMessage());};

    }
}