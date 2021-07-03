/*
 * 
 * Archivo:	ConexionDB.java
 * Autor:	CoDeSoftware 
 * Licencia:	GNU/GPL
 * Fecha de Creaci�n: 30/05/2007
 *
 * ==============================================================
 *
 * Historial de Modificaciones:
 *
 * Versi�n	Responsable         Fecha     Cambio     Raz�n de Cambio
 *   1.0	CoDeSOFTWARE        05/06/07  
 *   
 * ==============================================================
 *
 */

package SSP;

import java.sql.*;
/**
 * Clase usada para la conexion con la base.
 * <p>Referencia DDS:
 * <p>Invariantes: 
 * @author	CoDeSOFTWARE
 * @version	1.0
 */
public class ConexionDB {
/*ATRIBUTOS DE LA CLASE*/
    /**
     * identifica a la conexion
     *
     * <p>requisito: 
     */
    private Connection miConexion;
    /**
     * Objeto que permite ejecutar consultas SQL
     */
    private Statement instruccion=null;
		
    public ConexionDB() {
    }
    
    /*
     *M�todo que permite realizar la conexi�n a la BD
     *@return true si la conexi�n fue exitosa
     */
    public boolean conectar(){	
        String url;
        url = "jdbc:mysql://localhost:3306/ssp?user=root&password=wikicine";
        
        //Creaci�n del driver que permite manejar la conexi�n...
        try
        {
            Class.forName("com.mysql.jdbc.Driver");  //para conectarse con MySql
        }
        catch(ClassNotFoundException e){return false;}

        //creaci�n de la conexi�n...
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

        //la conexi�n fue exitosa
        return true;		
    }
	
    /*
     *Verifica si la conexi�n es exitosa
     */
    public ResultSet ejecutarConsulta(String strConsulta){        
        //Objeto que almacenar� el resultado de la consulta SQL
        ResultSet rs=null;
        //se debe asigar null porque el rs le estoy asigando un
        // valor dentro del try, y si nunc entra al try no 
        //quedaria inicializado

        try
        {
            //Creaci�n de una sentencia para ejecutar la consulta
            instruccion = miConexion.createStatement();
            //ejecuci�n de la consulta
            rs = instruccion.executeQuery(strConsulta);
        }
        catch(SQLException e){}		
        return rs;
    }
        
    /*
     *Verifica si la conexi�n es exitosa
     */
    public boolean ejecutarInsercion(String insertarString){
        //Objeto que almacenar� el resultado de la insercion SQL
        PreparedStatement sqlQuery;

        //se debe asigar null porque el rs le estoy asigando un
        // valor dentro del try, y si nunc entra al try no 
        //quedaria inicializado

        try
        {
            sqlQuery=miConexion.prepareStatement(insertarString);
            //Creaci�n de una sentencia para ejecutar la consulta
            instruccion = miConexion.createStatement();
            //ejecuci�n de la consulta
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
     *Cierra la conexi�n con la BD
     */
    public void cerrarConexion() throws SQLException{		
        instruccion.close();
        miConexion.close();		
    }
}