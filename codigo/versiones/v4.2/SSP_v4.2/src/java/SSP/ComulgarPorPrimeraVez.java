/*
 * ComulgarPorPrimeraVez.java
 *
 * Created on 1 de junio de 2007, 11:35 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package SSP;

import java.util.Date;

/**
 * Clase usada para Acta de Comuni�n e Inscripci�n.
 * @author CoDeSOFTWARE
 * @version 1.0
 */
public class ComulgarPorPrimeraVez {
    /**
     * Identificador del registro Primera Comuni�n
     */
    private int id_comunion;
    /**
     * Fecha de la ceremonia de la Primera Comuni�n
     */
    private Date fecha_comunion;
    /**
     * Estado civil de los Padres
     */
    private String estado_civil_padres;
    /**
     * Nombre de la instituci�n educativa
     */
    private String nombre_institucion;
    /**
     * Grado � nivel de ense�anza
     */
    private String grado;
    /**
     * Nivel de la catequesis
     */
    private String nivel;
    /**
     * N�mero de la ficha de inscripci�n
     */
    private String num_ficha;
    /**
     * Lugar en la que se celebr� la ceremonia de la Primera Comuni�n
     */
    private String lugar_comunion;
    /**
     * Se llena si es que existi� alguna anomal�a, u otro asunto, al momento de efectuarse o realizarse el Sacramento.
     */
    private String observacion;
    /**
     * Muestra el estado del documento, si �ste ha sido anulado o no.
     */
    private boolean estado;
    
    /**
     * Constructor de la clase ComulgarPorPrimeraVez
     */
    public ComulgarPorPrimeraVez() {
    }

    /**
     * Retorna del id del registro de la Primera Comuni�n
     * @return Id del registro de la Primera Comuni�n
     */
    public int getId_comunion() {
        return id_comunion;
    }
    
    /**
     * Inicializa el Id del registro de la Primera Comuni�n
     * @param id_comunion Id del registro de la Primera Comuni�n
     */
    public void setIdComunion(int id_comunion) {
        this.id_comunion = id_comunion;
    }
    
    /**
     * Obtiene el estado civil de los padres del solicitante
     * @return El estado civil de los padres
     */
    public String getEstadoCivilPadres() {
        return estado_civil_padres;
    }
    
    /**
     * Inicializa el estado civil de los padres del solicitante
     * @param estado_civil_padres Estado civil de los padres del solicitante
     */
    public void setEstadoCivilPadres(String estado_civil_padres) {
        this.estado_civil_padres = estado_civil_padres;
    }
    
    /**
     * Obtiene el grado o curso de ense�anza del solicitante
     * @return Grado o curso de ense�anza del solicitante
     */
    public String getGrado() {
        return grado;
    }

    /**
     * Inicializa el grado o curso de ense�anza del solicitante
     * @param grado Grado o curso de ense�anza del solicitante
     */
    public void setGrado(String grado) {
        this.grado = grado;
    }
    
    /**
     * Obtiene la fecha de la ceremonia de la Primera Comuni�n.
     * @return Fecha de comuni�n
     */
    public Date getFechaComunion() {
        return fecha_comunion;
    }

    /**
     * Inicializa la fecha de la ceremonia de la Primera Comuni�n
     * @param fecha_comunion Fecha de la ceremonia de la Primera Comuni�n
     */
    public void setFechaComunion(Date fecha_comunion) {
        this.fecha_comunion = fecha_comunion;
    }

    /**
     * Obtiene el lugar de la ceremonia de la Primera Comuni�n
     * @return Lugar de la Comuni�n
     */
    public String getLugarComunion() {
        return lugar_comunion;
    }

    /**
     * Inicializa el lugar de la ceremonia de la Primera Comuni�n
     * @param lugar_comunion Lugar de la Primera Comuni�n
     */
    public void setLugarComunion(String lugar_comunion) {
        this.lugar_comunion = lugar_comunion;
    }

    /**
     * Obtiene el nivel de la catequesis del solicitante
     * @return Nivel de la catequesis del solicitante
     */
    public String getNivel() {
        return nivel;
    }

    /**
     * Inicializa el nivel de la catequesis del solicitante
     * @param nivel Nivel de la catequesis del solicitante
     */
    public void setNivel(String nivel) {
        this.nivel = nivel;
    }
    
    /**
     * Retorna el nombre de la instituci�n educativa del solicitante
     * @return Nombre de la instituci�n de ense�anza del solicitante.
     */
    public String getNombreInstitucion() {
        return nombre_institucion;
    }

    /**
     * Inicializa el nombre de la instituci�n de ense�anza del solicitante.
     * @param nombre_institucion El nombre de la instituci�n de ense�anza del solicitante.
     */
    public void setNombreInstitucion(String nombre_institucion) {
        this.nombre_institucion = nombre_institucion;
    }
    
    /**
     * Retorna el n�mero de la ficha de la inscripci�n
     * @return N�mero de ficha
     */
    public String getNumFicha() {
        return num_ficha;
    }

    /**
     * Inicializa el n�mero de ficha de inscripci�n
     * @param num_ficha N�mero de ficha de inscripci�n
     */
    public void setNumFicha(String num_ficha) {
        this.num_ficha = num_ficha;
    }

    /**
     * Retorna la observaci�n de la correspondiente Acta.
     * @return Observaci�n
     */
    public String getObservacion() {
        return observacion;
    }
    
    /**
     * Inicializa la observaci�n de la respectiva Acta
     * @param observacion Observaci�n de la respectiva Acta
     */
    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }
    
    /**
     * Inicialida el estado de la respectiva Acta.
     * @param estado Estado de la respectiva Acta
     */
    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    /**
     * Retorno de la estado de la respectiva Acta.
     * @return Estado de la respectiva de la Acta.
     */
    public boolean getEstado() {
        return estado;
    }
}
