/*
 * 
 * Archivo:	Bautizar.java
 * Autor:	CoDeSoftware 
 * Licencia:	GNU/GPL
 * Fecha de Creación: 02/06/2007
 *
 * ==============================================================
 *
 * Historial de Modificaciones:
 *
 * Versión	Responsable         Fecha     Cambio     Razón de Cambio
 *   1.0	CoDeSOFTWARE        05/06/07  
 *   4.6        Stephanie Flores   15/07/07  Ingresar Confirmar
 *   4.7        Stephanie Flores   20/07/07  Modificar Confirmar
 *   4.7        Stephanie Flores   20/07/07  Anular Caonfirmar
 * ==============================================================
 *
 */

package SSP;

import java.util.Date;
import java.sql.*;
import java.lang.*;
import java.util.LinkedList;

/**
 * Clase usada para Acta de Confirmar e Inscripción.
 * <p>Referencia DDS:
 * <p>Invariantes: fecha_bautizo
 * @author	CoDeSOFTWARE
 * @version	1.0
 */

public class Confirmar {
/*ATRIBUTOS DE LA CLASE*/
    /**
     * identifica al acta de confirmación
     *
     * <p>requisito: RD-MD.1.2
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
     * Muestra el sexo del solicitante.
     */    
    public String sexo;
    /**
     * Muestra los datos del objeto solicitante confirmado.
     */
    public Solicitante confirmado;
    /**
     * Muestra los datos del objeto solicitante padre.
     */
    public Solicitante padre;
    /**
     * Muestra los datos del objeto solicitante madre.
     */
    public Solicitante madre;
    /**
     * Muestra los datos del objeto solicitante padrino.
     */
    public Solicitante padrino;
    /**
     * Muestra los datos del objeto solicitante madrina.
     */
    public Solicitante madrina;
    /**
     * Muestra los datos del objeto ministro.
     */
    public Ministro ministro;
    /**
     * Muestra los datos del objeto RegistroEclesiastico.
     */
    public RegistroEclesiastico reg_eclesiastico;
    /**
     * Muestra el mensaje de error.
     */
    private String mensaje_error;
    /**
     * Muestra los datos del objeto ConexionDB.
     */
    public ConexionDB cnx;
    /**
     * Muestra los datos del objeto Connection.
     */
    public Connection con;
    /**
     * Muestra los datos del objeto CallableStatement.
     */
    public CallableStatement cst;
    /**
     * Muestra los datos del objeto ResultSet.
     */
    public ResultSet rs;
    
    /*CONSTRUCTORES*/
    /**
     * Constructor que crea una instancia Confirmar.
     * <p>requisito: RD-MD.1.2
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
    public void setLugarConfirmacion(String lugarconfirmacion) {
        this.lugar_confirmacion = lugarconfirmacion;
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
        return madre.getApellido();
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

  /**
  * Comprueba el sexo del comulgado y setea el valor de 1 y 0
  * 
  * <p>Referencia DDS:
  * <p>Invariantes:
  * <p>Precondiciones: confirmado_sexo
  * <p>Poscondiciones:
  * @return 			void
  */
    public void tipoSexo(){
        if(getconfirmado_sexo().compareToIgnoreCase("0")==0)
            confirmado.setSexo(false);
        else
            confirmado.setSexo(true);
    }
    
    /**
    * Ingresa el acta de Comfirmacion 
    * <p>Referencia DDS:
    * <p>Invariantes:  fecha_sacramento
    * <p>Precondiciones:
    * <p>Poscondiciones:
    * @param id_usuario_	identificador del usuario de sesión
    * @return true || false	Si ingresa o no ingresa el acta de confirmacion
    */
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
        else
            return false;
    }
    
  /**
  * Genera la lista de la fecha de confirmacion
  * <p>Referencia DDS:
  * <p>Invariantes:
  * <p>Precondiciones: Ingresar Acta de confirmacion
  * <p>Poscondiciones:
  * @param fecha		Fecha confirmcacion
  * @param tipo_doc		Tipo de documento
  * @return 			LinkedList
  */
    public LinkedList generarConfirmacionFecha(String fecha, String tipo_doc)throws Exception{
        rs = null;
        Solicitante confir;
        LinkedList confirmados_fecha = new LinkedList();
        
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_buscar_fecha(?,?)}");
                cst.setString(1,fecha);
                cst.setString(2,tipo_doc);
                rs=cst.executeQuery();
                
                while (rs.next())
                {
                    confir = new Solicitante();
                    confir.setIdSolicitante(rs.getLong(1));
                    confir.setNombre(rs.getString(2));
                    confir.setApellido(rs.getString(3));
                    
                    confirmados_fecha.add((Solicitante) confir);
                }
                rs.close();
                con.close();
                return confirmados_fecha;   
               
            }                  
            catch(SQLException e){
                setMensaje_error(e.getMessage());
                con.close();             
            }            
        }
        return confirmados_fecha;
    }

  /**
  * Consulta el acta de confirmacion deseada
  *
  * <p>Referencia DDS:
  * <p>Invariantes:    fecha_confirmacion
  * <p>Precondiciones: Ingresar Acta confirmacion
  * <p>Poscondiciones:
  * @param id		identificador del acta
  * @return 		void
  */
    public void consultarConfirmacion(long id_confirmado)throws Exception{
        rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
         
        if(con!=null){
            try{
                cst = con.prepareCall("{CALL ssp.ssp_consultar_acta_confirmacion(?)}");
                cst.setLong(1, id_confirmado);
                rs = cst.executeQuery();
                while(rs.next()){
                    setfecha_confirmacion(rs.getDate(1).toString());
                    setLugarConfirmacion(rs.getString(2));
                    setObservacion(rs.getString(3));
                    setEstado(rs.getBoolean(4));
                    padre.setIdSolicitante(rs.getLong(5));
                    madre.setIdSolicitante(rs.getLong(6));
                    padrino.setIdSolicitante(rs.getLong(7));
                    madrina.setIdSolicitante(rs.getLong(8));
                    reg_eclesiastico.setIdRegistroEclesiastico(rs.getLong(9));
                    confirmado.setNombre(rs.getString(10));
                    confirmado.setApellido(rs.getString(11));
                    confirmado.setSexo(rs.getBoolean(12));
                    confirmado.setFechaNacimiento(rs.getDate(13));
                    padre.setNombre(rs.getString(14));
                    padre.setApellido(rs.getString(15));
                    madre.setNombre(rs.getString(16));
                    madre.setApellido(rs.getString(17));
                    padrino.setNombre(rs.getString(18));
                    padrino.setApellido(rs.getString(19));
                    madrina.setNombre(rs.getString(20));
                    madrina.setApellido(rs.getString(21));
                    ministro.setDignidad(rs.getString(22));
                    ministro.setNombre(rs.getString(23));
                    ministro.setApellido(rs.getString(24));
                    reg_eclesiastico.setNumSacramento(rs.getString(25));
                    reg_eclesiastico.setNumLibro(rs.getString(26));
                    reg_eclesiastico.setFolioLibro(rs.getString(27));
                    reg_eclesiastico.setAnioLibro(rs.getString(28));
                    setIdConfirmacion((int)rs.getLong(29));
                }
                
            }
            catch(SQLException e){
                setMensaje_error(e.getMessage());
            }
       }
    }
    
    /**
    * Modifica o actualiza los datos del acta de confirmacion
    * <p>Referencia DDS:
    * <p>Invariantes:       fecha_confirmacion
    * <p>Precondiciones:    Ingresar Acta Confirmacion
    * <p>Poscondiciones: 
    * @param id_usuario_        identificador del Usuario en sesión
    * @return true || false	Si actualiza o no el acta de confirmacion
    */
    public boolean modificarConfirmacion(long id_usuario_)throws Exception{
        if(cnx.conectar()) con= cnx.getConexion();
       
        tipoSexo();
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp.ssp_modificar_acta_confirmacion(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
                cst.setLong(1,confirmado.getIdSolicitante());
                cst.setLong(2, padre.getIdSolicitante());
                cst.setLong(3, madre.getIdSolicitante());
                cst.setLong(4, padrino.getIdSolicitante());
                cst.setLong(5, madrina.getIdSolicitante());
                cst.setLong(6, reg_eclesiastico.getIdRegistroEclesiastico());
                cst.setString(7,confirmado.getNombre());
                cst.setString(8,confirmado.getApellido());
                cst.setBoolean(9,confirmado.getSexo());
                cst.setString(10,padre.getNombre());
                cst.setString(11, padre.getApellido());
                cst.setString(12, madre.getNombre());
                cst.setString(13, madre.getApellido());
                cst.setString(14, padrino.getNombre());
                cst.setString(15, padrino.getApellido());
                cst.setString(16, madrina.getNombre());
                cst.setString(17, madrina.getApellido());
                cst.setLong(18,ministro.getId_ministro());
                cst.setLong(19,id_usuario_);
                cst.setString(20, getnum_sacramento());
                cst.setString(21, getnum_libro());
                cst.setString(22, getfolio_libro());
                cst.setString(23, getanio_libro());
                cst.setString(24,getLugarConfirmacion());
                cst.setDate(25, (java.sql.Date) getFechaConfirmacion());
                cst.setDate(26, (java.sql.Date) confirmado.getFechaNacimiento());
                cst.setString(27, getObservacion());
                cst.registerOutParameter(28,java.sql.Types.CHAR);
                cst.setLong(29,getIdConfirmacion());
                cst.executeUpdate();
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
    
    /**
    * Anular Acta de confirmacion
    * <p>Referencia DDS:
    * <p>Invariantes:    id_
    * <p>Precondiciones: estado del acta es activo (true)
    * <p>Poscondiciones: estado del acta es inactivo (false)
    * @return true || false	Si anula o no anula el acta de confirmacion
    */
    public boolean anularConfirmacion() throws Exception {
        if(cnx.conectar()) con= cnx.getConexion();
        
        if (getEstado())
        {
            if(con!=null){
                try{
                    cst=con.prepareCall("{CALL ssp.ssp_anular_acta_confirmacion(?,?)}");
                    cst.setLong(1,getIdConfirmacion());
                    cst.registerOutParameter(2,java.sql.Types.CHAR);
                    cst.executeUpdate();
                    setMensaje_error(cst.getString(2));
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
                setMensaje_error("No se conecto");
                return false;
            }            
        }
        else
            return false;
    }    
}