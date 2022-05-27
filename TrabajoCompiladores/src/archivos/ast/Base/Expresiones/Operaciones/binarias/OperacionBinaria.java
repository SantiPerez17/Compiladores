package archivos.ast.Base.Expresiones.Operaciones.binarias;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Tipo;

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
        this.getIzquierda().setIr_ref(CodeGeneratorHelper.getNewPointer());
        this.getDerecha().setIr_ref(CodeGeneratorHelper.getNewPointer());
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //%aux = load i32, i32* @x3 ; carga el valor entero de @x3 en %aux
        //store i32 %aux, i32* @x3 ; escribe el valor entero de %aux en @x3

        if (this.getIzquierda().getTipo().equals(Tipo.Int)){
            resultado.append(String.format("%1$s = load i32, i32* @%2$s\n", this.getIzquierda().getIr_ref(), this.getIzquierda().getNombre()));
        } else if (this.getIzquierda().getTipo().equals(Tipo.Float)){
            resultado.append(String.format("%1$s = load double, double* @%2$s\n", this.getIzquierda().getIr_ref(), this.getIzquierda().getNombre()));
        } else if (this.getIzquierda().getTipo().equals(Tipo.Bool)){
            resultado.append(String.format("%1$s = load i1, i1* @%2$s\n", this.getIzquierda().getIr_ref(), this.getIzquierda().getNombre()));
        } else {
            resultado.append(String.format("%1$s = load i1, i1* @%2$s\n", this.getIzquierda().getIr_ref(), this.getIzquierda().getNombre()));
        }

        if (this.getDerecha().getTipo().equals(Tipo.Int)){
            resultado.append(String.format("%1$s = load i32, i32* @%2$s\n", this.getDerecha().getIr_ref(), this.getDerecha().getNombre()));
        } else if (this.getDerecha().getTipo().equals(Tipo.Float)){
            resultado.append(String.format("%1$s = load double, double* @%2$s\n", this.getDerecha().getIr_ref(), this.getDerecha().getNombre()));
        } else if (this.getDerecha().getTipo().equals(Tipo.Bool)){
            resultado.append(String.format("%1$s = load i1, i1* @%2$s\n", this.getDerecha().getIr_ref(), this.getDerecha().getNombre()));
        } else {
            resultado.append(String.format("%1$s = load i1, i1* @%2$s\n", this.getDerecha().getIr_ref(), this.getDerecha().getNombre()));
        }

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
