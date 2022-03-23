/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejemplo.jflex;


import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**a
 *
 * @author itt
 */
public class Generador {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        //si le cambio el path se rompe asique lo dejo así.
        String path = "Ejemplo JFlex/Ejemplo JFlex 2021/Ejemplo JFlex/Ejemplo JFlex/src/ejemplo/jflex/lexico.flex";
        generarLexer(path);
    }
    
    /**
     *
     * @param path
     */
    public static void generarLexer(String path){
        File file=new File(path);
        //jflex.Main.generate(file);
        //UTILIZAR JFLEX 1.8, la próxima línea no funciona para las versiones previas
        jflex.generator.LexGenerator generator = new jflex.generator.LexGenerator(file);
        generator.generate();
    }
    
}
