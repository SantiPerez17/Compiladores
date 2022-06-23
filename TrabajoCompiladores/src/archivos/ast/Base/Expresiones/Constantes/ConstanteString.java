package archivos.ast.Base.Expresiones.Constantes;

import archivos.ast.Base.Tipo;

public class ConstanteString extends  Constante{

    public ConstanteString(String valor, String nombre) {
        super(valor, nombre);
    }

    public ConstanteString(String valor, Tipo tipo, String nombre) {
        super(valor, Tipo.CTE_STRING, nombre);
    }
    public ConstanteString(String valor, Tipo tipo) {
        super(valor, Tipo.CTE_STRING);
    }

    @Override
    public String generarCodigo() {
        StringBuilder resultado = new StringBuilder();
        //Esta funcion nunca se usa ya que las constantes string no se pueden usar en asignaciones ni comparaciones, solo en los displays, y se resuelve directamente en el display
        return resultado.toString();
    }
}
