package archivos.ast.Sentencias.Displays;

import archivos.CodeGeneratorHelper;
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
        resultado.append(";DisplayCadenaCaracteres:\n");
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        String cadena = (String) this.CadenaCaracteres.getValor();
        String nombreCadena = cadena.replaceAll(" ","_");
        int caracteres = cadena.length() + 3;
        resultado.append(String.format("%1$s = call i32 @puts(i8* getelementptr ([" + caracteres + " x i8], [" + caracteres + " x i8] * @str%2$s, i32 0, i32 0))\n", this.getIr_ref(), nombreCadena));
        return resultado.toString();
    }
}
