package archivos.jflexyjcup.ast.Operaciones.unarias;

import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

public abstract class  OperacionUnaria extends Expresion{
    private Expresion expresion;

    public OperacionUnaria(String nombre, Expresion expresion) {
        super(nombre);
        this.expresion = expresion;
    }

    public OperacionUnaria(Expresion expresion, Tipo tipo) {
        super(tipo);
        this.expresion = expresion;
    }

    public OperacionUnaria(String nombre, Expresion expresion, Tipo tipo) {
        super(nombre, tipo);
        this.expresion = expresion;
    }

    public Expresion getExpresion() {
        return expresion;
    }

    public void setExpresion(Expresion expresion) {
        this.expresion = expresion;
    }

    @Override
    public String getEtiqueta() {
        return " Op_Unaria - [ " + this.getNombre() + " ] - " + "\n Tipo: "+ this.getTipo();
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder grafico = new StringBuilder();
        grafico.append(super.graficar(idPadre));
        grafico.append(expresion.graficar(this.getId()));
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