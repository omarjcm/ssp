/*
 * Parroquia.java
 *
 * Created on 16 de julio de 2006, 18:16
 *
 * To change this template, choose Tools | Options and locate the template under
 * the Source Creation and Management node. Right-click the template and choose
 * Open. You can then make changes to the template in the Source Editor.
 */

package pkgSSP;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.Serializable;

/**
 *
 * @author root
 */
public class Parroquia extends Object implements Serializable{
    
    public long id_parroquia;
    public String nombre;
    public String direccion;
    public String telefono1, telefono2, telefono3;
    
    public Ciudad ciudad;
    
    public String error;
    
    public ConexionDB cnx;
    public Connection con;
    public CallableStatement cst;    
    
    /** Creates a new instance of Parroquia */
    public Parroquia() {
        error = "";
        
        cnx = new ConexionDB();
        ciudad = new Ciudad();
    }
    
    public void setId_parroquia(long id_parroquia){ this.id_parroquia=id_parroquia; }
    public void setNombre(String nombre){ this.nombre=nombre; }
    public void setDireccion(String direccion){ this.direccion=direccion; }
    public void setTelefono1(String telefono1){ this.telefono1=telefono1; }
    public void setTelefono2(String telefono2){ this.telefono2=telefono2; }
    public void setTelefono3(String telefono3){ this.telefono3=telefono3; }
    public void setError(String error){ this.error=error; }
    
    public long getId_parroquia(){ return(this.id_parroquia); }
    public String getNombre(){ return(this.nombre);}
    public String getDireccion(){ return(this.direccion);}
    public String getTelefono1(){ return(this.telefono1);}
    public String getTelefono2(){ return(this.telefono2);}
    public String getTelefono3(){ return(this.telefono3);}
    public String getError(){ return(this.error);}
    
    public boolean estaParroquia() throws Exception
    {
        ResultSet rs = null;
        String nombre_parroquia;
        
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.buscar_parroquia(?)}");
                cst.setString(1, nombre);
                rs = cst.executeQuery();
                rs.next();
                
                id_parroquia = rs.getLong(1);
                nombre_parroquia = rs.getString(2);
                ciudad.id_ciudad = rs.getLong(7);
                
                rs.close();
                con.close();
                if (nombre_parroquia.compareToIgnoreCase(nombre) == 0) return true;
            }
            catch(SQLException e)
            {
                return false;
            }
        }
        return false;
    }
    
    
    public void IngresarParroquia() throws SQLException, Exception
    {
        ResultSet rs = null;
        
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.ssp_IngresarParroquia(?)}");
                cst.setString(1, nombre);
                rs = cst.executeQuery();
                rs.close();
                con.close();
            }
            catch(SQLException e)
            {
                error = e.getMessage();
            }
        }
    }
    
    public void BuscarxIdParroquia() throws Exception {
    ResultSet rs = null;
        String s = null;
       // PreparedStatement gr=null;
        con=cnx.AbrirConexion();
        
        if(con!=null)
        {
            try{
                  cst=con.prepareCall("{CALL DBA.ssp_MostrarIdParroquia(?)}");
          	  cst.setLong(1,id_parroquia);
          	  rs=cst.executeQuery();
                  if(rs.next()){
                    setNombre(rs.getString(2));
                    rs.close();
                    con.close();
                  }
           }
          catch(SQLException e){
                  setError(e.getMessage());
          }
        }
        else
            setError("No se pudo conectar");
    } 
}
