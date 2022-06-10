package archivos;

import archivos.ast.Base.Programa;
import archivos.lexico.MiLexico;
import archivos.sintactico.MiParser;

import javax.swing.*;
import java.awt.*;
import java.io.*;
import java.nio.charset.StandardCharsets;

public class GenerarLLyOyEXE {

    public static void main(String[] args) throws FileNotFoundException {
        try {
            File archivo = new File("pruebas.txt");
            File llvm = new File("programa.ll");
            MiLexico lexer = new MiLexico(new FileReader(archivo));
            MiParser parser = new MiParser(lexer);
            final Programa programa = (Programa) parser.parse().value;
            PrintWriter pw = new PrintWriter(new FileWriter("arbol.dot"));
            pw.println(programa.graficar());
            pw.close();
            String cmdDot = "dot -Tpng arbol.dot -o arbol.png";
            Runtime.getRuntime().exec(cmdDot);
            System.out.println("Gráfico AST generado");

            //generar codigo IR para el LLVM
            pw = new PrintWriter(new FileWriter("programa.ll"));
            pw.println(programa.generarCodigo("etiq0:"));
            pw.close();
            System.out.println("Código generado");

            Process process = Runtime.getRuntime().exec("clang -c -o programa.o programa.ll");
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line;
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
            }
            System.out.println("Archivo objeto generado");

            Process process2 = Runtime.getRuntime().exec("clang -o programa.exe programa.o scanf.o");
            BufferedReader reader2 = new BufferedReader(new InputStreamReader(process2.getInputStream()));
            String line2;
            while ((line2 = reader2.readLine()) != null) {
                System.out.println(line2);
            }
            System.out.println("Ejecutable generado");

            PrintWriter writer = new PrintWriter("ts.txt", StandardCharsets.UTF_8);
            writer.println("TABLA DE SIMBOLOS \n" + String.format("%20s%20s%20s%20s%20s%n", "NOMBRE", "TOKEN", "TIPO", "VALOR", "LONG"));
            writer.println(parser.simbolos.toString());
            // Desktop.getDesktop().open(new File("ts.txt"));
            writer.close();

        } catch (Exception e) {
            UIManager.put("OptionPane.background", Color.GRAY);
            UIManager.put("OptionPane.messagebackground", Color.GRAY);
            UIManager.put("Panel.background", Color.GRAY);
            System.out.println("Error : " + e.getMessage());
        }
    }
}