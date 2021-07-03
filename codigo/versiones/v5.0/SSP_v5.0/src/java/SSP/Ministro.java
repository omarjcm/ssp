/*
 * 
 * Archivo:	Ministro.java
 * Autor:	CoDeSoftware 
 * Licencia:	GNU/GPL
 * Fecha de Creación: 02/06/2007
 *
 * ==============================================================
 *
 * Historial de Modificaciones:
 *
 * Versión	Responsable         Fecha     Cambio     Razón de Cambio
 *   1.0	CoDeSOFTWARE        05/06/07  
 *   4.6        Stephanie Flores    15/07/07  Ingresar Ministro
 * ==============================================================
 *
 */
package SSP;

import java.sql.*;
import java.lang.*;
import java.util.LinkedList;
/**
 * Clase usada para datos del ministro.
 * <p>Referencia DDS:
 * <p>Invariantes: dignidad
 * @author	CoDeSOFTWARE
 * @version	1.0
 */

public class Ministro {
    /*ATRIBUTOS DE LA CLASE*/
    /**
     * identifica los datos del ministro
     *
     * <p>requisito: RD-MD.1.8
     */
    private long id_ministro;
    /**
     * Nombre del ministro
     */
    private String nombre;
    /**
     * Apellido del ministro
     */
    private String apellido;
    /**
     * Dignidad del ministro
     */
    private String dignidad;
    /**
     * Para diferenciar el cargo del ministro
     */
    private boolean es_parroco;
    /**
     * Para saber si es el ministro principal de la parroquia
     */
    private boolean es_parroco_principal;
    
    /**************************ATRIBUTOS DE CONEXION*******************************/
    /**
     * Muestra el mensaje de erro.
     */
    private String mensaje_error;
    /**
     * Muestra los datos del objeto ConexionDB.
     */
    public ConexionDB cnx;
    /**
     * Muestra los datos del objeto Connection.
     */
    public Connection con;
    /**
     * Muestra los datos del objeto CallableStatement.
     */
    public CallableStatement cst;
    /**
     * Muestra los datos del objeto ResultSet.
     */
    public ResultSet rs;
    
    /*CONSTRUCTORES*/
    /**
     * Constructor que crea una instancia Ministro.
     * <p>requisito: RD-MD.1.8
     */
    
    public Ministro() {
        cnx= new ConexionDB();
    }

    /**
     * Setea el identificador del ministro.
     * @param long id .
     */
    public void setId_ministro(long id) {
        this.id_ministro = id;
    }
    
    /**
     * Setea el nombre del ministro.
     * @param nombre.
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * Setea el apellido del ministro.
     * @param apellido.
     */
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    
    /**
     * Setea la dignidad del ministro.
     * @param dignidad.
     */
    public void setDignidad(String dignidad) {
        this.dignidad = dignidad;
    }

    /**
     * Setea si es parroco.
     * @param es_parroco.
     */
    public void setEsParroco(boolean es_parroco) {
        this.es_parroco = es_parroco;
    }

    /**
     * Setea si es parroco principal.
     * @param es_parroco_principal.
     */
    public void setEsParrocoPrincipal(boolean es_parroco_principal) {
        this.es_parroco_principal = es_parroco_principal;
    }

    /**
     * Envia el mensaje de error.
     * @param mensaje.
     */
    public void setMensaje_error(String mensaje){
        this.mensaje_error = mensaje;
    }

    /**********************GET****************************/
    
    /**
     * Obtiene el identificador de ministro.
     * @return id_ministro.
     */
    public long getId_ministro() {
        return id_ministro;
    }

    /**
     * Obtiene el nombre de ministro.
     * @return nombre.
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * Obtiene el apellido de ministro.
     * @return apellido.
     */
    public String getApellido() {
        return apellido;
    }

    /**
     * Obtiene la dignidad de ministro.
     * @return dignidad.
     */
    public String getDignidad() {
        return dignidad;
    }
    
    /**
     * Obtiene si el ministro es parroco.
     * @return es_parroco.
     */
    public boolean getEsParroco() {
        return es_parroco;
    }
    
    /**
     * Obtiene si el ministro es parroco principal
     * @return es_parroco_principal.
     */
    public boolean getEsParrocoPrincipal() {
        return es_parroco_principal;
    }
    
    /**
     * Obtiene el mensaje de error.
     * @return mensaje_error.
     */
    public String getMensaje_error(){
        return mensaje_error;
    }
    
  /**
  * Asigna la dignidad del ministro 
  * 
  * <p>Referencia DDS:
  * <p>Invariantes:
  * <p>Precondiciones: 
  * <p>Poscondiciones:
  * @return 			void
  */
    public void asignarDignidad(){
        if(getDignidad().compareToIgnoreCase("0")==0){setDignidad("P.");}
        if(getDignidad().compareToIgnoreCase("1")==0){setDignidad("Mons.");}
        if(getDignidad().compareToIgnoreCase("2")==0){setDignidad("Díac.");}
    }
    
    /**
    * Ingresa el ministro
    * <p>Referencia DDS:
    * <p>Invariantes:  dignidad del ministro
    * <p>Precondiciones:
    * <p>Poscondiciones:
    * @return true || false	Si ingresa o no ingresa el ministro
    */
    public boolean ingresarMinistro() throws Exception{
        rs=null;
        if(cnx.conectar()) con= cnx.getConexion();
        
        asignarDignidad();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_ingresar_ministro(?,?,?,?,?,?)}");
                cst.setString(1,getNombre());
                cst.setString(2,getApellido());
                cst.setString(3,getDignidad());
                cst.setBoolean(4,false);
                cst.setBoolean(5,false);
                cst.registerOutParameter(6,java.sql.Types.CHAR);
                cst.execute();
                setMensaje_error(cst.getString(6));
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
  * Genera la lista de los ministros de la parroquia
  * <p>Referencia DDS:
  * <p>Invariantes: 
  * <p>Precondiciones: Ingresar ministro
  * <p>Poscondiciones:
  * @return 			LinkedList
  */
    public LinkedList listaDeMinistros() throws Exception
    {
        LinkedList ministroList = new LinkedList();
        Ministro ministro;
       
        ResultSet rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_buscar_ministro()}");
                rs= cst.executeQuery();
                while (rs.next())
                {
                    ministro = new Ministro();
                    ministro.id_ministro = rs.getLong(1);
                    ministro.nombre = rs.getString(2);
                    ministro.apellido = rs.getString(3);
                    ministro.dignidad = rs.getString(4);
                    ministro.es_parroco = rs.getBoolean(5);
                    ministro.es_parroco_principal = rs.getBoolean(6);
                    ministroList.add((Ministro) ministro);
                }
                rs.close();
                return ministroList;   
                }
            catch(SQLException e){
                setMensaje_error(e.getMessage());
                con.close();
               }
            }
        return ministroList;
    }
    
  /**
  * Consulta los ministro principales
  *
  * <p>Referencia DDS:
  * <p>Invariantes:    
  * <p>Precondiciones: Ingresar ministro
  * <p>Poscondiciones:
  * @return 		void
  */
    public void consultarMinistroPrincipal()throws SQLException{
        rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_buscar_ministro_principal()}");
                rs=cst.executeQuery();
                while(rs.next()){
                    setId_ministro(rs.getLong(1));
                    setNombre(rs.getString(2));
                    setApellido(rs.getString(3));
                    setDignidad(rs.getString(4));
                    setEsParroco(rs.getBoolean(5));
                    setEsParrocoPrincipal(rs.getBoolean(6));
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
}