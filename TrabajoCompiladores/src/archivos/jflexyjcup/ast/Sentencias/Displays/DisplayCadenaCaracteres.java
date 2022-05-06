package archivos.jflexyjcup.ast.Sentencias.Displays;

import archivos.jflexyjcup.ast.Base.Constantes.Constante;
import archivos.jflexyjcup.ast.Base.Constantes.ConstanteString;
import archivos.jflexyjcup.ast.Sentencias.Sentencia;

public class DisplayCadenaCaracteres extends Display {
    private final ConstanteString CadenaCaracteres;

    public DisplayCadenaCaracteres(ConstanteString cadenaCaracteres) {
        this.CadenaCaracteres = cadenaCaracteres;
    }

    public DisplayCadenaCaracteres(String nombre, ConstanteString cadenaCaracteres) {
        super(nombre);
        this.CadenaCaracteres = cadenaCaracteres;
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder grafico = new StringBuilder();
        grafico.append(CadenaCaracteres.graficar(this.getId()));
        return grafico.toString();
    }
}
