/*
 * Comulgar.java
 *
 * Created on 16 de julio de 2006, 18:38
 *
 * To change this template, choose Tools | Options and locate the template under
 * the Source Creation and Management node. Right-click the template and choose
 * Open. You can then make changes to the template in the Source Editor.
 */

package pkgSSP;

import java.util.*;
import java.io.*;
import java.sql.*;
import java.beans.*;
import java.io.Serializable;
import java.sql.Date;
import javax.xml.transform.Result;
import java.sql.SQLException;
import java.lang.*;

/**
 *
 * @author root
 */
public class Comulgar extends Object implements Serializable{
    
    public ConexionDB cnx;
    public Connection con;
    public CallableStatement cst;
    public ResultSet rs = null;
    
    // Registros de la Acta del Libro
    public long id_comu;
    public String id_comunion;
    public String num_libro;
    public String folio;
    public String anio, error, mensaje;
    
    // Registros del solicitante
    public String edad;
    public String nameInstitucion;
    public String nivel;
    public String estadoCivilPadres;
    public String direccion;
    
    // Registros del Sacramento Realizado
    public Date fecha_comunion;
    
    // Otros Registros 
    public String observacion;
    public boolean estado;
    public Usuario ministro;
    public Usuario parroco;
    public Parroquia iglesia;
    public Solicitante padre;
    public Solicitante madre;
    public Solicitante padrino;
    public Solicitante madrina;
    public Solicitante comulgado;
    public Provincia provincia;
    public Ciudad ciudad;
    
    public String ministro_cna; // Cargo, nombre y apellido
    public String dia_comulgar, mes_comulgar, anio_comulgar;
    public String f_comunion;
        
    /** Creates a new instance of Comulgar */
    public Comulgar() {
        comulgado = new Solicitante();
        padre = new Solicitante("padre", "masculino");
        madre = new Solicitante("madre", "femenino");
        padrino = new Solicitante("padrino", "masculino");
        madrina = new Solicitante("madrina", "femenino");
        comulgado.tipo = "comulgado";
        
        this.ciudad= new Ciudad();
        this.provincia= new Provincia();
        this.ministro= new Usuario();
        this.parroco= new Usuario();
        parroco.id_usuario = 1;
        this.iglesia= new Parroquia();
        iglesia.id_parroquia = 1;
        estado=true;
        cnx = new ConexionDB();
  
    }
    
    public void setId_comunion(String id_comunion){ this.id_comunion=id_comunion; }
    public void setNum_libro(String num_libro){ this.num_libro=num_libro; }
    public void setFolio(String folio){ this.folio=folio; }
    public void setAnio(String anio){ this.anio=anio; }
    public void setEdad(String edad){ this.edad=edad; }
    public void setEstadoCivilPadres(String estadoCivilPadres){ this.estadoCivilPadres=estadoCivilPadres; }
    public void setNameInstitucion(String nameInstitucion){ this.nameInstitucion=nameInstitucion; }
    public void setNivel(String nivel){ this.nivel=nivel; }
    public void setObservacion(String observac){ this.observacion=observac; }
    public void setEstado(boolean estado){ this.estado=estado; }
    public void seterror(String error){this.error=error;}
    
    public void setpadre_apellido(String apellido){this.padre.apellido=apellido;}
    public void setcomulgado_nombre(String nombre){this.comulgado.nombre=nombre;}
    public void setcomulgado_apellido(String apellido){this.comulgado.apellido=apellido;}
    public void setcomulgado_sexo(String sexo){this.comulgado.sexo=sexo;}
    public void setpadre_nombre(String nombre){this.padre.nombre=nombre;}
    public void setmadre_nombre(String nombre){this.madre.nombre=nombre;}
    public void setmadre_apellido(String apellido){this.madre.apellido=apellido;}
    public void setmadrina_nombre(String nombre){this.madrina.nombre=nombre;}
    public void setmadrina_apellido(String apellido){this.madrina.apellido=apellido;}
    public void setpadrino_nombre(String nombre){this.padrino.nombre=nombre;}
    public void setpadrino_apellido(String apellido){this.padrino.apellido=apellido;}
    public void setprovincia_nombre(String provincia){this.provincia.nombre=provincia; }
    public void setciudad_nombre(String ciudad){this.ciudad.nombre=ciudad;}
    public void setparroquia(String nombre){this.iglesia.nombre=nombre;}
  
    public void setMinistro_cna(String ministro_cna) { this.ministro_cna = ministro_cna; }
    
    public void setDia_comulgar(String dia_comulgar) { this.dia_comulgar = dia_comulgar; }
    public void setMes_comulgar(String mes_comulgar) { this.mes_comulgar = mes_comulgar; }
    public void setAnio_comulgar(String anio_comulgar) { this.anio_comulgar = anio_comulgar; }

    public void setDireccion(String direccion) { this.comulgado.direccion = direccion; }
    public String getDireccion() { return this.comulgado.direccion; }

    public String getId_comunion(){ return(this.id_comunion); }
    public String getNum_libro(){ return(this.num_libro);}
    public String getFolio(){ return(this.folio);}
    public String getAnio(){ return(this.anio);}
    public String getEdad(){ return(this.edad);}
    public String getEstadoCivilPadres(){ return(this.estadoCivilPadres);}
    public String getNameInstitucion(){ return(this.nameInstitucion);}
    public String getNivel(){ return(this.nivel);}
    public String getObservacion(){ return(this.observacion);}
    public boolean getEstado(){ return(this.estado);}
    public String geterror(){return this.error;}
    public String getcomulgado_nombre(){return this.comulgado.nombre;}
    public String getcomulgado_apellido(){return this.comulgado.apellido;}
    public String getcomulgado_sexo(){ return this.comulgado.sexo;}
    public String getpadre_nombre(){return this.padre.nombre;}
    public String getpadre_apellido(){return this.padre.apellido;}
    public String getmadre_nombre(){return this.madre.nombre;}
    public String getmadre_apellido(){return this.madre.apellido;}
    public String getmadrina_nombre(){return this.madrina.nombre;}
    public String getmadrina_apellido(){return this.madrina.apellido;}
    public String getpadrino_nombre(){return this.padrino.nombre;}
    public String getpadrino_apellido(){return this.padrino.apellido;}
    public String getprovincia_nombre(){return this.provincia.nombre;}
    public String getciudad_nombre(){return this.ciudad.nombre;}
    public String getparroquia(){return this.iglesia.nombre;}
    public String getMinistro_cna() { return ministro_cna; }
    
    public String getDia_comulgar() { return this.dia_comulgar; }
    public String getMes_comulgar() { return this.mes_comulgar; }
    public String getAnio_comulgar() { return this.anio_comulgar; }  
    
    public String INSERTAR_PRIMERA_COMUNION() throws Exception,SQLException
    {
        try
        {
            try
            {
                ciudad.id_ciudad = Long.parseLong(ciudad.nombre);
                provincia.id_provincia = Long.parseLong(provincia.nombre);
                ministro.id_usuario = Long.parseLong(ministro_cna);
                fecha_comunion = Date.valueOf(anio_comulgar+"-"+mes_comulgar+"-"+dia_comulgar);
             }
            catch (Exception e)
            {
                seterror(e.getMessage());
                return "ERRORES INICIALES";
            }
            
            if (INSERTAR_COMULGADO())
            {
                if (INSERTAR_PADRES())
                {
                    if (INSERTAR_PADRINOS())
                    {
                        if (InsertarPrimeraComu())
                        {
                            return "TODO ESTA INGRESADO!!!!";
                        }
                        else
                            return "FALLAS EN EL INGRESO TOTAL";
                    }
                    else return "FALLAS EN EL INGRESO DE LOS PADRINOS";
                }
                else
                    return "FALLAS EN EL INGRESO DE LOS PADRES";
            }
            else
                return "FALLAS EN EL INGRESO DEL COMULGADO";
            
        }
        catch (Exception e)
        {
            seterror(e.getMessage());
        }
        return "No entro al Try";

    }
    
    public boolean INSERTAR_COMULGADO() throws Exception
    {
        try
        {
            comulgado.ciudad.id_ciudad = ciudad.id_ciudad;
            comulgado.solicitante_sexo();
            
            if (!comulgado.estaNombreApellido())
            {
                comulgado.IngresarSolicitante();
                comulgado.estaNombreApellido();
            }
            return true;
        }
        catch(Exception e){
            seterror(e.getMessage());
            return false;
        }
    }

    public boolean INSERTAR_PADRES() throws Exception
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
            seterror(e.getMessage());
            return false;            
        }
    }
    
    public boolean INSERTAR_PADRINOS() throws Exception
    {
        try
        {
            padrino.ciudad.id_ciudad = 0;
            madrina.ciudad.id_ciudad = 0;

            if (!padrino.estaNombreApellido()){
                padrino.IngresarSolicitante();
                padrino.estaNombreApellido();
            }
            if (!madrina.estaNombreApellido()){
                madrina.IngresarSolicitante();
                madrina.estaNombreApellido();
            }
            return true;
        }
        catch (Exception e)
        {
            seterror(e.getMessage());
            return false;            
        }
    }
    
   public boolean buscar_ComulgarxSolicitante(String nombre, String apellido) throws SQLException, Exception
    {
        ResultSet rs = null;
        String fname, lname;
        
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.ssp_BuscarComulgarxSolicitante(?,?)}");
                cst.setString(1, nombre);
                cst.setString(2, apellido);
                rs = cst.executeQuery();
                
                rs.next();
                id_comu= rs.getLong(1);
                id_comunion = rs.getString(2);
                num_libro = rs.getString(3);
                folio = rs.getString(4);
                anio = rs.getString(5);
                fecha_comunion = rs.getDate(6);
                f_comunion = String.valueOf(rs.getDate(6));
                dia_comulgar = f_comunion.substring(8,10);
                mes_comulgar = f_comunion.substring(5,7);
                anio_comulgar = f_comunion.substring(0,4);
                edad = rs.getString(7);
                estadoCivilPadres = rs.getString(8);
                nameInstitucion= rs.getString(9);
                nivel= rs.getString(10);
                observacion = rs.getString(11);
                estado = rs.getBoolean(12);
                
                comulgado.id_solicitante = rs.getLong(13);
                comulgado.BuscarxIdSolicitante();
                ciudad.id_ciudad=comulgado.ciudad.id_ciudad;
                ciudad.BuscarxIdCiudad();
                provincia.id_provincia= ciudad.id_provincialn;
                provincia.BuscarProvincia();
                padre.id_solicitante = rs.getLong(14);
                padre.BuscarxIdSolicitante();
                madre.id_solicitante = rs.getLong(15);
                madre.BuscarxIdSolicitante();
                
                padrino.id_solicitante = rs.getLong(16);
                padrino.BuscarxIdSolicitante();
                madrina.id_solicitante = rs.getLong(17);
                madrina.BuscarxIdSolicitante();
                
                ministro.id_usuario = rs.getLong(18);
                ministro.BuscarxIdUsuario();
                parroco.BuscarxIdUsuario();
                iglesia.id_parroquia = rs.getLong(19);
                iglesia.BuscarxIdParroquia();
                
                rs.close();
                con.close();
                return true;
            }
            catch(SQLException e)
            {
                seterror(e.getMessage());
                return false;
            }
        }
        seterror("No se pudo conectar");
        return false;
    }
   
    public boolean InsertarPrimeraComu() throws SQLException {
        ResultSet rs = null;
        String s = null;
        PreparedStatement gr=null;
        
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.ssp_IngresarPrimeraComunion(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
                cst.setString(1, id_comunion);
                cst.setString(2, num_libro);
                cst.setString(3, folio);
                cst.setString(4, anio);
                cst.setDate(5, fecha_comunion); 
                cst.setInt(6,  Integer.parseInt(edad));
                cst.setString(7, estadoCivilPadres);
                cst.setString(8, nameInstitucion);
                cst.setString(9, nivel);
                cst.setString(10, observacion);
                if (estado) cst.setInt(11, 1);
                else cst.setInt(11, 0);
                cst.setLong(12, comulgado.id_solicitante);
                cst.setLong(13, padre.id_solicitante);
                cst.setLong(14, madre.id_solicitante);
                cst.setLong(15, padrino.id_solicitante);
                cst.setLong(16, madrina.id_solicitante);
                cst.setLong(17, ministro.id_usuario);
                cst.setLong(18, iglesia.id_parroquia);
                cst.registerOutParameter(19,java.sql.Types.CHAR);
                cst.execute();
                mensaje= cst.getString(19);
                cst.close();
                con.close();
                
                return true;
            }
            catch(SQLException e)
            {
                seterror(e.getMessage());
                return false;
            }
        }
        else
        {
            seterror("No se conecto a la Base");
            return false;
        }
    }
    
     public void Anular_Comulgar(String id_comunion) throws SQLException, Exception
    {
        ResultSet rs = null;
            
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.anular_comunion(?,?)}");
                cst.setString(1, id_comunion);
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
    
public String MODIFICAR_PRIMERACOMUNION() throws Exception
{
     try
        {
            ciudad.id_ciudad = Long.parseLong(ciudad.nombre);
            provincia.id_provincia = Long.parseLong(provincia.nombre);
            ministro.id_usuario = Long.parseLong(ministro_cna);
            f_comunion = anio_comulgar+"-"+mes_comulgar+"-"+dia_comulgar;
            fecha_comunion = Date.valueOf(f_comunion);
            
            if (MODIFICAR_COMULGADO())
            {
              //return "Modifico el Bautizo";
              if (MODIFICAR_PADRES())
                {
                   if (MODIFICAR_PADRINOS())
                    {
                       if (ModificarComulgar())
                            {
                                return "Todo esta Modificado!!!!";}
                            else
                            {
                                return "FALLAS EN la Modificacion TOTAL";
                            }
                   }
                   else
                   {
                       return "No se pudo modificar los Padrinos";
                   }
              }
              else
              {
                  return "No se pudo modificar a los Padres";
              }  
            }
            else{
                return "No se pudo modificar al Comulgado";
            }
          }
      
      catch (Exception e)
        {
            seterror(e.getMessage());
        }
      return "MENSAJE DE ERROR";
   }

     
     public boolean MODIFICAR_COMULGADO() throws Exception{
         try
         {
            comulgado.ciudad.id_ciudad = ciudad.id_ciudad;
            comulgado.solicitante_sexo();
            comulgado.ModificarSolicitante();            
            return true;
        }
        catch(Exception e){
            seterror(e.getMessage());
            return false;
        }
     }
     
    public boolean MODIFICAR_PADRES() throws Exception
    {
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
            seterror(e.getMessage());
            return false;            
        }
    }
     
    public boolean MODIFICAR_PADRINOS() throws Exception
    {
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
            seterror(e.getMessage());
            return false;            
        }
    }
    
    
    public boolean ModificarComulgar()throws SQLException{
        ResultSet rs = null;
        String s = null;
        PreparedStatement gr=null;
        con=cnx.AbrirConexion(); 
        if(con!=null)
            {
                try{
                      cst=con.prepareCall("{CALL DBA.ssp_ModificarComunion(?,?,?,?,?,?,?,?,?,?,?,?,?)}");
                      cst.setLong(1,id_comu);
                      cst.setString(2,id_comunion);
                      cst.setString(3,num_libro);
                      cst.setString(4,folio);
                      cst.setString(5,anio);
                      cst.setDate(6,fecha_comunion);
                      cst.setString(7,edad);
                      cst.setString(8,estadoCivilPadres);
                      cst.setString(9,nameInstitucion);
                      cst.setString(10,nivel);
                      cst.setString(11,observacion);
                      cst.setLong(12,ministro.id_usuario);
                      cst.registerOutParameter(13,java.sql.Types.CHAR);
                      cst.execute();
                      mensaje= cst.getString(13);
                      cst.close();
                      con.close();
                      return true;
               }
              catch(SQLException e){
                      seterror(e.getMessage());
                      return false;
              }
            }
            else
                seterror("No se pudo conectar");
                return false;
    }
     
     
     
}
