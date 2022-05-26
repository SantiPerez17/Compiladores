package archivos.ast.Sentencias.Displays;

import archivos.ast.Base.Constantes.ConstanteString;

public class DisplayCadenaCaracteres extends Display {
    private final ConstanteString CadenaCaracteres;

    public DisplayCadenaCaracteres(ConstanteString cadenaCaracteres) {
        this.CadenaCaracteres = cadenaCaracteres;
    }

    public DisplayCadenaCaracteres(String nombre, ConstanteString cadenaCaracteres) {
        super("Cadena de Caracteres");
        this.CadenaCaracteres = cadenaCaracteres;
    }

    @Override
    public String getEtiqueta() {
        return String.format("Sentencia%n - [ Display Cad. Caracteres ] -");
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder grafico = new StringBuilder();
        grafico.append(super.graficar(idPadre));
        grafico.append(CadenaCaracteres.graficar(this.getId()));
        //grafico.append(idPadre+"--"+getId()+ "\n" );
        return grafico.toString();
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        //this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }
}
