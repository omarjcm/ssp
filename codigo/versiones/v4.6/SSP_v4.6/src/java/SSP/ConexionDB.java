/*
 * Conexion.java
 *
 * Created on May 30, 2007, 11:59 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package SSP;

import java.sql.*;

public class ConexionDB {
	
    /**
     * Atributo que mantiene la conexión con la BD
     */
    private Connection miConexion;
    /**
     * Objeto que permite ejecutar consultas SQL
     */
    private Statement instruccion=null;
		
    public ConexionDB() {
    }
    
    /*
     *Método que permite realizar la conexión a la BD
     *@return true si la conexión fue exitosa
     */
    public boolean conectar(){	
        String url;
        url = "jdbc:mysql://localhost:3306/ssp?user=root&password=proyectossp";
        
        //Creación del driver que permite manejar la conexión...
        try
        {
            Class.forName("com.mysql.jdbc.Driver");  //para conectarse con MySql
        }
        catch(ClassNotFoundException e){return false;}

        //creación de la conexión...
        try 
        {
            miConexion = DriverManager.getConnection(url);
            System.out.println(url);
            instruccion = miConexion.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE); 
        } 
        catch(SQLException ex) {
            System.out.println(ex.getMessage());
                return false;
        }

        //la conexión fue exitosa
        return true;		
    }
	
    /*
     *Verifica si la conexión es exitosa
     */
    public ResultSet ejecutarConsulta(String strConsulta){        
        //Objeto que almacenará el resultado de la consulta SQL
        ResultSet rs=null;
        //se debe asigar null porque el rs le estoy asigando un
        // valor dentro del try, y si nunc entra al try no 
        //quedaria inicializado

        try
        {
            //Creación de una sentencia para ejecutar la consulta
            instruccion = miConexion.createStatement();
            //ejecución de la consulta
            rs = instruccion.executeQuery(strConsulta);
        }
        catch(SQLException e){}		
        return rs;
    }
        
    /*
     *Verifica si la conexión es exitosa
     */
    public boolean ejecutarInsercion(String insertarString){
        //Objeto que almacenará el resultado de la insercion SQL
        PreparedStatement sqlQuery;

        //se debe asigar null porque el rs le estoy asigando un
        // valor dentro del try, y si nunc entra al try no 
        //quedaria inicializado

        try
        {
            sqlQuery=miConexion.prepareStatement(insertarString);
            //Creación de una sentencia para ejecutar la consulta
            instruccion = miConexion.createStatement();
            //ejecución de la consulta
            //rs = instruccion.executeQuery(insertarString);
            int n=instruccion.executeUpdate(insertarString);
            return true;
        }
        catch(SQLException e){
        }
        catch(NoSuchMethodError ninguna){
        }
        return false;
    }

    public Connection getConexion(){
        return miConexion;
    }

    public Statement getInstruccion(){
        return this.instruccion;
    }

    /*
     *Cierra la conexión con la BD
     */
    public void cerrarConexion() throws SQLException{		
        instruccion.close();
        miConexion.close();		
    }
}