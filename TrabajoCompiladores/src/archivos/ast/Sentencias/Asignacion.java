package archivos.ast.Sentencias;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Constantes.ConstanteEntera;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Expresiones.FuncionEspecial.Cola;
import archivos.ast.Base.Identificador;
import archivos.ast.Base.Tipo;

public class Asignacion extends Sentencia{
    private static int cont = 1;

    private final Identificador identificador;
    private final Expresion expresion;

    private String ir_ref;

    public String getIr_ref() {
        return ir_ref;
    }

    public void setIr_ref(String ir_ref) {
        this.ir_ref = ir_ref;
    }

    public Asignacion(Identificador identificador, Expresion expresion) {
        this.identificador = identificador;
        this.expresion = expresion;
    }

    public Asignacion(String nombre, Identificador identificador, Expresion expresion) {
        super(nombre);
        this.identificador = identificador;
        this.expresion = expresion;
    }

    protected String getNombreOperacion() {
        return ":=";
    }

    @Override
    public String getEtiqueta() {
        return String.format("Sentencia - [ Asignacion ] -%n %s", this.getNombreOperacion());
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder grafico = new StringBuilder();
        if(expresion.getNombre() == "Cola"){
            Cola cola = (Cola) expresion;
            for (Expresion c: cola.getColas()){
                grafico.append(c.graficar("nodo_programa"));
                Cola cola1 = (Cola) c;
                //grafico.append(cola1.getAcum().graficar("nodo_programa"));
                Identificador identificador2 = new Identificador(cola1.getAcum().getNombre(),cola1.getTipo());
                Identificador identificador3 = new Identificador(cola1.getAcumAux().getNombre(),cola1.getTipo());
                Asignacion asig1 = new Asignacion("Asignacion",identificador3,identificador2);
                grafico.append(asig1.graficar("nodo_programa"));
            }
            grafico.append(expresion.graficar("nodo_programa"));
            grafico.append(super.graficar("nodo_programa"));
            grafico.append(identificador.graficar(this.getId()));
            Identificador identificador1 = new Identificador(cola.getAcum().getNombre(),expresion.getTipo());
            grafico.append(identificador1.graficar(this.getId()));
        } else {
            grafico.append(super.graficar(idPadre));
            grafico.append(identificador.graficar(this.getId()));
            grafico.append(expresion.graficar(this.getId()));
        }
        return grafico.toString();
    }

    @Override
    public String generarCodigo(String etiqueta) {
        StringBuilder resultado = new StringBuilder();
        if(expresion.getNombre() == "Cola") {
            Cola cola = (Cola) expresion;
            int aux = 0;
            for (Expresion c : cola.getColas()) {
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
                resultado.append(c.generarCodigo(this.getIr_ref() + ":\n"));

                //Asignacion de la variable Acum de las colas internas
                Identificador identificador2 = new Identificador(cola1.getAcum().getNombre(), cola1.getTipo());
                Identificador identificador3 = new Identificador(cola1.getAcumAux().getNombre(), cola1.getTipo());
                Asignacion asig1 = new Asignacion("Asignacion", identificador3, identificador2);
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado.append(asig1.generarCodigo(this.getIr_ref() + ":\n"));

                //Reseteamos la variable PivotAux de las colas internas
                Asignacion asig2 = new Asignacion("Asignacion", cola1.getPivotAux(), cola1.getPivot());
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado.append(asig2.generarCodigo(this.getIr_ref() + ":\n"));

                //Reseteamos la variable IdPos de las colas internas
                Asignacion asig3 = new Asignacion("Asignacion", cola1.getIdPos(), new ConstanteEntera("0",Tipo.Int));
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado.append(asig3.generarCodigo(this.getIr_ref() + ":\n"));

                aux += 1;
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
            resultado.append(cola.generarCodigo(this.getIr_ref() + ":\n"));

            //Asignacion de la variable Acum de la cola
            Identificador identificador2 = new Identificador(cola.getAcum().getNombre(), cola.getTipo());
            Identificador identificador3 = new Identificador(this.getIdentificador().getNombre(), cola.getTipo());
            Asignacion asig1 = new Asignacion("Asignacion", identificador3, identificador2);
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append(asig1.generarCodigo(this.getIr_ref() + ":\n"));

            //Reseteamos la variable PivotAux de la cola
            Asignacion asig2 = new Asignacion("Asignacion", cola.getPivotAux(), cola.getPivot());
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append(asig2.generarCodigo(this.getIr_ref() + ":\n"));

            //Reseteamos la variable IdPos de la cola
            Asignacion asig3 = new Asignacion("Asignacion", cola.getIdPos(), new ConstanteEntera("0",Tipo.Int));
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append(asig3.generarCodigo(this.getIr_ref() + ":\n"));
        } else {

            //Si la sentencia no es una cola, genero el codigo para la expresion a la derecha
            this.setIr_ref(CodeGeneratorHelper.getNewPointer());
            this.setEtiquetaLLVM(etiqueta.replaceAll("Cola","").replaceAll(":\n",""));
            resultado.append("\n" + etiqueta.replaceAll("Cola", ""));
            resultado.append(";___Asignación___\n");
            resultado.append(this.expresion.generarCodigo(etiqueta.replaceAll("Cola", "")));

            //Luego almaceno la variable auxiliar a la cual fue asignado el valor de la expresion, en el identificador
            if (expresion.getTipo().equals(Tipo.Int)) {
                resultado.append(String.format("store i32 %1$s, i32* @%2$s\n", expresion.getIr_ref(), this.identificador.getNombre()));
            } else if (expresion.getTipo().equals(Tipo.Float)) {
                resultado.append(String.format("store double %1$s, double* @%2$s\n", expresion.getIr_ref(), this.identificador.getNombre()));
            } else if (expresion.getTipo().equals(Tipo.Bool)) {
                resultado.append(String.format("store i1 %1$s, i1* @%2$s\n", expresion.getIr_ref(), this.identificador.getNombre()));
            }
            String siguiente = "%etiq" + (CodeGeneratorHelper.getNextTag() + 1);
            resultado.append(String.format("br label %1$s\n", siguiente));
        }

        //Este tramo de codigo simplemente hace una limpieza de etiquetas basuras ocacionadas por la cola.
        try{
            String cadena = ":\n;___Asignación___\n\n";
            int start = resultado.indexOf(cadena);
            int end = start+ (cadena).length();
            Character c = resultado.charAt(start);
            while(!c.equals('\n')){
                start-=1;
                c = resultado.charAt(start);
            }
            resultado.delete(start+1,end);
        }catch (Exception e){

        }
        return resultado.toString();
    }

    public Expresion getExpresion() {
        return this.expresion;
    }

    public Identificador getIdentificador(){
        return this.identificador;
    }
}