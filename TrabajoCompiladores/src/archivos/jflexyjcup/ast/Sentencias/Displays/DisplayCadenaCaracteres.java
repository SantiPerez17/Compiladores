package archivos.jflexyjcup.ast.Sentencias.Displays;

import archivos.jflexyjcup.ast.Sentencias.Sentencia;

public class DisplayCadenaCaracteres extends Sentencia {
    private final String CadenaCaracteres;

    public String getCadenaCaracteres() {
        return this.CadenaCaracteres;
    }

    public DisplayCadenaCaracteres(String cadenaCaracteres) {
        CadenaCaracteres = cadenaCaracteres;
    }

    public DisplayCadenaCaracteres(String nombre, String cadenaCaracteres) {
        super("DisplayCadenaCaracteres");
        this.CadenaCaracteres = cadenaCaracteres;
    }
}
