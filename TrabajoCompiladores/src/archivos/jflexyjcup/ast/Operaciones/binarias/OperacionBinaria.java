package archivos.jflexyjcup.ast.Operaciones.binarias;

import archivos.jflexyjcup.CodeGeneratorHelper;
import archivos.jflexyjcup.ast.Base.Expresion;
import archivos.jflexyjcup.ast.Base.Tipo;

public abstract class OperacionBinaria extends Expresion {
    private Expresion izquierda;
    private Expresion derecha;

    public OperacionBinaria(Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(tipo);
        this.izquierda = izquierda;
        this.derecha = derecha;
    }

    public OperacionBinaria(Expresion izquierda, Expresion derecha) {
        this.izquierda = izquierda;
        this.derecha = derecha;
    }

    public OperacionBinaria(String nombre, Expresion izquierda, Expresion derecha) {
        super(nombre);
        this.izquierda = izquierda;
        this.derecha = derecha;
    }


    public OperacionBinaria(String nombre, Tipo tipo, Expresion izquierda, Expresion derecha) {
        super(nombre, tipo);
        this.izquierda = izquierda;
        this.derecha = derecha;
    }

    @Override
    public String getEtiqueta() {
        return " Op_Binaria - [ " + this.getNombre() + " ] - " + "\n Tipo: "+ this.getTipo();
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder grafico = new StringBuilder();
        grafico.append(super.graficar(idPadre));
        grafico.append(izquierda.graficar(this.getId()));
        grafico.append(derecha.graficar(this.getId()));
        return grafico.toString();
    }

    protected abstract String getNombreOperacion();

    public abstract String get_llvm_op_code(Tipo tipo);

    @Override
    public String generarCodigo(){
        StringBuilder resultado = new StringBuilder();
        resultado.append(this.getIzquierda().generarCodigo());
        resultado.append(this.getDerecha().generarCodigo());
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        resultado.append(String.format("%1$s = %2$s i32 %3$s, %4$s\n", this.getIr_ref(),
                this.get_llvm_op_code(this.getTipo()), this.getIzquierda().getIr_ref(),
                this.getDerecha().getIr_ref()));
        return resultado.toString();
    }

    public Expresion getDerecha() {
        return this.derecha;
    }

    public Expresion getIzquierda() {
        return this.izquierda;
    }

    public void setIzquierda(Expresion izquierda) {
        this.izquierda=izquierda;
    }
    public void setDerecha(Expresion derecha) {
        this.derecha=derecha;
    }
}
