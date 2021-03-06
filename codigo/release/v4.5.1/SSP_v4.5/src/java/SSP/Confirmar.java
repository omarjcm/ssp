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
import java.sql.*;
import java.lang.*;

/**
 * Clase usada para Acta de Confirmaci?n e Inscripci?n.
 * @author CoDeSOFTWARE
 * @version v1.0
 */
public class Confirmar {

    /**
     * Identificador del registro de Confirmaci?n
     */
    private int id_confirmacion;
    /**
     * Fecha de la ceremonia de Confirmaci?n
     */
    private Date fecha_confirmacion;
    /**
     * Lugar de la ceremonia de Confirmaci?n
     */
    private String lugar_confirmacion;
    /**
     * N?mero de ficha de inscripci?n
     */
    private String num_ficha;
    /**
     * Nivel de la respectiva catequesis.
     */
    private String nivel;
    /**
     * Lugar de la ceremonia de la comuni?n
     */
    private String lugar_comunion;
    /**
     * Fecha de la ceremonia de la Comuni?n
     */
    private Date fecha_comunion;
    /**
     * Curso educativo que asiste a su respectiva unidad educativa.
     */
    private String curso;
    /**
     * Se llena si es que existi? alguna anomal?a, u otro asunto, al momento de efectuarse o realizarse el Sacramento.
     */
    private String observacion;
    /**
     * Muestra el estado del documento, si ?ste ha sido anulado o no.
     */
    private boolean estado;
    
    
    public String sexo;
    public Solicitante confirmado;
    public Solicitante padre;
    public Solicitante madre;
    public Solicitante padrino;
    public Solicitante madrina;
    public Ministro ministro;
    public RegistroEclesiastico reg_eclesiastico;
    
    private String mensaje_error;
    public ConexionDB cnx;
    public Connection con;
    public CallableStatement cst;
    public ResultSet rs;
    
    /**
     * Constructor de la clase Confirmaci?n
     */
    public Confirmar() {
        confirmado = new Solicitante();
        padre = new Solicitante();
        madre = new Solicitante();
        padrino = new Solicitante();
        madrina = new Solicitante();
        ministro = new Ministro();
        reg_eclesiastico = new RegistroEclesiastico();
        cnx= new ConexionDB();
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
     * Retorna el estado del Acta de Confirmaci?n
     * @return Estado del Acta
     */
    public boolean getEstado() {
        return estado;
    }

    /**
     * Incializa la fecha de comuni?n
     * @param fecha_comunion Fecha de la ceremonia de la comuni?n
     */
    public void setFechaComunion(Date fecha_comunion) {
        this.fecha_comunion = fecha_comunion;
    }

    /**
     * Retorna de la fecha de la comuni?n
     * @return Fecha de la comuni?n
     */
    public Date getFechaComunion() {
        return fecha_comunion;
    }

    /**
     * Inicializa de la Fecha de la confirmaci?n
     * @param fecha_confirmacion Fecha de la ceremonia de confirmaci?n
     */
    public void setFechaConfirmacion(Date fecha_confirmacion) {
        this.fecha_confirmacion = fecha_confirmacion;
    }

    /**
     * Retorna de la fecha de la ceremonia de Confirmaci?n
     * @return Fecha de confirmaci?n
     */
    public Date getFechaConfirmacion() {
        return fecha_confirmacion;
    }

    /**
     * Inicializa el id del registro de confirmaci?n
     * @param id_confirmacion Id del registro de confirmacion
     */
    public void setIdConfirmacion(int id_confirmacion) {
        this.id_confirmacion = id_confirmacion;
    }

    /**
     * Retorno del id del registro de Confirmaci?n
     * @return Id del registro de Confirmaci?n
     */
    public int getIdConfirmacion() {
        return id_confirmacion;
    }

    /**
     * Inicializa el lugar de primera comuni?n
     * @param lugar_comunion Lugar de la ceremonia primera comunion
     */
    public void setLugarComunion(String lugar_comunion) {
        this.lugar_comunion = lugar_comunion;
    }

    /**
     * Retorna el lugar de la ceremonia de la Primera Comuni?n
     * @return Lugar de la ceremonia de la Primera Comuni?n
     */
    public String getLugarComunion() {
        return lugar_comunion;
    }

    /**
     * Inicializa el lugar de la ceremonia de la Confirmaci?n
     * @param lugar_confirmacion Lugar de ceremonia de la Confirmaci?n
     */
    public void setLugarConfirmacion(String lugarconfirmacion) {
        this.lugar_confirmacion = lugarconfirmacion;
    }

    /**
     * Retorna el lugar de la confirmaci?n
     * @return Lugar de la confirmaci?n
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
     * Inicializa el n?mero de ficha de inscripci?n
     * @param num_ficha Ficha de inscripci?n
     */
    public void setNumFicha(String num_ficha) {
        this.num_ficha = num_ficha;
    }

    /**
     * Retorna n?mero de Ficha de inscripci?n
     * @return N?mero de ficha de inscripci?n
     */
    public String getNumFicha() {
        return num_ficha;
    }

    /**
     * Incializa la observaci?n?de una acta
     * @param observacion Observacion de una Acta
     */
    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }

    /**
     * Retorna la observaci?n de una Acta
     * @return Observacion
     */
    public String getObservacion() {
        return observacion;
    }
    
    
     /*****************************METODOS DE LOS BEAN*********************************/
    public void setnum_sacramento(String num_sacramento ){
        reg_eclesiastico.setNumSacramento(num_sacramento);
    }
    
    public String getnum_sacramento(){
        return reg_eclesiastico.getNumSacramento();
    }
    
    public void setanio_libro(String anio_libro ){
        reg_eclesiastico.setAnioLibro(anio_libro );
    }
    
    public String getanio_libro(){
        return reg_eclesiastico.getAnioLibro();
    }
    
    public String getnum_libro(){
        return reg_eclesiastico.getNumLibro();
    }
    
    public void setnum_libro(String num_libro){
        reg_eclesiastico.setNumLibro(num_libro);
    }
    
    public String getfolio_libro(){
        return reg_eclesiastico.getFolioLibro();
    }
    
    public void setfolio_libro(String folio_libro){
        reg_eclesiastico.setFolioLibro(folio_libro);
    }
    
    public String getconfirmado_nombre(){
        return confirmado.getNombre();
    }
    
    public void setconfirmado_nombre(String confirmado_nombre){
        confirmado.setNombre(confirmado_nombre);
    }
    
    public String getconfirmado_apellido(){
        return confirmado.getApellido();
    }
    
    public void setconfirmado_apellido(String confirmado_apellido){
        confirmado.setApellido(confirmado_apellido);
    }
    
    public String getconfirmado_sexo(){
        return sexo;
    }
    
    public void setconfirmado_sexo(String comulgado_sexo){
        this.sexo= comulgado_sexo;
    }
    
    public String getlugar_confirmacion(){
        return getLugarConfirmacion();
    }
    
    public void setlugar_confirmacion(String lugar_confirmacion){
        setLugarConfirmacion(lugar_confirmacion);
    }
    
    public String getfecha_nacimiento(){
        return confirmado.getFechaNacimiento().toString();
    }
    
    public void setfecha_nacimiento(String fecha_nacimiento){
        confirmado.setFechaNacimiento(java.sql.Date.valueOf(fecha_nacimiento));
    }
    
    public String getfecha_confirmacion(){
        return getFechaConfirmacion().toString();
    }
    
    public void setfecha_confirmacion(String fecha_confirmacion){
        setFechaConfirmacion(java.sql.Date.valueOf(fecha_confirmacion));
    }
    
    public String getid_ministro(){
        return String.valueOf(ministro.getId_ministro());
    }
    
    public void setid_ministro(String id_ministro){
        ministro.setId_ministro(Integer.parseInt(id_ministro));
    }
    
    public String getpadre_nombre(){
        return padre.getNombre();
    }
    
    public void setpadre_nombre(String padre_nombre){
        padre.setNombre(padre_nombre);
    }
    
    public String getpadre_apellido(){
        return padre.getApellido();
    }
    
    public void setpadre_apellido(String padre_apellido){
        padre.setApellido(padre_apellido);
    }
    
    public String getmadre_nombre(){
        return madre.getNombre();
    }
    
    public void setmadre_nombre(String madre_nombre){
        madre.setNombre(madre_nombre);
    }
    
    public String getmadre_apellido(){
        return madre.getNombre();
    }
    
    public void setmadre_apellido(String madre_apellido){
        madre.setApellido(madre_apellido);
    }
    
     
    public String getpadrino_nombre(){
        return padrino.getNombre();
    }
    
    public void setpadrino_nombre(String padrino_nombre){
        padrino.setNombre(padrino_nombre);
    }
    
    public String getpadrino_apellido(){
        return padrino.getApellido();
    }
    
    public void setpadrino_apellido(String padrino_apellido){
        padrino.setApellido(padrino_apellido);
    }
    
    public String getmadrina_nombre(){
        return madrina.getNombre();
    }
    
    public void setmadrina_nombre(String madrina_nombre){
        madrina.setNombre(madrina_nombre);
    }
    
    public String getmadrina_apellido(){
        return madrina.getNombre();
    }
    
    public void setmadrina_apellido(String madrina_apellido){
        madrina.setApellido(madrina_apellido);
    }
    
     public String getMensaje_error() {
        return mensaje_error;
    }

    public void setMensaje_error(String mensaje_error) {
        this.mensaje_error = mensaje_error;
    }
/*    public String getobservacion(){
        return getObservacion();
    }
    
    public void setobservacion(String observacion){
        madrina.setApellido(observacion);
    }
   */ 
    public void tipoSexo(){
        if(getconfirmado_sexo().compareToIgnoreCase("0")==0){
            confirmado.setSexo(false);
        }
        confirmado.setSexo(true);
    }
    
    
    public boolean ingresarConfirmacion(long id_usuario_)throws Exception{
        rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
       
        tipoSexo();
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp.ssp_ingresar_acta_confirmacion(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
                cst.setString(1,confirmado.getNombre());
                cst.setString(2,confirmado.getApellido());
                cst.setBoolean(3,confirmado.getSexo());
                cst.setString(4,padre.getNombre());
                cst.setString(5, padre.getApellido());
                cst.setString(6, madre.getNombre());
                cst.setString(7, madre.getApellido());
                cst.setString(8, padrino.getNombre());
                cst.setString(9, padrino.getApellido());
                cst.setString(10, madrina.getNombre());
                cst.setString(11, madrina.getApellido());
                cst.setLong(12,ministro.getId_ministro());
                cst.setLong(13,id_usuario_);
                cst.setString(14, getnum_sacramento());
                cst.setString(15, getnum_libro());
                cst.setString(16, getfolio_libro());
                cst.setString(17, getanio_libro());
                cst.setString(18,getLugarConfirmacion());
                cst.setDate(19, (java.sql.Date) getFechaConfirmacion());
                cst.setDate(20, (java.sql.Date) confirmado.getFechaNacimiento());
                cst.setString(21, getObservacion());
                cst.registerOutParameter(22,java.sql.Types.CHAR);
                cst.execute();
                setMensaje_error(cst.getString(22));
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