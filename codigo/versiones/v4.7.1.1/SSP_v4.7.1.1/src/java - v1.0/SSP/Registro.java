/*
 * Registro.java
 *
 * Created on 2 de junio de 2007, 12:45 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package SSP;

import java.util.*;
import java.sql.*;
import java.sql.Date;

/**
 * Clase que maneja los datos de los registros de contabilidad
 * @author CoDeSOFTWARE
 * @version 1.0
 */
public class Registro {
    
    public ArrayList arreglo=null;
    private ArrayList items_registro;
    private String fecha=null;
    private String valor;
    private String tipo="";
    private String descripcion="";
    private String mensaje_error="";
    
    public ConexionDB cnx;
    public Connection con;
    public CallableStatement cst;
    public ResultSet rs;

        
    /** Creates a new instance of Registro */
    public Registro() {
        arreglo= new ArrayList();
        setItems_registro(new ArrayList());
        cnx= new ConexionDB();
    }
    
    /****************************SET***************************/

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public void setMensaje_error(String mensaje_error) {
        this.mensaje_error = mensaje_error;
    }
    
    /****************************GET***************************/

    public String getFecha() {
        return fecha;
    }

    public String getValor() {
        return valor;
    }

    public String getTipo() {
        return tipo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public String getMensaje_error() {
        return mensaje_error;
    }

    public ArrayList getItems_registro() {
        return items_registro;
    }

    public void setItems_registro(ArrayList items_registro) {
        this.items_registro = items_registro;
    }
    
    public void agregarItems(Registro r){
        arreglo.add(r);
        setItems_registro(arreglo);
    }
    
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
}