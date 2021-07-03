/*
 * Confirmar.java
 *
 * Created on 2 de junio de 2007, 12:01 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package SSP;

import java.util.Date;

/**
 * Clase usada para Acta de Confirmaci�n e Inscripci�n.
 * @author CoDeSOFTWARE
 * @version v1.0
 */
public class Confirmar {

    /**
     * Identificador del registro de Confirmaci�n
     */
    private int id_confirmacion;
    /**
     * Fecha de la ceremonia de Confirmaci�n
     */
    private Date fecha_confirmacion;
    /**
     * Lugar de la ceremonia de Confirmaci�n
     */
    private String lugar_confirmacion;
    /**
     * N�mero de ficha de inscripci�n
     */
    private String num_ficha;
    /**
     * Nivel de la respectiva catequesis.
     */
    private String nivel;
    /**
     * Lugar de la ceremonia de la comuni�n
     */
    private String lugar_comunion;
    /**
     * Fecha de la ceremonia de la Comuni�n
     */
    private Date fecha_comunion;
    /**
     * Curso educativo que asiste a su respectiva unidad educativa.
     */
    private String curso;
    /**
     * Se llena si es que existi� alguna anomal�a, u otro asunto, al momento de efectuarse o realizarse el Sacramento.
     */
    private String observacion;
    /**
     * Muestra el estado del documento, si �ste ha sido anulado o no.
     */
    private boolean estado;
    
    /**
     * Constructor de la clase Confirmaci�n
     */
    public Confirmar() {
    }

    /**
     * Inicializa el curso del solicitante
     * @param curso Curso educativo del solicitante
     */
    public void setCurso(String curso) {
        this.curso = curso;
    }

    /**
     * Retorna el curso educativo
     * @return Curso educativo
     */
    public String getCurso() {
        return curso;
    }

    /**
     * Inicializa el estado del Acta
     * @param estado Estado de la Acta
     */
    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    /**
     * Retorna el estado del Acta de Confirmaci�n
     * @return Estado del Acta
     */
    public boolean getEstado() {
        return estado;
    }

    /**
     * Incializa la fecha de comuni�n
     * @param fecha_comunion Fecha de la ceremonia de la comuni�n
     */
    public void setFechaComunion(Date fecha_comunion) {
        this.fecha_comunion = fecha_comunion;
    }

    /**
     * Retorna de la fecha de la comuni�n
     * @return Fecha de la comuni�n
     */
    public Date getFechaComunion() {
        return fecha_comunion;
    }

    /**
     * Inicializa de la Fecha de la confirmaci�n
     * @param fecha_confirmacion Fecha de la ceremonia de confirmaci�n
     */
    public void setFechaConfirmacion(Date fecha_confirmacion) {
        this.fecha_confirmacion = fecha_confirmacion;
    }

    /**
     * Retorna de la fecha de la ceremonia de Confirmaci�n
     * @return Fecha de confirmaci�n
     */
    public Date getFechaConfirmacion() {
        return fecha_confirmacion;
    }

    /**
     * Inicializa el id del registro de confirmaci�n
     * @param id_confirmacion Id del registro de confirmacion
     */
    public void setIdConfirmacion(int id_confirmacion) {
        this.id_confirmacion = id_confirmacion;
    }

    /**
     * Retorno del id del registro de Confirmaci�n
     * @return Id del registro de Confirmaci�n
     */
    public int getIdConfirmacion() {
        return id_confirmacion;
    }

    /**
     * Inicializa el lugar de primera comuni�n
     * @param lugar_comunion Lugar de la ceremonia primera comunion
     */
    public void setLugarComunion(String lugar_comunion) {
        this.lugar_comunion = lugar_comunion;
    }

    /**
     * Retorna el lugar de la ceremonia de la Primera Comuni�n
     * @return Lugar de la ceremonia de la Primera Comuni�n
     */
    public String getLugarComunion() {
        return lugar_comunion;
    }

    /**
     * Inicializa el lugar de la ceremonia de la Confirmaci�n
     * @param lugar_confirmacion Lugar de ceremonia de la Confirmaci�n
     */
    public void setLugarConfirmacion(String lugar_confirmacion) {
        this.lugar_confirmacion = lugar_confirmacion;
    }

    /**
     * Retorna el lugar de la confirmaci�n
     * @return Lugar de la confirmaci�n
     */
    public String getLugarConfirmacion() {
        return lugar_confirmacion;
    }

    /**
     * Nivel de la catequesis
     * @param nivel Nivel de la catequesis
     */
    public void setNivel(String nivel) {
        this.nivel = nivel;
    }

    /**
     * Retorna el nivel de catequesis
     * @return Nivel de catequesis
     */
    public String getNivel() {
        return nivel;
    }

    /**
     * Inicializa el n�mero de ficha de inscripci�n
     * @param num_ficha Ficha de inscripci�n
     */
    public void setNumFicha(String num_ficha) {
        this.num_ficha = num_ficha;
    }

    /**
     * Retorna n�mero de Ficha de inscripci�n
     * @return N�mero de ficha de inscripci�n
     */
    public String getNumFicha() {
        return num_ficha;
    }

    /**
     * Incializa la observaci�n�de una acta
     * @param observacion Observacion de una Acta
     */
    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }

    /**
     * Retorna la observaci�n de una Acta
     * @return Observacion
     */
    public String getObservacion() {
        return observacion;
    }
}