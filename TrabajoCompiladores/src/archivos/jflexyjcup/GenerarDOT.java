package archivos.jflexyjcup;

import archivos.jflexyjcup.ast.Base.Programa;

import java.io.FileReader;
import java.io.FileWriter;
import java.io.PrintWriter;

public class GenerarDOT {

    public static void main(String[] args) throws Exception {
        final FileReader entrada = new FileReader("TrabajoCompiladores/src/archivos/jflexyjcup/pruebas.txt");
        final MiLexico lexico = new MiLexico(entrada);
        final MiParser sintactico= new MiParser(lexico);
        final Programa impresion = (Programa) sintactico.parse().value;

        try {
            PrintWriter grafico = new PrintWriter(new FileWriter("arbol.dot"));
            grafico.println(impresion.graficar());
            grafico.close();
            String cmdDot = "dot -Tpng arbol.dot -o arbol.png";
            Runtime.getRuntime().exec(cmdDot);

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
