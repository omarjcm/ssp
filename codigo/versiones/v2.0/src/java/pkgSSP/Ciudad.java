/*
 * Ciudad.java
 *
 * Created on 16 de julio de 2006, 18:11
 *
 * To change this template, choose Tools | Options and locate the template under
 * the Source Creation and Management node. Right-click the template and choose
 * Open. You can then make changes to the template in the Source Editor.
 */

package pkgSSP;

import java.io.Serializable;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.io.NotSerializableException;
/**
 *
 * @author root
 */
public class Ciudad extends Object implements Serializable{
    
    public long id_ciudad;
    public String nombre;
    public String id_provincia;
    
    public String error,mensaje;
    
    public Provincia provincia;
    public long id_provincialn;
    
    public ConexionDB cnx;
    public Connection con;
    public CallableStatement cst;
    
    /** Creates a new instance of Ciudad */
    public Ciudad() {
        error = "";
        provincia = new Provincia();
        
        cnx = new ConexionDB();
    }
    public void setId_ciudad(long id_ciudad){ this.id_ciudad=id_ciudad; }
    public void setNombre(String nombre){ this.nombre=nombre; }
    public void setError(String error){ this.error=error; }
    public void setId_provincia(String id_provincia) { this.id_provincia= id_provincia; }
    
    public long getId_ciudad(){ return(this.id_ciudad); }
    public String getNombre(){ return(this.nombre); }
    public String getError(){ return(this.error); }
    public String getId_provincia() { return (this.id_provincia); }
    
    public boolean estaCiudad() throws Exception
    {
        ResultSet rs = null;
        String nombre_ciudad;
        
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.buscar_ciudad(?)}");
                cst.setString(1, nombre);
                rs = cst.executeQuery();
                
                rs.next();
                id_ciudad = rs.getLong(1);
                nombre_ciudad = rs.getString(2);
                provincia.id_provincia = rs.getLong(3);
                
                rs.close();
                con.close();
                if (nombre_ciudad.compareToIgnoreCase(nombre) == 0) return true;
            }
            catch(SQLException e)
            {
                error = e.getMessage();
                return false;
            }
        }
        return false;
    }
    
    public void InsertarCiudad() throws Exception
    {
        ResultSet rs = null;
        
        provincia.id_provincia = Long.valueOf(id_provincia).longValue();
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.ingresar_ciudad(?,?,?)}");
                cst.setString(1, nombre);
                cst.setLong(2, provincia.id_provincia);
                cst.registerOutParameter(3,java.sql.Types.CHAR);
                cst.execute();
                mensaje= cst.getString(3);
                con.close();
            }
            catch(SQLException e)
            {
                error = e.getMessage();
            }
        }
    }
    
    public void BuscarxIdCiudad() throws Exception {
        ResultSet rs = null;
        String s = null;
        
        con=cnx.AbrirConexion();
        
        if(con!=null)
        {
            try{
                  cst=con.prepareCall("{CALL DBA.ssp_BuscarXId_ciudad(?)}");
          	  cst.setLong(1,id_ciudad);
          	  rs=cst.executeQuery();
                  if(rs.next()){
                      nombre = rs.getString(2);
                      id_provincialn = rs.getLong(3);
                      provincia.setId_provincia(rs.getLong(3));
                      provincia.BuscarProvincia();
                      rs.close();
                      con.close();
                  }
            }
            catch(SQLException e){
              error = e.getMessage();
            }
        }
        else
            error = "No se pudo conectar";
    }

    public LinkedList ListaDeCiudades(String id_provincia_) throws Exception
    {
        LinkedList ciudadList = new LinkedList();
        Ciudad ciudad;
        
        ResultSet rs = null;
        String SQL = "SELECT * FROM Ciudad WHERE id_provincia="+id_provincia_+" AND id_ciudad <> 0 ORDER BY nombre";
        rs = cnx.Consulta(SQL);
        while (rs.next())
        {
            ciudad = new Ciudad();
            ciudad.id_ciudad = rs.getLong(1);
            ciudad.nombre = rs.getString(2);
            ciudad.provincia.id_provincia = rs.getLong(3);
            
            ciudadList.add((Ciudad) ciudad);
        }
        return ciudadList;
    }
}