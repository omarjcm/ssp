/*
 * Provincia.java
 *
 * Created on 25 de julio de 2006, 0:26
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package pkgSSP;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.io.Serializable;

/**
 *
 * @author root
 */
public class Provincia extends Object implements Serializable{
    
    public long id_provincia;
    public String id;
    public String nombre;
    public String mensaje;
    public String error;
    
    public ConexionDB cnx;
    public Connection con;
    public CallableStatement cst;
    
    /** Creates a new instance of Provincia */
    public Provincia() {
        error = "";
        cnx = new ConexionDB();
    }

    public void setId_provincia(long id_provincia) { this.id_provincia = id_provincia; }
    public void setNombre(String nombre) { this.nombre = nombre; }
    public void setError(String error) { this.error= error; }
    public void setId(String id) { this.id= id; }

    public long getId_provincia() { return id_provincia; } 
    public String getNombre() { return nombre; }
    public String getError() { return error; }
    public String getId() { return id; }
    
    public boolean estaProvincia() throws Exception
    {
        ResultSet rs = null;
        String nombre_provincia;
        
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.buscar_provincia(?)}");
                cst.setString(1, nombre);
                rs = cst.executeQuery();
                
                rs.next();
                id_provincia = rs.getLong(1);
                nombre_provincia = rs.getString(2);

                rs.close();
                con.close();
                if (nombre_provincia.compareToIgnoreCase(nombre) == 0) return true;
            }
            catch(SQLException e)
            {
                return false;
            }
        }
        return false;
    }
    
    
    public ResultSet TotalProvincias() throws Exception
    {
        ResultSet rs = null;
        String nombre_provincia;
        
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.ssp_Todas_Provincia()}");
            //    cst.setString(1, nombre);
                rs = cst.executeQuery();
                return rs;
                
            }
            catch(SQLException e)
            {
                return null;
            }
        }
        return null;
    }
    
    public void IngresarProvincia() throws Exception
    {
        ResultSet rs = null;
        String mensaje= null;
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.ssp_IngresarProvincia(?,?)}");
                cst.setString(1, nombre);
                cst.registerOutParameter(2,java.sql.Types.CHAR);
                cst.execute();
                mensaje= cst.getString(2);
                con.close();
            }
            catch(SQLException e)
            {
                error = e.getMessage();
            }
        }
    }
    
    public void BuscarProvincia() throws Exception
    {
        ResultSet rs = null;
        String mensaje= null;
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.ssp_BuscarProvincia(?)}");
                cst.setLong(1, id_provincia);
                rs = cst.executeQuery();
                rs.next();
                setNombre(rs.getString(2));
                rs.close();
                con.close();
            }
            catch(SQLException e)
            {
                error = e.getMessage();
            }
        }
    }
    
    
    public LinkedList ListaDeProvincias() throws Exception
    {
        LinkedList provinciaList = new LinkedList();
        Provincia provincia;
        
        ResultSet rs = null;
        String SQL = "SELECT * FROM Provincia  WHERE nombre <> 'desconocido' order by nombre";
        rs = cnx.Consulta(SQL);
        while (rs.next())
        {
            provincia = new Provincia();
            provincia.id_provincia = rs.getLong(1);
            provincia.nombre = rs.getString(2);
            
            provinciaList.add((Provincia) provincia);
        }
        return provinciaList;
    }
}