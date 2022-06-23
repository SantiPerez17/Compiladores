package archivos.ast.Sentencias.Displays;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Constantes.ConstanteString;

public class DisplayCadenaCaracteres extends Display {
    private final ConstanteString CadenaCaracteres;

    public DisplayCadenaCaracteres(ConstanteString cadenaCaracteres) {
        this.CadenaCaracteres = cadenaCaracteres;
    }

    public DisplayCadenaCaracteres(String nombre, ConstanteString cadenaCaracteres) {
        super(nombre);
        this.CadenaCaracteres = cadenaCaracteres;
    }

    public ConstanteString getCadenaCaracteres() {
        return this.CadenaCaracteres;
    }

    @Override
    public String getEtiqueta() {
        return String.format("Sentencia%n - [ Display Cad. Caracteres ] -");
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder grafico = new StringBuilder();
        //Se crea un stringbuilder
        grafico.append(super.graficar(idPadre));
        //se llama al metodo graficar mandandole el id del padre para poder conectar
        grafico.append(CadenaCaracteres.graficar(this.getId()));
        //se agrega ademas tambien el graficar de la CC con el ID de esta clase.
        return grafico.toString();
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        resultado.append(";___DisplayCadenaCaracteres___\n");
        String cadena = (String) this.getCadenaCaracteres().getValor();
        int caracteres = cadena.length() + 3;
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        resultado.append(String.format("%1$s = call i32 @puts(i8* getelementptr ([" + caracteres + " x i8], [" + caracteres + " x i8] * @%2$s, i32 0, i32 0))\n", this.getIr_ref(), this.getCadenaCaracteres().getNombre()));
        return resultado.toString();
    }

}

