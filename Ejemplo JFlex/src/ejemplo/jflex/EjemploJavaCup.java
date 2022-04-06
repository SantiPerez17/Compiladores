package ejemplo.jflex;

import java_cup.runtime.Scanner;

import java.io.FileReader;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author itt
 */
public class EjemploJavaCup {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here

        try {
            String path = "Ejemplo JFlex/src/ejemplo/jflex/pruebas.txt";
            System.out.println("Análisis sintáctico iniciado:");
            MiLexico lexer = new MiLexico(new FileReader(path));
            MiParser parser = new MiParser(lexer);
            parser.parse();
        } catch (Exception ex) {
        }

    }

}