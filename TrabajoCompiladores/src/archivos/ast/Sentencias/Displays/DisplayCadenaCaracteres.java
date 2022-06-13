package archivos.ast.Sentencias.Displays;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Constantes.ConstanteString;

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
    public String generarCodigo(String etiqueta) {
        StringBuilder resultado = new StringBuilder();
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        this.setEtiquetaLLVM(etiqueta.replaceAll("Cola","").replaceAll(":\n",""));
        resultado.append("\n"+etiqueta.replaceAll("Cola",""));
        resultado.append(";___DisplayCadenaCaracteres___\n");

        //Se llama a la funcion @puts para imprimir por consola el valor de la cadena de caracteres.
        String cadena = (String) this.CadenaCaracteres.getValor();
        int caracteres = cadena.length() + 3;
        resultado.append(String.format("%1$s = call i32 @puts(i8* getelementptr ([" + caracteres + " x i8], [" + caracteres + " x i8] * @%2$s, i32 0, i32 0))\n", this.getIr_ref(), this.CadenaCaracteres.getNombre()));
        String siguiente = "%etiq" + (CodeGeneratorHelper.getNextTag() + 1);
        resultado.append(String.format("br label %1$s\n", siguiente));

        //Este tramo de codigo simplemente hace una limpieza de etiquetas basuras ocacionadas por la cola.
        try{
            String cadena1 = ":\n;___DisplayCadenaCaracteres___\n\n";
            int start = resultado.indexOf(cadena1);
            int end = start+ (cadena1).length();
            Character c = resultado.charAt(start);
            while(!c.equals('\n')){
                start-=1;
                c = resultado.charAt(start);
            }
            resultado.delete(start+1,end);
        }catch (Exception e){

        }
        return resultado.toString();
    }

    public ConstanteString getCadenaCaracteres() {
        return this.CadenaCaracteres;
    }}
