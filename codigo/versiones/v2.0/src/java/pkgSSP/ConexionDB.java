package pkgSSP;

import java.sql.*;
import java.lang.*;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;



/************************************************************************************************************************************/
public class ConexionDB
{

    String drv;
    String dns;
    String error;
    Connection cnx;
    ResultSet rs;
    Statement st;

    public ConexionDB() 
    {
        drv = "";
        dns = "";
        error = "";
        cnx = null;
        rs = null;
        st = null;
    }

    public void setError(String error) { this.error = error; }

    public String getError() { return error; }
            
    public Connection AbrirConexion() throws SQLException
    {
        drv="com.sybase.jdbc2.jdbc.SybDriver";
        dns="jdbc:sybase:Tds:127.0.0.1:2638"+"/"+"?SERVICENAME="+"Base_Parroquia";

        try{
            Class.forName (drv).newInstance();
            cnx = DriverManager.getConnection(dns,"dba","sql");                                  
            return cnx; 
        }
        catch (ClassNotFoundException ex) {
            System.err.println("No se puede encontrar el driver.");
            System.err.println(ex);
            return null;
        }        
        catch (SQLException ex) {
            System.err.println("No se puede conectar a la base de datos.");
            System.err.println(ex);
            return null;
        }
        catch( Exception e){
            System.out.println(e.getMessage());  //printing out an error if so.
            return null;
        }
    }

    public void CerrarConexion() throws SQLException,Exception
    {
        try{
            cnx.close();
        }
        catch(SQLException e){
            error = e.getMessage();
            throw e;
        }
        catch(Exception e){
            error = e.getMessage();
            throw e;
        }
    }
    
    public ResultSet Consulta(String consulta) throws SQLException, Exception
    {
        try{
            cnx = AbrirConexion();
            st = cnx.createStatement();
            rs = st.executeQuery(consulta);
            CerrarConexion();
            return rs;
        }
        catch(SQLException e){
            error = e.getMessage();
            throw e;
        }
        catch(Exception e){
            error = e.getMessage();
            throw e;
        }
    }

    public void Sentencia(String sentencia) throws SQLException,Exception
    {
        try{
            cnx = AbrirConexion();
            st = cnx.createStatement();
            st.executeUpdate(sentencia);
            CerrarConexion();
        }
        catch(SQLException e){
            error = e.getMessage();
            throw e;
        }
        catch(Exception e){
            error = e.getMessage();
            throw e;
        }
    }
}