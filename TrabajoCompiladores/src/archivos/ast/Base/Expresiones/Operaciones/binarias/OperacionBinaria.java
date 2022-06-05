package archivos.ast.Base.Expresiones.Operaciones.binarias;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Expresiones.FuncionEspecial.Cola;
import archivos.ast.Base.Identificador;
import archivos.ast.Base.Tipo;
import archivos.ast.Sentencias.Asignacion;

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
        StringBuilder grafico = new StringBuilder();
        grafico.append(super.graficar(idPadre));
        grafico.append(izquierda.graficar(this.getId()));
        grafico.append(derecha.graficar(this.getId()));
        return grafico.toString();
    }

    protected abstract String getNombreOperacion();

    public abstract String get_llvm_op_code(Tipo tipo);

    @Override
    public String generarCodigo(String etiqueta){
        StringBuilder resultado = new StringBuilder();

        this.getIzquierda().setIr_ref(CodeGeneratorHelper.getNewPointer());
        this.getDerecha().setIr_ref(CodeGeneratorHelper.getNewPointer());
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());

        if(this.getIzquierda().getNombre()=="Factor_Int" ||
                this.getIzquierda().getNombre()=="Factor_Float" ||
                this.getIzquierda().getNombre()=="Factor_Bool" ||
                this.getIzquierda().getNombre()=="MenosUnario" ||
                this.getIzquierda().getNombre()=="INT a FLOAT" ||
                this.getIzquierda().getNombre()=="+" ||
                this.getIzquierda().getNombre()=="-" ||
                this.getIzquierda().getNombre()=="*" ||
                this.getIzquierda().getNombre()=="/" ||
                this.getIzquierda().getNombre()=="AND" ||
                this.getIzquierda().getNombre()=="OR" ||
                this.getIzquierda().getNombre()=="NOT" ||
                this.getIzquierda().getNombre()=="==" ||
                this.getIzquierda().getNombre()=="!=" ||
                this.getIzquierda().getNombre()==">" ||
                this.getIzquierda().getNombre()==">=" ||
                this.getIzquierda().getNombre()=="<" ||
                this.getIzquierda().getNombre()=="<="){
            resultado.append(this.getIzquierda().generarCodigo(this.getIr_ref()));
        }else if(this.getIzquierda().getNombre()=="Cola"){
            Cola cola = (Cola) this.getIzquierda();
            int aux = 0;
            for (Expresion c: cola.getColas()){
                Cola cola1 = (Cola) c;

                //Asignacion del pivot de las colas internas
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado.append(cola1.getAsignacion().generarCodigo(this.getIr_ref()+":\n"));

                //Sentencias if de las colas internas
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado.append(c.generarCodigo(this.getIr_ref()+":\n"));

                //Asignacion de la variable Acum de las colas internas
                Identificador identificador2 = new Identificador(cola1.getAcum().getNombre(),cola1.getTipo());
                Identificador identificador3 = new Identificador(cola1.getAcumAux().getNombre(),cola1.getTipo());
                Asignacion asig1 = new Asignacion("Asignacion",identificador3,identificador2);
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado.append(asig1.generarCodigo(this.getIr_ref()+":\n"));

                aux+=1;
            }

            //Asignacion del pivot de la cola
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append(cola.getAsignacion().generarCodigo(this.getIr_ref()+":\n"));

            //Sentencias if de la cola
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append(this.getIzquierda().generarCodigo(this.getIr_ref()+":\n"));

            //Asignacion de la variable Acum de la cola
            Identificador identificador2 = new Identificador(cola.getAcum().getNombre(),cola.getTipo());
            Identificador identificador3 = new Identificador(cola.getAcumAux().getNombre(),cola.getTipo());
            Asignacion asig1 = new Asignacion("Asignacion",identificador3,identificador2);
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append(asig1.generarCodigo(this.getIr_ref()+":\n"));
            this.setIr_ref(CodeGeneratorHelper.getNewPointer());
            resultado.append(String.format("%1$s = load i32, i32* @%2$s\n", this.getIzquierda().getIr_ref(), cola.getAcumAux().getNombre()));
        } else {
            if (this.getIzquierda().getTipo().equals(Tipo.Int)){
                resultado.append(String.format("%1$s = load i32, i32* @%2$s\n", this.getIzquierda().getIr_ref(), this.getIzquierda().getNombre()));
            } else if (this.getIzquierda().getTipo().equals(Tipo.Float)){
                resultado.append(String.format("%1$s = load double, double* @%2$s\n", this.getIzquierda().getIr_ref(), this.getIzquierda().getNombre()));
            } else if (this.getIzquierda().getTipo().equals(Tipo.Bool)){
                resultado.append(String.format("%1$s = load i1, i1* @%2$s\n", this.getIzquierda().getIr_ref(), this.getIzquierda().getNombre()));
            } else {
                resultado.append(String.format("%1$s = load i1, i1* @%2$s\n", this.getIzquierda().getIr_ref(), this.getIzquierda().getNombre()));
            }
        }

        if(this.getDerecha().getNombre()=="Factor_Int" ||
                this.getDerecha().getNombre()=="Factor_Float" ||
                this.getDerecha().getNombre()=="Factor_Bool" ||
                this.getDerecha().getNombre()=="MenosUnario" ||
                this.getDerecha().getNombre()=="INT a FLOAT" ||
                this.getDerecha().getNombre()=="+" ||
                this.getDerecha().getNombre()=="-" ||
                this.getDerecha().getNombre()=="*" ||
                this.getDerecha().getNombre()=="/" ||
                this.getDerecha().getNombre()=="AND" ||
                this.getDerecha().getNombre()=="OR" ||
                this.getDerecha().getNombre()=="NOT" ||
                this.getDerecha().getNombre()=="==" ||
                this.getDerecha().getNombre()=="!=" ||
                this.getDerecha().getNombre()==">" ||
                this.getDerecha().getNombre()==">=" ||
                this.getDerecha().getNombre()=="<" ||
                this.getDerecha().getNombre()=="<=") {
            resultado.append(this.getDerecha().generarCodigo(this.getIr_ref()));
        }else if(this.getDerecha().getNombre()=="Cola"){
            Cola cola = (Cola) this.getDerecha();
            int aux = 0;
            for (Expresion c: cola.getColas()){
                Cola cola1 = (Cola) c;

                //Asignacion del pivot de las colas internas
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado.append(cola1.getAsignacion().generarCodigo(this.getIr_ref()+":\n"));

                //Sentencias if de las colas internas
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado.append(c.generarCodigo(this.getIr_ref()+":\n"));

                //Asignacion de la variable Acum de las colas internas
                Identificador identificador2 = new Identificador(cola1.getAcum().getNombre(),cola1.getTipo());
                Identificador identificador3 = new Identificador(cola1.getAcumAux().getNombre(),cola1.getTipo());
                Asignacion asig1 = new Asignacion("Asignacion",identificador3,identificador2);
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado.append(asig1.generarCodigo(this.getIr_ref()+":\n"));

                aux+=1;
            }

            //Asignacion del pivot de la cola
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append(cola.getAsignacion().generarCodigo(this.getIr_ref()+":\n"));

            //Sentencias if de la cola
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append(this.getDerecha().generarCodigo(this.getIr_ref()+":\n"));

            //Asignacion de la variable Acum de la cola
            Identificador identificador2 = new Identificador(cola.getAcum().getNombre(),cola.getTipo());
            Identificador identificador3 = new Identificador(cola.getAcumAux().getNombre(),cola.getTipo());
            Asignacion asig1 = new Asignacion("Asignacion",identificador3,identificador2);
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append(asig1.generarCodigo(this.getIr_ref()+":\n"));
            this.setIr_ref(CodeGeneratorHelper.getNewPointer());
            resultado.append(String.format("%1$s = load i32, i32* @%2$s\n", this.getDerecha().getIr_ref(), cola.getAcumAux().getNombre()));
        } else {
            if (this.getDerecha().getTipo().equals(Tipo.Int)) {
                resultado.append(String.format("%1$s = load i32, i32* @%2$s\n", this.getDerecha().getIr_ref(), this.getDerecha().getNombre()));
            } else if (this.getDerecha().getTipo().equals(Tipo.Float)) {
                resultado.append(String.format("%1$s = load double, double* @%2$s\n", this.getDerecha().getIr_ref(), this.getDerecha().getNombre()));
            } else if (this.getDerecha().getTipo().equals(Tipo.Bool)) {
                resultado.append(String.format("%1$s = load i1, i1* @%2$s\n", this.getDerecha().getIr_ref(), this.getDerecha().getNombre()));
            } else {
                resultado.append(String.format("%1$s = load i1, i1* @%2$s\n", this.getDerecha().getIr_ref(), this.getDerecha().getNombre()));
            }
        }

        String tipoll;
        if(this.getTipo().equals(Tipo.Int)){
            tipoll = "i32";
            resultado.append(String.format("%1$s = %2$s " + tipoll + " %3$s, %4$s\n", this.getIr_ref(),
                    this.get_llvm_op_code(this.getTipo()), this.getIzquierda().getIr_ref(),
                    this.getDerecha().getIr_ref()));
        } else if (this.getTipo().equals(Tipo.Float)){
            tipoll = "double";
            resultado.append(String.format("%1$s = %2$s " + tipoll + " %3$s, %4$s\n", this.getIr_ref(),
                    this.get_llvm_op_code(this.getTipo()), this.getIzquierda().getIr_ref(),
                    this.getDerecha().getIr_ref()));
        } else {
            resultado.append(String.format("%1$s = %2$s %3$s, %4$s\n", this.getIr_ref(),
                    this.get_llvm_op_code(this.getIzquierda().getTipo()), this.getIzquierda().getIr_ref(),
                    this.getDerecha().getIr_ref()));
        }

        return resultado.toString();
    }
}
