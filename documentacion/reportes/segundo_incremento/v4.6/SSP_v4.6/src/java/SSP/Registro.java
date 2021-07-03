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
 * @version 4.6
 */
public class Registro {
    
    /**
     * fecha del Registro
     */
    private Date fecha;
    
    /**
     * valor del Registro
     */
    private double valor;
    
    /**
     * tipo del Registro
     */
    private String tipo;
    
    /**
     * descripcion del registro
     */
    private String descripcion;
        
    /**
     * Contructor que crea un objeto Registro.
     */
    public Registro() {
    }
    
    /****************************SET***************************/

    /**
     * Inicializa a fecha.
     * @param fecha 
     */
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    /**
     * Inicializa el valor.
     * @param valor 
     */
    public void setValor(double valor) {
        this.valor = valor;
    }

    /**
     * Inicializa el tipo.
     * @param tipo
     */
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    /**
     * Inicializa la descripción.
     * @param decripción 
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    /****************************GET***************************/

    /**
     * Retorna fecha.
     * @return Date
     */
    public Date getFecha() {
        return fecha;
    }

    /**
     * Retorna valor.
     * @return double
     */
    public double getValor() {
        return valor;
    }

    /**
     * Retorna tipo.
     * @return String
     */
    public String getTipo() {
        return tipo;
    }

    /**
     * Retorna descripcion.
     * @return String
     */
    public String getDescripcion() {
        return descripcion;
    }    
}