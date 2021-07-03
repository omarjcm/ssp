/*
 * RegistroCivil.java
 *
 * Created on 16 de julio de 2006, 18:59
 *
 * To change this template, choose Tools | Options and locate the template under
 * the Source Creation and Management node. Right-click the template and choose
 * Open. You can then make changes to the template in the Source Editor.
 */

package pkgSSP;

import java.io.Serializable;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.sql.Date;

/**
 *
 * @author root
 */
public class RegistroCivil extends Object implements Serializable{
    
    public long id_rc;
    public String tomo;
    public String anio;
    public String folio;
    public String acta;
    public String lugar;
    public Date fecha_nacimiento;
    public Date fecha_inscripcion;
    public String error;
    public String mensaje;
    
    public String f_nacimiento;
    
    public ConexionDB cnx;
    public Connection con;
    public CallableStatement cst;    
    
    /** Creates a new instance of RegistroCivil */
    public RegistroCivil() {
        error = "";
        cnx = new ConexionDB();        
    }
    
    public void setId_rc(long id_rc){ this.id_rc=id_rc; }
    public void setLugar(String lugar){ this.lugar=lugar; }
    public void setTomo(String tomo){ this.tomo=tomo; }
    public void setAnio(String anio){ this.anio=anio; }
    public void setFolio(String folio){ this.folio=folio; }
    public void setActa(String acta){ this.acta=acta; }
    public void setFecha_nacimineto(Date fecha_nacimiento){ this.fecha_nacimiento=fecha_nacimiento; }
    public void setFecha_inscripcion(Date fecha_inscripcion){ this.fecha_inscripcion=fecha_inscripcion; }
    public void setError(String error){ this.error=error; }
    
    public long getId_rc(){ return(this.id_rc); }
    public String getLugar(){ return(this.lugar);}
    public String getTomo(){ return(this.tomo);}
    public String getAnio(){ return(this.anio);}
    public String getFolio(){ return(this.folio);}
    public String getActa(){ return(this.acta);}
    public Date getFecha_nacimineto(){ return(this.fecha_nacimiento);}
    public Date getFecha_inscripcion(){ return(this.fecha_inscripcion);}
    public String getError(){ return(this.error);}
    
    public void BuscarxIdRc() throws Exception {
        ResultSet rs = null;
        String s = null;
        con=cnx.AbrirConexion(); 
        if(con!=null)
        {
            try{
                  cst=con.prepareCall("{CALL DBA.ssp_BuscarxId_rc(?)}");
          	  cst.setLong(1, id_rc);
          	  rs=cst.executeQuery();
                  
                  rs.next();
                      setId_rc(rs.getLong(1));
                      setFecha_nacimineto(rs.getDate(2));
                      f_nacimiento = String.valueOf(rs.getDate(2));
                      setTomo(rs.getString(4));
                      setAnio(rs.getString(5));
                      setFolio(rs.getString(6));
                      setActa(rs.getString(7));
                      setLugar(rs.getString(8));
                      rs.close();
                      con.close();
                 }
            catch(SQLException e)
            {
                error = e.getMessage();
                
            }
       }
       else
            setError("No se pudo conectar");
    } 
    
    public void BuscarxActa() throws Exception {
        ResultSet rs = null;
        String s = null;
        con=cnx.AbrirConexion(); 
        if(con!=null)
        {
            try{
                  cst=con.prepareCall("{CALL DBA.ssp_BuscarxActa(?)}");
          	  cst.setString(1, acta);
          	  rs=cst.executeQuery();
                  
                  rs.next();
                      setId_rc(rs.getLong(1));
                      setFecha_nacimineto(rs.getDate(2));
                      f_nacimiento = String.valueOf(rs.getDate(2));
                      setTomo(rs.getString(4));
                      setAnio(rs.getString(5));
                      setFolio(rs.getString(6));
                      setActa(rs.getString(7));
                      setLugar(rs.getString(8));
                      rs.close();
                      con.close();
                 }
            catch(SQLException e)
            {
                error = e.getMessage();
                
            }
       }
       else
            setError("No se pudo conectar");
    }
    
    public void IngresarRegistroCivil() throws Exception
    {
        ResultSet rs = null;
       
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.ssp_IngresarRegistroCivil(?,?,?,?,?,?,?,?)}");
                cst.setDate(1, fecha_nacimiento);
                cst.setDate(2, fecha_inscripcion);
                cst.setString(3, tomo);
                cst.setString(4, anio);
                cst.setString(5, folio);
                cst.setString(6, acta);
                cst.setString(7, lugar);
                cst.registerOutParameter(8,java.sql.Types.CHAR);
                cst.execute();
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
    
    public void ModificarRegistroCivil() throws Exception
    {
        ResultSet rs = null;
       
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.ssp_ModificarRegistroCivil(?,?,?,?,?,?,?,?,?)}");
                cst.setLong(1,getId_rc());
                cst.setDate(2, fecha_nacimiento);
                cst.setDate(3, fecha_inscripcion);
                cst.setString(4, tomo);
                cst.setString(5, anio);
                cst.setString(6, folio);
                cst.setString(7, acta);
                cst.setString(8, lugar);
                cst.registerOutParameter(9,java.sql.Types.CHAR);
                cst.execute();
                mensaje= cst.getString(9);
                cst.close();
                con.close();
            }
            catch(SQLException e)
            {
                setError(e.getMessage());
            }
        }
    }
    
    
    
    
}