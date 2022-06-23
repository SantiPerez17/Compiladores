package archivos.ast.Sentencias;

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
        grafico.append(super.graficar(idPadre));
        grafico.append(identificador.graficar(this.getId()));
        grafico.append(expresion.graficar(this.getId()));
        return grafico.toString();
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        resultado.append(";___Asignación___\n");
        resultado.append(this.getExpresion().generarCodigo());
        if (this.getExpresion().getTipo().equals(Tipo.Int)) {
            resultado.append(String.format("store i32 %1$s, i32* @%2$s\n", this.getExpresion().getIr_ref(), this.getIdentificador().getNombre()));
        } else if (this.getExpresion().getTipo().equals(Tipo.Float)) {
            resultado.append(String.format("store double %1$s, double* @%2$s\n", this.getExpresion().getIr_ref(), this.getIdentificador().getNombre()));
        } else if (this.getExpresion().getTipo().equals(Tipo.Bool)) {
            resultado.append(String.format("store i1 %1$s, i1* @%2$s\n", this.getExpresion().getIr_ref(), this.getIdentificador().getNombre()));
        }
        return resultado.toString();
    }

    public Expresion getExpresion() {
        return this.expresion;
    }

    public Identificador getIdentificador(){
        return this.identificador;
    }
}