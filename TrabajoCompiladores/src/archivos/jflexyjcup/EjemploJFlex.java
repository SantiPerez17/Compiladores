/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package archivos.jflexyjcup;

import java.io.FileReader;
import java.io.IOException;
import java_cup.runtime.Symbol;

/**
 *
 * @author Merce
 */
public class EjemploJFlex {

    /**
     * @param args the command line arguments
     * @throws java.io.IOException
     */

    public static void main(String[] args) throws IOException {

        // TODO code application logic here
        //  MiLexico lexico = new MiLexico(new InputStreamReader(System.in));
        //  System.out.printf("Análisis léxico iniciado: %nIngrese por teclado:%n");
        String error;
        System.out.println("Leyendo entrada...\n");
        FileReader entrada = new FileReader("TrabajoCompiladores/src/archivos/jflexyjcup/pruebas.txt");
        MiLexico lexico = new MiLexico(entrada);
        String tokens = "Iniciando analizador lexico... \n ";
        try{
            while (!(lexico.yyatEOF())) {
                Symbol token = lexico.next_token();
                if (token == null)
                    break;
                System.out.println("Token: " + token);
            }
            System.out.println("\nAnálisis léxico terminado.");
        } catch (Error e){
            System.out.println("error " + e);
        } catch (Exception e) {
            error = String.valueOf(e.getMessage());
            System.out.println(error);
        }
        ;



    }



}
