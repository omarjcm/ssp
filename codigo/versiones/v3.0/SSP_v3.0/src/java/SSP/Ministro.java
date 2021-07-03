/*
 * Ministro.java
 *
 * Created on 2 de junio de 2007, 12:26 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package SSP;

import java.sql.*;
import java.lang.*;
import java.util.LinkedList;
/**
 * Clase que maneja los datos del Ministro (Padre)
 * @author CoDeSOFTWARE
 * @version 1.0
 */
public class Ministro {
    
    /**
     * Identifica al minsitro
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
    private String mensaje_error;
    public ConexionDB cnx;
    public Connection con;
    public CallableStatement cst;
    public ResultSet rs;
    
    /**
     * Crea un nuevo objeto de la clase Ministro
     */
    public Ministro() {
        cnx= new ConexionDB();
    }

    /**********************SET****************************/
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public void setDignidad(String dignidad) {
        this.dignidad = dignidad;
    }

    public void setEsParroco(boolean es_parroco) {
        this.es_parroco = es_parroco;
    }

    public void setEsParrocoPrincipal(boolean es_parroco_principal) {
        this.es_parroco_principal = es_parroco_principal;
    }

    public void setMensaje_error(String mensaje){
        this.mensaje_error = mensaje;
    }

    /**********************GET****************************/
    
    public long getId_ministro() {
        return id_ministro;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public String getDignidad() {
        return dignidad;
    }
    
    public boolean getEsParroco() {
        return es_parroco;
    }
    
    public boolean getEsParrocoPrincipal() {
        return es_parroco_principal;
    }
    
    public String getMensaje_error(){
        return mensaje_error;
    }
    
    public void asignarDignidad(){
        if(getDignidad().compareToIgnoreCase("0")==0){setDignidad("P.");}
        if(getDignidad().compareToIgnoreCase("1")==0){setDignidad("Mons.");}
        if(getDignidad().compareToIgnoreCase("2")==0){setDignidad("Díac.");}
    }
    
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
    public LinkedList listaDeMinistros() throws Exception
    {
        LinkedList ministroList = new LinkedList();
        Ministro ministro;
        String cna = "";
        
        ResultSet rs = null;
        String SQL = "SELECT * FROM ministro";
        rs = cnx.ejecutarConsulta(SQL);
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
}