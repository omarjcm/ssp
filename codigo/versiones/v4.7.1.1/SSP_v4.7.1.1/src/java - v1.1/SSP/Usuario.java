/*
 * 
 * Archivo:	Usuario.java
 * Autor:	CoDeSoftware 
 * Licencia:	GNU/GPL
 * Fecha de Creación: 01/06/2007
 *
 * ==============================================================
 *
 * Historial de Modificaciones:
 *
 * Versión	Responsable         Fecha     Cambio     Razón de Cambio
 *   1.0	CoDeSOFTWARE        05/06/07  
 *   4.6        Stephanie Flores   15/07/07  IngresarUsuario
 * ==============================================================
 *
 */

package SSP;

import java.lang.*;
import java.sql.*;
import java.util.LinkedList;
/**
 * Clase usada para manejar los datos del usuario.
 * <p>Referencia DDS:
 * <p>Invariantes: contrasenia
 * @author	CoDeSOFTWARE
 * @version	1.0
 */
public class Usuario {
   /*ATRIBUTOS DE LA CLASE*/
    /**
     * identifica los datos del usuario
     *
     * <p>requisito: RD-MA.1
     */
    private long id_usuario;
    /**
     * nombre del usuario
     */
    private String nombre;
    /**
     * apellido del usuario
     */
    private String apellido;
    /**
     * dirección del usuario
     */
    private String direccion;
    /**
     * sexo del usuario
     */
     private String sexo;
    /**
     * lugar de nacimiento del usuario
     */
     private String lugar_nacimiento;
     /**
     * tipo de usuario(administrador, secretario, contador)
     */
    private String tipo;
     /**
     * cargo del usuario(Srta., Lcda., Sra. entre otros)
     */
    private String cargo;
    /**
     * teléfono del usuario
     */
    private String telefono1;
    /**
     * teléfono del usuario
     */
    private String telefono2; 
    /**
     * usuario de ingreso al sistema
     */
    public String usuario;
    /**
     * contraseña de ingreso al sistema
     */
    public String contrasenia;
    /**
     * estado del usuario 0 si esta inactivo y 1 si es activo
     */
    private boolean estado;
    /**
     * mensaje de error que se produjo en la base.
     */
    private String mensaje_error;
    /**
     * Muestra el objeto de la conexionDB.
     */
    public ConexionDB cnx;
    /**
     * Muestra el objeto Connection.
     */
    public Connection con;
    /**
     * Muestra el objeto CallableStatement.
     */
    public CallableStatement cst;
    /**
     * Muestra el objeto ResultSet.
     */
    public ResultSet rs;
    
    /*CONSTRUCTORES*/
    /**
     * Constructor que crea una instancia Usuario.
     * <p>requisito: RD-MA.1.
     */
    
    public Usuario() {
        cnx= new ConexionDB();
        estado= true;
    }
    
    /**
     * Setea el identificador del usuario.
     * @param id_usuario
     */
    public void setIdUsuario(long id_usuario){
        this.id_usuario=id_usuario;
    }
    
    /**
     * Inicializa el nombre del usuario.
     * @param nombre 
     */
    public void setNombre(String nombre){
        this.nombre=nombre;
    }
    
    /**
     * Inicializa el apellido del usuario.
     */
    public void setApellido(String apellido){
        this.apellido=apellido;
    }
    
    /**
     * Inicializa la dirección del usuario.
     */
    public void setDireccion(String direccion){
        this.direccion=direccion;
    }
    
    /**
     * Inicializa el lugar de nacimiento del usuario.
     */
    public void setSexo(String sexo){
        this.sexo=sexo;
    }
    
    /**
     * Inicializa el lugar de nacimiento del usuario.
     *@param lugar
     */
    public void setLugar_nacimiento(String lugar){
        this.lugar_nacimiento=lugar;
    }
    
    /**
     * Inicializa el tipo del usuario.
     *@param tipo
     */
    public void setTipo(String tipo){
        this.tipo=tipo;
    }
    
    /**
     * Inicializa el cargo del usuario.
     * @param cargo
     */
    public void setCargo(String cargo){
        this.cargo=cargo;
    }
    
    /**
     * Inicializa el telefono del usuario.
     * @param telefono1
     */
    public void setTelefono1(String telefono1){
        this.telefono1=telefono1;
    }
    
    /**
     * Inicializa el telefono del usuario.
     * @param telefono2
     */
    public void setTelefono2(String telefono2){
        this.telefono2=telefono2;
    }
    
    /**
     * Inicializa el usuario.
     * @param usuario
     */
    public void setUsuario(String usuario){
        this.usuario=usuario;
    }
    
    /**
     * Inicializa el contraseña del usuario.
     * @param contrasenia.
     */
    public void setContrasenia(String contrasenia){
        this.contrasenia=contrasenia;
    }
    
    /**
     * Inicializa el estado del usuario.
     * @param estado
     */
    public void setEstado(boolean estado){
        this.estado=estado;
    }

    /**
     * Inicializa el mensaje_error.
     * @param mensaje_error
     */
    public void setMensaje_error(String mensaje_error) {
        this.mensaje_error = mensaje_error;
    }


    /**
     * Retorna el identificador del usuario.
     * @return String id_usuario
     */
     public long getIdUsuario() {
        return id_usuario;
    }
     
    /**
     * Retorna el nombre del usuario.
     * @return String nombre
     */
     public String getNombre() {
        return nombre;
    }

    /**
     * Retorna el apellido del usuario.
     * @return String apellido
     */
    public String getApellido() {
        return apellido;
    }

    /**
     * Retorna el cargo del usuario.
     * @return String cargo
     */
    public String getCargo() {
        return cargo;
    }

    /**
     * Retorna la contraseña del usuario.
     * @return String contrasenia
     */
    public String getContrasenia() {
        return contrasenia;
    }

    /**
     * Retorna la dirección del usuario
     * @return String direccion
     */
    public String getDireccion() {
        return direccion;
    }

    /**
     * Retorna el sexo del usuario.
     * @return String sexo
     */
    public String getSexo() {
        return sexo;
    }
    
    /**
     * Retorna el lugar de nacimiento del usuario.
     * @return String lugar_nacimiento
     */
    public String getLugar_nacimiento() {
        return lugar_nacimiento;
    }
  
    /**
     * Retorna el tipo del usuario.
     * @return String  tipo
     */
    public String getTipo() {
        return tipo;
    }

    /**
     * Retorna el usuario.
     * @return String usuario
     */
    public String getUsuario() {
        return usuario;
    }

    /**
     * Retorna el telefono del usuario.
     * @return String telefono1
     */
    public String getTelefono1() {
        return telefono1;
    }

    /**
     * Retorna el telefono del usuario.
     * @return String telefono2
     */
    public String getTelefono2() {
        return telefono2;
    }
    
    /**
     * Retorna el estado del usuario.
     * @return boolean estado
     */
    public boolean getEstado() {
        return estado;
    }

    /**
     * Retorna el mensaje_error.
     * @return String mensaje_error
     */
    public String getMensaje_error() {
        return mensaje_error;
    }
    
    /**
    * Retorna si es administrador
    * <p>Referencia DDS:
    * <p>Invariantes:       
    * <p>Precondiciones:    
    * <p>Poscondiciones:  
    * @return boolean
    */
    public boolean esAdministrador()
    {
        if ( tipo.compareToIgnoreCase("Administrador") == 0 ) return true;
        else  return false;
    }
     /**
    * Retorna si es secretario
    * <p>Referencia DDS:
    * <p>Invariantes:       
    * <p>Precondiciones:    
    * <p>Poscondiciones:  
    * @return boolean
    */
    public boolean esSecretario()
    {
        if ( tipo.compareToIgnoreCase("Secretario") == 0 ) return true;
        else  return false;
    }

    /**
    * Retorna si es contador
    * <p>Referencia DDS:
    * <p>Invariantes:       
    * <p>Precondiciones:    
    * <p>Poscondiciones:  
    * @return boolean
    */
    public boolean esContador()
    {
        if ( tipo.compareToIgnoreCase("Contador") == 0 ) return true;
        
        return false;
    }
    
    /**
    * Setea el tipo de sexo del usuario
    * <p>Referencia DDS:
    * <p>Invariantes:       
    * <p>Precondiciones:    
    * <p>Poscondiciones:  sexo
    * @return void
    */
    public void tipo_Sexo(){
        if(sexo.compareTo("0")==0) sexo="femenino";
        if(sexo.compareTo("1")==0) sexo="masculino";
     }

    /**
    * Setea el tipo del usuario
    * <p>Referencia DDS:
    * <p>Invariantes:       
    * <p>Precondiciones:    
    * <p>Poscondiciones:  tipo
    * @return void
    */
    public void tipo_Usuario(){
        if(tipo.compareTo("0")==0) tipo="Administrador";
        if(tipo.compareTo("1")==0) tipo="Secretario";
        if(tipo.compareTo("2")==0) tipo="Contador";
     }

    /**
    * Setea el cargo del usuario
    * <p>Referencia DDS:
    * <p>Invariantes:       
    * <p>Precondiciones:    
    * <p>Poscondiciones:  cargo
    * @return void
    */
    public void tipo_UsuarioCargo(){
        if (cargo.compareTo("0") == 0) cargo = "Sra.";
        if (cargo.compareTo("1") == 0) cargo = "Sr.";
        if (cargo.compareTo("2") == 0) cargo = "Hno.";
        if (cargo.compareTo("3") == 0) cargo = "Hna.";
        if (cargo.compareTo("4") == 0) cargo = "Srta.";
     }

    /**
    * Valida el usuario
    * <p>Referencia DDS:
    * <p>Invariantes:  usuario y contrasenia
    * <p>Precondiciones:
    * <p>Poscondiciones:
    * @param usuario	 usuario
    * @param contasenioa contrasenio del usuario
    * @param tipo	 tipo de usuario
    * @return true || false	si es correcto el usuario
    */
    public boolean validarUsuario(String usuario, String contrasenia, String tipo)throws Exception{
        rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_tipo_usuario(?,?,?)}");
                cst.setString(1,usuario);
                cst.setString(2,contrasenia);
                cst.setString(3,tipo);
                rs=cst.executeQuery();
                if(rs.next()){
                    setIdUsuario(rs.getLong(1));
                    setNombre(rs.getString(2));
                    setApellido(rs.getString(3));
                    setDireccion(rs.getString(4));
                    setTipo(rs.getString(5));
                    setCargo(rs.getString(6));
                    setTelefono1(rs.getString(7));
                    setTelefono2(rs.getString(8));
                    setUsuario(rs.getString(9));
                    setContrasenia(rs.getString(10));
                    setEstado(rs.getBoolean(11));
                    con.close();
                    return true;
                }
                else con.close();
                return false;
            }
            catch(SQLException e){
                setMensaje_error(e.getMessage());
                con.close();
                return false;
            }
        }
        else{
            return false;
        }
    }
    
    /**
    * Ingresa usuario
    * <p>Referencia DDS:
    * <p>Invariantes:  usuario y contrasenia
    * <p>Precondiciones:
    * <p>Poscondiciones:
    * @param id_usuario_	identificador del usuario de sesión
    * @return true || false	Si ingresa o no ingresa el usuario
    */
    public boolean IngresarUsuario(long id_usuario_)throws Exception{
        rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
       
        tipo_Usuario();
        tipo_UsuarioCargo();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp.ssp_insertar_usuario(?,?,?,?,?,?,?,?,?,?,?,?)}");
                cst.setString(1,getNombre());
                cst.setString(2,getApellido());
                cst.setString(3,getDireccion());
                cst.setString(4,getTipo());
                cst.setString(5,getCargo());
                cst.setString(6,getTelefono1());
                cst.setString(7,getTelefono2());
                cst.setString(8,getUsuario());
                cst.setString(9,getContrasenia());
                cst.setBoolean(10,true);
                cst.setLong(11,id_usuario_);
                cst.registerOutParameter(12,java.sql.Types.CHAR);
                cst.execute();
                setMensaje_error(cst.getString(12));
                con.close();
                return true;
            }
            catch(SQLException e){
                setMensaje_error(e.getMessage());
                con.close();
                return false;
            }
        }
        else{
            return false;
        }
    }
    
  /**
  * Genera la lista de los usuarios
  * <p>Referencia DDS:
  * <p>Invariantes:
  * <p>Precondiciones: Ingresar usuario
  * <p>Poscondiciones:
  * @return 			LinkedList
  */
     public LinkedList listaDeUsuario() throws Exception {
        LinkedList usuarioList = new LinkedList();
        Usuario usuario;
       
        ResultSet rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_buscar_usuario(?,?)}");
                cst.setString(1,getNombre());
                cst.setString(2,getApellido());               
                rs=cst.executeQuery();
                while (rs.next())
                {
                    usuario = new Usuario();
                    usuario.id_usuario = rs.getLong(1);
                    usuario.nombre = rs.getString(2);
                    usuario.apellido = rs.getString(3);
                    usuarioList.add((Usuario) usuario);
                }
                rs.close();
                return usuarioList;   
                }
            catch(SQLException e){
                setMensaje_error(e.getMessage());
                con.close();
               }
            }
        return usuarioList;
    }
   
  /**
  * Consulta el usuario deseado
  *
  * <p>Referencia DDS:
  * <p>Invariantes:    tipo
  * <p>Precondiciones: Ingresar el usuario
  * <p>Poscondiciones:
  * @param id		identificador del acta
  * @return 		void
  */
    public void consultarUsuario(long id_u_) throws Exception {       
        ResultSet rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_buscar_por_id_usuario(?)}");
                cst.setLong(1,id_u_);                
                rs=cst.executeQuery();
                while (rs.next())
                {                    
                    this.setIdUsuario(rs.getLong(1));
                    this.setNombre(rs.getString(2));
                    this.setApellido(rs.getString(3));
                    this.setDireccion(rs.getString(4));
                    this.setTipo(rs.getString(5));
                    this.setCargo(rs.getString(6));
                    this.setTelefono1(rs.getString(7));
                    this.setTelefono2(rs.getString(8));
                    this.setUsuario(rs.getString(9));
                    this.setContrasenia(rs.getString(10));
                    this.setEstado(rs.getBoolean(11));                                 
                }
                rs.close();               
                }
            catch(SQLException e){
                setMensaje_error(e.getMessage());
                con.close();
               }
            }        
    }
    
    /**
    * Anular usuario
    * <p>Referencia DDS:
    * <p>Invariantes:    id_
    * <p>Precondiciones: estado del usuario es activo (true)
    * <p>Poscondiciones: estado del usuario es inactivo (false)
    * @return true || false	si anula o no al usuario
    */
    public boolean anularUsuario(long id_)throws SQLException{
        rs = null;
        
        if(cnx.conectar()) con= cnx.getConexion();
        
        if (getEstado())
        {
            if(con!=null){
                try{                                
                    cst=con.prepareCall("{CALL ssp_anular_usuario(?)}");
                    cst.setLong(1,id_);                                   
                    cst.executeQuery();

                    con.close();
                    return true;
                }
                catch(SQLException e){
                    setMensaje_error(e.getLocalizedMessage());                
                    con.close();
                    return false;
                }
            }
            else
                return false;
        }
        else
            return false;
    }
    
    /**
    * Modifica o actualiza los datos del usuario
    * <p>Referencia DDS:
    * <p>Invariantes:       contrasenia y usuario
    * <p>Precondiciones:    Ingresar usuario
    * <p>Poscondiciones: 
    * @param id_usuario_        identificador del Usuario en sesión
    * @return true || false	Si actualiza o no los datos del usuario
    */
    public boolean modificarUsuario(long id_usuario_)throws SQLException{
        rs = null;        
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{                                
                cst=con.prepareCall("{CALL ssp_modificar_usuario(?,?,?,?,?,?,?,?,?,?,?)}");
                cst.setLong(1,getIdUsuario());
                cst.setString(2,getNombre());
                cst.setString(3,getApellido());
                cst.setString(4,getDireccion());
                tipo_Usuario();
                cst.setString(5,getTipo());
                tipo_UsuarioCargo();
                cst.setString(6,getCargo());
                cst.setString(7,getTelefono1());
                cst.setString(8,getTelefono2());                                
                cst.setString(9,getUsuario());
                cst.setString(10,getContrasenia());
                cst.setBoolean(11,getEstado());     
               
                cst.execute();                
                con.close();
                return true;                                
            }
            catch(SQLException e){
                setMensaje_error(e.getLocalizedMessage());                
                con.close();
                return false;
            }
        }
        else{
            return false;
        }
    }    
}