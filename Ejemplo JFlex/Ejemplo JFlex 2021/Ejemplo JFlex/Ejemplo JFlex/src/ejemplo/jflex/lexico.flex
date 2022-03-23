/* JFlex example: partial Java language lexer specification */
package ejemplo.jflex;

/**
 * This class is a simple example lexer.
 */
%%

%public
%class MiLexico
%unicode
%type MiToken
%line
%column

%{
    /*************************************************************************
    * En esta sección se puede incluir código que se copiará textualmente
    * como parte de la definición de la clase del analizador léxico.
    * Típicamente serán variables de instancia o nuevos métodos de la clase.
    *************************************************************************/

    int string_yyline = 0;
    int string_yycolumn = 0;
    int count_comment = 0;
    int cota_int = 20;
    int cota_float = 50;
    int cantMax_string = 500;


    StringBuffer string = new StringBuffer();

    private MiToken token(String nombre) {
        return new MiToken(nombre, this.yyline, this.yycolumn);
    }

    private MiToken token(String nombre, Object valor) {
        return new MiToken(nombre, this.yyline, this.yycolumn, valor);
    }

    private MiToken token(String nombre, int line, int column, Object valor) {
        return new MiToken(nombre, line, column, valor);
    }
%}

/* comments */
//Comment = {TraditionalComment} | {EndOfLineComment} | {DocumentationComment}

//TraditionalComment   = "/*" [^*] ~"*/" | "/*" "*"+ "/"
// Comment can be the last line of the file, without line terminator.
//EndOfLineComment     = "//" {InputCharacter}* {LineTerminator}?
//DocumentationComment = "/**" {CommentContent} "*"+ "/"
//CommentContent       = ( [^*] | \*+ [^/*] )*

//Identifier = [:jletter:] [:jletterdigit:]*
Cola = "cola" | "Cola"


Identifier = (([^\W\_\d]){1}[^\W]*){1,50}

Int= \d+
Float = \d+\.|\.\d+|\d+\.\d+
Bool = true|false
Comilla = \“|\"|\”
Igual = ==
Distinto = \!=
Mayor = \>
Menor = \<
Mayor_Igual = \>=
Menor_Igual = \<=
OpComparacion = {Igual}|{Distinto}|{Mayor}|{Menor}|{Mayor_Igual}|{Menor_Igual}
LineTerminator = \r|\n|\r\n
InputCharacter = [^\r\n]
WhiteSpace     =  \s | {LineTerminator} | [\t\f]
SimpleComment = #.*{LineTerminator}?
%state STRING
%state Comment

%%
<Comment>{
"\(\*" {count_comment+=1;}
"\*\)" {count_comment-=1;
      if (count_comment==0){
          yybegin(YYINITIAL);
      }}
"\n" {throw new Error ("Error no comentario balanceado" );}

<<EOF>> {
         throw new Error ("Error no comentario balanceado" );
      }
[^] {/*nada*/}
}



<YYINITIAL> {


  "\(\*" {yybegin(Comment);
          count_comment+=1;
            }
  "\*\)" { throw new Error ("Error no comentario balanceado" );
  }
  \"                             {  string.setLength(0);
                                    yybegin(STRING); 
                                    string_yyline = this.yyline;
                                    string_yycolumn = this.yycolumn; }
  {SimpleComment} {/*nada*/}

  {Cola} {return token("COLA", yytext());}

  /* "operators" */
  ":=" { return token("ASIGN", yytext()); }
  "==" { return token("IGUAL", yytext()); }
  "+" { return token("SUMA", yytext()); }
  "-" {return token("RESTA", yytext());}
  "*" {return token("MULT", yytext());}
  "/" {return token("DIV", yytext());}

  {OpComparacion} {return token("OPCOMP", yytext());}



  /* OP LOGICOS*/
      "and" {return token("AND",yytext());}
      "or" {return token("OR", yytext());}
      "not" {return token("not", yytext());}
  /* Sentencias */
  "while" {return token("WHILE", yytext());}
      "do" {return token("DO", yytext());}
      "end" {return token("END", yytext());}
      "if" {return token("IF", yytext());}
      "then" {return token("THEN", yytext());}
      "else" {return token("ELSE", yytext());}

  /* tipos de datos */
      {Bool} {return token("BOOL", yytext());}
      {Int} {
          int a = yytext().length();
          //int a = Integer.parseInt(yytext());
                //System.out.println(a + "es de tipo" + ((Object)a).getClass().getSimpleName()); para saber si castea bien
                if ( a < cota_int ) {return token("INT", yytext());}
                        else{
                            throw new Error ("Error supera cantidad maxima de caracteres permitidos" );}}

      {Float} {
          int a = yytext().length();
          //float a = Float.parseFloat(yytext()); me equivoqué pense que pedían hasta que numero flotante, y era su cant de caracteres.
                              //System.out.println(a + "es de tipo" + ((Object)a).getClass().getSimpleName()); para saber si castea bien
                              if ( a < cota_float) {return token("FLOAT", yytext());}
                                      else{
                                          throw new Error ("Error supera cantidad maxima de caracteres permitidos" );}}
  /*- ----------------- */
      "display" {return token("DISPLAY", yytext());}
      "declare.section" {return token("DECLARE.SECTION", yytext());}
      "enddeclare.section" {return token("ENDDECLARE.SECTION", yytext());}
      "program.section" {return token("program.SECTION", yytext());}
      "endprogram.section" {return token("ENDPROGRAM.SECTION", yytext());}

    //“\(“ : parentesiso
    "\(" {return token("PARENTESISO", yytext());}
    //“\)” :parentesisc
    "\)" {return token("PARENTESISC", yytext());}
    //“\[“ : llaveo
    "\[" {return token("LLAVEO", yytext());}
    //“]” : llavec
    "\]" {return token("LLAVEc", yytext());}
    // “#” : comentario; -> ESO SE MANEJA EN EL OTRO LADO.
    //“{“ : corcheteo
    "\{" {return token("CORCHETEO", yytext());}
    //“}” :corchetec
    "\}" {return token("CORCHETEC", yytext());}
    //“\.” : punto
    "\." {return token("PUNTO", yytext());}
    // “\;” : puntocoma
    "\;" {return token("PUNTOCOMA", yytext());}
    // “,” : coma
    "\," {return token("COMA", yytext());}
    "\:" {return token("DOSPUNTOS", yytext());}
    //‘\“‘ : comilla
    {Comilla} {return token("COMILLA", yytext());}

  /* identifiers */
  {Identifier}                   { return token("IDENTIFIER", yytext()); }
  /* whitespace */
  {WhiteSpace}                   { /* ignore */ }
}

<STRING> {
  \"                             { yybegin(YYINITIAL);
                                    if (string.length() < cantMax_string) {return token("STRING_LITERAL", string_yyline, string_yycolumn, string.toString());}
                                        else{
                                            throw new Error ("Error supera cantidad maxima de cadena de caracteres" );
                                        }
      }
  [^\n\r\"\\]+                   { string.append( yytext() ); }
  \\t                            { string.append('\t'); }
  \\n                            { string.append('\n'); }

  \\r                            { string.append('\r'); }
  \\\"                           { string.append('\"'); }
  \\                             { string.append('\\'); }
}

/* error fallback */
[^]                              { throw new Error("Illegal character <"+yytext()+">"); }
