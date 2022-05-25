package archivos.ast.Base.Constantes;

import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Tipo;

public class Constante extends Expresion {
    private final String valor;

    public Constante(String valor, String nombre) {
        super(nombre);
        this.valor = valor;
    }

    public Constante(String valor, Tipo tipo, String nombre) {
        super(nombre, tipo);
        this.valor = valor;
    }

    public Constante(String valor, Tipo tipo) {
        super(tipo);
        this.valor = valor;
    }

    public Object getValor() {
        return valor;
    }

    @Override
    public String getEtiqueta() {
        return String.format(String.format("%s  \n Valor: %s \n%s", this.getNombre(), getValor(), getTipo()));
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        //this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        //resultado.append(String.format("%1$s = add i32 0, %2$s\n", this.getIr_ref(), this.getValor()));
        return resultado.toString();
    }
}