package archivos;

public class CodeGeneratorHelper {
    private static int nextID = 0;
    private static int nextTag = 0;

    private static Integer autoincrementalPivot = 0;  /* Se usa para enumerar los pivot de cada una de las colas, que se usa para evaluar las expresiones de la cola junto con la posicion en la lista */
    private static Integer autoincrementalAcum = 0;  /* Se usa para enumerar los identificadores Acum y AcumAux de cada una de las colas, que se usan para almacenar el resultado de la cola */
    private static Integer autoincrementalPos = 0;  /* Se usa para enumerar el identificador Posicion, que se usa para evaluar las expresiones en la cola y saber cuales debemos sumar */
    private static Integer autoincrementalID = 0;  /* Se usa para enumerar las diferentes colas que vayan apareciendo (solo se usa en la etiqueta del arbol sintactico) */

    private CodeGeneratorHelper(){}

    public static String getPos(){
        return autoincrementalPos.toString();
    }

    public static String getNewPos(){
        autoincrementalPos+=1;
        return autoincrementalPos.toString();
    }

    public static String getPivot(){
        return autoincrementalPivot.toString();
    }

    public static String getNewPivot(){
        autoincrementalPivot+=1;
        return autoincrementalPivot.toString();
    }

    public static String getAcum(){
        return autoincrementalAcum.toString();
    }

    public static String getNewAcum(){
        autoincrementalAcum+=1;
        return autoincrementalAcum.toString();
    }

    public static String getNewID(){
        autoincrementalID+=1;
        return autoincrementalID.toString();
    }

    public static String getNewPointer(){
        StringBuilder ret = new StringBuilder();
        nextID+=1;
        ret.append(String.format("%%aux%s", nextID));
        return ret.toString();
    }

    public static String getNewTag(){
        StringBuilder ret = new StringBuilder();
        nextTag+=1;
        ret.append(String.format("etiq%s", nextTag));
        return ret.toString();
    }

    public static int getNextTag() {
        return nextTag;
    }

    public static int getNextPointer() { return nextID; }


}
