package archivos.ast.Base.Expresiones.Operaciones.unarias;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Tipo;

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


    protected abstract String getNombreOperacion();

    public abstract String get_llvm_op_code(Tipo tipo);

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
        //Se llaman a las funciones que tienen graficar, en la clase Nodo tiene graficar que conecta dos nodos
        //El nodo padre y el nombre de esta clase, a su vez tambien grafica su expresion mandando el ID.
        grafico.append(super.graficar(idPadre));
        grafico.append(expresion.graficar(this.getId()));
        return grafico.toString();
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        resultado.append(this.getExpresion().generarCodigo());
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        if (this.getExpresion().getTipo().equals(Tipo.Int)) {
            resultado.append(String.format("%1$s = %2$s i32 0, %3$s\n", this.getIr_ref(), this.get_llvm_op_code(this.getTipo()), this.getExpresion().getIr_ref()));
        }else if(this.getExpresion().getTipo().equals(Tipo.Float)){
            resultado.append(String.format("%1$s = %2$s double 0.0, %3$s\n", this.getIr_ref(), this.get_llvm_op_code(this.getTipo()), this.getExpresion().getIr_ref()));
        } else {
            resultado.append(String.format("%1$s = %2$s %3$s, %4$s\n", this.getIr_ref(), this.get_llvm_op_code(this.getExpresion().getTipo()), this.getExpresion().getIr_ref(), '1'));
        }
        return resultado.toString();
    }


}