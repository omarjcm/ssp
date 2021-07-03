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
 * Clase usada para Acta de Confirmación e Inscripción.
 * @author CoDeSOFTWARE
 * @version v1.0
 */
public class Confirmar {
    public String ministro_nya;
    public Solicitante confirmado;
    public Solicitante padre;
    public Solicitante madre;
    public Solicitante padrino;
    public Solicitante madrina;
    public RegistroEclesiastico re;
    /**
     * Identificador del registro de Confirmación
     */
    private int id_confirmacion;
    /**
     * Fecha de la ceremonia de Confirmación
     */
    private Date fecha_confirmacion;
    /**
     * Lugar de la ceremonia de Confirmación
     */
    private String lugar_confirmacion;
    /**
     * Número de ficha de inscripción
     */
    private String num_ficha;
    /**
     * Nivel de la respectiva catequesis.
     */
    private String nivel;
    /**
     * Lugar de la ceremonia de la comunión
     */
    private String lugar_comunion;
    /**
     * Fecha de la ceremonia de la Comunión
     */
    private Date fecha_comunion;
    /**
     * Curso educativo que asiste a su respectiva unidad educativa.
     */
    private String curso;
    /**
     * Se llena si es que existió alguna anomalía, u otro asunto, al momento de efectuarse o realizarse el Sacramento.
     */
    private String observacion;
    /**
     * Muestra el estado del documento, si éste ha sido anulado o no.
     */
    private boolean estado;
    
    /**
     * Constructor de la clase Confirmación
     */
    public Confirmar() {
        confirmado = new Solicitante();
        padre = new Solicitante();
        madre = new Solicitante();
        padrino = new Solicitante();
        madrina = new Solicitante();
        re = new RegistroEclesiastico();
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
     * Retorna el estado del Acta de Confirmación
     * @return Estado del Acta
     */
    public boolean getEstado() {
        return estado;
    }

    /**
     * Incializa la fecha de comunión
     * @param fecha_comunion Fecha de la ceremonia de la comunión
     */
    public void setFechaComunion(Date fecha_comunion) {
        this.fecha_comunion = fecha_comunion;
    }

    /**
     * Retorna de la fecha de la comunión
     * @return Fecha de la comunión
     */
    public Date getFechaComunion() {
        return fecha_comunion;
    }

    /**
     * Inicializa de la Fecha de la confirmación
     * @param fecha_confirmacion Fecha de la ceremonia de confirmación
     */
    public void setFechaConfirmacion(Date fecha_confirmacion) {
        this.fecha_confirmacion = fecha_confirmacion;
    }

    /**
     * Retorna de la fecha de la ceremonia de Confirmación
     * @return Fecha de confirmación
     */
    public Date getFechaConfirmacion() {
        return fecha_confirmacion;
    }

    /**
     * Inicializa el id del registro de confirmación
     * @param id_confirmacion Id del registro de confirmacion
     */
    public void setIdConfirmacion(int id_confirmacion) {
        this.id_confirmacion = id_confirmacion;
    }

    /**
     * Retorno del id del registro de Confirmación
     * @return Id del registro de Confirmación
     */
    public int getIdConfirmacion() {
        return id_confirmacion;
    }

    /**
     * Inicializa el lugar de primera comunión
     * @param lugar_comunion Lugar de la ceremonia primera comunion
     */
    public void setLugarComunion(String lugar_comunion) {
        this.lugar_comunion = lugar_comunion;
    }

    /**
     * Retorna el lugar de la ceremonia de la Primera Comunión
     * @return Lugar de la ceremonia de la Primera Comunión
     */
    public String getLugarComunion() {
        return lugar_comunion;
    }

    /**
     * Inicializa el lugar de la ceremonia de la Confirmación
     * @param lugar_confirmacion Lugar de ceremonia de la Confirmación
     */
    public void setLugarConfirmacion(String lugar_confirmacion) {
        this.lugar_confirmacion = lugar_confirmacion;
    }

    /**
     * Retorna el lugar de la confirmación
     * @return Lugar de la confirmación
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
     * Inicializa el número de ficha de inscripción
     * @param num_ficha Ficha de inscripción
     */
    public void setNumFicha(String num_ficha) {
        this.num_ficha = num_ficha;
    }

    /**
     * Retorna número de Ficha de inscripción
     * @return Número de ficha de inscripción
     */
    public String getNumFicha() {
        return num_ficha;
    }

    /**
     * Incializa la observación´de una acta
     * @param observacion Observacion de una Acta
     */
    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }

    /**
     * Retorna la observación de una Acta
     * @return Observacion
     */
    public String getObservacion() {
        return observacion;
    }
    
    
    public String getre_num_sacramento(){
        return re.getNumSacramento();
    }
    
    public void setre_num_sacramento(String num_sacramento){
        re.setNumSacramento(num_sacramento);
    }
    
    public String getre_anio_libro(){
        return re.getAnioLibro();
    }
    
    public void setre_anio_libro(String anio){
        re.setAnioLibro(anio);
    }
    
    public String getre_num_libro(){
        return re.getNumLibro();
    }
    
    public void setre_num_libro(String num_libro){
        re.setNumLibro(num_libro);
    }
    
    public String getre_folio_libro(){
        return re.getFolioLibro();
    }
    
    public void setre_folio_libro(String folio){
        re.setFolioLibro(folio);
    }
    
    public String getministro_nya(){    //nombre y apellido
        return ministro_nya;
    }
    public String getpadre_nombre(){
        return padre.getNombre();
    }
    
    public String getpadre_apellido(){
        return padre.getApellido();
    }
    
    public void setpadre_nombre(String nom_padre) {
        padre.setNombre(nom_padre);
    }
    
    public void setpadre_apellido(String ape_padre) {
        padre.setApellido(ape_padre);
    }
    
    public String getmadre_nombre() {
        return madre.getNombre();
    }
    
    public String getmadre_apellido() {
        return madre.getApellido();
    }
    
    public void setmadre_nombre(String nom_madre) {
        madre.setNombre(nom_madre);
    }
    
    public void setmadre_apellido(String ape_madre) {
        madre.setApellido(ape_madre);
    }
    
    public String getpadrino_nombre() {
        return padrino.getNombre();
    }
    
    public String getpadrino_apellido() {
        return padrino.getApellido();
    }
    
    public void setpadrino_nombre(String nom_padrino) {
        padrino.setNombre(nom_padrino);
    }
    
    public void setpadrino_apellido(String ape_padrino) {
        padrino.setApellido(ape_padrino);
    }
    
    public String getmadrina_nombre() {
        return madrina.getNombre();
    }
    
    public String getmadrina_apellido() {
        return madrina.getApellido();
    }
    
    public void setmadrina_nombre(String nom_madrina) {
        madrina.setNombre(nom_madrina);
    }
    
    public void setmadrina_apellido(String ape_madrina) {
        madrina.setApellido(ape_madrina);
    }
    
    public void setconfirmado_nombre(String confirmado_nombre){
        confirmado.setNombre(confirmado_nombre);
    }
    
    public void setconfirmado_apellido(String confirmado_apellido){
        confirmado.setApellido(confirmado_apellido);
    }
    
    public void setconfirmado_sexo(boolean sexo){
        confirmado.setSexo(sexo);
    }
    
    public void setciudad_bautizado(){
        
    }
}