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
 *   4.7        Guillermo Pizarro   15/07/07  
 * ==============================================================
 *
 */

package SSP;

/**
 * Clase usada para Esposos.
 * <p>Referencia DDS:
 * <p>Invariantes: 
 * @author	CoDeSOFTWARE
 * @version	1.0
 */
public class Esposos {
    /*ATRIBUTOS DE LA CLASE*/
    /**
     * identifica los campos de esposos
     *
     * <p>requisito: 
     */
    private long id_matrimonio;
    /**
     * Muestra los datos del objeto solicitante esposo.
     */
    private Solicitante esposo;
    /**
     * Muestra los datos del objeto solicitante esposa.
     */
    private Solicitante esposa;
    
    /*CONSTRUCTORES*/
    /**
     * Constructor que crea una instancia Esposos.
     * <p>requisito: R
     */
    
    public Esposos() {
        setEsposo(new Solicitante());
        setEsposa(new Solicitante());
    }

     /**
     *Setea el identificador del matrimonio.
     * @param id_matrimonio  identificador del matrimonio.
     */
    public void setId_matrimonio(long id_matrimonio) {
        this.id_matrimonio = id_matrimonio;
    }

     /**
     * Obtiene el identificador del matrimonio.
     * @return id_matrimonio.
     */
    public long getId_matrimonio() {
        return id_matrimonio;
    }

     /**
     * Obtiene los datos del solicitante Esposos.
     * @return esposo.
     */
        public Solicitante getEsposo() {
        return esposo;
    }

    /**
     * Obtiene los datos del solicitante Esposo.
     * @return esposo.
     */
    public void setEsposo(Solicitante esposo) {
        this.esposo = esposo;
    }

    /**
     * Obtiene los datos del solicitante Esposa.
     * @return esposa.
     */
    public Solicitante getEsposa() {
        return esposa;
    }

    /**
     * Obtiene los datos del solicitante Esposa.
     * @param esposa.
     */
    public void setEsposa(Solicitante esposa) {
        this.esposa = esposa;
    }
}