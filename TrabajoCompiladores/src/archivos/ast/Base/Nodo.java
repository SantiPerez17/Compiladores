package archivos.ast.Base;

public abstract class Nodo{
    private String nombre;

    public Nodo() {}

    public Nodo(String nombre) {
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEtiqueta() {
        if (this.nombre != null) {
            return this.getNombre();
        }
        final String name = this.getClass().getName();
        final int pos = name.lastIndexOf('.') + 1;
        return name.substring(pos);
    }
    protected String getId() {
        return "nodo_" + this.hashCode();
    }

    public String graficar(String idPadre){
        StringBuilder grafico = new StringBuilder();
        grafico.append(String.format("%1$s[label=\"%2$s\"]\n", this.getId(), this.getEtiqueta()));
        if(idPadre != null)
            grafico.append(String.format("%1$s--%2$s\n", idPadre, this.getId()));
        return grafico.toString();
    }

    private String ir_ref;

    public String getIr_ref() {
        return ir_ref;
    }

    public void setIr_ref(String ir_ref) {
        this.ir_ref = ir_ref;
    }

    //generarCodigo(String etiqueta) es un metodo abstracto de la clase Nodo que nos permite generar el codigo de bajo nivel de cada una de las sentencias con su respectiva etiqueta
    public abstract String generarCodigo(String etiqueta);

}
