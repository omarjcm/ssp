/*
 * 
 * Archivo:	Registro.java
 * Autor:	CoDeSoftware 
 * Licencia:	GNU/GPL
 * Fecha de Creación: 2/06/2007
 *
 * ==============================================================
 *
 * Historial de Modificaciones:
 *
 * Versión	Responsable         Fecha     Cambio     Razón de Cambio
 *   4.6        Stephanie Flores    3/06/07   
 * ==============================================================
 *
 */
package SSP;

import java.util.*;
import java.sql.*;
import java.sql.Date;

/**
 * Clase usada para manejar los datos del registro de la contabilidad
 * <p>Referencia DDS:  
 * <p>Invariantes: 
 * @author	CoDeSOFTWARE
 * @version	1.0
 */
public class Registro {
     /*ATRIBUTOS DE LA CLASE*/
    /**
     * identifica los datos del registro
     *
     * <p>requisito: RD-FA
     */
    
    /**
     * lista de arreglo
     */
    public ArrayList arreglo=null;
    
    /**
     * lista de arreglo de registro
     */
    private ArrayList items_registro;
    
    /**
     * fecha del registro
     */
    private String fecha=null;
    /**
     * valor del registro
     */
    private String valor;
    /**
     * tipo del registro
     */
    private String tipo="";
    /**
     * descripcion del registro
     */
    private String descripcion="";
    /**
     * mensaje de error
     */
    private String mensaje_error="";
    /**
     * objeto que contiene informacion de la ConexionDB
     */
    public ConexionDB cnx;
    /**
     * objeto que contiene informacion de connection
     */
    public Connection con;
    /**
     * objeto que contiene informacion CallableStatement
     */
    public CallableStatement cst;
    /**
     * objeto que contiene informacion de ResultSet
     */
    public ResultSet rs;
    
    public Descripcion descrip;
    
    private Date fecha_semestral;
    
    private String mes[] = {"ENERO","FEBRERO","MARZO","ABRIL","MAYO","JUNIO","JULIO","AGOSTO","SEPTIEMBRE","OCTUBRE","NOVIEMBRE","DICIEMBRE"};
    private String fecha_mes;
    private String fecha_anio;

    /*CONSTRUCTORES*/
    /**
     * Constructor que crea una instancia Registro.
     * <p>requisito: RD-MD
     */
    public Registro() {
        arreglo= new ArrayList();
        setItems_registro(new ArrayList());
        cnx= new ConexionDB();
        descrip = new Descripcion();
    }
    
    public String mostrarMes(int indice){
        try {
            return this.mes[indice-1];
        }
        catch (Exception e) {
            return e.getMessage();
        }
    }
    
    public void parsingFecha(String fecha) {
        this.fecha_anio = fecha.substring(0,4);
        this.fecha_mes = fecha.substring(5,7);
    }
    
    public String getFecha_anio() {
        return fecha_anio;
    }

    public String getFecha_mes() {
        return fecha_mes;
    }
    
    /****************************SET***************************/
    /**
     * Setea la fecha de registro
     * @param fecha
     */
    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    /**
     * Setea el valor de registro
     * @param valor
     */
    public void setValor(String valor) {
        this.valor = valor;
    }

    /**
     * Setea el tipo de registro
     * @param tipo
     */
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    /**
     * Setea la descripcion de registro
     * @param descripcion
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    /**
     * Setea el mensaje de error de registro
     * @param fecha
     */
    public void setMensaje_error(String mensaje_error) {
        this.mensaje_error = mensaje_error;
    }
    
    /**
     * Retorna la fecha del registro
     * @return String fecha
     */
    public String getFecha() {
        return fecha;
    }

    /**
     * Retorna el valor del registro
     * @return String valor
     */
    public String getValor() {
        return valor;
    }

    /**
     * Retorna el tipo del registro
     * @return String tipo
     */
    public String getTipo() {
        return tipo;
    }

    /**
     * Retorna la descripcion del registro
     * @return String descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * Retorna el mensaje de error del registro
     * @return String mensaje_error
     */
    public String getMensaje_error() {
        return mensaje_error;
    }
    
    /**
     * Retorna un arreglo del todos los registros ingresados
     * @return ArrayList items_registro
     */
    public ArrayList getItems_registro() {
        return items_registro;
    }

    /**
     * Setea arreglo de todos los registros
     * @param items_registro
     */
    public void setItems_registro(ArrayList items_registro) {
        this.items_registro = items_registro;
    }
    
     /**
    * Agrega un nuevo registro al arreglo
    * <p>Referencia DDS:
    * <p>Invariantes:  
    * <p>Precondiciones:
    * <p>Poscondiciones:
    * @param r          	objeto registro
    * @return void
    */
    public void agregarItems(Registro r){
        arreglo.add(r);
        setItems_registro(arreglo);
    }

    public void setFecha_semestral(Date fecha_semestral) {
        this.fecha_semestral = fecha_semestral;
    }

    public Date getFecha_semestral() {
        return fecha_semestral;
    }
    
    /**
    * Guarda el registro ingresado por el usuario
    * <p>Referencia DDS:
    * <p>Invariantes:  
    * <p>Precondiciones:
    * <p>Poscondiciones:
    * @param r          	objeto registro
    * @param id_usuario        	identificador del usuario 
    * @return true || false	Si ingresa o no ingresa el registro
    */
    public boolean guardarRegistro(Registro r, long id_usuario) throws SQLException{
        rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_insertar_registro(?,?,?,?,?,?)}");
                cst.setDate(1,(java.sql.Date) Date.valueOf(r.getFecha()));
                cst.setDouble(2, Double.parseDouble(r.getValor()));
                cst.setString(3,r.getTipo());
                cst.setString(4,r.getDescripcion());
                cst.setLong(5, id_usuario);
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
        else   return false;
    }
    
    public ArrayList consultarRegistroPorTipoPorMes(Date fecha1, String tipo)  throws SQLException{
        ArrayList registroList = new ArrayList();
        Registro reg;
        
        rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_consultar_tipo_registro_por_mes(?,?)}");
                cst.setDate(1,fecha1);
                cst.setString(2,tipo);
                
                rs=cst.executeQuery();
                while (rs.next())
                {
                    reg = new Registro();
                    reg.descrip.setDescripcion(rs.getString(1));
                    reg.setValor(rs.getString(2));
                    registroList.add((Registro) reg);
                }
                con.close();
                return registroList;
            }
            catch(SQLException e){
                setMensaje_error(e.getMessage());
                con.close();
            }
        }
        return registroList;
    }
    
    public ArrayList consultarRegistroPorTipo(Date fecha1, Date fecha2, String tipo)  throws SQLException{
        rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
        Registro reg;
        ArrayList registroList = new ArrayList();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_consultar_tipo_registro(?,?,?)}");
                cst.setDate(1,fecha1);
                cst.setDate(2,fecha2);
                cst.setString(3,tipo);
                
                rs=cst.executeQuery();
                while (rs.next())
                {
                    reg = new Registro();
                    reg.descrip.setDescripcion(rs.getString(1));
                    reg.setValor(rs.getString(2));
                    registroList.add((Registro) reg);
                }
                con.close();
                return registroList;
            }
            catch(SQLException e){
                setMensaje_error(e.getMessage());
                con.close();
            }
        }
        return registroList;
    }

    public double consultarTotalRegistroPorTipoPorMes(Date fecha1, String tipo)  throws SQLException{
        rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
        double total_tipo = 0;
       
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_consultar_total_tipo_registro_por_mes(?,?)}");
                cst.setDate(1,fecha1);
                cst.setString(2,tipo);
                
                rs=cst.executeQuery();
                rs.next();
                total_tipo = rs.getDouble(1);
                
                con.close();
                return total_tipo;
            }
            catch(SQLException e){
                setMensaje_error(e.getMessage());
                con.close();               
            }
        }
        return total_tipo;
    }

    public double consultarTotalRegistroPorTipo(Date fecha1, Date fecha2, String tipo)  throws SQLException{
        rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
        double total_tipo = 0;
       
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_consultar_total_tipo_registro(?,?,?)}");
                cst.setDate(1,fecha1);
                cst.setDate(2,fecha2);
                cst.setString(3,tipo);
                
                rs=cst.executeQuery();
                rs.next();
                total_tipo = rs.getDouble(1);
                
                con.close();
                return total_tipo;
            }
            catch(SQLException e){
                setMensaje_error(e.getMessage());
                con.close();               
            }
        }
        return total_tipo;
    }
    
    public double consultarRegistroPrimerSemestre(Date fecha, String tipo)  throws SQLException{
        rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
        double total_tipo = 0;
       
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_total_fecha_primer_semestre(?,?,?)}");
                cst.setDate(1,fecha);
                cst.setString(2,tipo);
                cst.setDate(3, fecha_semestral);
                
                rs=cst.executeQuery();
                rs.next();
                total_tipo = rs.getDouble(1);
                fecha_semestral = cst.getDate(3);
                
                con.close();
                return total_tipo;
            }
            catch(SQLException e){
                setMensaje_error(e.getMessage());
                con.close();               
            }
        }
        return total_tipo;
    }
    
    public double consultarRegistroSegundoSemestre(Date fecha_inicio, Date fecha_fin, String tipo)  throws SQLException{
        rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
        double total_tipo = 0;
       
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_total_fecha_segundo_semestre(?,?,?)}");
                cst.setDate(1, fecha_inicio);
                cst.setDate(2, fecha_fin);
                cst.setString(3,tipo);
                
                rs=cst.executeQuery();
                rs.next();
                total_tipo = rs.getDouble(1);
                
                con.close();
                return total_tipo;
            }
            catch(SQLException e){
                setMensaje_error(e.getMessage());
                con.close();               
            }
        }
        return total_tipo;
    }
}