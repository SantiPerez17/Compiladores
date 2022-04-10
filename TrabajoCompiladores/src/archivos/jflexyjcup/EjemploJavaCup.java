package archivos.jflexyjcup;

import java.io.FileReader;
import archivos.jflexyjcup.MiParser;

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
            String path = "TrabajoCompiladores/src/archivos/jflexyjcup/pruebas.txt";
            System.out.println("Análisis sintáctico iniciado:");
            MiLexico lexer = new MiLexico(new FileReader(path));
            MiParser parser = new MiParser(lexer);
            parser.parse();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }

    }

}