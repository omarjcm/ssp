/*
 * 
 * Archivo:	Bautizar.java
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
 *   4.6        Stephanie Flores    15/07/07  Ingresar Solicitante
 * ==============================================================
 *
 */
package SSP;

import java.lang.*;
import java.util.*;
import java.util.Date;
import java.sql.*;

/**
 * Clase usada para manejar los datos del solicitante.
 * <p>Referencia DDS:
 * <p>Invariantes: fecha_bautizo
 * @author	CoDeSOFTWARE
 * @version	1.0
 */

public class Solicitante {
    /*ATRIBUTOS DE LA CLASE*/
    /**
     * identifica los datos del solicitante
     *
     * <p>requisito: RD-MD.1.5
     */
    private long id_solicitante;
    /**
     * nombre del Solicitante
     */
    private String nombre;
    /**
     * apellido del Solicitante
     */
    private String apellido;
    /**
     * dirección del Solicitante
     */
    private String direccion;
    /**
     * tipo de Solicitante(bautizado, confirmado, comulgado, esposo, esposa, madrina, padrino, madre, padre)
     */
    private String tipo;
    /**
     * telefono del solicitante
     */
    private String telefono;
    /**
     * profesión del Solicitante
     */
    private String profesion;
    /**
     * edad del Solicitante
     */
    private int edad;
    /**
     * lugar de nacimiento del Solictante
     */
    private String lugar_nacimiento;
    /**
     * fecha de nacimiento del Solicitante
     */
    private Date fecha_nacimiento;
    /**
     * sexo del Solicitante es 1 femenino y 0 masculino.
     */
    private boolean sexo;
    /**
     * identifica si el Solicitante es hijo legitimo.
     */
    private boolean legitimo;
    /**
     * Identifica si un Solicitante tiene algún impedimento para casarse
     */
    private boolean impedimento;
    
  /**************************ATRIBUTOS DE CONEXION*******************************/  
    /**
     * Muestra el mensaje de error de la conexion.
     */
    private String mensaje_error;  
    /**
     * Muestra el objeto de la ConexionDB.
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
    /**
     * Muestra el dato del identificador del solicitante.
     */
    public String id_soli;    

   /*CONSTRUCTORES*/
    /**
     * Constructor que crea una instancia Solicitante.
     * <p>requisito: RD-MD.1.5
     */
    public Solicitante() {
        cnx= new ConexionDB();
    }
 
   /**********************SET****************************/    
    /**
     * Inicializa el id del Solicitante
     */
    public void setIdSolicitante(long id_solicitante) {
        this.id_solicitante = id_solicitante;
    }
    
    /**
     * Inicializa el nombre
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * Inicializa el apellido
     */
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    /**
     * Inicializa la dirección
     */
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    /**
     * Inicializa la edad
     */
    public void setEdad(int edad) {
        this.edad = edad;
    }

    /**
     * Inicializa la fecha de nacimiento.
     */
    public void setFechaNacimiento(Date fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    /**
     * Inicializa el impedimento.
     */
    public void setImpedimento(boolean impedimento) {
        this.impedimento = impedimento;
    }

    /**
     * Inicializa el lugar de nacimiento
     */
    public void setLugarNacimiento(String lugar_nacimiento) {
        this.lugar_nacimiento = lugar_nacimiento;
    }

    /**
     * Inicializa el sexo.
     */
    public void setSexo(boolean sexo) {
        this.sexo = sexo;
    }

    /**
     * Inicializa la profesión.
     */
    public void setProfesion(String profesion) {
        this.profesion = profesion;
    }

    /**
     * Inicializa el teléfono.
     */
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    /**
     * Inicializa el tipo.
     */
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setMensaje_error(String mensaje){
        this.mensaje_error = mensaje;
    }

    /**********************GET****************************/    
    /**
     * Retorna 1 si es legitimo y 0 si no lo es.
     * @return boolean
     */
    public void getLegitimo(boolean legitimo) {
        this.legitimo = legitimo;
    }

    /**
     * Retorna el id del Solicitante.
     * @return long
     */
    public long getIdSolicitante() {
        return id_solicitante;
    }
    
    public String getIdSolici() {
        return String.valueOf(id_solicitante);
    }
    
    public void setIdSolici(String id_soli) {
        this.id_solicitante=Long.parseLong(id_soli);
    }
    /**
     * Retorna el nombre del solicitante.
     * @return String nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * Retorna el apellido del solicitante.
     * @return String apellido
     */
    public String getApellido() {
        return apellido;
    }

    /**
     * Retorna la edad del solicitante.
     * @return int edad
     */
    public int getEdad() {
        return edad;
    }

    /**
     * Retorna la dirección del solicitante.
     * @return String direccion
     */
    public String getDireccion() {
        return direccion;
    }

    /**
     * Retorna la fecha de Nacimiento del solicitante.
     * @return Date fecha_nacimiento
     */
    public Date getFechaNacimiento() {
        return fecha_nacimiento;
    }

    /**
     * Retorna el telefono del solicitante.
     * @return String telefono
     */
    public String getTelefono() {
        return telefono;
    }

    /**
     * Retorna la profesión del solicitante.
     * @return String profesion
     */
    public String getProfesion() {
        return profesion;
    }

    /**
     * Retorna el lugar de nacimiento del solicitante.
     * @return String lugar_nacimiento
     */
    public String getLugarNacimiento() {
        return lugar_nacimiento;
    }

    /**
     * Retorna el tipo del solicitante.
     * @return String tipo
     */
    public String getTipo() {
        return tipo;
    }

    /**
     * Retorna 0 o 1 si tiene impedimento.
     * @return boolean impedimento
     */
    public boolean getImpedimento() {
        return impedimento;
    }

    /**
     * Retorna 0 si no es legitimo o 1 si es legitimo.
     * @return boolean
     */
    public boolean getLegitimo() {
        return legitimo;
    }

    /**
     * Retorna el sexo del solicitante.
     * @return boolean sexo
     */
    public boolean getSexo() {
        return sexo;
    }
    
    /**
     * obtiene el mensaje de error.
     * @return mensaje_error
     */
    public String getMensaje_error(){
        return mensaje_error;
    }
  
  /**
  * Consulta solicitante por identificador
  *
  * <p>Referencia DDS:
  * <p>Invariantes:    tipo
  * <p>Precondiciones: Ingresar solicitante
  * <p>Poscondiciones:
  * @return 		void
  */
    public void consultarSolicitanteXId()throws SQLException{
        rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_buscar_X_idSolicitante(?)}");
                cst.setLong(1,getIdSolicitante());
                rs=cst.executeQuery();
                while(rs.next()){
                    setNombre(rs.getString(2));
                    setApellido(rs.getString(3));
                    setDireccion(rs.getString(4));
                    setSexo(rs.getBoolean(8));
                }
                con.close();
                rs.close();
            }
            catch(SQLException e){
                setMensaje_error(e.getMessage());
                con.close();
            }
        }
        else{
            setMensaje_error("No se pudo conectar");
        }
    }
  
  /**
  * Genera la lista de los solicitantes
  * <p>Referencia DDS:
  * <p>Invariantes:
  * <p>Precondiciones: Ingresar solicitante
  * <p>Poscondiciones:
  * @return 			LinkedList
  */
    public LinkedList listaDeSolicitantes() throws Exception
    {
        LinkedList solicitanteList = new LinkedList();
        Solicitante solicitante;
       
        ResultSet rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_buscar_solicitante(?,?,?)}");
                cst.setString(1,getNombre());
                cst.setString(2,getApellido());
                cst.setString(3,getTipo());
                rs=cst.executeQuery();
                while (rs.next())
                {
                    solicitante = new Solicitante();
                    solicitante.id_solicitante = rs.getLong(1);
                    solicitante.nombre = rs.getString(2);
                    solicitante.apellido = rs.getString(3);
                    solicitanteList .add((Solicitante) solicitante);
                }
                rs.close();
                return solicitanteList;   
                }
            catch(SQLException e){
                setMensaje_error(e.getMessage());
                con.close();
               }
            }
        return solicitanteList;
    }
}