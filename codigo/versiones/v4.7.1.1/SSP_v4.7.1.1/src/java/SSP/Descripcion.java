/*
 * 
 * Archivo:	Descripcion.java
 * Autor:	CoDeSoftware 
 * Licencia:	GNU/GPL
 * Fecha de Creación: 02/09/2007
 *
 * ==============================================================
 *
 * Historial de Modificaciones:
 *
 * Versión	Responsable         Fecha     Cambio     Razón de Cambio
 *   4.7.1.1    Stephanie Flores    02/09/07  
 * ==============================================================
 *
 */

package SSP;
import java.util.*;
import java.sql.*;
/**
 * Clase usada para manejar los datos de la descripcion para el registro
 * <p>Referencia DDS:  
 * <p>Invariantes: 
 * @author	CoDeSOFTWARE
 * @version	1.0
 */
public class Descripcion {
    /*ATRIBUTOS DE LA CLASE*/
    /**
     * identifica los datos de la descripcion
     *
     * <p>requisito: RD-FA
     */
    
    /**
     * identificador de la descripcion
     */
    private int id_descripcion;
    /**
     * descripcion del registro
     */
    private String descripcion;
    /**
     * mensaje de error
     */
    private String mensaje_error;
    
      /**************************ATRIBUTOS DE CONEXION*******************************/    
    /**
     * objeto que contiene la informacion de la conexionDB
     */
    public ConexionDB cnx;
     /**
     * objeto que contiene la informacion de Connection
     */
    public Connection con;
     /**
     * objeto que contiene CallableStatement
     */
    public CallableStatement cst;
     /**
     * objeto que contiene ResultSet
     */
    public ResultSet rs;
    
    /*CONSTRUCTORES*/
    /**
     * Constructor que crea una instancia Descripcion.
     * <p>requisito:
     */
    public Descripcion() {
        cnx= new ConexionDB();
    }

    /**
     * Retorna el identificador de la descripcion
     * @return int id_descripcio
     */
    public int getId_descripcion() {
        return id_descripcion;
    }

    /**
     * Setea el identificador de descripcion.
     * @param id_usuario
     */
    public void setId_descripcion(int id_descripcion) {
        this.id_descripcion = id_descripcion;
    }

    /**
     * Retorna la descripcion.
     * @return String descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * Setea el string descripcion
     * @param descripcion
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /**
     * Retorna el mensaje de error
     * @return String mensaje_error
     */
    public String getMensaje_error() {
        return mensaje_error;
    }

    /**
     * Setea el mensaje de error.
     * @param mensaje_error
     */
    public void setMensaje_error(String mensaje_error) {
        this.mensaje_error = mensaje_error;
    }
    
  /**
  * Genera la lista de la descripcion
  * <p>Referencia DDS:
  * <p>Invariantes:
  * <p>Precondiciones: Ingresar descripcion
  * <p>Poscondiciones:
  * @param 			letra
  * @return 			LinkedList
  */
    public ArrayList listaDeDescripciones(String letra) throws SQLException
    {
        ArrayList descripcionList = new ArrayList();
        Descripcion descripcion;
        
        ResultSet rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_consultar_descripcion(?)}");
                cst.setString(1,letra);
                rs=cst.executeQuery();
                while (rs.next())
                {
                    descripcion = new Descripcion();
                    descripcion.setId_descripcion(rs.getInt(1));
                    descripcion.setDescripcion(rs.getString(2));
                    descripcionList.add((Descripcion) descripcion);
                }
                setMensaje_error("Estoy en el result");
                rs.close();
                return descripcionList;   
                }
            catch(SQLException e){
                setMensaje_error("Estoy en el result");
                setMensaje_error(e.getMessage());
                con.close();
               }
            }
        setMensaje_error("La conexion es null");
        return descripcionList;
    }
}