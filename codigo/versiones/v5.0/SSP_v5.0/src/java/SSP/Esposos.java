/*
 * 
 * Archivo:	Esposos.java
 * Autor:	CoDeSoftware 
 * Licencia:	GNU/GPL
 * Fecha de Creación: 27/08/2007
 *
 * ==============================================================
 *
 * Historial de Modificaciones:
 *
 * Versión	Responsable         Fecha     Cambio     Razón de Cambio
 *   1.0	CoDeSOFTWARE        05/06/07  
 *   4.7.1.1    Stephanie Flores    15/07/07  
 * ==============================================================
 *
 */
package SSP;
/**
 * Clase usada para manejar los datos de los esposos
 * <p>Referencia DDS:  
 * <p>Invariantes: 
 * @author	CoDeSOFTWARE
 * @version	1.0
 */
public class Esposos {
    /*ATRIBUTOS DE LA CLASE*/
    /**
     * identifica los datos de los esposos
     *
     * <p>requisito: RD-MD
     */
    
    /**
     * identificador del matrimonio
     */
    private long id_matrimonio;
    /**
     * Datos del solicitante esposo
     */
    private Solicitante esposo;
    /**
     * Datos del solicitante esposa
     */
    private Solicitante esposa;
    
    /*CONSTRUCTORES*/
    /**
     * Constructor que crea una instancia Esposos.
     * <p>requisito: 
     */
    public Esposos() {
        setEsposo(new Solicitante());
        setEsposa(new Solicitante());
    }

    /**
     * Setea el identificador del marimonio.
     * @param id_matrimonio
     */
    public void setId_matrimonio(long id_matrimonio) {
        this.id_matrimonio = id_matrimonio;
    }

    /**
     * Retorna el identificador del matrimonio.
     * @return long id_matrimonio
     */
    public long getId_matrimonio() {
        return id_matrimonio;
    }

    /**
     * Retorna el objeto solicitante esposo.
     * @return Solicitante esposo
     */
    public Solicitante getEsposo() {
        return esposo;
    }

    /**
     * Setea el objeto solicitante esposo.
     * @param id_usuario
     */
    public void setEsposo(Solicitante esposo) {
        this.esposo = esposo;
    }

     /**
     * Retorna el objeto solicitante esposa.
     * @return Solicitante esposa
     */
    public Solicitante getEsposa() {
        return esposa;
    }

    /**
     * Setea el objeto solicitante esposa.
     * @param id_usuario
     */
    public void setEsposa(Solicitante esposa) {
        this.esposa = esposa;
    }
}