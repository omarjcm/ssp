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
 *
 * @author Steff
 */
public class RegistroCivil {
    
    private String tomo;
    private String anio;
    private String folio;
    private String acta;
    private String estado_civil;
    private String lugar;
    private Date fecha_inscripcion;
    
    /** Creates a new instance of RegistroCivil */
    public RegistroCivil() {
    }
    
    /************************SET***********************/

    public void setTomo(String tomo) {
        this.tomo = tomo;
    }

    public void setAnio(String anio) {
        this.anio = anio;
    }

    public void setFolio(String folio) {
        this.folio = folio;
    }

    public void setActa(String acta) {
        this.acta = acta;
    }

    public void setEstadoCivil(String estado_civil) {
        this.estado_civil = estado_civil;
    }

    public void setFechaInscripcion(Date fecha_inscripcion) {
        this.fecha_inscripcion = fecha_inscripcion;
    }
    
    /************************GET***********************/

    public String getTomo() {
        return tomo;
    }

    public String getAnio() {
        return anio;
    }

    public String getFolio() {
        return folio;
    }

    public String getActa() {
        return acta;
    }

    public String getEstadoCivil() {
        return estado_civil;
    }

    public Date getFechaInscripcion() {
        return fecha_inscripcion;
    }

    public String getLugar() {
        return lugar;
    }

    public void setLugar(String lugar) {
        this.lugar = lugar;
    }
}