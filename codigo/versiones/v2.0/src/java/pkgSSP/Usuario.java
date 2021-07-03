package pkgSSP;

/************************************************************************************************************************************/
import java.io.*;
import java.sql.*;
import java.beans.*;
import java.lang.*;
import java.lang.Long;
import java.io.Serializable;
import java.util.LinkedList;
/************************************************************************************************************************************/
public class Usuario extends Object implements Serializable {
     public String mensaje;
     public ConexionDB cnx;
     public Connection con;
     public CallableStatement cst;
     public long id_usuario;
     public String usuario, clave, nombre, apellido, tipousuario;
     public String cargo, direcion, telefono1, telefono2, telefono3;
     
     public Ciudad ciudad;
     public Parroquia parroquia;
     public Provincia provincia;
     public boolean estado;
     public String error, name;
     
/************************************************************************************************************************************/
     public Usuario() {
         
         ciudad = new Ciudad();
         parroquia= new Parroquia();
         parroquia.id_parroquia=1;
         provincia= new Provincia();
         estado=true;
         cnx = new ConexionDB(); 
     }
/************************************************************************************************************************************/
     public void setId_usuario(long idusuario){ this.id_usuario=idusuario; }
     public void setUsuario(String usuario){ this.usuario=usuario; }
     public void setClave(String clave){ this.clave=clave; }
     public void setNombre(String name){ this.nombre=name; }
     public void setApellido(String apellido){ this.apellido=apellido; }
     public void setTipousuario(String tipousuario){ this.tipousuario=tipousuario; }
     public void setCargo(String cargo_){ this.cargo=cargo_;}
     public void setprovincia_nombre(String provincia){this.provincia.nombre=provincia; }
     public void setciudad_nombre(String ciudad){this.ciudad.nombre=ciudad;}
     public void settelefono1(String telefono){this.telefono1=telefono;}
     public void settelefono2(String telefono){this.telefono2=telefono;}
     public void setdireccion(String direccion){this.direcion=direccion;}
    
     public void Tipo_Usuario(){
        if(tipousuario.compareTo("0")==0) tipousuario="Administrador";
        if(tipousuario.compareTo("1")==0) tipousuario="Secretaria";
     }
     
     public void Tipo_Cargo(){ 
        if (cargo.compareTo("0") == 0) cargo = "P.";
        if (cargo.compareTo("1") == 0) cargo = "Diac.";
        if (cargo.compareTo("2") == 0) cargo = "Mons.";
     }
     
     public void Tipo_UsuarioCargo(){
        if (cargo.compareTo("0") == 0) cargo = "Sr.";
        if (cargo.compareTo("1") == 0) cargo = "Sra.";
        if (cargo.compareTo("2") == 0) cargo = "Hno.";
        if (cargo.compareTo("3") == 0) cargo = "Hna.";
        if (cargo.compareTo("4") == 0) cargo = "Diac.";
        if (cargo.compareTo("5") == 0) cargo = "P.";
        if (cargo.compareTo("6") == 0) cargo = "Mons.";
        if (cargo.compareTo("7") == 0) cargo = "Srta.";
     }
     
     public void setError(String error){ this.error=error; }
/************************************************************************************************************************************/
     public long getId_usuario(){ return this.id_usuario; }
     public String getUsuario(){ return(this.usuario); }
     public String getApellido() { return apellido; }
     public String getClave(){ return(this.clave); }
     public String getError(){ return(this.error); }
     public String getNombre(){ return(this.nombre); }
     public String getCargo(){ return(this.cargo); }
     public String getprovincia_nombre(){return this.provincia.nombre;}
     public String getciudad_nombre(){return this.ciudad.nombre;}
     public String getTipousuario(){ return(this.tipousuario); }
     public String gettelefono1(){return this.telefono1;}
     public String gettelefono2(){return this.telefono2;}
     public String getdireccion(){return this.direcion;}
    
     
     public boolean Administrador(String usuario_,String clave_)throws Exception{

        ResultSet rs = null;
        String s = null;
        String tipo = "administrador";
        PreparedStatement gr = null;
        
        con = cnx.AbrirConexion();

        if (con != null)
        {
            try{
                  cst=con.prepareCall("{CALL DBA.sp_Usuario(?,?)}");
                  cst.setString(1, usuario_);
          	  cst.setString(2, clave_);
          	  rs=cst.executeQuery();
                  rs.next();
                  
                  this.id_usuario = rs.getLong(1);
                  this.name = rs.getString(4);
                  this.apellido = rs.getString(5);
                  this.tipousuario = rs.getString(6);
                  this.cargo = rs.getString(7);
                  estado=rs.getBoolean(13);

                rs.close();
                con.close();
                  if(tipo.compareToIgnoreCase(this.tipousuario)==0 && estado)
                  {
                      if(estado){
                        setNombre(this.name);
                        return true;
                    }
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
/************************************************************************************************************************************/     
     public boolean Secretaria(String usuario_,String clave_)throws Exception
     {
        ResultSet rs=null;
        String s=null;
        String tipo="secretaria";
        String name;
        PreparedStatement gr=null;
        con=cnx.AbrirConexion();
        
        if(con!=null)
        {
            try{
                cst=con.prepareCall("{CALL DBA.sp_Usuario(?,?)}");
               	cst.setString(1,usuario_);
          	cst.setString(2,clave_);
          	rs=cst.executeQuery();
                rs.next();
                this.name=rs.getString(4);
                this.setNombre(this.name);
                this.apellido=rs.getString(5);
                this.tipousuario=rs.getString(6);
                this.cargo = rs.getString(7);
                estado=rs.getBoolean(13);
                
                if(tipo.compareToIgnoreCase(this.tipousuario)==0){
                    if(estado){
                        setNombre(this.name);
                        return true;
                    }
                    
                  }
                rs.close();
               con.close();
 
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
     
     public void Nombre(){
         setNombre(this.nombre);
     }
     
     public String[] ObtenerMinistro(String s){
         String car[]= new String[3];
         int indice=s.indexOf(' ');
         car[0]=s.substring(0, indice-1);

         s=s.substring(indice, s.length());
         int indice1=s.indexOf(' ');
         car[1]=s.substring(0, indice1-1);
         
         car[2]=s.substring(indice1,s.length());
         
         return car;
     }
     
    public boolean estaUsuario() throws Exception
    {
        ResultSet rs = null;
        String fname, lname;
        
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.buscar_usuario(?,?)}");
                cst.setString(1, nombre);
                cst.setString(2, apellido);
                rs = cst.executeQuery();
                
                rs.next();
                id_usuario = rs.getLong(1);
                fname = rs.getString(4);
                lname = rs.getString(5);
                

                rs.close();
                con.close();
                if ((fname.compareToIgnoreCase(nombre) == 0) && (lname.compareToIgnoreCase(apellido) == 0))
                    return true;
            }
            catch(SQLException e)
            {
                return false;
            }
        }
        return false;
    }
    
    public void IngresarUsuarioSoloComoMinistro() throws SQLException, Exception
    {
        ResultSet rs = null;
        con = cnx.AbrirConexion();
       
        Tipo_Cargo();
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.ssp_IngresarUsuarioMinistro(?,?,?,?)}");
                cst.setString(1, nombre);
                cst.setString(2, apellido);
                cst.setString(3, getCargo());
                cst.registerOutParameter(4,java.sql.Types.CHAR);
                cst.execute();
                mensaje= cst.getString(4);
                cst.close();
                con.close();
            }
            catch(SQLException e)
            {
                
                error = e.getMessage();
            }
        }
    }
     
    public void BuscarxIdUsuario() throws Exception {
    ResultSet rs = null;
        String s = null;
        PreparedStatement gr=null;
        con=cnx.AbrirConexion(); 
        if(con!=null)
        {
            try{
                  cst=con.prepareCall("{CALL DBA.ssp_BuscarxId_Usuario(?)}");
          	  cst.setLong(1,id_usuario);
          	  rs=cst.executeQuery();
                  if(rs.next()){
                    setNombre(rs.getString(4));
                    setApellido(rs.getString(5));
                    setCargo(rs.getString(7));
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

    
    public void BuscarParroco() throws Exception {
    ResultSet rs = null;
        String s = null;
        PreparedStatement gr=null;
        con=cnx.AbrirConexion(); 
        if(con!=null)
        {
            try{
                  cst=con.prepareCall("{CALL DBA.ssp_BuscarParroco()}");
          	  rs=cst.executeQuery();
                  if(rs.next()){
                    setNombre(rs.getString(1));
                    setApellido(rs.getString(2));
                    setCargo(rs.getString(3));
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

    public LinkedList ListaDeMinistros() throws Exception
    {
        LinkedList ministroList = new LinkedList();
        Usuario ministro;
        String cna = "";
        
        ResultSet rs = null;
        String SQL = "SELECT id_usuario, nombre, apellido, cargo FROM Usuario WHERE cargo in ('P.', 'Mons.', 'Diac.') ORDER BY cargo ";
        rs = cnx.Consulta(SQL);
        while (rs.next())
        {
            ministro = new Usuario();
            ministro.id_usuario = rs.getLong(1);
            ministro.nombre = rs.getString(2);
            ministro.apellido = rs.getString(3);
            ministro.cargo = rs.getString(4);
            
            ministroList.add((Usuario) ministro);
        }
        return ministroList;
    }
    
    public boolean IngresarUsuario() throws SQLException, Exception
    {
        ResultSet rs = null;
        con = cnx.AbrirConexion();
       
        Tipo_Usuario();
        Tipo_UsuarioCargo();
        ciudad.id_ciudad = Long.parseLong(ciudad.nombre);
        provincia.id_provincia = Long.parseLong(provincia.nombre);
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.ssp_IngresarUsuario(?,?,?,?,?,?,?,?,?,?,?,?,?)}");
                cst.setString(1, clave);
                cst.setString(2, usuario);
                cst.setString(3, nombre);
                cst.setString(4, apellido);
                cst.setString(5, tipousuario);
                cst.setString(6, cargo);
                cst.setString(7, direcion);
                cst.setString(8, telefono1);
                cst.setString(9, telefono2);
                cst.setLong(10, ciudad.id_ciudad);
                cst.setLong(11, parroquia.id_parroquia);
                if (estado) cst.setInt(12, 1);
                else cst.setInt(12, 0);
                cst.registerOutParameter(13,java.sql.Types.CHAR);
                cst.execute();
                mensaje= cst.getString(13);
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
        else{
            setError("No se pudo conectar");
            return false;
        }
    }
    
    public boolean BuscarUsuario() throws Exception
    {
        ResultSet rs = null;
        con = cnx.AbrirConexion();
        
        Tipo_UsuarioCargo();
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.ssp_BuscarUsuario(?,?,?)}");
                cst.setString(1, nombre);
                cst.setString(2, apellido);
                cst.setString(3, getCargo());
                rs = cst.executeQuery();
                if(rs.next()){
                    id_usuario = rs.getLong(1);
                    setClave(rs.getString(2));
                    setUsuario(rs.getString(3));
                    setNombre(rs.getString(4));
                    setApellido(rs.getString(5));
                    setTipousuario(rs.getString(6));
                    setCargo(rs.getString(7));
                    setdireccion(rs.getString(8));
                    settelefono1(rs.getString(9));
                    settelefono2(rs.getString(10));
                    ciudad.setId_ciudad(rs.getLong(11));
                    ciudad.BuscarxIdCiudad();
                    provincia.id_provincia = ciudad.id_provincialn;
                    provincia.BuscarProvincia();
                    
                    parroquia.setId_parroquia(rs.getLong(12));
                    parroquia.BuscarxIdParroquia();
                    estado= rs.getBoolean(13);
                    rs.close();
                    con.close();
                    return true;
                }
                else{
                    setError("No se encuentra el Usuario");
                    return false;
                }
            }
            catch(SQLException e)
            {
                setError(e.getMessage());
                return false;
            }
        }
        setError("No se pudo ingresar a la Base de Datos");
        return false;
    }
    
    public boolean ModificarUsuario() throws SQLException, Exception
    {
        ResultSet rs = null;
        con = cnx.AbrirConexion();
       
        Tipo_Usuario();
        Tipo_UsuarioCargo();
        
        ciudad.id_ciudad = Long.parseLong(ciudad.nombre);
        provincia.id_provincia = Long.parseLong(provincia.nombre);
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.ssp_ModificarUsuario(?,?,?,?,?,?,?,?,?,?,?,?)}");
                cst.setString(1, clave);
                cst.setString(2, usuario);
                cst.setString(3, nombre);
                cst.setString(4, apellido);
                cst.setString(5, tipousuario);
                cst.setString(6, cargo);
                cst.setString(7, direcion);
                cst.setString(8, telefono1);
                cst.setString(9, telefono2);
                cst.setLong(10, ciudad.id_ciudad);
                cst.setLong(11, parroquia.id_parroquia);
                cst.registerOutParameter(12,java.sql.Types.CHAR);
                cst.execute();
                mensaje= cst.getString(12);
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
        else{
            setError("No se pudo conectar");
            return false;
        }
    }
    
     public boolean Anular_Usuario() throws SQLException, Exception
    {
        ResultSet rs = null;
            
        con = cnx.AbrirConexion();
        
        if (con != null)
        {
            try
            {
                cst = con.prepareCall("{CALL DBA.ssp_AnularUsuario(?,?)}");
                cst.setLong(1, getId_usuario());
                cst.registerOutParameter(2,java.sql.Types.CHAR);
                cst.execute();
                mensaje= cst.getString(2);
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
        error = "No se pudo conectar";
        return false;
    }
     
}