/*
 * RegistroEclesiastico.java
 *
 * Created on 2 de junio de 2007, 12:14 AM
 *
 */

package SSP;

import java.lang.*;
import java.util.*;
/**
 * Clase que identifica un Registro Eclesiastico
 * @author CoDeSOFTWARE
 * @verión 1.0
 */
public class RegistroEclesiastico {
    
 
    /**
     * atributo que identifica un registro eclesiastico
     */
    private long id_registro_eclesiastico;
    /**
     * numero que identica un sacramento en los libros
     */
    private String num_sacramento;
    /**
     * numero de libro al que pertenece un acta o inscripción
     */
    private String num_libro;
    /**
     * página del libro en que esta un acta o inscripción
     */
    private String folio_libro;
    /**
     * año del en que se realizo una inscripción o sacramento
     */
    private String anio_libro;
    /**
     * lugar en que se realizo el bautizo
     */
    private String lugar_bautizo;
    /**
     * fecha en que realizo un  bautizo
     */
    private Date fecha_bautizo;
    /**
     * iglesia donde se bautizo
     */
    private String iglesia_bautizo;
    /**
     * lugar donde pertenece la Parroquia eclesiastica
     */
    private String arquidiocesis;
    /**
     * identifica si es un acta o una inscripción
     */
    private boolean es_acta;
    
    /**
     * Constructor utilizado para generar un instancia de RegistroEclesiastico
     */
    public RegistroEclesiastico() {
    }
 
    /**
     * retorna el identificador de un registro eclesiastico
     * @return long
     */
    public long getIdRegistroEclesiastico() {
        return id_registro_eclesiastico;
    }

    /**
     * retorna el numero del sacramento o la inscripción
     * @return String
     */
    public String getNumSacramento() {
        return num_sacramento;
    }

    /**
     * retorna el numero del libro al cual pertenece el sacramento o inscripción
     * @return String
     */
    public String getNumLibro() {
        return num_libro;
    }

    /**
     * retorna el numero de página en donde se encuentra un sacramento o inscripción
     * @return String
     */
    public String getFolioLibro() {
        return folio_libro;
    }

    /**
     * retorna el año en el cual se registro un sacramento o inscripción
     * @return String
     */
    public String getAnioLibro() {
        return anio_libro;
    }

    /**
     * retorna el lugar donde se realizo un bautizo
     * @return String
     */
    public String getLugarBautizo() {
        return lugar_bautizo;
    }

    /**
     * Retorna la fecha en la cual se realizo un bautizo.
     * @return Date
     */
    public Date getFechaBautizo() {
        return fecha_bautizo;
    }

    /**
     * Retorna el nombre de la iglesia en el cual se bautizo.
     * @return String
     */
    public String getIglesiaBautizo() {
        return iglesia_bautizo;
    }

    /**
     * Retorna el nombre de la arquidiocesis a la cual pertenece una Parroquia.
     * @return String
     */
    public String getArquidiocesis() {
        return arquidiocesis;
    }

    /**
     * Retorna 1 cuando es un sacramento y 0 cuando es una inscripción.
     * @return boolean
     */
    public boolean getEsActa() {
        return es_acta;
    }

   
    /**
     * Inicializa el id del RegistroEclesiastico
     * @param id_registro_eclesiastico String
     */
    public void setIdRegistroEclesiastico(long id_registro_eclesiastico) {
        this.id_registro_eclesiastico = id_registro_eclesiastico;
    }

    /**
     * Inicializa el numero del sacramento.
     * @param num_sacramento String
     */
    public void setNumSacramento(String num_sacramento) {
        this.num_sacramento = num_sacramento;
    }

    /**
     * Inicializa el numero del libro.
     * @param num_libro String
     */
    public void setNumLibro(String num_libro) {
        this.num_libro = num_libro;
    }

    /**
     * Inicializa la página de un libro.
     * @param folio_libro String
     */
    public void setFolioLibro(String folio_libro) {
        this.folio_libro = folio_libro;
    }

    /**
     * Inicializa el año del libro.
     * @param anio_libro String
     */
    public void setAnioLibro(String anio_libro) {
        this.anio_libro = anio_libro;
    }

    /**
     * Inicializa el lugar.
     * @param lugar_bautizo String
     */
    public void setLugarBautizo(String lugar_bautizo) {
        this.lugar_bautizo = lugar_bautizo;
    }

    /**
     * Inicializa la fecha.
     * @param fecha_bautizo Date
     */
    public void setFechaBautizo(Date fecha_bautizo) {
        this.fecha_bautizo = fecha_bautizo;
    }

    /**
     * Inicializa la iglesia de bautizo.
     * @param iglesia_bautizo String
     */
    public void setIglesiaBautizo(String iglesia_bautizo) {
        this.iglesia_bautizo = iglesia_bautizo;
    }

    /**
     * Inicializa la arquidicesis.
     * @param arquidiocesis String
     */
    public void setArquidiocesis(String arquidiocesis) {
        this.arquidiocesis = arquidiocesis;
    }

    /**
     * Inicializa el acta.
     * @param es_acta boolean
     */
    public void setEsActa(boolean es_acta) {
        this.es_acta = es_acta;
    }
}