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

    @Override
    public String graficar(String idPadre) {
        //Se crea un Stringbuilder
        StringBuilder grafico = new StringBuilder();
        //Se llaman a las funciones que tienen graficar, en la clase Nodo tiene graficar que conecta dos nodos
        //El nodo padre y el nombre de esta clase, a su vez tambien grafica sus dos expresiones.
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
        String tipoll;
        if(this.getTipo().equals(Tipo.Int)){
            tipoll = "i32";
            resultado.append(String.format("%1$s = %2$s " + tipoll + " %3$s, %4$s\n", this.getIr_ref(), this.get_llvm_op_code(this.getTipo()), this.getIzquierda().getIr_ref(), this.getDerecha().getIr_ref()));
        } else if (this.getTipo().equals(Tipo.Float)){
            tipoll = "double";
            resultado.append(String.format("%1$s = %2$s " + tipoll + " %3$s, %4$s\n", this.getIr_ref(), this.get_llvm_op_code(this.getTipo()), this.getIzquierda().getIr_ref(), this.getDerecha().getIr_ref()));
        } else {
            resultado.append(String.format("%1$s = %2$s %3$s, %4$s\n", this.getIr_ref(), this.get_llvm_op_code(this.getIzquierda().getTipo()), this.getIzquierda().getIr_ref(), this.getDerecha().getIr_ref()));
        }
        return resultado.toString();
    }

}
