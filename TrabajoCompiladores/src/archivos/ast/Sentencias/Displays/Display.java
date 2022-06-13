package archivos.ast.Sentencias.Displays;

import archivos.ast.Sentencias.Sentencia;

public class Display extends Sentencia {

    public Display() {
    }
    public Display(String nombre) {
        super(nombre);
    }

    @Override
    public String generarCodigo(String etiqueta) {
        StringBuilder resultado = new StringBuilder();
        //Esta no se utiliza, se genera el codigo en los display cadena caracteres y en el display expresion
        return resultado.toString();
    }
}
