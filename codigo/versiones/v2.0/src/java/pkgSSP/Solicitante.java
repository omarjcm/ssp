/*
 * Solicitante.java
 *
 * Created on 16 de julio de 2006, 17:58
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

/**
 *
 * @author root
 */
public class Solicitante implements Serializable {
    
    public long id_solicitante;
    public String nombre;
    public String apellido;
    public String direccion;
    public String sexo;
    public String tipo;
    public String mensaje;
    
    public Ciudad ciudad;
    public Usuario usuario;
    public Usuario ministro;
    
    // Base de Datos
    public ConexionDB cnx;
    public Connection con;
    public CallableStatement cst;
    
    public String error;

    int length;
    
    /** Creates a new instance of Solicitante */
    public Solicitante() {
        nombre = "";
        apellido = "";
        direccion = "";
        sexo = "";
        tipo = "";
        error = "";
        
        ciudad = new Ciudad();
        usuario = new Usuario();
        ministro = new Usuario();
        
        cnx = new ConexionDB();
    }

    public Solicitante(String tipo_, String sexo_) {
        nombre = "";
        apellido = "";
        direccion = "";
        sexo = sexo_;
        tipo = tipo_;
        error = "";
        
        ciudad = new Ciudad();
        usuario = new Usuario();
        ministro = new Usuario();
        
        cnx = new ConexionDB();
    }    
    
    public void setId_solicitante(long id_solicitante){ this.id_solicitante=id_solicitante; }
    public void setNombre(String nombre){ this.nombre=nombre; }
    public void setApellido(String apellido){ this.apellido=apellido; }
    public void setDireccion(String direccion){ this.direccion=direccion; }
    public void setSexo(String sexo){ this.sexo=sexo; }
    public void setTipo(String tipo){ this.tipo=tipo; }
    public void setError(String error) { this.error = error; }

    public long getId_solicitante(){ return(this.id_solicitante); }
    public String getNombre(){ return(this.nombre); }
    public String getApellido(){ return(this.apellido); }
    public String getDireccion(){ return(this.direccion); }
    public String getSexo(){ return(this.sexo); }
    public String getTipo(){ return(this.tipo); }
    public String getError() { return error; }
    
     public void solicitante_sexo(){
         if (sexo.compareTo("0") == 0) sexo = "femenino";
         if (sexo.compareTo("1") == 0) sexo = "masculino";
     }
    
    public boolean estaNombreApellido() throws Exception
    {
        ResultSet rs = null;
        String fname, lname;
        
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.buscar_solicitante(?,?)}");
                cst.setString(1, nombre);
                cst.setString(2, apellido);
                rs = cst.executeQuery();
                
                if(rs.next()){
                    id_solicitante = rs.getLong(1);
                    fname = rs.getString(2);
                    lname = rs.getString(3);
                    if (fname.compareToIgnoreCase(nombre) == 0)
                    {
                        if (lname.compareToIgnoreCase(apellido) == 0)
                        {   rs.close();
                            con.close();
                            return true;
                        }
                        else{
                            rs.close();
                            con.close();
                            return false;
                        }
                    }
                    else{
                        rs.close();
                        con.close();
                        return false;
                    }
                }
                else{
                    rs.close();
                    con.close();
                }
            }
            catch(SQLException e)
            {
                error = e.getMessage();
                return false;
            }
        }
        return false;
    }
    
    public void IngresarSolicitante() throws Exception
    {
        ResultSet rs = null;
        
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.ssp_InsertarSolicitante(?,?,?,?,?,?,?,?)}");
                cst.setString(1, nombre);
                cst.setString(2, apellido);
                cst.setString(3, direccion);
                cst.setString(4, sexo);
                cst.setString(5, tipo);
                cst.setLong(6, ciudad.id_ciudad);
                cst.setLong(7, usuario.id_usuario);
                cst.registerOutParameter(8,java.sql.Types.CHAR);
                cst.execute();
                mensaje= cst.getString(8);
                con.close();
            }
            catch(SQLException e)
            {
                setError(e.getMessage());
            }
        }
    }
    
    public void ModificarSolicitante() throws Exception
    {
        ResultSet rs = null;
        
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.ssp_ModificarSolicitante(?,?,?,?,?,?,?,?)}");
                cst.setLong(1,getId_solicitante());
                cst.setString(2, nombre);
                cst.setString(3, apellido);
                cst.setString(4, direccion);
                cst.setString(5, sexo);
                cst.setLong(6, ciudad.id_ciudad);
                cst.setLong(7, usuario.id_usuario);
                cst.registerOutParameter(8,java.sql.Types.CHAR);
                cst.executeUpdate();
                mensaje= cst.getString(8);
                cst.close();
                con.close();
            }
            catch(SQLException e)
            {
                setError(e.getMessage());
            }
        }
    }
    
/*    public void InsertarSolicitante() throws SQLException, Exception
    {
        ResultSet rs = null;
        
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.ingresar_solicitante(?,?,?,?,?,?,?)}");
                cst.setString(1, nombre);
                cst.setString(2, apellido);
                cst.setString(3, direccion);
                cst.setString(4, sexo);
                cst.setString(5, tipo);
                cst.setLong(6, ciudad.id_ciudad);
                cst.setLong(7, usuario.id_usuario);
                rs = cst.executeQuery();
                rs.close();
                con.close();
            }
            catch(SQLException e)
            {
                error = e.getMessage();
            }
        }
    }*/
/***************************UNION**************************************************/    
     public long Buscar_IdSolicita(String nombre,String apellido) throws Exception{
        ResultSet rs = null;
        String s = null;
        PreparedStatement gr=null;
        con=cnx.AbrirConexion(); 
        if(con!=null)
        {
            try{
                  cst=con.prepareCall("{CALL DBA.ssp_BuscarIdSolicitante(?,?)}");
          	  cst.setString(1,nombre);
          	  cst.setString(2,apellido);
                  rs=cst.executeQuery();
                  if(rs.next()){
                    setId_solicitante(rs.getLong(1));
                    setTipo(rs.getString(6));
                    rs.close();
                    con.close();
                    return getId_solicitante();
                  }
                  else{
                  rs.close();
                  con.close();
                  setId_solicitante(-1);
                  return getId_solicitante();}
           }
          catch(SQLException e){
                  setError(e.getMessage());
                  return -1;
          }
        }
        else
            setError("No se pudo conectar");
        return -1;
    }
    
 
    public boolean Se_encuentra_Soli(String nombre, String apellido) throws Exception{
        ResultSet rs = null;
        String s = null;
        PreparedStatement gr=null;
        con=cnx.AbrirConexion(); 
        if(con!=null)
        {
            try{
                  cst=con.prepareCall("{CALL DBA.buscar_solicitante(?,?)}");
          	  cst.setString(1,nombre);
          	  cst.setString(2,apellido);
                  rs=cst.executeQuery();
                  if(rs.next()){
                    setId_solicitante(rs.getInt(1));
                    setTipo(rs.getString(6));
                    rs.close();
                    con.close();
                    return true;
                  }
                  setId_solicitante(rs.getInt(1));
                  rs.close();
                  con.close();
                  setError("No se encuentra el solicitante");
                  return false;
           }
          catch(SQLException e){
                  setError(e.getMessage());
                  return false;
          }
        }
        else
            setError("No se pudo conectar");
        return false;
    }
    
  public void BuscarxIdSolicitante() throws Exception {
        ResultSet rs = null;
        String s = null;
        PreparedStatement gr=null;
        con=cnx.AbrirConexion(); 
        if(con!=null)
        {
            try{
                  cst=con.prepareCall("{CALL DBA.ssp_BuscarxId_solicitante(?)}");
          	  cst.setLong(1,id_solicitante);
          	  rs=cst.executeQuery();
                  if(rs.next()){
                        nombre = rs.getString(2);
                        apellido = rs.getString(3);
                        direccion = rs.getString(4);
                        sexo = rs.getString(5);
                        tipo = rs.getString(6);
                        ciudad.setId_ciudad(rs.getLong(7));
                        ciudad.BuscarxIdCiudad();
                        rs.close();
                        con.close();
                  }
                  else
                    rs.close();
                    con.close();
                    
           }
          catch(SQLException e){
                  setError(e.getMessage());
          }
        }
        else
            setError("No se pudo conectar");
    } 
  
  public long Buscar_IdEsposo(String nombre,String apellido) throws Exception{
        ResultSet rs = null;
        String s = null;
        PreparedStatement gr=null;
        con=cnx.AbrirConexion(); 
        if(con!=null)
        {
            try{
                  cst=con.prepareCall("{CALL DBA.ssp_BuscarEsposo(?,?)}");
          	  cst.setString(1,nombre);
          	  cst.setString(2,apellido);
                  rs=cst.executeQuery();
                  if(rs.next()){
                    setId_solicitante(rs.getLong(1));
                    rs.close();
                    con.close();
                    return getId_solicitante();
                  }
                  else{
                  rs.close();
                  con.close();
                  setId_solicitante(-1);
                  return getId_solicitante();}
           }
          catch(SQLException e){
                  setError(e.getMessage());
                  return -1;
          }
        }
        else
            setError("No se pudo conectar");
        return -1;
    }
    
    public long Buscar_IdEsposa(String nombre,String apellido) throws Exception{
        ResultSet rs = null;
        String s = null;
        PreparedStatement gr=null;
        con=cnx.AbrirConexion(); 
        if(con!=null)
        {
            try{
                  cst=con.prepareCall("{CALL DBA.ssp_BuscarEsposa(?,?)}");
          	  cst.setString(1,nombre);
          	  cst.setString(2,apellido);
                  rs=cst.executeQuery();
                  if(rs.next()){
                    setId_solicitante(rs.getLong(1));
                    rs.close();
                    cnx.CerrarConexion();
                    return getId_solicitante();
                  }
                  else{
                  rs.close();
                  cnx.CerrarConexion();
                  setId_solicitante(-1);
                  return getId_solicitante();}
           }
          catch(SQLException e){
                  setError(e.getMessage());
                  return -1;
          }
        }
        else
            setError("No se pudo conectar");
        return -1;
    }
 
}