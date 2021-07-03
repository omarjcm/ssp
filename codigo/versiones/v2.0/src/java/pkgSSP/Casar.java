/*
 * Casar.java
 *
 * Created on 16 de julio de 2006, 18:32
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
public class Casar extends Object implements Serializable{
    
    public long id_mat;
    public String id_matrimonio;
    public String num_libro;
    public String anio;
    public String folio;
    public String observacion;
    public String fecha_matrimonio;
    public String tomo;
    public Date fecha;
    public String dia_mat,mes_mat,anio_mat;
    public boolean estado;
    public String error, mensaje;
    
    // Propios de la Base de Datos
    public ConexionDB cnx;
    public Connection con;
    public CallableStatement cst;
    
    public Solicitante novio;
    public Solicitante novia;
    public Solicitante panovio;
    public Solicitante manovio;
    public Solicitante panovia;
    public Solicitante manovia;
    public Solicitante padrino;
    public Solicitante madrina;
    public Usuario ministro;
    public Usuario parroco;
    public Parroquia parroquia;
    
    public String ministro_cna; // Cargo, nombre y apellido
    
    public RegistroCivil registroCivil;
    
    
    /** Creates a new instance of Casar */
    public Casar() {
        
        cnx = new ConexionDB();
        novio = new Solicitante("esposo","masculino");
        novia = new Solicitante("esposa","femenino");
        panovio= new Solicitante("padreNovio","masculino");
        manovio= new Solicitante("madreNovio","femenino");
        panovia= new Solicitante("padreNovia","masculino");
        manovia= new Solicitante("madreNovia","femenino");
        padrino = new Solicitante("padrino", "masculino");
        madrina = new Solicitante("madrina", "femenino");
        
        ministro = new Usuario();
        parroco = new Usuario();
        parroco.id_usuario=1;
        parroquia = new Parroquia();
        parroquia.id_parroquia = 1;
        registroCivil = new RegistroCivil();
        
        estado = true;
        cnx = new ConexionDB();
        error = "";
    }
    
    public void setId_matrimonio(String id_matrimonio){ this.id_matrimonio=id_matrimonio; }
    public void setNum_libro(String num_libro){ this.num_libro=num_libro; }
    public void setAnio(String anio){ this.anio=anio; }
    public void setTomo(String tomo){ this.tomo=tomo; }
    public void setFolio(String folio){ this.folio=folio; }
    public void setObservacion(String observacion){ this.observacion=observacion; }
    public void setEstado(boolean estado){ this.estado=estado; }
    public void setFecha_matrimonio(String fecha_matrimonio) { this.fecha_matrimonio = fecha_matrimonio; }
    public void setNovio_nombre(String nombre) { this.novio.nombre = nombre; }
    public void setNovio_apellido(String apellido) { this.novio.apellido = apellido; }
    public void setNovia_nombre(String nombre) { this.novia.nombre = nombre; }
    public void setNovia_apellido(String apellido) { this.novia.apellido = apellido; }
    public void setMaNovio_nombre(String nombre) { this.manovio.nombre = nombre; }
    public void setMaNovio_apellido(String apellido) { this.manovio.apellido = apellido; }
    public void setPaNovio_nombre(String nombre) { this.panovio.nombre = nombre; }
    public void setPaNovio_apellido(String apellido) { this.panovio.apellido = apellido; }
    public void setMaNovia_nombre(String nombre) { this.manovia.nombre = nombre; }
    public void setMaNovia_apellido(String apellido) { this.manovia.apellido = apellido; }
    public void setPaNovia_nombre(String nombre) { this.panovia.nombre = nombre; }
    public void setPaNovia_apellido(String apellido) { this.panovia.apellido = apellido; }
    
    public void setMadrina_nombre(String nombre) { this.madrina.nombre = nombre; }
    public void setMadrina_apellido(String apellido) { this.madrina.apellido = apellido; }
    public void setPadrino_nombre(String nombre) { this.padrino.nombre = nombre; }
    public void setPadrino_apellido(String apellido) { this.padrino.apellido = apellido; }
    public void setParroquia_nombre(String nombre) { this.parroquia.nombre = nombre; }
    
    public void setMinistro_nombre(String nombre) { this.ministro.nombre = nombre; }
    public void setMinistro_apellido(String apellido) { this.ministro.apellido = apellido; }

    public void setMinistro_cna(String ministro_cna) { this.ministro_cna = ministro_cna; }

    public void setDia_mat(String dia_mat) { this.dia_mat = dia_mat; }
    public void setMes_mat(String mes_mat) { this.mes_mat = mes_mat; }
    public void setAnio_mat(String anio_mat) { this.anio_mat = anio_mat; }
    
    public void setMinistro_cargo(String cargo) { this.ministro.cargo = cargo; }
    public void setError(String error) { this.error = error; }

    public void setRc_acta(String acta) {this.registroCivil.acta = acta;}
    public void setRc_anio(String anio) {this.registroCivil.anio = anio;}
    public void setRc_tomo(String tomo) {this.registroCivil.tomo = tomo;}
    public void setRc_folio(String folio) {this.registroCivil.folio = folio;}
    public void setRc_lugar(String lugar) {this.registroCivil.lugar = lugar;}
    
    public String getId_matrimonio(){ return(this.id_matrimonio); }
    public String getNum_libro(){ return(this.num_libro);}
    public String getFolio(){ return(this.folio);}
    public String getTomo(){ return(this.tomo);}
    public String getAnio(){ return(this.anio);}
    public String getObservacion(){ return(this.observacion);}
    public boolean getEstado(){ return(this.estado);}
    
    public String getFecha_matrimonio() { return this.fecha_matrimonio; }
    public String getNovio_nombre() { return this.novio.nombre; }
    public String getNovio_apellido() { return this.novio.apellido; }
    public String getNovia_nombre() { return this.novia.nombre; }
    public String getNovia_apellido() { return this.novia.apellido; }
    public String getMaNovio_nombre() { return this.manovio.nombre; }
    public String getMaNovio_apellido() { return this.manovio.apellido; }
    public String getMaNovia_nombre() { return this.manovia.nombre; }
    public String getMaNovia_apellido() { return this.manovia.apellido; }
    public String getPaNovio_nombre() { return this.panovio.nombre; }
    public String getPaNovio_apellido() { return this.panovio.apellido; }
    public String getPaNovia_nombre() { return this.panovia.nombre; }
    public String getPaNovia_apellido() { return this.panovia.apellido; }
    
    public String getMadrina_nombre() { return this.madrina.nombre; }
    public String getMadrina_apellido() { return this.madrina.apellido; }
    public String getPadrino_nombre() { return this.padrino.nombre; }
    public String getPadrino_apellido() { return this.padrino.apellido; }
    public String getParroquia_nombre() { return this.parroquia.nombre; }
    public Date getRegistroCivil() { return this.registroCivil.fecha_nacimiento; }
    public String getMinistro_nombre() { return this.ministro.nombre; }
    public String getMinistro_apellido() { return this.ministro.apellido; }

    public String getMinistro_cna() { return ministro_cna; }
    public String getMinistro_cargo() { return this.ministro.cargo; }

    public String getError() { return error; }
    
    public String getRc_acta() {return this.registroCivil.acta;}
    public String getRc_anio() {return this.registroCivil.anio;}
    public String getRc_tomo() {return this.registroCivil.tomo;}
    public String getRc_folio() {return this.registroCivil.folio;}
    public String getRc_lugar() {return this.registroCivil.lugar;}

    public String getDia_mat() { return this.dia_mat; }
    public String getMes_mat() { return this.mes_mat; }
    public String getAnio_mat() { return this.anio_mat; }
    
    public String INSERTAR_MATRIMONIO() throws Exception
    {
        ministro.id_usuario = Long.parseLong(ministro_cna);
        fecha_matrimonio = anio_mat+"-"+mes_mat+"-"+dia_mat;
        fecha = Date.valueOf(fecha_matrimonio);
        
        if (INSERTAR_ESPOSOS())
        {
            if (INSERTAR_PADRES_ESPOSO())
            {
                if (INSERTAR_PADRES_ESPOSA())
                {
                    if (INSERTAR_PADRINOS())
                    {
                        if (INSERTAR_REGISTRO_CIVIL())
                        {
                            if (Insertar_Matrimonio())
                                return "INGRESO TODO!!";
                            else
                                return "FALLA EN EL INGRESO TOTAL";
                        }
                        else
                            return "FALLA EN EL INGRESO DEL REGISTRO CIVIL";
                    }
                    else
                        return "FALLA EN LA INSERCION DE LOS PADRINOS";
                }
                else
                    return "FALLA EN LA INSERCION DE LOS PADRES DE LA ESPOSA";
            }
            else
                return "FALLA EN LA INSERCION DE LOS PADRES DEL ESPOSO";
        }
        else 
            return "FALLA EN LA INSERCION DE LOS ESPOSOS";
    }
    
    public boolean INSERTAR_ESPOSOS() throws Exception
    {
        try
        {
            novio.ciudad.id_ciudad = 0;
            novia.ciudad.id_ciudad = 0;
            
            if (!novio.estaNombreApellido())
            {
                novio.IngresarSolicitante();
                novio.estaNombreApellido();
            }
            if (!novia.estaNombreApellido())
            {
                novia.IngresarSolicitante();
                novia.estaNombreApellido();
            }
            return true;
        }
        catch(Exception e){
            setError(e.getMessage());
            return false;
        }
    }
 
    public boolean INSERTAR_PADRES_ESPOSO() throws Exception
    {
        try{
            panovio.ciudad.id_ciudad = 0;
            manovio.ciudad.id_ciudad = 0;
            
            if (!panovio.estaNombreApellido())
            {
                panovio.IngresarSolicitante();
                panovio.estaNombreApellido();
            }
            if (!manovio.estaNombreApellido())
            {
                manovio.IngresarSolicitante();
                manovio.estaNombreApellido();
            }
            return true;
        }
        catch(Exception e){
            setError(e.getMessage());
            return false;
        }
    }

    public boolean INSERTAR_PADRES_ESPOSA() throws Exception
    {
        try{
            panovia.ciudad.id_ciudad = 0;
            manovia.ciudad.id_ciudad = 0;
            
            if (!panovia.estaNombreApellido())
            {
                panovia.IngresarSolicitante();
                panovia.estaNombreApellido();
            }
            if (!manovia.estaNombreApellido())
            {
                manovia.IngresarSolicitante();
                manovia.estaNombreApellido();
            }
            return true;
        }
        catch(Exception e){
            setError(e.getMessage());
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
            setError(e.getMessage());
            return false;            
        }
    }    
    
    public boolean INSERTAR_REGISTRO_CIVIL() throws Exception
    {
        try
        {
            registroCivil.IngresarRegistroCivil();
            registroCivil.BuscarxActa();
            return true;
        }
        catch (Exception e)
        {
            setError(e.getMessage());
            return false;
        }
    }    
    
    public boolean Insertar_Matrimonio() throws Exception
    {
        ResultSet rs = null;
        String s = null;
        PreparedStatement gr=null;
        con=cnx.AbrirConexion(); 
        if(con!=null)
            {
                try{
                      cst=con.prepareCall("{CALL DBA.ssp_IngresarMatrimonio(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
                      cst.setString(1, id_matrimonio);
                      cst.setString(2, num_libro);
                      cst.setString(3, folio);
                      cst.setString(4, anio);
                      cst.setDate(5, fecha);
                      cst.setString(6, observacion);
                      if (estado) cst.setInt(7, 1);
                      else cst.setInt(7, 0);
                      
                      cst.setLong(8, novio.id_solicitante);
                      cst.setLong(9, novia.id_solicitante);
                      cst.setLong(10, panovio.id_solicitante);
                      cst.setLong(11, manovio.id_solicitante);
                      cst.setLong(12, panovia.id_solicitante);
                      cst.setLong(13, manovia.id_solicitante);
                      cst.setLong(14, padrino.id_solicitante);
                      cst.setLong(15, madrina.id_solicitante);
                      cst.setLong(16, parroquia.id_parroquia);
                      cst.setLong(17, registroCivil.id_rc);
                      cst.setLong(18, ministro.id_usuario);
                      cst.registerOutParameter(19,java.sql.Types.CHAR);
                      cst.execute();
                      mensaje= cst.getString(19);
                      cst.close();
                      con.close();
                      return true;
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
    
    public boolean BuscarPersona(String nombre,String apellido) throws Exception{
        ResultSet rs = null;
        String s = null;
        String fname, lname;
        PreparedStatement gr=null;
        con=cnx.AbrirConexion(); 
        if(con!=null)
        {
            try{
                  //gr=con.prepareCall(Query);
          	  //rs=gr.executeQuery();
                  cst=con.prepareCall("{CALL DBA.buscar_solicitante(?,?)}");
                  cst.setString(1,nombre);
          	  cst.setString(2,apellido);
          	  rs=cst.executeQuery();
                  rs.next();
                  
                  fname = rs.getString(2);
                  lname = rs.getString(3);
                  
                  rs.close();
                  con.close();
                  if (fname.compareTo(nombre) == 0)
                  {
                      if (lname.compareTo(apellido) == 0)
                          return true;
                  }
              }
          catch(SQLException e){
                  return false;
          }
        }
        return false;    
    }
    
    /***********************************************************/
    
    public boolean buscar_MatrimonioxSolicitante(String nom_novio, String apell_novio,String nom_novia, String apell_novia) throws Exception
    {
        ResultSet rs = null;
        String s = null;
        String fname, lname;
  //      long id1, id2;
        PreparedStatement gr=null;
        con=cnx.AbrirConexion(); 
        
        if(con!=null)
        {
            try{
            cst = con.prepareCall("{CALL DBA.ssp_BuscarMatrimonio(?,?,?,?)}");
            cst.setString(1, nom_novia);
            cst.setString(2, apell_novia);
            cst.setString(3, nom_novio);
            cst.setString(4, apell_novio);
            rs=cst.executeQuery();
            rs.next();
            
            id_mat = rs.getLong(1);
            id_matrimonio = rs.getString(2);
            num_libro = rs.getString(3);
            folio = rs.getString(4);
            anio = rs.getString(5);
            fecha_matrimonio = String.valueOf(rs.getDate(6));
            anio_mat = fecha_matrimonio.substring(0,4);
            mes_mat = fecha_matrimonio.substring(5,7);
            dia_mat = fecha_matrimonio.substring(8,10);
            observacion = rs.getString(7);
            estado = rs.getBoolean(8);

            novio.id_solicitante = rs.getLong(9);
            novio.BuscarxIdSolicitante();
            novia.id_solicitante = rs.getLong(10);
            novia.BuscarxIdSolicitante();
            
            panovio.id_solicitante = rs.getLong(11);
            panovio.BuscarxIdSolicitante();
            manovio.id_solicitante = rs.getLong(12);
            manovio.BuscarxIdSolicitante();
            
            panovia.id_solicitante = rs.getLong(13);
            panovia.BuscarxIdSolicitante();
            manovia.id_solicitante = rs.getLong(14);
            manovia.BuscarxIdSolicitante();
            
            padrino.id_solicitante = rs.getLong(15);
            padrino.BuscarxIdSolicitante();
            madrina.id_solicitante = rs.getLong(16);
            madrina.BuscarxIdSolicitante();

            parroquia.id_parroquia = rs.getLong(17);
            parroquia.BuscarxIdParroquia();
            registroCivil.id_rc = rs.getLong(18);
            registroCivil.BuscarxIdRc();

            ministro.id_usuario = rs.getLong(19);
            ministro.BuscarxIdUsuario();
            parroco.BuscarxIdUsuario();

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
        else{
            error = "No se pudo conectar";
            return false;
        }
    }

    
    
    /***********************************************************/

    public void Anular_Matrimonio(String id_matrimonio) throws SQLException, Exception
    {
        ResultSet rs = null;
            
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.anular_matrimonio(?,?)}");
                cst.setString(1, id_matrimonio);
                cst.registerOutParameter(2,java.sql.Types.CHAR);
                cst.execute();
                mensaje= cst.getString(2);
                cst.close();
                con.close();
            }
            catch(SQLException e)
            {
                error = e.getMessage();
                
            }
        }
        error = "No se pudo conectar";
        
    }
    
    public String MODIFICAR_MATRIMONIO()
    {
        try
        {
            ministro.id_usuario = Long.parseLong(ministro_cna);
            fecha_matrimonio = anio_mat+"-"+mes_mat+"-"+dia_mat;
            fecha = Date.valueOf(fecha_matrimonio);
            
            if (MODIFICAR_ESPOSOS())
            {
                if (MODIFICAR_PADRES_ESPOSOS())
                {
                    if (MODIFICAR_PADRINOS())
                    {
                        if (MODIFICAR_REGISTRO_CIVIL())
                        {
                            if (ModificarMatrimonio())
                                return "Todo esta Modificado!!!!";
                            else
                                return "FALLA EN EL INGRESO TOTAL";
                        }
                        else
                            return "PROBLEMAS EN LA MODIFICACION DEL REGISTRO CIVIL";
                    }
                    else
                        return "PROBLEMAS EN LA MODIFICACION DE LOS PADRINOS";
                }
                else
                    return "PROBLEMAS EN LA MODIFICACION DE LOS PADRES DE LOS ESPOSOS";
            }
            else
                return "PROBLEMAS EN LA MODIFICACION DE LOS ESPOSOS";
            
        }
        catch (Exception e)
        {
            setError(e.getMessage());
            return "NO RETORNA NADA";
        }
    }
    
    public boolean MODIFICAR_ESPOSOS() {
        try
        {
            novia.ciudad.id_ciudad = 0;
            novio.ciudad.id_ciudad = 0;

            novia.ModificarSolicitante();
            novio.ModificarSolicitante();
            return true;
        }
        catch (Exception e)
        {
            setError(e.getMessage());
            return false;            
        }
    }
    public boolean MODIFICAR_PADRES_ESPOSOS() {
        try
        {
            panovia.ciudad.id_ciudad = 0;
            manovia.ciudad.id_ciudad = 0;
            panovio.ciudad.id_ciudad = 0;
            manovio.ciudad.id_ciudad = 0;
            
            panovia.ModificarSolicitante();
            manovia.ModificarSolicitante();
            panovio.ModificarSolicitante();
            manovio.ModificarSolicitante();
            return true;
        }
        catch (Exception e)
        {
            setError(e.getMessage());
            return false;            
        }
    }
    public boolean MODIFICAR_PADRINOS() {
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
    public boolean MODIFICAR_REGISTRO_CIVIL() throws Exception {
        try
        {
            registroCivil.ModificarRegistroCivil();
            return true;
        }
        catch (Exception e)
        {
            setError(e.getMessage());
            return false;
        }
    }
    
    public boolean ModificarMatrimonio()throws SQLException{
        ResultSet rs = null;
        con=cnx.AbrirConexion(); 
        if(con!=null)
            {
                try
                {
                      cst=con.prepareCall("{CALL DBA.ssp_ModificarMatrimonio(?,?,?,?,?,?,?,?,?)}");
                      cst.setLong(1,id_mat);
                      cst.setString(2,id_matrimonio);
                      cst.setString(3,num_libro);
                      cst.setString(4,folio);
                      cst.setString(5,anio);
                      cst.setDate(6,fecha);
                      cst.setString(7,observacion);
                      cst.setLong(8,ministro.id_usuario);
                      cst.registerOutParameter(9,java.sql.Types.CHAR);
                      cst.execute();
                      mensaje= cst.getString(9);
                      
                      cst.close();
                      con.close();
                      return true;
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
}
