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

LineTerminator = \r|\n|\r\n
InputCharacter = [^\r\n]
WhiteSpace     = {LineTerminator} | [ \t\f]

/* comments */
Comment = {TraditionalComment} | {EndOfLineComment} | {DocumentationComment}

TraditionalComment   = "/*" [^*] ~"*/" | "/*" "*"+ "/"
// Comment can be the last line of the file, without line terminator.
EndOfLineComment     = "//" {InputCharacter}* {LineTerminator}?
DocumentationComment = "/**" {CommentContent} "*"+ "/"
CommentContent       = ( [^*] | \*+ [^/*] )*

//Identifier = [:jletter:] [:jletterdigit:]*
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


%state STRING
%state comment

%%
<comment>{
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


  "\(\*" {yybegin(comment);
          count_comment+=1;
            }
  "\*\)" { throw new Error ("Error no comentario balanceado" );
  }
  \"                             {  string.setLength(0);
                                    yybegin(STRING); 
                                    string_yyline = this.yyline;
                                    string_yycolumn = this.yycolumn; }

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
      {Int} {return token("INT", yytext());}
      {Float} {return token("FLOAT", yytext());}
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

  /* comments */
  {Comment}                      { /* ignore */ }

  /* whitespace */
  {WhiteSpace}                   { /* ignore */ }
}

<STRING> {
  \"                             { yybegin(YYINITIAL);
                                   return token("STRING_LITERAL", string_yyline, string_yycolumn, string.toString()); }
  [^\n\r\"\\]+                   { string.append( yytext() ); }
  \\t                            { string.append('\t'); }
  \\n                            { string.append('\n'); }

  \\r                            { string.append('\r'); }
  \\\"                           { string.append('\"'); }
  \\                             { string.append('\\'); }
}

/* error fallback */
[^]                              { throw new Error("Illegal character <"+yytext()+">"); }
