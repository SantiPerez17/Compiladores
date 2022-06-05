package archivos.ast.Base.Expresiones.Operaciones.unarias;

import archivos.CodeGeneratorHelper;
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
        grafico.append(super.graficar(idPadre));
        grafico.append(expresion.graficar(this.getId()));
        return grafico.toString();
    }

    @Override
    public String generarCodigo(String etiqueta) {
        StringBuilder resultado = new StringBuilder();
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        if(expresion.getNombre().equals("Cola")){
            Cola cola = (Cola) this.expresion;
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
            resultado.append(this.expresion.generarCodigo(this.getIr_ref()+":\n"));
            //resultado.append("\netiq"+(CodeGeneratorHelper.getNextTag()+1)+":\n");

            //Asignacion de la variable Acum de la cola
            Identificador identificador2 = new Identificador(cola.getAcum().getNombre(),cola.getTipo());
            Identificador identificador3 = new Identificador(cola.getAcumAux().getNombre(),cola.getTipo());
            Asignacion asig1 = new Asignacion("Asignacion",identificador3,identificador2);
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append(asig1.generarCodigo(this.getIr_ref()+":\n"));
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append("\n"+this.getIr_ref()+":\n");
            this.expresion.setIr_ref(CodeGeneratorHelper.getNewPointer());
            resultado.append(String.format("%1$s = load i32, i32* @%2$s\n", this.expresion.getIr_ref(), cola.getAcumAux().getNombre()));
            this.setIr_ref(CodeGeneratorHelper.getNewPointer());
            resultado.append(String.format("%1$s = %2$s i32 0, %3$s\n", this.getIr_ref(), this.get_llvm_op_code(this.getTipo()), this.expresion.getIr_ref()));
            //int start2 = resultado.indexOf(String.format("br label %1$s\n", "%etiq"+(CodeGeneratorHelper.getNextTag()+1)));
            //int end2 = (String.format("br label %1$s\n", "%"+this.getIr_ref())).length()+start2+1;
            //resultado.delete(start2,end2);
        } else {
            this.expresion.setIr_ref(CodeGeneratorHelper.getNewPointer());
            resultado.append(this.expresion.generarCodigo(this.expresion.getIr_ref()));
            if (this.expresion.getTipo().equals(Tipo.Int)) {
                resultado.append(String.format("%1$s = %2$s i32 0, %3$s\n", this.getIr_ref(), this.get_llvm_op_code(this.getTipo()), this.expresion.getIr_ref()));
            }else if(this.expresion.getTipo().equals(Tipo.Float)){
                resultado.append(String.format("%1$s = %2$s double 0.0, %3$s\n", this.getIr_ref(), this.get_llvm_op_code(this.getTipo()), this.expresion.getIr_ref()));
            } else {
                if(this.expresion.generarCodigo(etiqueta).charAt(this.expresion.generarCodigo(etiqueta).length()-2) == '1'){
                    resultado.append(String.format("%1$s = add " + "i1" + " 0, 0\n", this.getIr_ref()));
                }else{
                    resultado.append(String.format("%1$s = add " + "i1" + " 0, 1\n", this.getIr_ref()));
                }
            }
        }

        return resultado.toString();
    }


}