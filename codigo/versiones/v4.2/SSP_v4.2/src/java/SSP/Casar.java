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
 * Clase usada para Acta de Matrimonio e Inscripción.
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
     * Lugar donde se realizó el Matrimonio
     */
    private String lugar_matrimonio;
    /**
     * Fecha de inscripción del Matrimonio
     */
    private Date fecha_inscripcion;
    /**
     * Se llena si es que existió alguna anomalía, u otro asunto, al momento de efectuarse o realizarse el Sacramento.
     */
    private String observacion;
    /**
     * Muestra el estado del documento, si éste ha sido anulado o no.
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
     * Retorna la fecha de inscripción del Matrimonio
     * @return Fecha de inscripción
     */
    public Date getFechaInscripcion() {
        return fecha_inscripcion;
    }

    /**
     * Inicializa la fecha de inscripción del Matrimonio
     * @param fecha_inscripcion Fecha de inscripción
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
     * Retorna el lugar donde se celebró el Matrimonio
     * @return Lugar de matrimonio
     */
    public String getLugarMatrimonio() {
        return lugar_matrimonio;
    }

    /**
     * Inicializa el lugar donde se celebró el Matrimonio
     * @param lugar_matrimonio Lugar de Matrimonio
     */
    public void setLugarMatrimonio(String lugar_matrimonio) {
        this.lugar_matrimonio = lugar_matrimonio;
    }    

    /**
     * Retorna si existe alguna observación en el Acta de Matrimonio.
     * @return Observación
     */
    public String getObservacion() {
        return observacion;
    }

    /**
     * Inicializa el campo observación, si existe.
     * @param observacion Muestra alguna información acerca de como se realizó.
     */
    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }
}
