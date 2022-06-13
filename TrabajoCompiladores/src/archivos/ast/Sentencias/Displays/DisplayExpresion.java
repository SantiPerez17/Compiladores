package archivos.ast.Sentencias.Displays;

import archivos.CodeGeneratorHelper;
import archivos.ast.Base.Expresiones.Expresion;
import archivos.ast.Base.Expresiones.FuncionEspecial.Cola;
import archivos.ast.Base.Identificador;
import archivos.ast.Base.Tipo;
import archivos.ast.Sentencias.Asignacion;

public class DisplayExpresion extends Display {

    private final Expresion expresion;

    public DisplayExpresion(Expresion expresion) {
        this.expresion = expresion;
    }

    public DisplayExpresion(String nombre, Expresion expresion) {
        super(nombre);
        this.expresion = expresion;
    }

    @Override
    public String getEtiqueta() {
        return String.format("Sentencia%n - [ Display Expresion ] -");
    }

    @Override
    public String graficar(String idPadre) {
        StringBuilder resultado = new StringBuilder();
        //Se crea un stringbuilder
        resultado.append(super.graficar(idPadre));
        //se llama al metodo graficar mandandole el id del padre para poder conectar
        resultado.append(this.expresion.graficar(this.getId()));
        //se agrega ademas tambien el graficar de la expresion con el ID de esta clase.
        return resultado.toString();
    }

    @Override
    public String generarCodigo(String etiqueta) {
        StringBuilder resultado = new StringBuilder();
        this.setIr_ref(CodeGeneratorHelper.getNewPointer());
        if(expresion.getNombre().equals("Cola")){
            Cola cola = (Cola) expresion;
            int aux = 0;
            for (Expresion c : cola.getColas()) {
                Cola cola1 = (Cola) c;

                //Asignacion del pivot de las colas internas
                if (aux > 0) {
                    this.setIr_ref(CodeGeneratorHelper.getNewTag());
                    resultado.append(cola1.getAsignacion().generarCodigo(this.getIr_ref() + ":\n"));
                } else {
                    resultado.append(cola1.getAsignacion().generarCodigo(etiqueta.replaceAll("Cola", "")));
                }

                //Sentencias if de las colas internas
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado.append(c.generarCodigo(this.getIr_ref() + ":\n"));

                //Asignacion de la variable Acum de las colas internas
                Identificador identificador2 = new Identificador(cola1.getAcum().getNombre(), cola1.getTipo());
                Identificador identificador3 = new Identificador(cola1.getAcumAux().getNombre(), cola1.getTipo());
                Asignacion asig1 = new Asignacion("Asignacion", identificador3, identificador2);
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado.append(asig1.generarCodigo(this.getIr_ref() + ":\n"));

                aux += 1;
            }

            //Asignacion del pivot de la cola
            if (aux > 0) {
                this.setIr_ref(CodeGeneratorHelper.getNewTag());
                resultado.append(cola.getAsignacion().generarCodigo(this.getIr_ref() + ":\n"));
            } else {
                resultado.append(cola.getAsignacion().generarCodigo(etiqueta.replaceAll("Cola", "")));
            }

            //Sentencias if de la cola
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append(expresion.generarCodigo(this.getIr_ref() + ":\n"));

            //Asignacion de la variable Acum de la cola
            Identificador identificador2 = new Identificador(cola.getAcum().getNombre(), cola.getTipo());
            Identificador identificador3 = new Identificador(cola.getAcumAux().getNombre(), cola.getTipo());
            Asignacion asig1 = new Asignacion("Asignacion", identificador3, identificador2);
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append(asig1.generarCodigo(this.getIr_ref() + ":\n"));

            //Se carga el valor de la cola en una variable auxiliar, y se llama a la funcion @printf para imprimir por consola el valor de la cola.
            this.setIr_ref(CodeGeneratorHelper.getNewTag());
            resultado.append("\n"+this.getIr_ref()+":\n");
            this.expresion.setIr_ref(CodeGeneratorHelper.getNewPointer());
            resultado.append(String.format("%1$s = load i32, i32* @%2$s\n", this.expresion.getIr_ref(), cola.getAcumAux().getNombre()));
            this.setIr_ref(CodeGeneratorHelper.getNewPointer());
            resultado.append(String.format("%1$s = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %2$s)\n", this.getIr_ref(), this.expresion.getIr_ref()));
        } else {

            //Si la expresion no es una cola, se llama a la funcion @printf para imprimir por consola el valor de la expresion.
            this.setEtiquetaLLVM(etiqueta.replaceAll("Cola","").replaceAll(":\n",""));
            resultado.append("\n"+etiqueta.replaceAll("Cola",""));
            resultado.append(";___DisplayExpresion___\n");
            resultado.append(this.expresion.generarCodigo(etiqueta.replaceAll("Cola","")));
            if (this.expresion.getTipo().equals(Tipo.Int)) {
                resultado.append(String.format("%1$s = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %2$s)\n", this.getIr_ref(), this.expresion.getIr_ref()));
            } else if(this.expresion.getTipo().equals(Tipo.Float)) {
                resultado.append(String.format("%1$s = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %2$s)\n", this.getIr_ref(), this.expresion.getIr_ref()));
            } else if(this.expresion.getTipo().equals(Tipo.Bool)) {

                //En caso de ser un booleano, primero se trunca a entero, y luego se llama a la funcion @printf
                this.setIr_ref(CodeGeneratorHelper.getNewPointer());
                String temp_int = this.getIr_ref();
                this.setIr_ref(CodeGeneratorHelper.getNewPointer());
                resultado.append(String.format("%1$s = zext i1 %2$s to i32\n", temp_int, this.expresion.getIr_ref()));
                resultado.append(String.format("%1$s = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.bool, i32 0, i32 0), i32 %2$s)\n", this.getIr_ref(), temp_int));
            }
        }
        String siguiente = "%etiq" + (CodeGeneratorHelper.getNextTag() + 1);
        resultado.append(String.format("br label %1$s\n", siguiente));

        //Este tramo de codigo simplemente hace una limpieza de etiquetas basuras ocacionadas por la cola.
        try{
            String cadena = ":\n;___DisplayExpresion___\n\n";
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
}