/*
 * 
 * Archivo:	Bautizar.java
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
 *   4.6        Stephanie Flores    15/07/07  Ingresar Registro Civil
 * ==============================================================
 *
 */
package SSP;

import java.util.*;
/**
 * Clase usada para datos del registro civil.
 * <p>Referencia DDS:
 * <p>Invariantes: 
 * @author	CoDeSOFTWARE
 * @version	1.0
 */

public class RegistroCivil {
/*ATRIBUTOS DE LA CLASE*/
    /**
     * identifica a los datos del registro civil
     *
     * <p>requisito: RD-MD.1.6
     */
    private long id_registro_civil;
    /**
     * Muestra el tomo del registro civil.
     */
    private String tomo;
    /**
     * Muestra el año que se registro en el registro civil.
     */
    private String anio;
    /**
     * Muestra el folio del registro civil.
     */
    private String folio;
    /**
     * Muestra el acta del registro civil.
     */
    private String acta;
    /**
     * Muestra el nombre del registro civil.
     */
    private String estado_civil;
    /**
     * Muestra la fecha de inscripcion del registro civil.
     */
    private Date fecha_inscripcion;
    /**
     * Muestra el lugar de la inscripción del registro civil.
     */
    private String lugar_inscripcion;
    
    /*CONSTRUCTORES*/
    /**
     * Constructor que crea una instancia RegistroCivil.
     * <p>requisito: RD-MD.1.6
     */
    public RegistroCivil() {
    }
    
    
    /**
     * Setea el tomo del registro civil.
     * @param tomo.
     */
    public void setTomo(String tomo) {
        this.tomo = tomo;
    }

    /**
     * Setea el año del registro civil.
     * @param anio.
     */
    public void setAnio(String anio) {
        this.anio = anio;
    }

    /**
     * Setea el folio del registro civil.
     * @param folio.
     */
    public void setFolio(String folio) {
        this.folio = folio;
    }

    /**
     * Setea el acta del registro civil.
     * @param acta.
     */
    public void setActa(String acta) {
        this.acta = acta;
    }

    /**
     * Setea el estado civil en el registro civil.
     * @param estado_civil.
     */
    public void setEstadoCivil(String estado_civil) {
        this.estado_civil = estado_civil;
    }

    /**
     * Setea la fecha de inscripcion en el registro civil.
     * @param fecha_inscripción.
     */
    public void setFechaInscripcion(Date fecha_inscripcion) {
        this.fecha_inscripcion = fecha_inscripcion;
    }

    /**
     * Setea el lugar de inscripcion en el registro civil.
     * @param lugar_inscripción.
     */
    public void setLugarInscripcion(String lugar_inscripcion) {
        this.lugar_inscripcion = lugar_inscripcion;
    }
    
    /**
     * Setea identificador del registro civil.
     * @param fecha_inscripción.
     */
    public void setIdRegistroCivil(long id_registro_civil) {
        this.id_registro_civil = id_registro_civil;
    }

    /**
     * Obtiene el tomo del registro civil.
     * @return tomo.
     */
    public String getTomo() {
        return tomo;
    }

    /**
     * Obtiene el año del registro civil.
     * @return anio.
     */
    public String getAnio() {
        return anio;
    }

    /**
     * Obtiene el folio del registro civil.
     * @return folio.
     */
    public String getFolio() {
        return folio;
    }

    /**
     * Obtiene el acta del registro civil.
     * @return acta.
     */
    public String getActa() {
        return acta;
    }

    /**
     * Obtiene el estado en el registro civil.
     * @return estado_civil.
     */
    public String getEstadoCivil() {
        return estado_civil;
    }

    /**
     * Obtiene la fecha de inscripcion en el registro civil.
     * @return fecha_inscripcion.
     */
    public Date getFechaInscripcion() {
        return fecha_inscripcion;
    }
    
    /**
     * Obtiene la fecha de inscripcion en el registro civil.
     * @return fecha_inscripcion.
     */
    public String getfecha_inscripcion() {
        return fecha_inscripcion.toString();
    }

    /**
     * Obtiene el lugar de inscripcion en el registro civil.
     * @return lugar_inscripcion.
     */
    public String getLugarInscripcion() {
        return lugar_inscripcion;
    }
    
    /**
     * Obtiene el identificador del registro civil.
     * @return id_registro_civil.
     */
    public long getIdRegistroCivil(){
        return id_registro_civil;
    }

    /**
     * Setea el identificador del registro civil.
     * @param string.
     */
    void setIdRegistroCivil(String string) {
        throw new UnsupportedOperationException("Not yet implemented");
    }
}