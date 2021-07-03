/*
 * RegistroCivil.java
 *
 * Created on 2 de junio de 2007, 12:37 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package SSP;

import java.util.*;

/**
 * Clase que identifica un Registro Civil
 * @author CoDeSOFTWARE
 * @verión 4.6
 */
public class RegistroCivil {
    
    /**
     * tomo del libro del Registro Civil
     */
    private String tomo;
    
    /**
     * Año de la inscripción en el Registro Civil
     */
    private String anio;
    
    /**
     * tomo del libro del Registro Civil
     */
    private String folio;
    
    /**
     * acta del libro del Registro Civil
     */
    private String acta;
    
    /**
     * estado civil 
     */
    private String estado_civil;
    
    /**
     * fecha de inscripción en el Registro Civil
     */
    private Date fecha_inscripcion;
    
    /**
     * lugar de inscripción en el Registro Civil
     */
    private String lugar_inscripcion;
    
    /**
     * Contructor que crea un objeto RegistroCivil.
     */
    public RegistroCivil() {
    }
    
/********************************SET**************************/
/**
     * Inicializa el tomo.
     * @param tomo 
     */
    public void setTomo(String tomo) {
        this.tomo = tomo;
    }

    /**
     * Inicializa el anio.
     * @param anio 
     */
    public void setAnio(String anio) {
        this.anio = anio;
    }

    /**
     * Inicializa el folio.
     * @param folio 
     */
    public void setFolio(String folio) {
        this.folio = folio;
    }

    /**
     * Inicializa el acta.
     * @param acta
     */
    public void setActa(String acta) {
        this.acta = acta;
    }

    /**
     * Inicializa el registro_civil.
     * @param registro_civil
     */
    public void setEstadoCivil(String estado_civil) {
        this.estado_civil = estado_civil;
    }

    /**
     * Inicializa el fecha_inscripción.
     * @param fecha_inscripción 
     */
    public void setFechaInscripcion(Date fecha_inscripcion) {
        this.fecha_inscripcion = fecha_inscripcion;
    }
    
    /**
     * Inicializa el lugar_inscripción.
     * @param lugar_inscripción 
     */
     public void setLugarInscripcion(String lugar_inscripcion) {
        this.lugar_inscripcion = lugar_inscripcion;
    }
    /************************GET***********************/

     /**
     * Retorna el tomo.
     * @return String
     */
    public String getTomo() {
        return tomo;
    }

    /**
     * Retorna el anio.
     * @return String
     */
    public String getAnio() {
        return anio;
    }

    /**
     * Retorna el folio.
     * @return String
     */
    public String getFolio() {
        return folio;
    }

    /**
     * Retorna el acta.
     * @return String
     */
    public String getActa() {
        return acta;
    }

    /**
     * Retorna el estadoCivil.
     * @return String
     */
    public String getEstadoCivil() {
        return estado_civil;
    }

    
    /**
     * Retorna fecha_inscripcion.
     * @return Date
     */
    public Date getFechaInscripcion() {
        return fecha_inscripcion;
    }

    /**
     * Retorna lugar_inscripcion.
     * @return String
     */
    public String getLugarInscripcion() {
        return lugar_inscripcion;
    }
}