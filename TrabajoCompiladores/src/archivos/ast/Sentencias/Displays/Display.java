package archivos.ast.Sentencias.Displays;

import archivos.ast.Sentencias.Sentencia;

public class Display extends Sentencia {

    public Display() {
    }
    public Display(String nombre) {
        super(nombre);
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        resultado.append(";Display:\n");
        //this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }
}
