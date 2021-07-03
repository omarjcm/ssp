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
import java.sql.*;

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
    
    public Solicitante esposo;
    public Solicitante esposa;
    public Solicitante pa_esposo;
    public Solicitante ma_esposo;
    public Solicitante pa_esposa;
    public Solicitante ma_esposa;
    public Solicitante padrino;
    public Solicitante madrina;
    public Ministro ministro;
    public RegistroCivil rc;
    public RegistroEclesiastico re;
    
    public String id_ministro;
    public String padrinos;
    
    private String mensaje_error;
    public ConexionDB cnx;
    public Connection con;
    public CallableStatement cst;
    public ResultSet rs;
    
    /**
     * Constructor de la clase Casar
     */
    public Casar() {
        esposo = new Solicitante();
        esposa = new Solicitante();
        pa_esposo = new Solicitante();
        ma_esposo = new Solicitante();
        pa_esposa = new Solicitante();
        ma_esposa = new Solicitante();
        padrino = new Solicitante();
        madrina = new Solicitante();
        ministro = new Ministro();
        rc = new RegistroCivil();
        re = new RegistroEclesiastico();
        
        cnx= new ConexionDB();
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
    
    public String getesposo_nombre() {
        return esposo.getNombre();
    }
            
    public void setesposo_nombre(String nom_esposo) {
        esposo.setNombre(nom_esposo);
    }
    
    public String getesposo_apellido() {
        return esposo.getApellido();
    }
    
    public void setesposo_apellido(String ape_esposo) {
        esposo.setApellido(ape_esposo);
    }
    
    public String getesposa_nombre() {
        return esposa.getNombre();
    }
            
    public void setesposa_nombre(String nom_esposa) {
        esposa.setNombre(nom_esposa);
    }
    
    public String getesposa_apellido() {
        return esposa.getApellido();
    }
    
    public void setesposa_apellido(String ape_esposa) {
        esposa.setApellido(ape_esposa);
    }
    
    public String getpa_esposo_nombre() {
        return pa_esposo.getNombre();
    }
            
    public void setpa_esposo_nombre(String pa_nom_esposo) {
        pa_esposo.setNombre(pa_nom_esposo);
    }
    
    public String getpa_esposo_apellido() {
        return pa_esposo.getApellido();
    }
    
    public void setpa_esposo_apellido(String pa_ape_esposo) {
        pa_esposo.setApellido(pa_ape_esposo);
    }
    
    public String getma_esposo_nombre() {
        return ma_esposo.getNombre();
    }
            
    public void setma_esposo_nombre(String ma_nom_esposo) {
        ma_esposo.setNombre(ma_nom_esposo);
    }
    
    public String getma_esposo_apellido() {
        return ma_esposo.getApellido();
    }
    
    public void setma_esposo_apellido(String ma_ape_esposo) {
        ma_esposo.setApellido(ma_ape_esposo);
    }
    
    public String getpa_esposa_nombre() {
        return pa_esposa.getNombre();
    }
            
    public void setpa_esposa_nombre(String pa_nom_esposa) {
        pa_esposa.setNombre(pa_nom_esposa);
    }
    
    public String getpa_esposa_apellido() {
        return pa_esposa.getApellido();
    }
    
    public void setpa_esposa_apellido(String pa_ape_esposa) {
        pa_esposa.setApellido(pa_ape_esposa);
    }
    
    public String getma_esposa_nombre() {
        return ma_esposa.getNombre();
    }
            
    public void setma_esposa_nombre(String ma_nom_esposa) {
        ma_esposa.setNombre(ma_nom_esposa);
    }
    
    public String getma_esposa_apellido() {
        return ma_esposa.getApellido();
    }
    
    public void setma_esposa_apellido(String ma_ape_esposa) {
        ma_esposa.setApellido(ma_ape_esposa);
    }
    
    public String getpadrino_nombre() {
        return padrino.getNombre();
    }
            
    public void setpadrino_nombre(String nom_padrino) {
        padrino.setNombre(nom_padrino);
    }
    
    public String getpadrino_apellido() {
        return padrino.getApellido();
    }
    
    public void setpadrino_apellido(String ape_padrino) {
        padrino.setApellido(ape_padrino);
    }
    
    public String getmadrina_nombre() {
        return madrina.getNombre();
    }
            
    public void setmadrina_nombre(String nom_madrina) {
        madrina.setNombre(nom_madrina);
    }
    
    public String getmadrina_apellido() {
        return madrina.getApellido();
    }
    
    public void setmadrina_apellido(String ape_madrina) {
        madrina.setApellido(ape_madrina);
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
    
    public String getid_ministro(){
        return String.valueOf(ministro.getId_ministro());
    }
    
    public void setid_ministro(String id_ministro){        
        ministro.setId_ministro(Integer.parseInt(id_ministro));
    }
    
    public void setfecha_matrimonio(String fecha_matrimonio){
        setFechaMatrimonio(java.sql.Date.valueOf(fecha_matrimonio));
    }
    
    public String getfecha_matrimonio(){
        return getFechaMatrimonio().toString();
    }
    
    public String getrc_acta(){
        return rc.getActa();
    }
    
    public void setrc_acta(String acta){
        rc.setActa(acta);
    }
    
    public String getrc_anio(){
        return rc.getAnio();
    }
    
    public void setrc_anio(String anio){
        rc.setAnio(anio);
    }
    
    public String getrc_tomo(){
        return rc.getTomo();
    }
    
    public void setrc_tomo(String tomo){
        rc.setTomo(tomo);
    }
    
    public String getrc_folio(){
        return rc.getFolio();
    }
    
    public void setrc_folio(String folio){
        rc.setFolio(folio);
    }
    
    public String getrc_lugar(){
        return rc.getLugarInscripcion();
    }
    
    public void setrc_lugar(String lugar){
        rc.setLugarInscripcion(lugar);
    }

    public String getMensaje_error() {
        return mensaje_error;
    }

    public void setMensaje_error(String mensaje_error) {
        this.mensaje_error = mensaje_error;
    }
    
    public boolean ingresarMatrimonio(long id_usuario_) throws SQLException{
        rs = null;
        
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp.ssp_ingresar_acta_matrimonio(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
                cst.setString(1,re.getNumSacramento());                
                cst.setString(2,re.getNumLibro());                
                cst.setString(3,re.getFolioLibro());
                cst.setString(4,re.getAnioLibro());
                cst.setLong(5,ministro.getId_ministro());  //id_ministro                
                cst.setString(6,"Guayaquil");
                cst.setDate(7, (java.sql.Date) getFechaMatrimonio()); //fecha matrimonio
                cst.setString(8,getObservacion());
                cst.setString(9,esposo.getNombre());
                cst.setString(10,esposo.getApellido());
                cst.setString(11,esposa.getNombre());
                cst.setString(12,esposa.getApellido());                
                cst.setString(13,pa_esposo.getNombre());
                cst.setString(14,pa_esposo.getApellido());
                cst.setString(15,pa_esposa.getNombre());
                cst.setString(16,pa_esposa.getApellido());
                cst.setString(17,ma_esposo.getNombre());
                cst.setString(18,ma_esposo.getApellido());
                cst.setString(19,ma_esposa.getNombre());
                cst.setString(20,ma_esposa.getApellido());
                cst.setString(21,padrino.getNombre());  //nom padrino 
                cst.setString(22,padrino.getApellido());  //ape padrino
                cst.setString(23,madrina.getNombre());  //nom madrina
                cst.setString(24,madrina.getApellido());  //ape madrina
                cst.setString(25,rc.getActa());
                cst.setString(26,rc.getAnio());
                cst.setString(27,rc.getTomo());              
                cst.setString(28,rc.getFolio());
                cst.setString(29,rc.getLugarInscripcion());                                                
                cst.setLong(30,id_usuario_);  //id_usuario                                                
                cst.registerOutParameter(31,java.sql.Types.CHAR);
                rs=cst.executeQuery();
                con.close();                               
            }
            catch(SQLException e){
                setMensaje_error(e.getMessage());
                con.close();
                return false;
            }
        }
        else{
            return false;
        }
        return true;
    }
}
