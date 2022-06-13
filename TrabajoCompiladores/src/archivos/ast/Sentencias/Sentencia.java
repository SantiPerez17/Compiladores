package archivos.ast.Sentencias;

import archivos.ast.Base.Nodo;

public abstract class Sentencia extends Nodo {
    private String etiquetaLLVM;

    public String getEtiquetaLLVM() {
        return etiquetaLLVM;
    }

    public void setEtiquetaLLVM(String etiquetaLLVM) {
        this.etiquetaLLVM = etiquetaLLVM;
    }

    public Sentencia() {
    }
    public Sentencia(String nombre) {
        super(nombre);
    }

}
