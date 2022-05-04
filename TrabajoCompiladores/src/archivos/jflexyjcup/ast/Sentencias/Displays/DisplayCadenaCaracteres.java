package archivos.jflexyjcup.ast.Sentencias.Displays;

import archivos.jflexyjcup.ast.Sentencias.Sentencia;

public class DisplayCadenaCaracteres extends Display {
    private final String CadenaCaracteres;

    public DisplayCadenaCaracteres(String cadenaCaracteres) {
        this.CadenaCaracteres = cadenaCaracteres;
    }

    public DisplayCadenaCaracteres(String nombre, String cadenaCaracteres) {
        super(nombre);
        this.CadenaCaracteres = cadenaCaracteres;
    }
}
