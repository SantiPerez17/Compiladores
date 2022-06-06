package archivos;

public class CodeGeneratorHelper {
    private static int nextID = 0;
    private static int nextTag = 0;
    private static Integer autoincrementalPivot = 0;
    private static Integer autoincrementalAcum = 0;
    private static Integer autoincrementalPos = 0;
    private static Integer autoincrementalID = 0;
    private static Integer autoincrementalLenLista = 0;

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

    public static String getLenLista(){
        return autoincrementalLenLista.toString();
    }

    public static String getNewLenLista() {
        autoincrementalLenLista+=1;
        return autoincrementalLenLista.toString();
    }

    public static String getNewPointer(){
        StringBuilder ret = new StringBuilder();
        nextID+=1;
        ret.append(String.format("%%aux%s", nextID));
        return ret.toString();
    }

    public static String getNewGlobalPointer(){
        StringBuilder ret = new StringBuilder();
        nextID+=1;
        ret.append(String.format("gb%s", nextID));
        return ret.toString();
    }

    public static String getNewTag(){
        StringBuilder ret = new StringBuilder();
        nextTag+=1;
        ret.append(String.format("etiq%s", nextTag));
        return ret.toString();
    }

    public static int getNextID() {
        return nextID;
    }

    public static int getNextTag() {
        return nextTag;
    }


}
