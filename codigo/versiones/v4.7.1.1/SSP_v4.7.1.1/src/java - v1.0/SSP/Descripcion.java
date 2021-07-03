/*
 * descripcion.java
 *
 * Created on 2 de septiembre de 2007, 09:31 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package SSP;
import java.util.*;
import java.sql.*;

/**
 *
 * @author stefy
 */
public class Descripcion {
    
    private int id_descripcion;
    private String descripcion;
    private String mensaje_error;
    
      /**************************ATRIBUTOS DE CONEXION*******************************/    
    public ConexionDB cnx;
    public Connection con;
    public CallableStatement cst;
    public ResultSet rs;
    
    /** Creates a new instance of descripcion */
    public Descripcion() {
        cnx= new ConexionDB();
    }

    public int getId_descripcion() {
        return id_descripcion;
    }

    public void setId_descripcion(int id_descripcion) {
        this.id_descripcion = id_descripcion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getMensaje_error() {
        return mensaje_error;
    }

    public void setMensaje_error(String mensaje_error) {
        this.mensaje_error = mensaje_error;
    }

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