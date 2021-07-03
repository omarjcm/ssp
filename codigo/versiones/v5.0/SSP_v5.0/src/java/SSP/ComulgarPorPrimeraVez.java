/*
 * 
 * Archivo:	ComulgarPorPrimeraVez.java
 * Autor:	CoDeSoftware 
 * Licencia:	GNU/GPL
 * Fecha de Creación: 01/06/2007
 *
 * ==============================================================
 *
 * Historial de Modificaciones:
 *
 * Versión	Responsable         Fecha     Cambio     Razón de Cambio
 *   1.0	CoDeSOFTWARE        05/06/07  
 *   4.6        Vanessa Izquierdo   15/07/07  Ingresar Comunión
 *   4.7        Vanessa Izquierdo   20/07/07  Modificar Comunión
 *   4.7        Vanessa Izquierdo   20/07/07  Anular Comunión
 * ==============================================================
 *
 */
package SSP;

import java.util.Date;
import java.sql.*;
import java.lang.*;
import java.util.LinkedList;

/**
 * Clase usada para Acta de Acta de Comunión e Inscripción.
 * <p>Referencia DDS:
 * <p>Invariantes: fecha_comunion
 * @author	CoDeSOFTWARE
 * @version	1.0
 */

public class ComulgarPorPrimeraVez {
    /*ATRIBUTOS DE LA CLASE*/
    /**
     * identifica al acta de comunión
     *
     * <p>requisito: RD-MD.1.3
     */
    private int id_comunion;
    /**
     * Fecha de la ceremonia de la Primera Comunión
     */
    private Date fecha_comunion;
    /**
     * Estado civil de los Padres
     */
    private String estado_civil_padres;
    /**
     * Nombre de la institución educativa
     */
    private String nombre_institucion;
    /**
     * Grado ó nivel de enseñanza
     */
    private String grado;
    /**
     * Nivel de la catequesis
     */
    private String nivel;
    /**
     * Número de la ficha de inscripción
     */
    private String num_ficha;
    /**
     * Lugar en la que se celebró la ceremonia de la Primera Comunión
     */
    private String lugar_comunion;
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
     * Muestra los datos del objeto solicitante comulgado.
     */
    public Solicitante comulgado;
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
     * Muestra los datos del objeto reg_eclesiastico.
     */
    public RegistroEclesiastico reg_eclesiastico;
    /**
     * Muestra el mensaje de error.
     */
    private String mensaje_error;
    /**
     * Muestra los datos del objeto ConexioDB.
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
     * Constructor que crea una instancia ComulgarPorPrimeraVez.
     * <p>requisito: RD-MD.1.3
     */
    
    public ComulgarPorPrimeraVez() {
        comulgado = new Solicitante();
        padre = new Solicitante();
        madre = new Solicitante();
        padrino = new Solicitante();
        madrina = new Solicitante();
        ministro = new Ministro();
        reg_eclesiastico = new RegistroEclesiastico();
        cnx= new ConexionDB();
    }

    /**
     * Retorna del id del registro de la Primera Comunión
     * @return Id del registro de la Primera Comunión
     */
    public int getId_comunion() {
        return id_comunion;
    }
    
    /**
     * Inicializa el Id del registro de la Primera Comunión
     * @param id_comunion Id del registro de la Primera Comunión
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
     * Obtiene el grado o curso de enseñanza del solicitante
     * @return Grado o curso de enseñanza del solicitante
     */
    public String getGrado() {
        return grado;
    }

    /**
     * Inicializa el grado o curso de enseñanza del solicitante
     * @param grado Grado o curso de enseñanza del solicitante
     */
    public void setGrado(String grado) {
        this.grado = grado;
    }
    
    /**
     * Obtiene la fecha de la ceremonia de la Primera Comunión.
     * @return Fecha de comunión
     */
    public Date getFechaComunion() {
        return fecha_comunion;
    }

    /**
     * Inicializa la fecha de la ceremonia de la Primera Comunión
     * @param fecha_comunion Fecha de la ceremonia de la Primera Comunión
     */
    public void setFechaComunion(Date fecha_comunion) {
        this.fecha_comunion = fecha_comunion;
    }

    /**
     * Obtiene el lugar de la ceremonia de la Primera Comunión
     * @return Lugar de la Comunión
     */
    public String getLugarComunion() {
        return lugar_comunion;
    }

    /**
     * Inicializa el lugar de la ceremonia de la Primera Comunión
     * @param lugar_comunion Lugar de la Primera Comunión
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
     * Retorna el nombre de la institución educativa del solicitante
     * @return Nombre de la institución de enseñanza del solicitante.
     */
    public String getNombreInstitucion() {
        return nombre_institucion;
    }

    /**
     * Inicializa el nombre de la institución de enseñanza del solicitante.
     * @param nombre_institucion El nombre de la institución de enseñanza del solicitante.
     */
    public void setNombreInstitucion(String nombre_institucion) {
        this.nombre_institucion = nombre_institucion;
    }
    
    /**
     * Retorna el número de la ficha de la inscripción
     * @return Número de ficha
     */
    public String getNumFicha() {
        return num_ficha;
    }

    /**
     * Inicializa el número de ficha de inscripción
     * @param num_ficha Número de ficha de inscripción
     */
    public void setNumFicha(String num_ficha) {
        this.num_ficha = num_ficha;
    }

    /**
     * Retorna la observación de la correspondiente Acta.
     * @return Observación
     */
    public String getObservacion() {
        return observacion;
    }
    
    /**
     * Inicializa la observación de la respectiva Acta
     * @param observacion Observación de la respectiva Acta
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
    
    public String getcomulgado_nombre(){
        return comulgado.getNombre();
    }
    
    public void setcomulgado_nombre(String comulgado_nombre){
        comulgado.setNombre(comulgado_nombre);
    }
    
    public String getcomulgado_apellido(){
        return comulgado.getApellido();
    }
    
    public void setcomulgado_apellido(String comulgado_apellido){
        comulgado.setApellido(comulgado_apellido);
    }
    
    public String getcomulgado_sexo(){
        return sexo;
    }
    
    public void setcomulgado_sexo(String comulgado_sexo){
        this.sexo= comulgado_sexo;
    }
    
    public String getcomulgado_edad(){
        return String.valueOf(comulgado.getEdad());
    }
    
    public void setcomulgado_edad(String comulgado_edad){
        comulgado.setEdad(Integer.parseInt(comulgado_edad.compareTo("")==0 ? "0" : comulgado_edad));
    }
    
    public String getcomulgado_nivel(){
        return getNivel();
    }
    
    public void setcomulgado_nivel(String comulgado_nivel){
        setNivel(comulgado_nivel);
    }
    
    public String getcomulgado_grado(){
        return getGrado();
    }
    
    public void setcomulgado_grado(String comulgado_grado){
        setGrado(comulgado_grado);
    }
    
    public String getnombre_institucion(){
        return getNombreInstitucion();
    }
    
    public void setnombre_institucion(String nombre_institucion){
        setNombreInstitucion(nombre_institucion);
    }
   
    public String getfecha_comunion(){
        return fecha_comunion.toString();
    }
    
    public void setfecha_comunion(String fecha_comunion){
        this.fecha_comunion= java.sql.Date.valueOf(fecha_comunion);
    }
    
    public String getlugar_comunion(){
        return lugar_comunion;
    }
    
    public void setlugar_comunion(String lugar_comunion_){
        this.lugar_comunion= lugar_comunion_;
    }
    
    public String getfecha_nacimiento(){
        return comulgado.getFechaNacimiento().toString();
    }
    
    public void setfecha_nacimiento(String fecha_nacimiento){
        comulgado.setFechaNacimiento(java.sql.Date.valueOf(fecha_nacimiento));
    }
    
    public String getcomulgado_direccion(){
        return comulgado.getDireccion();
    }
    
    public void setcomulgado_direccion(String comulgado_direccion){
        comulgado.setDireccion(comulgado_direccion);
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
    
    public String getestado_civil_padres(){
        return getEstadoCivilPadres();
    }
    
    public void setestado_civil_padres(String estado_civil_padres){
        setEstadoCivilPadres(estado_civil_padres);
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
        return madrina.getApellido();
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
  * <p>Precondiciones: comulgado_sexo
  * <p>Poscondiciones:
  * @return 			void
  */
    public void tipoSexo(){
        if(getcomulgado_sexo().compareToIgnoreCase("0")==0){
            comulgado.setSexo(false);
        }
        else
            comulgado.setSexo(true);
    }
    
  /**
    * Ingresa el acta de Comunión
    * <p>Referencia DDS:
    * <p>Invariantes:  fecha_sacramento
    * <p>Precondiciones:
    * <p>Poscondiciones:
    * @param id_usuario_	identificador del usuario de sesión
    * @return true || false	Si ingresa o no ingresa el acta de comunion
    */
    public boolean ingresarComunion(long id_usuario_)throws Exception{
        rs = null;
        if(cnx.conectar()) con= cnx.getConexion();
       
        tipoSexo();
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_ingresar_acta_comunion(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
                cst.setString(1,comulgado.getNombre());
                cst.setString(2,comulgado.getApellido());
                cst.setBoolean(3,comulgado.getSexo());
                cst.setInt(4,comulgado.getEdad());
                cst.setString(5,padre.getNombre());
                cst.setString(6, padre.getApellido());
                cst.setString(7, madre.getNombre());
                cst.setString(8, madre.getApellido());
                cst.setString(9, padrino.getNombre());
                cst.setString(10, padrino.getApellido());
                cst.setString(11, madrina.getNombre());
                cst.setString(12, madrina.getApellido());
                cst.setLong(13,ministro.getId_ministro());
                cst.setLong(14,id_usuario_);
                cst.setString(15, getnum_sacramento());
                cst.setString(16, getnum_libro());
                cst.setString(17, getfolio_libro());
                cst.setString(18, getanio_libro());
                cst.setString(19, getcomulgado_direccion());
                cst.setDate(20, (java.sql.Date) getFechaComunion());
                cst.setString(21, getEstadoCivilPadres());
                cst.setString(22, getNombreInstitucion());
                cst.setString(23, getGrado());
                cst.setString(24, getLugarComunion());
                cst.setDate(25, (java.sql.Date)comulgado.getFechaNacimiento());
                cst.setString(26, getObservacion());
                cst.registerOutParameter(27,java.sql.Types.CHAR);
                cst.execute();
                setMensaje_error(cst.getString(27));
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
  * Consulta el acta de comunion
  *
  * <p>Referencia DDS:
  * <p>Invariantes:    fecha_matrimonio
  * <p>Precondiciones: Ingresar Acta matrimonio
  * <p>Poscondiciones:
  * @param id		identificador del acta
  * @return 		void
  */
    public void consultarDatosComunion(String id) throws SQLException{
        rs = null;
        
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_buscar_datos_comunion(?)}");
                cst.setString(1,id);                
                rs=cst.executeQuery();
                rs.next();
                
                this.setanio_libro(rs.getString(1));
                this.setnum_libro(rs.getString(2));
                this.setfolio_libro(rs.getString(3));
                this.setnum_sacramento(rs.getString(4));
                this.ministro.setDignidad(rs.getString(5));
                this.ministro.setNombre(rs.getString(6));
                this.ministro.setApellido(rs.getString(7));
                this.setFechaComunion(rs.getDate(8));
                this.setcomulgado_nombre(rs.getString(9));
                this.setcomulgado_apellido(rs.getString(10));
                this.comulgado.setSexo(rs.getBoolean(11));
                this.setpadre_nombre(rs.getString(12));
                this.setpadre_apellido(rs.getString(13));
                this.setmadre_nombre(rs.getString(14));
                this.setmadre_apellido(rs.getString(15));
                this.comulgado.setLugarNacimiento(rs.getString(16));
                this.setpadrino_nombre(rs.getString(17));
                this.setpadrino_apellido(rs.getString(18));
                this.setmadrina_nombre(rs.getString(19));
                this.setmadrina_apellido(rs.getString(20));
                this.setlugar_comunion(rs.getString(21));
                this.comulgado.setEdad(rs.getInt(22));
                this.setcomulgado_grado(rs.getString(23));
                this.setNombreInstitucion(rs.getString(24));
                this.setcomulgado_direccion(rs.getString(25));
                this.setestado_civil_padres(rs.getString(26));
                this.setfecha_nacimiento(rs.getString(27));
                this.setIdComunion(rs.getInt(28));
                this.comulgado.setIdSolicitante(rs.getLong(29));
                this.padre.setIdSolicitante(rs.getLong(30));
                this.madre.setIdSolicitante(rs.getLong(31));
                this.padrino.setIdSolicitante(rs.getLong(32));
                this.madrina.setIdSolicitante(rs.getLong(33));
                this.reg_eclesiastico.setIdRegistroEclesiastico(rs.getLong(34));
                this.ministro.setId_ministro(rs.getLong(35));
                this.setObservacion(rs.getString(36));
                this.setEstado(rs.getBoolean(37));
                
                rs.close();
                con.close();
            }
            catch(SQLException e){
                setMensaje_error(e.getMessage());
                con.close();             
            }
        }
    }

  /**
  * Actualiza los datos el acta de comunion deseada
  *
  * <p>Referencia DDS:
  * <p>Invariantes:    fecha_comunion
  * <p>Precondiciones: Ingresar Acta comunion
  * <p>Poscondiciones:
  * @param id_usuario_	identificador del usuario
  * @return 		boolean
  */
    public boolean actualizarComunion(long id_usuario_)throws SQLException{
        rs = null;
                
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_actualizar_datos_comunion(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
                cst.setLong(1,getId_comunion());
                cst.setLong(2,comulgado.getIdSolicitante());
                cst.setLong(3,padre.getIdSolicitante());
                cst.setLong(4,madre.getIdSolicitante());
                cst.setLong(5,padrino.getIdSolicitante());
                cst.setLong(6,madrina.getIdSolicitante());
                cst.setLong(7,reg_eclesiastico.getIdRegistroEclesiastico());
                cst.setString(8,comulgado.getNombre());
                cst.setString(9,comulgado.getApellido());
                cst.setBoolean(10,comulgado.getSexo());
                cst.setInt(11,comulgado.getEdad());
                cst.setString(12,padre.getNombre());
                cst.setString(13,padre.getApellido());
                cst.setString(14,madre.getNombre());
                cst.setString(15,madre.getApellido());
                cst.setString(16,padrino.getNombre());
                cst.setString(17,padrino.getApellido());
                cst.setString(18,madrina.getNombre());
                cst.setString(19,madrina.getApellido());
                cst.setLong(20,ministro.getId_ministro());
                cst.setLong(21,id_usuario_);
                cst.setString(22,reg_eclesiastico.getNumSacramento());
                cst.setString(23,reg_eclesiastico.getNumLibro());
                cst.setString(24,reg_eclesiastico.getFolioLibro());
                cst.setString(25,reg_eclesiastico.getAnioLibro());
                cst.setString(26,comulgado.getDireccion());
                cst.setDate(27, (java.sql.Date)getFechaComunion());
                cst.setString(28,getestado_civil_padres());
                cst.setString(29,getNombreInstitucion());
                cst.setString(30,getGrado());
                cst.setString(31,getlugar_comunion());
                cst.setDate(32, (java.sql.Date)comulgado.getFechaNacimiento());
                cst.setString(33,getObservacion());
                cst.registerOutParameter(34,java.sql.Types.CHAR);
                cst.execute();
                setMensaje_error(cst.getString(34));
                con.close();
                return true;
            }
            catch(SQLException e){
                setMensaje_error(e.getLocalizedMessage());    
                con.close();
                return false;
            }
        }
        else{
            return false;
        }
    }
    
  /**
  * Genera la lista de la fecha de comunion
  * <p>Referencia DDS:
  * <p>Invariantes:
  * <p>Precondiciones: Ingresar Acta de comunion
  * <p>Poscondiciones:
  * @param fecha		Fecha comunion
  * @param tipo_doc		Tipo de documento
  * @return 			LinkedList
  */
    public LinkedList generarComunionFecha(String fecha, String tipo_doc)throws Exception{
        rs = null;
        Solicitante comun;
        LinkedList comuniones_fecha = new LinkedList();
        
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_buscar_fecha(?,?)}");
                cst.setString(1,fecha);
                cst.setString(2,tipo_doc);
                rs=cst.executeQuery();
                
                while (rs.next())
                {
                    comun = new Solicitante();
                    comun.setIdSolicitante(rs.getLong(1));
                    comun.setNombre(rs.getString(2));
                    comun.setApellido(rs.getString(3));
                    
                    comuniones_fecha.add((Solicitante) comun);
                }
                rs.close();
                con.close();
                return comuniones_fecha;
            }                  
            catch(SQLException e){
                setMensaje_error(e.getMessage());
                con.close();             
            }            
        }
        return comuniones_fecha;
    }
    
    /**
    * Anular Acta de comunion
    * <p>Referencia DDS:
    * <p>Invariantes:    id_
    * <p>Precondiciones: estado del acta es activo (true)
    * <p>Poscondiciones: estado del acta es inactivo (false)
    * param string id_, string doc
    * @return true || false	Si anula o no anula el acta de comunion
    */
    public boolean anularComunion(String id_, String doc)throws SQLException{
        rs = null;
        
        if(cnx.conectar()) con= cnx.getConexion();
        
        if (getEstado())
        {
            if(con!=null){
                try{                                
                    cst=con.prepareCall("{CALL ssp_anular_acta(?,?)}");
                    cst.setString(1,id_);
                    cst.setString(2,doc);                
                    cst.executeQuery();

                    con.close();
                    return true;
                }
                catch(SQLException e){
                    setMensaje_error(e.getLocalizedMessage());                
                    con.close();
                    return false;
                }
            }
            else{
                return false;
            }
        }
        else
            return false;
    }    
}