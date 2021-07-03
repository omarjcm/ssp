/*
 * Casar.java
 *
 * Created on 2 de junio de 2007, 12:16 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package SSP;

import java.util.Date;

/**
 * Clase usada para Acta de Matrimonio e Inscripci�n.
 * @author CoDeSOFTWARE
 * @version v1.0
 */
public class Casar {
    /**
     * Identificador del registro Matrimonio
     */
    private int id_matrimonio;
    /**
     * Fecha del Matrimonio realizado
     */
    private Date fecha_matrimonio;
    /**
     * Lugar donde se realiz� el Matrimonio
     */
    private String lugar_matrimonio;
    /**
     * Fecha de inscripci�n del Matrimonio
     */
    private Date fecha_inscripcion;
    /**
     * Se llena si es que existi� alguna anomal�a, u otro asunto, al momento de efectuarse o realizarse el Sacramento.
     */
    private String observacion;
    /**
     * Muestra el estado del documento, si �ste ha sido anulado o no.
     */
    private boolean estado;
    
    /**
     * Constructor de la clase Casar
     */
    public Casar() {
    }

    /**
     * Inicializa el estado de una Acta
     * @param estado Estado
     */
    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    /**
     * Retorna el estado de un Acta
     * @return Estado
     */
    public boolean getEstado() {
        return estado;
    }

    /**
     * Retorna la fecha de inscripci�n del Matrimonio
     * @return Fecha de inscripci�n
     */
    public Date getFechaInscripcion() {
        return fecha_inscripcion;
    }

    /**
     * Inicializa la fecha de inscripci�n del Matrimonio
     * @param fecha_inscripcion Fecha de inscripci�n
     */
    public void setFechaInscripcion(Date fecha_inscripcion) {
        this.fecha_inscripcion = fecha_inscripcion;
    }

    /**
     * Retorna la fecha del Matrimonio
     * @return Fecha de matrimonio
     */
    public Date getFechaMatrimonio() {
        return fecha_matrimonio;
    }

    /**
     * Inicializa la fecha del Matrimonio
     * @param fecha_matrimonio Fecha de la ceremonia de casamiento
     */
    public void setFechaMatrimonio(Date fecha_matrimonio) {
        this.fecha_matrimonio = fecha_matrimonio;
    }

    /**
     * Retorna el id del Acta de Matrimonio
     * @return Id de matrimonio
     */
    public int getIdMatrimonio() {
        return id_matrimonio;
    }

    /**
     * Inicializa el id de matrimonio
     * @param id_matrimonio id del registro matrimonio
     */
    public void setIdMatrimonio(int id_matrimonio) {
        this.id_matrimonio = id_matrimonio;
    }

    /**
     * Retorna el lugar donde se celebr� el Matrimonio
     * @return Lugar de matrimonio
     */
    public String getLugarMatrimonio() {
        return lugar_matrimonio;
    }

    /**
     * Inicializa el lugar donde se celebr� el Matrimonio
     * @param lugar_matrimonio Lugar de Matrimonio
     */
    public void setLugarMatrimonio(String lugar_matrimonio) {
        this.lugar_matrimonio = lugar_matrimonio;
    }    

    /**
     * Retorna si existe alguna observaci�n en el Acta de Matrimonio.
     * @return Observaci�n
     */
    public String getObservacion() {
        return observacion;
    }

    /**
     * Inicializa el campo observaci�n, si existe.
     * @param observacion Muestra alguna informaci�n acerca de como se realiz�.
     */
    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }
}
