/*
 * Esposos.java
 *
 * Created on 27 de agosto de 2007, 01:49 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package SSP;

/**
 *
 * @author Administrator
 */
public class Esposos {
    private long id_matrimonio;
    private Solicitante esposo;
    private Solicitante esposa;
    
    /** Creates a new instance of Esposos */
    public Esposos() {
        setEsposo(new Solicitante());
        setEsposa(new Solicitante());
    }

    public void setId_matrimonio(long id_matrimonio) {
        this.id_matrimonio = id_matrimonio;
    }

    public long getId_matrimonio() {
        return id_matrimonio;
    }

    public Solicitante getEsposo() {
        return esposo;
    }

    public void setEsposo(Solicitante esposo) {
        this.esposo = esposo;
    }

    public Solicitante getEsposa() {
        return esposa;
    }

    public void setEsposa(Solicitante esposa) {
        this.esposa = esposa;
    }
}