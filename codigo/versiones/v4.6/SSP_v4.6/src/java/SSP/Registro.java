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

/**
 * Clase que maneja los datos de los registros de contabilidad
 * @author CoDeSOFTWARE
 * @version 1.0
 */
public class Registro {
    
    private Date fecha;
    private double valor;
    private String tipo;
    private String descripcion;
        
    /** Creates a new instance of Registro */
    public Registro() {
    }
    
    /****************************SET***************************/

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    /****************************GET***************************/

    public Date getFecha() {
        return fecha;
    }

    public double getValor() {
        return valor;
    }

    public String getTipo() {
        return tipo;
    }

    public String getDescripcion() {
        return descripcion;
    }    
}