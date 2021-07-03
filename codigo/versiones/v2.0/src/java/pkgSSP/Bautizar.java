package pkgSSP;

import java.lang.*;
import java.io.*;
import java.sql.*;
import java.beans.*;
import java.io.Serializable;
import java.sql.Date;
import java.io.*;
import java.sql.SQLException;
import javax.xml.transform.Result;
/**
 *
 * @author root
 */
public class Bautizar extends Object implements Serializable{
    
    public ConexionDB cnx;
    public Connection con;
    public CallableStatement cst;
    public ResultSet rs = null;
    public String mensaje;
    
    public String id_bautizo, num_libro, folio, anio_libro, observacion, error;
    public String fecha_bautizo;
    public String fecha_nacimiento;
    
    public Date fecha_bau;
    public Date fecha_nac;
    
    int    ind;
    long   id_baut;
    
    public String ministro_cna; // Cargo, nombre y apellido
    public String dia_bautizo, mes_bautizo, anio_bautizo;
    public String dia_nacimiento, mes_nacimiento, anio_nacimiento;
    
    public boolean estado;
    public Usuario ministro,parroco;
    public Parroquia iglesia;
    public Solicitante padre;
    public Solicitante madre;
    public Solicitante padrino;
    public Solicitante madrina;
    public Solicitante bautizado;
    public Provincia provin;
    public Ciudad city;
    
    public RegistroCivil rc;
    public Scanner scann;
    
    /** Creates a new instance of Bautizar */
    public Bautizar() {
        padre=new Solicitante("padre","masculino");
        madre=new Solicitante("madre","femenino");
        madrina=new Solicitante("madrina","femenino");
        padrino=new Solicitante("padrino","masculino");
        bautizado=new Solicitante();
        bautizado.tipo="bautizado";
        city= new Ciudad();
        rc= new RegistroCivil();
        provin= new Provincia();
        ministro= new Usuario();
        parroco= new Usuario();
        parroco.id_usuario=1;
        iglesia= new Parroquia();
        iglesia.id_parroquia = 1;
        estado= true;
        scann = new Scanner();
        cnx = new ConexionDB();
    }
    
    public void setId_bautizo(String id_bautizo) {
        this.id_bautizo = id_bautizo;
    }
    
    public void setnum_bautizo(String num_bautizo) { this.id_bautizo=num_bautizo; }
    public void setNum_libro(String num_libro) { this.num_libro=num_libro; }
    public void setAnio_libro(String anio_libro) { this.anio_libro=anio_libro; }
    public void setFolio(String folio) { this.folio=folio; }
    
    public void setEstado(boolean estado){ this.estado=estado; }
    public void setFecha_bautizo(String fecha_bautizo){ this.fecha_bautizo=fecha_bautizo; }
    public void setrcfecha_nacimiento(Date fecha_nacimiento){ this.rc.fecha_nacimiento=fecha_nacimiento;}
    public void setObservacion(String observa){this.observacion=observa;}
    public void setfecha_nacimiento(String fecha_nacimiento){this.fecha_nacimiento=fecha_nacimiento;}
    public void seterror(String error){this.error=error; }
    public void setid_baut(long id_baut){this.id_baut=id_baut; }
    
    public void setpadre_nombre(String nombre){this.padre.nombre=nombre;}
    public void setpadre_apellido(String apellido){this.padre.apellido=apellido; }
    public void setBautizado_nombre(String nombre){ this.bautizado.nombre = nombre; }
    public void setBautizado_apellido(String apellido){ this.bautizado.apellido = apellido; }
    public void setBautizado_sexo(String sexo) { this.bautizado.sexo = sexo; }
    public void setmadre_nombre(String nombre){this.madre.nombre=nombre;}
    public void setmadre_apellido(String apellido){this.madre.apellido=apellido;}
    public void setmadrina_nombre(String nombre){this.madrina.nombre=nombre;}
    public void setmadrina_apellido(String apellido){this.madrina.apellido=apellido;}
    public void setpadrino_nombre(String nombre){this.padrino.nombre=nombre;}
    public void setpadrino_apellido(String apellido){this.padrino.apellido=apellido;}
    public void setprovincia_nombre(String provincia){this.provin.setNombre(provincia);}
    public void setciudad_nombre(String ciudad){this.city.nombre=ciudad;}
    public void setministro_cargo(String cargo){this.ministro.cargo=cargo;}
    public void setministro_nombre(String nombre){this.ministro.nombre=nombre;}
    public void setministro_apellido(String apellido){this.ministro.apellido=apellido;}
    public void setparroquia(String nombre){this.iglesia.nombre=nombre;}
    public void setrc_anio(String anio){this.rc.anio=anio;}
    public void setrc_folio(String folio){this.rc.folio=folio;}
    public void setrc_acta(String acta){this.rc.acta=acta;}
    public void setDia_bautizo(String dia) { this.dia_bautizo = dia; }
    public void setMes_bautizo(String mes) { this.mes_bautizo = mes; }

    public void setDia_nacimiento(String dia_nacimiento) { this.dia_nacimiento = dia_nacimiento; }
    public void setMes_nacimiento(String mes_nacimiento) { this.mes_nacimiento = mes_nacimiento; }
    public void setAnio_nacimiento(String anio_nacimiento) { this.anio_nacimiento = anio_nacimiento; }
    public void setAnio_bautizo(String anio) { this.anio_bautizo = anio; }
    public void setrc_tomo(String tomo){this.rc.tomo=tomo;}
    public void setMinistro_cna(String ministro_cna) { this.ministro_cna = ministro_cna; }   
    public void setCity_nombre(String nombre) { this.city.nombre = nombre; }
    public String getCity_nombre() { return this.city.nombre; }
    public void setProvin_nombre(String nombre) { this.provin.nombre = nombre; }
    public String getProvin_nombre() { return this.provin.nombre; }
 
    public String getnum_bautizo(){ return(this.id_bautizo); }
    public String getNum_libro(){ return(this.num_libro);}
    public String getFolio(){ return(this.folio);}
    public String getAnio_libro(){return this.anio_libro=anio_libro; }
    public boolean getEstado(){ return(this.estado);}
    public String getFecha_bautizo(){ return(this.fecha_bautizo);}
    public Date getrcfecha_nacimiento(){ return(Date.valueOf(this.fecha_nacimiento));}
    public String getObservacion(){return this.observacion;}
    public String getfecha_nacimiento(){return this.fecha_nacimiento;}
    public long getid_baut(){return this.id_baut;}
    public String getBautizado_nombre(){return this.bautizado.nombre;}
    public String getBautizado_apellido(){return this.bautizado.apellido;}
    public String getpadre_nombre(){return this.padre.nombre;}
    public String getbautizado_sexo() { return this.bautizado.sexo; }
    public String getpadre_apellido(){return this.padre.apellido;}
    public String getmadre_nombre(){return this.madre.nombre;}
    public String getmadre_apellido(){return this.madre.apellido;}
    public String getmadrina_nombre(){return this.madrina.nombre;}
    public String getmadrina_apellido(){return this.madrina.apellido;}
    public String getpadrino_nombre(){return this.padrino.nombre;}
    public String getpadrino_apellido(){return this.padrino.apellido;}
    public String getprovincia_nombre(){return this.provin.getNombre();}
    public String getciudad_nombre(){return this.city.nombre;}
    public String getministro_cargo(){return this.ministro.cargo;}
    public String getministro_nombre(){return this.ministro.nombre;}
    public String getministro_apellido(){return this.ministro.apellido;}
    public String getparroquia(){return this.iglesia.nombre;}
    public String getrc_anio(){return this.rc.anio;}
    public String getrc_folio(){return this.rc.folio;}
    public String getrc_acta(){return this.rc.acta;}
    public String getrc_tomo(){return this.rc.tomo;}
    public String getDia_bautizo() { return dia_bautizo; }
    public String getMes_bautizo() { return mes_bautizo; }

    public String getDia_nacimiento() {
        return dia_nacimiento;
    }

    public String getMes_nacimiento() {
        return mes_nacimiento;
    }

    public String getAnio_nacimiento() {
        return anio_nacimiento;
    }

    public String getId_bautizo() {
        return id_bautizo;
    }
    public String getAnio_bautizo() { return anio_bautizo; }
    public String getMinistro_cna() { return ministro_cna; }
    public String geterror(){return this.error;}

    public String INSERTAR_BAUTIZO() throws Exception
    {
        try
        {
            city.id_ciudad = Long.parseLong(city.nombre);
            provin.id_provincia = Long.parseLong(provin.nombre);
            ministro.id_usuario = Long.parseLong(ministro_cna);
            fecha_bautizo = anio_bautizo+"-"+mes_bautizo+"-"+dia_bautizo;
            fecha_bau = Date.valueOf(fecha_bautizo);
            fecha_nacimiento = anio_nacimiento+"-"+mes_nacimiento+"-"+dia_nacimiento;
            fecha_nac = Date.valueOf(fecha_nacimiento);

            if (INSERTAR_BAUTIZADO())
            {
                if (INSERTAR_PADRES())
                {
                    if (INSERTAR_PADRINOS())
                    {
                        if (INSERTAR_REGISTRO_CIVIL())
                        {
                            if (InsertarBautizo())
                                return "TODO ESTA INGRESADO!!!!";
                            else
                                return "FALLAS EN EL INGRESO TOTAL";
                        }
                        else
                            return "FALLAS EN EL INGRESO DEL REGISTRO CIVIL";
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
            seterror(e.getMessage());
        }
        return "MENSAJE DE ERROR";
    }
    
    public boolean INSERTAR_BAUTIZADO() throws Exception
    {
        try{
            bautizado.ciudad.id_ciudad = city.id_ciudad;
            bautizado.solicitante_sexo();
            
            if (!bautizado.estaNombreApellido())
            {
                bautizado.IngresarSolicitante();
                bautizado.estaNombreApellido();
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
    
    public boolean INSERTAR_REGISTRO_CIVIL() throws Exception
    {
        try
        {
            rc.fecha_nacimiento = fecha_nac;
            rc.IngresarRegistroCivil();
            rc.BuscarxActa();
            return true;
        }
        catch (Exception e)
        {
            seterror(e.getMessage());
            return false;
        }
    }
    
    public boolean InsertarBautizo()throws SQLException{
        ResultSet rs = null;
        String s = null;
        PreparedStatement gr=null;
        con=cnx.AbrirConexion(); 
        if(con!=null)
            {
                try{
                      cst=con.prepareCall("{CALL DBA.ssp_IngresarBautizo(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
                      cst.setString(1,id_bautizo);
                      cst.setString(2,num_libro);
                      cst.setString(3,folio);
                      cst.setString(4,anio_libro);
                      cst.setDate(5,fecha_bau);
                      cst.setString(6,observacion);
                      if (estado) cst.setInt(7, 1);
                      else cst.setInt(7, 0);
                      cst.setLong(8,bautizado.id_solicitante);
                      cst.setLong(9,padre.id_solicitante);
                      cst.setLong(10,madre.id_solicitante);
                      cst.setLong(11,padrino.id_solicitante);
                      cst.setLong(12,madrina.id_solicitante);
                      cst.setLong(13,iglesia.id_parroquia);
                      cst.setLong(14,rc.id_rc);
                      cst.setLong(15,ministro.id_usuario);
                      cst.registerOutParameter(16,java.sql.Types.CHAR);
                      cst.execute();
                      mensaje= cst.getString(16);
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

    public boolean Se_encuentra_Bautizo() throws Exception{
        
        String s = null;
        PreparedStatement gr=null;
        con=cnx.AbrirConexion(); 
            if(con!=null)
            {
                try{
                      cst=con.prepareCall("{CALL DBA.ssp_EncontrarBautizo(?)}");
                      cst.setString(1,this.id_bautizo);
                      rs=cst.executeQuery();
                      if(rs.next()){
                        rs.close();
                        con.close();
                        return true;
                      }
                      else{
                           return false;
                      }
                   }
              catch(SQLException e){
                      this.error=e.getMessage();
                      return false;
              }
            }
            else
                error="No se pudo conectar";
            return false;
    }
    
    public boolean Realizar_ConsultaBautizo(String nombre, String apellido) throws Exception{
        Solicitante s= new Solicitante();
        long id_solicita= s.Buscar_IdSolicita(nombre,apellido);
        
        if(id_solicita != -1 && s.tipo.compareTo("solicitante")==0){
            
            if(Consultar_Bautizo(id_solicita)){
                //ssolicitante.setId_solicitante(id_solicita);
                return true;}
            
            else{
                seterror("No se pudo consultar");
                seterror(String.valueOf(id_solicita));
                return false;
            }
        }
        else{
            seterror("No se pudo encontrar el solicitante");
            return false;
        }
        
    }
   
  
public boolean buscar_BautizoxSolicitante(String nombre,String apellido) throws SQLException, Exception
    {
        ResultSet rs = null;
        String fname, lname;
        
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.buscar_BautizoxSolicitante(?,?)}");
                cst.setString(1, nombre);
                cst.setString(2, apellido);
                rs = cst.executeQuery();
                rs.next();
                id_baut=rs.getLong(1);
                setId_bautizo(rs.getString(2));
                setNum_libro(rs.getString(3));
                setFolio(rs.getString(4));
                setAnio_libro(rs.getString(5));
                setFecha_bautizo(String.valueOf(rs.getDate(6)));
                dia_bautizo = fecha_bautizo.substring(8,10);
                mes_bautizo = fecha_bautizo.substring(5,7);
                anio_bautizo = fecha_bautizo.substring(0,4);
                setObservacion(rs.getString(7));
                estado = rs.getBoolean(8);
                
                bautizado.setId_solicitante(rs.getLong(9));
                bautizado.BuscarxIdSolicitante();
                city.id_ciudad = bautizado.ciudad.id_ciudad;
                city.BuscarxIdCiudad();
                provin.id_provincia = city.id_provincialn;
                provin.BuscarProvincia();
                
                padre.setId_solicitante(rs.getLong(10));
                padre.BuscarxIdSolicitante();
                madre.setId_solicitante(rs.getLong(11));
                madre.BuscarxIdSolicitante();
                padrino.setId_solicitante(rs.getLong(12));
                padrino.BuscarxIdSolicitante();
                madrina.setId_solicitante(rs.getLong(13));
                madrina.BuscarxIdSolicitante();
                iglesia.setId_parroquia(rs.getLong(14));
                iglesia.BuscarxIdParroquia();
                rc.setId_rc(rs.getLong(15));
                rc.BuscarxIdRc();
                dia_nacimiento = rc.f_nacimiento.substring(8,10);
                mes_nacimiento = rc.f_nacimiento.substring(5,7);
                anio_nacimiento = rc.f_nacimiento.substring(0,4);
                ministro.setId_usuario(rs.getLong(16));
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
        error = "No se pudo conectar";
        return false;
    }

    public boolean Consultar_Bautizo(long id_solicitante) throws Exception{
        ResultSet rs = null;
        String s = null;
        PreparedStatement gr=null;
        con=cnx.AbrirConexion(); 
        if(con!=null)
            {
                try{
                      cst=con.prepareCall("{CALL DBA.ssp_ConsultarBautizoT(?)}");
                      cst.setLong(1,id_solicitante);
                      rs=cst.executeQuery();
                      if(rs.next()){
                          
                          id_bautizo = rs.getString(2);
                          setNum_libro(rs.getString(3));
                          setFolio(rs.getString(4));
                          anio_libro = rs.getString(5);
                          setFecha_bautizo(String.valueOf(rs.getDate(6)));
                          setObservacion(rs.getString(7));
                          estado = rs.getBoolean(8);
                          bautizado.setId_solicitante(rs.getLong(9));
                          padre.setId_solicitante(rs.getLong(10));
                          madre.setId_solicitante(rs.getLong(11));
                          padrino.setId_solicitante(rs.getLong(12));
                          madrina.setId_solicitante(rs.getLong(13));   
                          ministro.setId_usuario(rs.getLong(14));
                          iglesia.setId_parroquia(rs.getLong(15));
                          rc.setId_rc(rs.getLong(16));
                          bautizado.usuario.id_usuario = rs.getLong(17);
                          rs.close();
                          con.close();
                          return true;
                      }
                      else
                      {
                      setid_baut(rs.getLong(-1));
                      seterror("No se encontro persona");
                      rs.close();
                      con.close();
                      return false;
                      }
               }
              catch(SQLException e){
                      this.error=e.getMessage();
                      return false;
              }
            }
            else
                seterror("No se pudo conectar");
                return false;
      }
    
     public void Anular_Bautizar(String id_bautizo) throws SQLException, Exception
    {
        ResultSet rs = null;
            
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.anular_bautizo(?,?)}");
                cst.setString(1, id_bautizo);
                cst.registerOutParameter(2,java.sql.Types.CHAR);
                cst.execute();
                mensaje= cst.getString(2);
                //rs.close();
                con.close();
            }
            catch(SQLException e)
            {
                error = e.getMessage();
            }
        }
        error = "No se pudo conectar";
    }
     
     public String MODIFICAR_BAUTIZO() throws Exception
     {
        try
        {
            city.id_ciudad = Long.parseLong(city.nombre);
            provin.id_provincia = Long.parseLong(provin.nombre);
            ministro.id_usuario = Long.parseLong(ministro_cna);
            fecha_bautizo = anio_bautizo+"-"+mes_bautizo+"-"+dia_bautizo;
            fecha_bau = Date.valueOf(fecha_bautizo);
            //fecha_nacimiento = anio_nacimiento+"-"+mes_nacimiento+"-"+dia_nacimiento;
            //fecha_nac = Date.valueOf(fecha_nacimiento);
            rc.f_nacimiento = anio_nacimiento+"-"+mes_nacimiento+"-"+dia_nacimiento;
            rc.fecha_nacimiento = Date.valueOf(rc.f_nacimiento);

            if (MODIFICAR_BAUTIZADO())
            {
             //   return "Modifico el Bautizo";
                if (MODIFICAR_PADRES())
                {
                    if (MODIFICAR_PADRINOS())
                    {
                      
                       if (MODIFICAR_REGISTRO_CIVIL())
                        {
                           //return "Modifico los Registro";
                            if (ModificarBautizo())
                            {
                                return "Todo esta Modificado!!!!";}
                            else
                            {
                                return "FALLAS EN la Modificacion TOTAL";
                            }
                        }
                        else{
                            return "No se modificar el Registro Civil";
                        }
                        
                    }
                    else{
                        return "No se pudo modificar los Padrinos";
                    }
                    
                }
                else{
                    return "No se pudo modificar a los Padres";
                }
            }
            else{
                return "No se pudo modificar al Bautizado";
            }
          }
      
        catch (Exception e)
        {
            seterror(e.getMessage());
        }
        return "MENSAJE DE ERROR";
    }

     
     public boolean MODIFICAR_BAUTIZADO() throws Exception{
         try{
            bautizado.ciudad.id_ciudad = city.id_ciudad;
            bautizado.solicitante_sexo();
            
            bautizado.ModificarSolicitante();
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
    
    public boolean MODIFICAR_REGISTRO_CIVIL() throws Exception
    {
        try
        {
            rc.ModificarRegistroCivil();
            return true;
        }
        catch (Exception e)
        {
            seterror(e.getMessage());
            return false;
        }
    }
    
    public boolean ModificarBautizo()throws SQLException{
        ResultSet rs = null;
        String s = null;
        PreparedStatement gr=null;
        con=cnx.AbrirConexion(); 
        if(con!=null)
            {
                try{
                      cst=con.prepareCall("{CALL DBA.ssp_ModificarBautizo(?,?,?,?,?,?,?,?,?)}");
                      cst.setLong(1,id_baut);
                      cst.setString(2,id_bautizo);
                      cst.setString(3,num_libro);
                      cst.setString(4,folio);
                      cst.setString(5,anio_libro);
                      cst.setDate(6,fecha_bau);
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
                      seterror(e.getMessage());
                      return false;
              }
            }
            else
                seterror("No se pudo conectar");
                return false;
    }
}