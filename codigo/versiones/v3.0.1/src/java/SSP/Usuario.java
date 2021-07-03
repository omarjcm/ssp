/*
 * Usuario.java
 *
 * Created on 1 de junio de 2007, 10:59 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package SSP;

import java.lang.*;
import java.sql.*;
/**
 * Clase en la cual se maneja los datos del Usuario
 * @author CoDeSOFTWARE
 * @version 1.0
 */
public class Usuario {
    
    /**
     * identifica al usuario
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
    public ConexionDB cnx;
    public Connection con;
    public CallableStatement cst;
    public ResultSet rs;
    /**
     * Contructor que crea un objeto Usuario.
     */
    public Usuario() {
        cnx= new ConexionDB();
        estado= true;
    }
    
    /********************************SET**************************/
    public void setIdUsuario(long id_usuario){
        this.id_usuario=id_usuario;
    }
    
    /**
     * Inicializa el nombre.
     * @param nombre 
     */
    public void setNombre(String nombre){
        this.nombre=nombre;
    }
    
    /**
     * Inicializa el apellido.
     */
    public void setApellido(String apellido){
        this.apellido=apellido;
    }
    
    /**
     * Inicializa la dirección.
     */
    public void setDireccion(String direccion){
        this.direccion=direccion;
    }        
    
    /**
     * Inicializa el tipo.
     */
    public void setTipo(String tipo){
        this.tipo=tipo;
    }
    
    /**
     * Inicializa el cargo.
     */
    public void setCargo(String cargo){
        this.cargo=cargo;
    }
    
    /**
     * Inicializa el telefono.
     */
    public void setTelefono1(String telefono1){
        this.telefono1=telefono1;
    }
    
    /**
     * Inicializa el telefono.
     */
    public void setTelefono2(String telefono2){
        this.telefono2=telefono2;
    }
    
    /**
     * Inicializa el usuario.
     */
    public void setUsuario(String usuario){
        this.usuario=usuario;
    }
    
    /**
     * Inicializa el contraseña.
     */
    public void setContrasenia(String contrasenia){
        this.contrasenia=contrasenia;
    }
    
    /**
     * Inicializa el estado.
     */
    public void setEstado(boolean estado){
        this.estado=estado;
    }

    /**
     * Inicializa el mensaje_error.
     */
    public void setMensaje_error(String mensaje_error) {
        this.mensaje_error = mensaje_error;
    }


    /*********************GET**************************************/
     public long getIdUsuario() {
        return id_usuario;
    }
     
    /**
     * Retorna el nombre del usuario.
     * @return String
     */
     public String getNombre() {
        return nombre;
    }

    /**
     * Retorna el apellido del usuario.
     * @return String
     */
    public String getApellido() {
        return apellido;
    }

    /**
     * Retorna el cargo.
     * @return String
     */
    public String getCargo() {
        return cargo;
    }

    /**
     * Retorna la contraseña.
     * @return String
     */
    public String getContrasenia() {
        return contrasenia;
    }

    /**
     * Retorna la dirección.
     * @return String
     */
    public String getDireccion() {
        return direccion;
    }
      
    /**
     * Retorna el tipo.
     * @return String
     */
    public String getTipo() {
        return tipo;
    }

    /**
     * Retorna el usuario.
     * @return String
     */
    public String getUsuario() {
        return usuario;
    }

    /**
     * Retorna el telefono.
     * @return Sting
     */
    public String getTelefono1() {
        return telefono1;
    }

    /**
     * Retorna el telefono.
     * @return String
     */
    public String getTelefono2() {
        return telefono2;
    }
    
    /**
     * Retorna el estado.
     * @return boolean
     */
    public boolean getEstado() {
        return estado;
    }

    /**
     * Retorna el mensaje_error.
     * @return String
     */
    public String getMensaje_error() {
        return mensaje_error;
    }
    
    public boolean esAdministrador()
    {
        if ( tipo.compareToIgnoreCase("Administrador") == 0 )
            return true;
        
        return false;
    }
    
    public boolean esSecretario()
    {
        if ( tipo.compareToIgnoreCase("Secretario") == 0 )
            return true;
        
        return false;
    }

    public boolean esContador()
    {
        if ( tipo.compareToIgnoreCase("Contador") == 0 )
            return true;
        
        return false;
    }
    
    /*public void tipo_Sexo(){
        if(sexo.compareTo("0")==0) sexo="femenino";
        if(sexo.compareTo("1")==0) sexo="masculino";
     }*/

    public void tipo_Usuario(){
        if(tipo.compareTo("0")==0) tipo="Administrador";
        if(tipo.compareTo("1")==0) tipo="Secretario";
        if(tipo.compareTo("2")==0) tipo="Contador";
     }

    public void tipo_UsuarioCargo(){
        if (cargo.compareTo("0") == 0) cargo = "Sra.";
        if (cargo.compareTo("1") == 0) cargo = "Sr.";
        if (cargo.compareTo("2") == 0) cargo = "Hno.";
        if (cargo.compareTo("3") == 0) cargo = "Hna.";
        if (cargo.compareTo("4") == 0) cargo = "Srta.";
     }


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
                    setEstado(rs.getBoolean(9));
                    con.close();
                    return true;
                }
                else con.close();   return false;
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
    
    public boolean IngresarUsuario(long id_usuario_)throws Exception{
        rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
       
        //tipo_Sexo();
        tipo_Usuario();
        tipo_UsuarioCargo();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_insertar_usuario(?,?,?,?,?,?,?,?,?,?,?)}");
                cst.setString(1,getNombre());
                cst.setString(2,getApellido());
                cst.setString(3,getDireccion());                
                cst.setString(4,getTipo());
                cst.setString(5,getCargo());
                cst.setString(6,getTelefono1());
                cst.setString(7,getTelefono2());
                cst.setString(8,getUsuario());
                cst.setString(9,getContrasenia());
                //cst.setBoolean(12,getEstado());
                cst.setLong(10,id_usuario_);
                cst.registerOutParameter(11,java.sql.Types.CHAR);
                cst.execute();
                setMensaje_error(cst.getString(11));
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
}