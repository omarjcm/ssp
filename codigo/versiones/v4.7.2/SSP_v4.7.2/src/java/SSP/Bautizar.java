/*
 * Bautizar.java
 *
 * Created on 1 de junio de 2007, 11:29 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package SSP;

import java.util.Date;
import java.sql.*;

/**
 * Clase usada para Acta de Bautizo e Inscripción.
 * @author CoDeSOFTWARE
 * @version v1.0
 */
public class Bautizar {
    /**
     * Identificador del registro Bautizo
     */
    private int id_bautizo;
    /**
     * Se llena si es que existió alguna anomalía, u otro asunto, al momento de efectuarse o realizarse el Sacramento.
     */
    private String observacion;
    /**
     * Muestra el estado del documento, si éste ha sido anulado o no.
     */
    private boolean estado;
    
    public String ministro_nya;
    public Solicitante bautizado;
    public Solicitante padre;
    public Solicitante madre;
    public Solicitante padrino;
    public Solicitante madrina;
    public Ministro ministro;
    public RegistroCivil rc;
    public RegistroEclesiastico re;
    
    public String sex;
    
    private String mensaje_error;
    public ConexionDB cnx;
    public Connection con;
    public CallableStatement cst;
    public ResultSet rs;
    
    /**
     * Constructor de la clase Bautizar
     */
    public Bautizar() {
        bautizado = new Solicitante();
        padre = new Solicitante();
        madre = new Solicitante();
        padrino = new Solicitante();
        madrina = new Solicitante();
        ministro = new Ministro();
        rc = new RegistroCivil();
        re = new RegistroEclesiastico();
        cnx= new ConexionDB();
    }

    /**
     * Retorna el Id de Bautizo de un registro.
     * @return Id del registro de una Acta de Bautizo
     */
    public int getIdBautizo() {
        return id_bautizo;
    }
    
    /**
     * Inicializa el id de bautizo
     * @param id_bautizo Id de bautizo
     */
    public void setIdBautizo(int id_bautizo) {
        this.id_bautizo = id_bautizo;
    }

    /**
     * Retorna si existe alguna observación en el Acta de Bautizo.
     * @return Observación
     */
    public String getObservacion() {
        return observacion;
    }

    /**
     * Inicializa el campo observación, si existe.
     * @param observacion Observacion acerca del Acta.
     */
    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }

    /**
     * Retorna el estado de un Acta
     * @return El estado de una acta
     */
    public boolean getEstado() {
        return estado;
    }

    /**
     * Inicializa el estado de una Acta
     * @param estado Estado de una Acta
     */
    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public String getbautizado_nombre() {
        return bautizado.getNombre();
    }
    
    public String getbautizado_apellido() {
        return bautizado.getApellido();
    }
    
    public void setbautizado_nombre(String nom_bautizado) {
        bautizado.setNombre(nom_bautizado);
    }
    
    public void setbautizado_apellido(String ape_bautizado) {
        bautizado.setApellido(ape_bautizado);
    }
    
    public String getfecha_nacimiento(){
        return bautizado.getFechaNacimiento().toString();
    }
    
    public void setfecha_nacimiento(String fecha){
        bautizado.setFechaNacimiento(java.sql.Date.valueOf(fecha));
    }
    
    public String getlugar_nacimiento(){
        return bautizado.getLugarNacimiento();
    }
    
    public void setlugar_nacimiento(String lugar){
        bautizado.setLugarNacimiento(lugar);
    }
    
    public String getbautizado_sexo(){
        return sex;
    }
       
    public void setbautizado_sexo(String sexo){
        sex = sexo;
    }
    
    public void cambiarSexo(){
        if(sex.compareTo("1")==0)
            bautizado.setSexo(true);
        else
            bautizado.setSexo(false);
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
    
    public String getfecha_bautizo(){
        return re.getFechaBautizo().toString();
    }
    
    public void setfecha_bautizo(String fecha_bautizo){
        re.setFechaBautizo(java.sql.Date.valueOf(fecha_bautizo));
    }
    
    public String getlugar_bautizo(){
        return re.getLugarBautizo();
    }
    
    public void setlugar_bautizo(String lugar_bautizo){
        re.setLugarBautizo(lugar_bautizo);
    }
    
    public String getministro_nya(){    //nombre y apellido
        return ministro_nya;
    }
    
    public void setministro_nya(String ministro_nya){
        this.ministro_nya = ministro_nya;
    }
    
    public String getre_ministro_nombre(){
        return ministro.getNombre();
    }
    
    public void setministro_nombre(String nom_ministro){
        ministro.setNombre(nom_ministro);
    }
    
    public String getministro_apellido(){
        return ministro.getApellido();
    }
    
    public void setministro_apellido(String ape_ministro){
        ministro.setApellido(ape_ministro);
    }
    
    public String getid_ministro(){
        return String.valueOf(ministro.getId_ministro());
    }
    
    public void setid_ministro(String id_ministro){        
        ministro.setId_ministro(Integer.parseInt(id_ministro));
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
    
    public boolean ingresarBautizo(long id_usuario_)throws SQLException{
        rs = null;
        cambiarSexo();
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_ingresar_acta_bautizo(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
                cst.setString(1,bautizado.getNombre());
                cst.setString(2,bautizado.getApellido());
                cst.setBoolean(3,bautizado.getSexo());
                cst.setDate(4, (java.sql.Date)bautizado.getFechaNacimiento());
                cst.setString(5,bautizado.getLugarNacimiento());
                cst.setString(6,padre.getNombre());
                cst.setString(7,padre.getApellido());
                cst.setString(8,madre.getNombre());
                cst.setString(9,madre.getApellido());
                cst.setString(10,padrino.getNombre());
                cst.setString(11,padrino.getApellido());
                cst.setString(12,madrina.getNombre());
                cst.setString(13,madrina.getApellido());
                cst.setString(14,rc.getTomo());
                cst.setString(15,rc.getAnio());
                cst.setString(16,rc.getFolio());
                cst.setString(17,rc.getActa());
                cst.setString(18,rc.getLugarInscripcion());
                cst.setLong(19,ministro.getId_ministro());                           
                cst.setLong(20,id_usuario_); 
                cst.setString(21,re.getNumSacramento());
                cst.setString(22,re.getNumLibro());
                cst.setString(23,re.getFolioLibro());
                cst.setString(24,re.getAnioLibro());
                cst.setString(25,re.getLugarBautizo());
                cst.setDate(26,(java.sql.Date) re.getFechaBautizo());
                cst.setString(27,getObservacion());
                cst.registerOutParameter(28,java.sql.Types.CHAR);
                cst.execute();
                setMensaje_error(cst.getString(28));
                con.close();
                return true;
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
    }
}