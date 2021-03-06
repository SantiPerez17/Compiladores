/* JFlex example: partial Java language lexer specification */
package archivos.lexico;
/**
 * This class is a simple example lexer.
 */
%%

%public
%class MiLexico
%unicode
%cup
%type MiToken
%line
%column

%{
    /*************************************************************************
    * En esta sección se puede incluir código que se copiará textualmente
    * como parte de la definición de la clase del analizador léxico.
    * Típicamente serán variables de instancia o nuevos métodos de la clase.
    *************************************************************************/

    int string_yyline = 1;
    int string_yycolumn = 1;
    int count_comment = 0;
    int cota_int = 20;
    int cota_ID = 28;
    int cota_float = 25;
    int cantMax_string = 100;


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


Cola = "cola" | "Cola"
Input_int = "input_int"
Input_float = "input_float"
Input_bool = "input_bool"
Tipo_int = "int"
Tipo_float = "float"
Tipo_bool = "bool"

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
LineTerminator = \r|\n|\r\n
//InputCharacter = [^\r\n]
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

<<EOF>> {
         return token("ERROR", "Error comentario no balanceado");
      }
[^] {/*nada*/}
}



<YYINITIAL> {


  "\(\*" {yybegin(Comment);
          count_comment+=1;

      }
  "\*\)" { return token("ERROR", "Error comentario no balanceado");
  }

  \"  {  string.setLength(0);
          yybegin(STRING);
          string_yyline = this.yyline;
          string_yycolumn = this.yycolumn; }

  {SimpleComment} {}

  {Cola} {return token("COLA", yytext());}

  /* "operators" */
  ":=" { return token("ASIGN", yytext()); }
  "+" { return token("SUMA", yytext()); }
  "-" {return token("RESTA", yytext());}
  "*" {return token("MULT", yytext());}
  "/" {return token("DIV", yytext());}


  {Mayor} {return token("MAYOR",yytext());}
  {Menor} {return token("MENOR",yytext());}
  {Igual} {return token("IGUAL",yytext());}
  {Distinto} {return token("DISTINTO",yytext());}
  {Mayor_Igual} {return token("MAYOR_IGUAL",yytext());}
  {Menor_Igual} {return token("MENOR_IGUAL",yytext());}

  /* OP LOGICOS*/
      "and" {return token("AND",yytext());}
      "or" {return token("OR", yytext());}
      "not" {return token("NOT", yytext());}
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
          if ( a < cota_int ) {return token("INT", yytext());}
          else{
              return token("ERROR", "Error supera cantidad maxima de caracteres permitidos");
          }
      }

      {Float} {
          int a = yytext().length();
          if ( a < cota_float) {return token("FLOAT", yytext());}
          else{
              return token("ERROR", "Error supera cantidad maxima de caracteres permitidos");}}

  /*- ----------------- */
      "display" {return token("DISPLAY", yytext());}
      {Input_int} {return token("INPUT_INT", yytext());}
      {Input_float} {return token("INPUT_FLOAT", yytext());}
      {Input_bool} {return token("INPUT_BOOL", yytext());}
      {Tipo_int} {return token("TIPO_INT", yytext());}
      {Tipo_float} {return token("TIPO_FLOAT", yytext());}
      {Tipo_bool} {return token("TIPO_BOOL", yytext());}
      "declare.section" {return token("DECLARE_SECTION", yytext());}
      "enddeclare.section" {return token("ENDDECLARE_SECTION", yytext());}
      "program.section" {return token("PROGRAM_SECTION", yytext());}
      "endprogram.section" {return token("ENDPROGRAM_SECTION", yytext());}

    //“\(“ : parentesiso
    "\(" {return token("PARENTESISO", yytext());}
    //“\)” :parentesisc
    "\)" {return token("PARENTESISC", yytext());}
    //“\[“ : llaveo
    "\[" {return token("CORCHETEO", yytext());}
    //“]” : llavec
    "\]" {return token("CORCHETEC", yytext());}
    // “\;” : puntocoma
    "\;" {return token("PUNTOCOMA", yytext());}
    // “,” : coma
    "\," {return token("COMA", yytext());}
    "\:" {return token("DOSPUNTOS", yytext());}
    //‘\“‘ : comilla
    {Comilla} {return token("COMILLA", yytext());}

  /* identifiers */
  {Identifier}                   {
          if ( yytext().length() < cota_ID) {return token("IDENTIFIER", yytext());}
          else{
              return token("ERROR", "Error supera cantidad maxima de caracteres permitidos");}}

  /* whitespace */
  {WhiteSpace}                   { /* ignore */ }
}

<STRING> {
  \"  { yybegin(YYINITIAL);
          if (string.length() < cantMax_string) {return token("STRING_LITERAL", string_yyline, string_yycolumn, string.toString());}
          else{
              return token("ERROR", "Error supera cantidad maxima de caracteres permitidos");
          }
      }
  [^\n\r\"\\]+                   { string.append( yytext() ); }
  \\t                            { string.append('\t'); }
  \\n                            { string.append('\n'); }

  \\r                            { string.append('\r'); }
  \\\"                           { string.append('\"'); }
  \\                             { string.append('\\'); }
}
<<EOF>>     {return token("EOF");}
/* error fallback */
[^]  { return token("ERROR", "Illegal character <"+yytext()+">"); }
