package archivos.ast.Sentencias;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Identificador;
import archivos.ast.Base.Tipo;

public class Asignacion extends Sentencia{
    private static int cont = 1;

    private final Identificador identificador;
    private final Expresion expresion;

    private String ir_ref;

    public String getIr_ref() {
        return ir_ref;
    }

    public void setIr_ref(String ir_ref) {
        this.ir_ref = ir_ref;
    }

    public Asignacion(Identificador identificador, Expresion expresion) {
        this.identificador = identificador;
        this.expresion = expresion;
    }

    public Asignacion(String nombre, Identificador identificador, Expresion expresion) {
        super(nombre);
        this.identificador = identificador;
        this.expresion = expresion;
    }

    protected String getNombreOperacion() {
        return ":=";
    }

    @Override
    public String getEtiqueta() {
        return String.format("Sentencia - [ Asignacion ] -%n %s", this.getNombreOperacion());
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder grafico = new StringBuilder();
        if(expresion.getNombre() == "Cola"){
            grafico.append(expresion.graficar("nodo_programa"));
            grafico.append(super.graficar("nodo_programa"));
            grafico.append(identificador.graficar(this.getId()));
            Identificador identificador1 = new Identificador("_acum"+cont,expresion.getTipo());
            cont++;
            grafico.append(identificador1.graficar(this.getId()));
        } else {
            grafico.append(super.graficar(idPadre));
            grafico.append(identificador.graficar(this.getId()));
            grafico.append(expresion.graficar(this.getId()));
        }
        return grafico.toString();
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        resultado.append(";Asignacion:\n");

        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        resultado.append(this.expresion.generarCodigo());
        //%aux = load i32, i32* @x3 ; carga el valor entero de @x3 en %aux
        //store i32 %aux, i32* @x3 ; escribe el valor entero de %aux en @x3

        if (expresion.getTipo().equals(Tipo.Int)){
            resultado.append(String.format("store i32 %1$s, i32* @%2$s\n", expresion.getIr_ref(), identificador.getNombre()));
        } else if (expresion.getTipo().equals(Tipo.Float)){
            resultado.append(String.format("store double %1$s, double* @%2$s\n", expresion.getIr_ref(), identificador.getNombre()));
        } else if (expresion.getTipo().equals(Tipo.Bool)){
            resultado.append(String.format("store i1 %1$s, i1* @%2$s\n", expresion.getIr_ref(), identificador.getNombre()));
        } else {
            resultado.append(String.format("store i1 %1$s, i1* @%2$s\n", expresion.getIr_ref(), identificador.getNombre()));
        }
        this.setIr_ref(CodeGeneratorHelper.getNewTag());
        resultado.append(this.getIr_ref()+":\n");
        return resultado.toString();
    }
}