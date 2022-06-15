package archivos.ast.Base.Expresiones.Operaciones.unarias;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Constantes.ConstanteEntera;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Expresiones.FuncionEspecial.Cola;
import archivos.ast.Base.Identificador;
import archivos.ast.Base.Tipo;
import archivos.ast.Sentencias.Asignacion;

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
    public String generarCodigo(String etiqueta) {
        StringBuilder resultado = new StringBuilder();

        if(expresion.getNombre().equals("Cola")){
            Cola cola = (Cola) this.expresion;
            int aux = 0;
            for (Expresion c: cola.getColas()){
                Cola cola1 = (Cola) c;

                //Ponemos en 0 los acum
                Asignacion asig0 = new Asignacion("Asignacion", cola1.getAcum(), new ConstanteEntera("0",Tipo.Int));
                if (aux > 0) {
                    this.setIr_ref(CodeGeneratorHelper.getNewTag());
                    resultado.append(asig0.generarCodigo(this.getIr_ref() + ":\n"));
                } else {
                    resultado.append(asig0.generarCodigo(etiqueta.replaceAll("Cola", "")));
                }
                Asignacion asig00 = new Asignacion("Asignacion", cola1.getAcumAux(), new ConstanteEntera("0",Tipo.Int));
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado.append(asig00.generarCodigo(this.getIr_ref() + ":\n"));

                //Asignacion del pivot
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado.append(cola1.getAsignacion().generarCodigo(this.getIr_ref() + ":\n"));

                //Sentencias if de las colas internas
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado.append(c.generarCodigo(this.getIr_ref()+":\n"));

                //Asignacion de la variable Acum de las colas internas
                Identificador identificador2 = new Identificador(cola1.getAcum().getNombre(),cola1.getTipo());
                Identificador identificador3 = new Identificador(cola1.getAcumAux().getNombre(),cola1.getTipo());
                Asignacion asig1 = new Asignacion("Asignacion",identificador3,identificador2);
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado.append(asig1.generarCodigo(this.getIr_ref()+":\n"));

                //Reseteamos la variable PivotAux de las colas internas
                Asignacion asig2 = new Asignacion("Asignacion", cola1.getPivotAux(), cola1.getPivot());
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado.append(asig2.generarCodigo(this.getIr_ref() + ":\n"));

                //Reseteamos la variable IdPos de las colas internas
                Asignacion asig3 = new Asignacion("Asignacion", cola1.getIdPos(), new ConstanteEntera("0",Tipo.Int));
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado.append(asig3.generarCodigo(this.getIr_ref() + ":\n"));

                aux+=1;
            }

            //Ponemos en 0 los acum
            Asignacion asig0 = new Asignacion("Asignacion", cola.getAcum(), new ConstanteEntera("0",Tipo.Int));
            if (aux > 0) {
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado.append(asig0.generarCodigo(this.getIr_ref() + ":\n"));
            } else {
                resultado.append(asig0.generarCodigo(etiqueta.replaceAll("Cola", "")));
            }
            Asignacion asig00 = new Asignacion("Asignacion", cola.getAcumAux(), new ConstanteEntera("0",Tipo.Int));
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append(asig00.generarCodigo(this.getIr_ref() + ":\n"));

            //Asignacion del pivot
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append(cola.getAsignacion().generarCodigo(this.getIr_ref() + ":\n"));

            //Sentencias if de la cola
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append(this.expresion.generarCodigo(this.getIr_ref()+":\n"));

            //Asignacion de la variable Acum de la cola
            Identificador identificador2 = new Identificador(cola.getAcum().getNombre(),cola.getTipo());
            Identificador identificador3 = new Identificador(cola.getAcumAux().getNombre(),cola.getTipo());
            Asignacion asig1 = new Asignacion("Asignacion",identificador3,identificador2);
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append(asig1.generarCodigo(this.getIr_ref()+":\n"));

            //Reseteamos la variable PivotAux de la cola
            Asignacion asig2 = new Asignacion("Asignacion", cola.getPivotAux(), cola.getPivot());
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append(asig2.generarCodigo(this.getIr_ref() + ":\n"));

            //Reseteamos la variable IdPos de la cola
            Asignacion asig3 = new Asignacion("Asignacion", cola.getIdPos(), new ConstanteEntera("0",Tipo.Int));
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append(asig3.generarCodigo(this.getIr_ref() + ":\n"));

            //Se carga el valor de la cola y se asigna a una variable auxiliar
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append("\n"+this.getIr_ref()+":\n");
            this.expresion.setIr_ref(CodeGeneratorHelper.getNewPointer());
            resultado.append(String.format("%1$s = load i32, i32* @%2$s\n", this.expresion.getIr_ref(), cola.getAcumAux().getNombre()));
            this.setIr_ref(CodeGeneratorHelper.getNewPointer());
            resultado.append(String.format("%1$s = %2$s i32 0, %3$s\n", this.getIr_ref(), this.get_llvm_op_code(this.getTipo()), this.expresion.getIr_ref()));
        } else {

            //Si la expresion no es una cola, asignamos a ua variable auxiliar el valor de la expresion.
            resultado.append(this.expresion.generarCodigo(etiqueta.replaceAll("Cola", "")));
            this.setIr_ref(CodeGeneratorHelper.getNewPointer());
            if (this.expresion.getTipo().equals(Tipo.Int)) {
                resultado.append(String.format("%1$s = %2$s i32 0, %3$s\n", this.getIr_ref(), this.get_llvm_op_code(this.getTipo()), this.expresion.getIr_ref()));
            }else if(this.expresion.getTipo().equals(Tipo.Float)){
                resultado.append(String.format("%1$s = %2$s double 0.0, %3$s\n", this.getIr_ref(), this.get_llvm_op_code(this.getTipo()), this.expresion.getIr_ref()));
            } else {
                resultado.append(String.format("%1$s = %2$s %3$s, %4$s\n", this.getIr_ref(),
                        this.get_llvm_op_code(this.expresion.getTipo()), this.expresion.getIr_ref(),
                        '1'));
            }
        }

        return resultado.toString();
    }


}