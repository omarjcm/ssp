/*
 * Confirmar.java
 *
 * Created on 16 de julio de 2006, 18:46
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
import java.sql.Date;
import java.util.*;

/**
 *
 * @author root
 */
public class Confirmar extends Object implements Serializable {
    
    // Registros del acta
    public long id_confir;
    public String id_confirmacion;
    public String num_libro;
    public String folio_libro;
    public String anio_libro;
    public String mensaje;
    // Datos de la Parroquia
    public Usuario ministro;
    public Parroquia parroquia;
    public Usuario parroco;
    
    // Datos del Confirmado
    public Solicitante confirmado;
    public Solicitante padre;
    public Solicitante madre;
    public Solicitante padrino;
    public Solicitante madrina;
    
    public Ciudad ciudad;
    public Provincia provincia;
        
    // Datos anteriores
    public String ciudad_bautizo;
    public String nombre_IglesiaBautizo;
    
    public String ministro_cna; // Cargo, nombre y apellido
    public String dia_confirmacion, mes_confirmacion, anio_confirmacion;
    public String dia_nacimiento, mes_nacimiento, anio_nacimiento;
    public String f_confirmar;
    public String f_nacimiento;
        
    public String observacion;
    public boolean estado;
    
    public Date fecha_confirmacion;
    public Date fecha_nacimiento;

    // Base de Datos
    public ConexionDB cnx;
    public Connection con;
    public CallableStatement cst;
    
    public String error;
    
    // Manejo de String
    public Scanner scann;
    
    /** Creates a new instance of Confirmar */
    public Confirmar() {
        confirmado = new Solicitante();
        confirmado.tipo = "confirmado";
        padre = new Solicitante("padre", "masculino");
        madre = new Solicitante("madre", "femenino");
        padrino = new Solicitante("padrino", "masculino");
        madrina = new Solicitante("madrina", "femenino");
        
        ministro = new Usuario();
        parroquia = new Parroquia();
        parroquia.id_parroquia = 1;
        parroco= new Usuario();
        parroco.id_usuario = 1;
        ciudad = new Ciudad();
        provincia = new Provincia ();
        
        estado = true;
        cnx = new ConexionDB();
        scann = new Scanner();
        
        error = "";
    }
    
    public void setId_confirmacion(String id_confirmacion){ this.id_confirmacion=id_confirmacion; }
    public void setNum_libro(String num_libro){ this.num_libro=num_libro; }
    public void setFolio_libro(String folio){ this.folio_libro=folio; }
    public void setAnio_libro(String anio) { this.anio_libro = anio; }
    public void setCiudad_bautizo(String ciudad_bautizo){ this.ciudad_bautizo=ciudad_bautizo; }
    public void setObservacion(String observacion){ this.observacion=observacion; }
    public void setEstado(boolean estado){ this.estado=estado; }
    public void setNombre_IglesiaBautizo(String nombre_IglesiaBautizo) { this.nombre_IglesiaBautizo = nombre_IglesiaBautizo; }
    public void setCiudad_nombre(String ciudad) { this.ciudad.nombre = ciudad; }
    public void setMadre_nombre(String nombre) { this.madre.nombre = nombre; }
    public void setMadre_apellido(String apellido) { this.madre.apellido = apellido; }
    public void setPadre_nombre(String nombre) { this.padre.nombre = nombre; }
    public void setPadre_apellido(String apellido) { this.padre.apellido = apellido; }
    public void setMadrina_nombre(String nombre) { this.madrina.nombre = nombre; }
    public void setMadrina_apellido(String apellido) { this.madrina.apellido = apellido; }
    public void setPadrino_nombre(String nombre) { this.padrino.nombre = nombre; }
    public void setPadrino_apellido(String apellido) { this.padrino.apellido = apellido; }
    public void setParroquia_nombre(String nombre) { this.parroquia.nombre = nombre; }
    public void setProvincia_nombre(String nombre) { this.provincia.nombre = nombre; }
    public void setConfirmado_nombre(String nombre) { this.confirmado.nombre = nombre; }
    public void setConfirmado_apellido(String apellido) { this.confirmado.apellido = apellido; }
    public void setConfirmado_sexo(String sexo) { this.confirmado.sexo = sexo; }
    public void setMinistro_nombre(String nombre) { this.ministro.nombre = nombre; }
    public void setMinistro_apellido(String apellido) { this.ministro.apellido = apellido; }
    public void setMinistro_cna(String ministro_cna) { this.ministro_cna = ministro_cna; }
    public void setDia_confirmacion(String dia_confirmacion) { this.dia_confirmacion = dia_confirmacion; }
    public void setMes_confirmacion(String mes_confirmacion) { this.mes_confirmacion = mes_confirmacion; }
    public void setAnio_confirmacion(String anio_confirmacion) { this.anio_confirmacion = anio_confirmacion; }

    public void setDia_nacimiento(String dia_nacimiento) { this.dia_nacimiento = dia_nacimiento; }
    public void setMes_nacimiento(String mes_nacimiento) { this.mes_nacimiento = mes_nacimiento; }
    public void setAnio_nacimiento(String anio_nacimiento) { this.anio_nacimiento = anio_nacimiento; }
    
    public void setMinistro_cargo(String cargo) { this.ministro.cargo = cargo; }
    public void setError(String error) { this.error = error; }
    
    
    public String getId_confirmacion(){ return(this.id_confirmacion); }
    public String getNum_libro(){ return(this.num_libro);}
    public String getFolio_libro(){ return(this.folio_libro);}
    public String getAnio_libro() { return this.anio_libro; }
    public String getCiudad_bautizo(){ return(this.ciudad_bautizo);}
    public String getObservacion(){ return(this.observacion);}
    public boolean getEstado(){ return(this.estado);}
    public String getNombre_IglesiaBautizo() { return this.nombre_IglesiaBautizo; }
    public String getCiudad_nombre() { return this.ciudad.nombre; }
    public String getMadre_nombre() { return this.madre.nombre; }
    public String getMadre_apellido() { return this.madre.apellido; }
    public String getMadrina_nombre() { return this.madrina.nombre; }
    public String getMadrina_apellido() { return this.madrina.apellido; }
    public String getPadre_nombre() { return this.padre.nombre; }
    public String getPadre_apellido() { return this.padre.apellido; }
    public String getPadrino_nombre() { return this.padrino.nombre; }
    public String getPadrino_apellido() { return this.padrino.apellido; }
    public String getParroquia_nombre() { return this.parroquia.nombre; }
    public String getProvincia_nombre() { return this.provincia.nombre; }
    public String getConfirmado_nombre() { return this.confirmado.nombre; }
    public String getConfirmado_apellido() { return this.confirmado.apellido; }
    public String getConfirmado_sexo() { return this.confirmado.sexo; }
    
    public String getMinistro_nombre() { return this.ministro.nombre; }
    public String getMinistro_apellido() { return this.ministro.apellido; }
    
    public String getMinistro_cna() { return ministro_cna; }
    public String getDia_confirmacion() { return dia_confirmacion; }
    public String getMes_confirmacion() {  return mes_confirmacion; }
    public String getAnio_confirmacion() { return anio_confirmacion; }

    public String getDia_nacimiento() { return dia_nacimiento; }
    public String getMes_nacimiento() { return mes_nacimiento; }
    public String getAnio_nacimiento() { return anio_nacimiento; }
    public String getMinistro_cargo() { return this.ministro.cargo; }
    public String getError() { return error; }
    
    public String INSERTAR_CONFIRMACION() throws Exception
    {
        try
        {
            ciudad.id_ciudad = Long.parseLong(ciudad.nombre);
            provincia.id_provincia = Long.parseLong(provincia.nombre);
            ministro.id_usuario = Long.parseLong(ministro_cna);
            fecha_confirmacion = Date.valueOf(anio_confirmacion+"-"+mes_confirmacion+"-"+dia_confirmacion);
            fecha_nacimiento = Date.valueOf(anio_nacimiento+"-"+mes_nacimiento+"-"+dia_nacimiento);                
             
            if (INSERTAR_CONFIRMADO())
            {
                if (INSERTAR_PADRES())
                {
                    if (INSERTAR_PADRINOS())
                    {
                        if (InsertarConfirmacion())
                            return "TODO ESTA INGRESADO!!!!";
                        else
                            return "FALLAS EN EL INGRESO TOTAL";
                    }
                    else
                        return "FALLAS EN EL INGRESO DE LOS PADRINOS";
                }
                else
                    return "FALLAS EN EL INGRESO DE LOS PADRES";
            }
            else
                return "FALLAS EN EL INGRESO DEL BAUTIZADO";
        }
        catch (Exception e)
        {
            setError(e.getMessage());
        }
        return "MENSAJE DE ERROR";
    }
    
    public boolean INSERTAR_CONFIRMADO()
    {
        try
        {
            confirmado.ciudad.id_ciudad = ciudad.id_ciudad;
            confirmado.solicitante_sexo();
            
            if (!confirmado.estaNombreApellido())
            {
                confirmado.IngresarSolicitante();
                confirmado.estaNombreApellido();
            }
            return true;
        }
        catch(Exception e){
            error = e.getMessage();
            return false;
        }
    }
    
    public boolean INSERTAR_PADRES()
    {
        try
        {
            padre.ciudad.id_ciudad = 0;
            madre.ciudad.id_ciudad = 0;

            if (!padre.estaNombreApellido())
            {
                padre.IngresarSolicitante();
                padre.estaNombreApellido();
            }
            if (!madre.estaNombreApellido())
            {
                madre.IngresarSolicitante();
                madre.estaNombreApellido();
            }        
            return true;
        }
        catch (Exception e)
        {
            error = e.getMessage();
            return false;            
        }
    }

    public boolean INSERTAR_PADRINOS()
    {
        try
        {
            padrino.ciudad.id_ciudad = 0;
            madrina.ciudad.id_ciudad = 0;

            if (!padrino.estaNombreApellido())
            {
                padrino.IngresarSolicitante();
                padrino.estaNombreApellido();
            }
            if (!madrina.estaNombreApellido())
            {
                madrina.IngresarSolicitante();
                madrina.estaNombreApellido();
            }
            return true;
        }
        catch (Exception e)
        {
            error = e.getMessage();
            return false;            
        }
    }
    
    public String MODIFICAR_CONFIRMACION() throws Exception
    {
        try
        {
            ciudad.id_ciudad = Long.parseLong(ciudad.nombre);
            provincia.id_provincia = Long.parseLong(provincia.nombre);
            ministro.id_usuario = Long.parseLong(ministro_cna);
            fecha_confirmacion = Date.valueOf(anio_confirmacion+"-"+mes_confirmacion+"-"+dia_confirmacion);
            fecha_nacimiento = Date.valueOf(anio_nacimiento+"-"+mes_nacimiento+"-"+dia_nacimiento);
            
            if (MODIFICAR_CONFIRMADO())
            {
                if (MODIFICAR_PADRES())
                {
                    if (MODIFICAR_PADRINOS())
                    {
                        if (ModificarConfirmacion())
                            return "Todo esta Modificado!!!!";
                        else
                           return "FALLAS EN la Modificacion TOTAL";
                    }
                    else
                        return "NO SE INGRESARON LOS PADRINOS";
                }
                else
                    return "NO SE INGRESARON LOS PADRES";
            }
            else
                return "NO SE MIDIFICO EL CONFIRMADO";
        }
        catch(Exception e)
        {
            setError(e.getMessage());
        }
        return "ERROR GRAVE";
    }
    
    public boolean MODIFICAR_CONFIRMADO() throws Exception{
         try{
            confirmado.ciudad.id_ciudad = ciudad.id_ciudad;
            confirmado.solicitante_sexo();
            confirmado.ModificarSolicitante();
            return true;
        }
        catch(Exception e){
            setError(e.getMessage());
            return false;
        }
     }
    
    public boolean MODIFICAR_PADRES() throws Exception {
        try
        {
            padre.ciudad.id_ciudad = 0;
            madre.ciudad.id_ciudad = 0;
            
            padre.ModificarSolicitante();
            madre.ModificarSolicitante();
            return true;
        }
        catch (Exception e)
        {
            setError(e.getMessage());
            return false;            
        }
    }
     
    public boolean MODIFICAR_PADRINOS() throws Exception {
        try
        {
            padrino.ciudad.id_ciudad = 0;
            madrina.ciudad.id_ciudad = 0;

            padrino.ModificarSolicitante();
            madrina.ModificarSolicitante();
            return true;
        }
        catch (Exception e)
        {
            setError(e.getMessage());
            return false;            
        }
    }     
    
    public boolean buscar_idConfirmacion() throws Exception {
        ResultSet rs = null;
        String Id;
        
        con = cnx.AbrirConexion();
        
        if (con!=null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.buscar_idConfirmacion(?)}");
                cst.setString(1, id_confirmacion);
                rs = cst.executeQuery();
                
                rs.next();
                Id = rs.getString(2);
                
                rs.close();
                con.close();
                if (Id.compareToIgnoreCase(id_confirmacion) == 0) return true;
            }
            catch(SQLException e)
            {
                error = e.getMessage();
                return false;
            }
        }
        return false;
    }
    
    public boolean InsertarConfirmacion() throws SQLException, Exception {
        ResultSet rs = null;
        
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.ingresar_confirmacion(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
                cst.setString(1, id_confirmacion);
                cst.setString(2, num_libro);
                cst.setString(3, folio_libro);
                cst.setString(4, anio_libro);
                cst.setDate(5, fecha_confirmacion);
                cst.setString(6, ciudad_bautizo);
                cst.setString(7, nombre_IglesiaBautizo);
                cst.setString(8, observacion);
                if (estado) cst.setInt(9, 1);
                else cst.setInt(9, 0);
                cst.setLong(10, confirmado.id_solicitante);
                cst.setLong(11, padre.id_solicitante);
                cst.setLong(12, madre.id_solicitante);
                cst.setLong(13, padrino.id_solicitante);
                cst.setLong(14, madrina.id_solicitante);
                cst.setLong(15, parroquia.id_parroquia);
                cst.setLong(16, ministro.id_usuario);
                cst.setDate(17, fecha_nacimiento);
                cst.registerOutParameter(18,java.sql.Types.CHAR);
                cst.execute();
                mensaje= cst.getString(18);
                cst.close();
                con.close();
                
                return true;
            }
            catch(SQLException e)
            {
                error = e.getMessage();
                return false;
            }
        }
        else
        {
            error = "No se conecto a la Base";
            return false;
        }
    }
    
    public boolean buscar_ConfirmacionxSolicitante(String nombre, String apellido) throws SQLException, Exception {
        ResultSet rs = null;
        String fname, lname;
        
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.buscar_ConfirmacionxSolicitante(?,?)}");
                cst.setString(1, nombre);
                cst.setString(2, apellido);
                rs = cst.executeQuery();
                
                rs.next();
                id_confir = rs.getLong(1);
                setId_confirmacion(rs.getString(2));
                setNum_libro(rs.getString(3));
                setFolio_libro(rs.getString(4));
                setAnio_libro(rs.getString(5));
                fecha_confirmacion = rs.getDate(6);
                f_confirmar = String.valueOf(fecha_confirmacion);
                dia_confirmacion = f_confirmar.substring(8,10);
                mes_confirmacion = f_confirmar.substring(5,7);
                anio_confirmacion = f_confirmar.substring(0,4);
                
                setCiudad_bautizo(rs.getString(7));
                setNombre_IglesiaBautizo(rs.getString(8));
                setObservacion(rs.getString(9));
                setEstado(rs.getBoolean(10));
                
                confirmado.setId_solicitante(rs.getLong(11));
                confirmado.BuscarxIdSolicitante();
                ciudad.id_ciudad = confirmado.ciudad.id_ciudad;
                ciudad.BuscarxIdCiudad();
                provincia.id_provincia = ciudad.id_provincialn;
                provincia.BuscarProvincia();
                
                padre.setId_solicitante(rs.getLong(12));
                padre.BuscarxIdSolicitante();
                madre.setId_solicitante(rs.getLong(13));
                madre.BuscarxIdSolicitante();
                
                padrino.setId_solicitante(rs.getLong(14));
                padrino.BuscarxIdSolicitante();
                madrina.setId_solicitante(rs.getLong(15));
                madrina.BuscarxIdSolicitante();
                
                parroquia.setId_parroquia(rs.getLong(16));
                parroquia.BuscarxIdParroquia();
                
                ministro.setId_usuario(rs.getLong(17));
                ministro.BuscarxIdUsuario();
                parroco.BuscarxIdUsuario();
                
                fecha_nacimiento = rs.getDate(18);
                f_nacimiento = String.valueOf(fecha_nacimiento);
                dia_nacimiento = f_nacimiento.substring(8,10);
                mes_nacimiento = f_nacimiento.substring(5,7);
                anio_nacimiento = f_nacimiento.substring(0,4);
                
                rs.close();
                con.close();
                return true;
            }
            catch(SQLException e)
            {
                error = e.getMessage();
                return false;
            }
        }
        error = "No se pudo conectar";
        return false;
    }
    
    public void Anular_Confirmacion(String id_confirmacion) throws SQLException, Exception {
        ResultSet rs = null;
            
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.anular_confirmacion(?,?)}");
                cst.setString(1, id_confirmacion);
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
        error = "No se pudo conectar";
        
    }
    
    public boolean ModificarConfirmacion()throws SQLException {
        ResultSet rs = null;
        String s = null;
        PreparedStatement gr=null;
        con=cnx.AbrirConexion(); 
        if(con!=null)
            {
                try{
                      cst=con.prepareCall("{CALL DBA.ssp_ModificarConfirmacion(?,?,?,?,?,?,?,?,?,?,?,?)}");
                      cst.setLong(1,id_confir);
                      cst.setString(2,id_confirmacion);
                      cst.setString(3,num_libro);
                      cst.setString(4,folio_libro);
                      cst.setString(5,anio_libro);
                      cst.setDate(6,fecha_confirmacion);
                      cst.setString(7,ciudad_bautizo);
                      cst.setString(8,nombre_IglesiaBautizo);
                      cst.setString(9,observacion);
                      cst.setLong(10,ministro.id_usuario);
                      cst.setDate(11,fecha_nacimiento);
                      cst.registerOutParameter(12,java.sql.Types.CHAR);
                      cst.execute();
                      mensaje= cst.getString(12);
                      cst.close();
                      con.close();
                      return true;
               }
              catch(SQLException e){
                      setError(e.getMessage());
                      return false;
              }
            }
            else{
                setError("No se pudo conectar");
                return false;}
    }

}
