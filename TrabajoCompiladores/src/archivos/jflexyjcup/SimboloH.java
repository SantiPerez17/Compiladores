package archivos.jflexyjcup;

public class SimboloH {
    String nombre;
    Integer valor;
    //String tipo;

    public SimboloH(String nombre, Integer valor) {
        this.nombre = nombre;
        this.valor = valor;
        //this.tipo = tipo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Integer getValor() {
        return valor;
    }

    public void setValor(Integer valor) {
        this.valor = valor;
    }

    //public String getTipo() {
    //    return tipo;
    //}

    //public void setTipo(String tipo) {
    //    this.tipo = tipo;
    //}
}
