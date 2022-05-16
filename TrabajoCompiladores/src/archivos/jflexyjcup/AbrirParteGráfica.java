
        package archivos.jflexyjcup;


        import archivos.jflexyjcup.ast.Base.Programa;
        import java_cup.runtime.Symbol;

        import javax.swing.*;
        import java.awt.*;
        import java.awt.event.ActionEvent;
        import java.awt.event.ActionListener;
        import java.io.*;
        import java.nio.charset.StandardCharsets;
        import java.util.Objects;


public class AbrirParteGráfica extends JFrame implements ActionListener {

    public AbrirParteGráfica() {
        JFrame frame = new JFrame("Compilador");
        JPanel panel1 = new JPanel();
        JPanel panel2 = new JPanel();

        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout());
        panel1.setLayout(new FlowLayout());
        panel2.setLayout(new BorderLayout());
        frame.setSize( 500, 500 );
        frame.setLocationRelativeTo( null );
        frame.add(panel1, BorderLayout.NORTH);
        frame.add(panel2, BorderLayout.CENTER);

        //Se crea un boton para abrir el archivo
        JButton btn = new JButton("Abrir");
        btn.addActionListener(this);
        panel1.add( btn );

        //Se crea un boton para guardar el archivo
        JButton btn2 = new JButton("Guardar");
        btn2.addActionListener(this);
        panel1.add( btn2 );

        //Se crea un boton para generar tokens del archivo
        JButton btn3 = new JButton("Generar Tokens");
        btn3.addActionListener(this);
        panel1.add( btn3 );

        //Se crea boton para generar parser del archivo
        JButton btn4 = new JButton("Generar Parser");
        btn4.addActionListener(this);
        panel1.add( btn4 );

        //Se crea boton para generar parser del archivo
        JButton btn5 = new JButton("Generar AST");
        btn5.addActionListener(this);
        panel1.add( btn5 );

        //Se crea el editor de texto y se agrega a un scroll
        txp = new JTextPane();
        JScrollPane jsp = new JScrollPane();
        jsp.setViewportView(txp);
        panel2.add(jsp, BorderLayout.CENTER);

        String path = archivo.getAbsolutePath();
        String contenido = getArchivo(path);
        txp.setText(contenido);

        frame.setVisible( true );
    }

    //------------------------------Action Performed-------------------------------//
    public void actionPerformed( ActionEvent e ){

        JButton btn = (JButton)e.getSource();
        if( btn.getText().equals( "Abrir" ) )
        {
            if( abrirArchivo == null ) abrirArchivo = new JFileChooser();
            //Con esto solamente podamos abrir archivos
            abrirArchivo.setFileSelectionMode( JFileChooser.FILES_ONLY );

            int seleccion = abrirArchivo.showOpenDialog( this );

            if( seleccion == JFileChooser.APPROVE_OPTION ) {
                File f = abrirArchivo.getSelectedFile();
                archivo = f;
                try {
                    String nombre = f.getName();
                    String path = f.getAbsolutePath();
                    String contenido = getArchivo(path);
                    //Colocamos en el título de la aplicación el
                    //nombre del archivo
                    this.setTitle(nombre);

                    //En el editor de texto colocamos su contenido
                    txp.setText(contenido);

                } catch (Exception exp) {
                }
            }
        } else if( btn.getText().equals( "Guardar" ) ){
            try {
                setArchivo(archivo, txp.getText());
            } catch (IOException ex) {
                JOptionPane.showMessageDialog(rootPane,ex.getMessage());
            }
        } else if( btn.getText().equals( "Generar Tokens" ) ){
            JFrame frame2 = new JFrame("Tokens");
            frame2.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
            frame2.setLayout(new BorderLayout());
            frame2.setSize( 500, 500 );
            frame2.setLocationRelativeTo( null );
            txp2 = new JTextPane();
            JScrollPane jsp2 = new JScrollPane();
            jsp2.setViewportView(txp2);
            frame2.add(jsp2, BorderLayout.CENTER);
            frame2.setVisible( true );
            try {
                Compilar(txp.getText());
            } catch (IOException ex) {
                JOptionPane.showMessageDialog(rootPane,"Error en linea 106: " + ex.getMessage());
            }

        }
        else if (btn.getText().equals("Generar Parser")){
            JFrame frame2 = new JFrame("Parser");
            JFrame frame3 = new JFrame("Tabla de Simbolos");
            frame2.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
            frame3.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
            frame2.setLayout(new BorderLayout());
            frame3.setLayout(new BorderLayout());
            frame2.setSize( 800, 800 );
            frame3.setSize( 300, 300 );
            frame2.setLocationRelativeTo( null );
            frame3.setLocationRelativeTo( null );
            txp3 = new JTextPane();
            txp4 = new JTextPane();
            JScrollPane jsp2 = new JScrollPane();
            JScrollPane jsp3 = new JScrollPane();
            jsp2.setViewportView(txp3);
            jsp3.setViewportView(txp4);
            frame2.add(jsp2, BorderLayout.CENTER);
            frame3.add(jsp3, BorderLayout.CENTER);
            frame2.setVisible( true );
            frame3.setVisible( true );
            try {
                Parsing(txp.getText());
            } catch (IOException ex) {
                JOptionPane.showMessageDialog(rootPane,"Error en linea 106: " + ex.getMessage());
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        else if (btn.getText().equals("Generar AST")){
            try {
                Graficar(txp.getText());
            } catch (IOException ex) {
                JOptionPane.showMessageDialog(rootPane,"Error en linea 106: " + ex.getMessage());
            } catch (Exception ex) {
                ex.printStackTrace();
            }

        }
    }
    //-----------------------------------------------------------------------------//

    //-------------------------Se obtiene el contenido del Archivo----------------//
    public String getArchivo( String ruta ){
        FileReader fr = null;
        BufferedReader br = null;
        //Cadena de texto donde se guardara el contenido del archivo
        String contenido = "";
        try
        {
            //ruta puede ser de tipo String o tipo File
            fr = new FileReader( ruta );
            br = new BufferedReader( fr );

            String linea;
            //Obtenemos el contenido del archivo línea por línea
            while( ( linea = br.readLine() ) != null ){
                contenido += linea + "\n";
            }

        }catch( Exception e ){  }
        //finally se utiliza para que si todo ocurre correctamente o si ocurre
        //algún error se cierre el archivo que anteriormente abrimos
        finally
        {
            try{
                br.close();
            }catch( Exception ex ){}
        }
        return contenido;
    }
    //-----------------------------------------------------------------------------//

    //-------------------------Se guarda el contenido en el Archivo----------------//
    public void setArchivo(File archivo, String contenido) throws IOException {
        FileWriter fw = new FileWriter(archivo.getAbsolutePath());
        String texto = contenido;
        PrintWriter imprime = new PrintWriter(fw);
        imprime.print(texto);
        fw.close();
        JOptionPane.showMessageDialog(rootPane,"Archivo guardado");
    }
    //-----------------------------------------------------------------------------//

    public void Compilar(String contenido) throws IOException {
        try{
            FileReader entrada = new FileReader(archivo);
            MiLexico lexico = new MiLexico(entrada);
            StringBuilder tokens = new StringBuilder();
            StringBuilder errores = new StringBuilder("Errores: ");
            while (!lexico.yyatEOF()) {
                Symbol token = lexico.next_token();
                if (token.value == null) {
                    break;
                }
                if (Objects.equals(((MiToken) token).nombre, "ERROR")){
                    errores.append("\n").append(((MiToken) token).valor).append(" - Linea: ").append(((MiToken) token).linea + 1);
                }
                else {
                    tokens.append("Token: ").append(token).append("\n\n");
                }
            }
            if (errores.toString().equals("Errores: ")){
                tokens.append("\nAnálisis léxico terminado.");
                txp2.setText(tokens.toString());
            } else {
                errores.append("\n\nEl análisis léxico se ejecuto con errores.");
                JOptionPane.showMessageDialog(rootPane, errores.toString());
            }
        } catch(Exception ex){
            JOptionPane.showMessageDialog(rootPane,"Error" + ex.getMessage());
        }
    }

    public void Parsing(String contenido) throws IOException,Exception {
        MiLexico lexer = new MiLexico(new FileReader(archivo));
        MiParser parser = new MiParser(lexer);
        parser.reglas = "";
        parser.simbolos = "";

        StringBuilder Reglas = new StringBuilder();
        StringBuilder Simbolos = new StringBuilder();
        try{
            Symbol p = parser.parse();
            Reglas.append(parser.reglas);
            Simbolos.append(parser.simbolos);
            txp3.setText(parser.reglas);
            txp4.setText("TABLA DE SIMBOLOS \n\n" + parser.simbolos);
            PrintWriter writer = new PrintWriter("ts.txt", StandardCharsets.UTF_8);
            writer.println(parser.simbolos.toString());
            writer.close();
        }
        catch (Exception e){
            JOptionPane.showMessageDialog(rootPane,"Error : " + e.getMessage());
        };
    }

    public void Graficar(String contenido) throws IOException,Exception {
        MiLexico lexer = new MiLexico(new FileReader(archivo));
        MiParser parser = new MiParser(lexer);
        try {
            final Programa programa = (Programa) parser.parse().value;
            PrintWriter grafico = new PrintWriter(new FileWriter("arbol.dot"));
            grafico.println(programa.graficar());
            grafico.close();
            String cmdDot = "dot -Tpng arbol.dot -o arbol.png";
            Runtime.getRuntime().exec(cmdDot);
            Desktop.getDesktop().open(new File("arbol.png"));
        } catch (Exception e) {
            UIManager.put("OptionPane.background", Color.GRAY);
            UIManager.put("OptionPane.messagebackground", Color.GRAY);
            UIManager.put("Panel.background", Color.GRAY);
            JOptionPane.showMessageDialog(rootPane,"Error : " + e.getMessage());
        }
    }

    public static void main( String[] arg ){
        try {
            for (UIManager.LookAndFeelInfo info : UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        new AbrirParteGráfica();
    }

    JTextPane txp;
    JTextPane txp2;
    JTextPane txp3;
    JTextPane txp4;
    JFileChooser abrirArchivo;
    File archivo = new File("pruebas.txt"); //cambiar por pruebas.txt para pruebas en la gui
    //hay que copiar el path del archivo pruebas.txt para que pueda trabajar el lexer-parser.

}
