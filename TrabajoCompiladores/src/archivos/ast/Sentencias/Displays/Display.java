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
        return resultado.toString();
    }
}
