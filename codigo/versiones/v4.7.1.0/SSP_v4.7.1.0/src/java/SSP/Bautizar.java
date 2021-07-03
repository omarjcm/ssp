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
import java.util.LinkedList;
//import java.sql.Date;

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
    
    public LinkedList generarBautizoFecha(String fecha, String tipo_doc) throws Exception{
        rs = null;
        Solicitante bautiz;
        LinkedList bautizos_fecha = new LinkedList();
        
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_buscar_fecha(?,?)}");
                cst.setString(1,fecha);
                cst.setString(2,tipo_doc);
                rs=cst.executeQuery();
                
                while (rs.next())
                {
                    bautiz = new Solicitante();
                    bautiz.setIdSolicitante(rs.getLong(1));
                    bautiz.setNombre(rs.getString(2));
                    bautiz.setApellido(rs.getString(3));
                    
                    bautizos_fecha.add((Solicitante) bautiz);
                }
                rs.close();
                con.close();
                return bautizos_fecha;   
               
            }                  
            catch(SQLException e){
                setMensaje_error(e.getMessage());
                con.close();             
            }            
        }
        return bautizos_fecha;
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

    public void consultarDatosBautizo(String id) throws SQLException{
        rs = null;
        
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{
                cst=con.prepareCall("{CALL ssp_buscar_datos_bautizo(?)}");
                cst.setString(1,id);                
                rs=cst.executeQuery();
                rs.next();
                
                this.setIdBautizo(rs.getInt(1));
                this.re.setIdRegistroEclesiastico(rs.getLong(2));
                this.setre_num_sacramento(rs.getString(3));
                this.setre_anio_libro(rs.getString(4));
                this.setre_num_libro(rs.getString(5));
                this.setre_folio_libro(rs.getString(6));
                //this.re.setLugarBautizo(rs.getString(7));
                this.rc.setIdRegistroCivil(rs.getLong(7));                
                this.setrc_anio(rs.getString(8));
                this.setrc_tomo(rs.getString(9));
                this.setrc_folio(rs.getString(10));
                this.setrc_acta(rs.getString(11));
                this.setrc_lugar(rs.getString(12));
                this.setObservacion(rs.getString(13));
                this.ministro.setId_ministro(rs.getLong(14));               
                this.ministro.setDignidad(rs.getString(15));
                this.ministro.setNombre(rs.getString(16));
                this.ministro.setApellido(rs.getString(17));
                this.re.setFechaBautizo(rs.getDate(18));
                this.bautizado.setIdSolicitante(rs.getLong(19));                
                this.setbautizado_nombre(rs.getString(20));
                this.setbautizado_apellido(rs.getString(21));
                this.bautizado.setSexo(rs.getBoolean(22));
                this.padre.setIdSolicitante(rs.getLong(23));                
                this.setpadre_nombre(rs.getString(24));
                this.setpadre_apellido(rs.getString(25));
                this.madre.setIdSolicitante(rs.getLong(26));                
                this.setmadre_nombre(rs.getString(27));
                this.setmadre_apellido(rs.getString(28));
                this.setlugar_nacimiento(rs.getString(29));
                this.bautizado.setFechaNacimiento(rs.getDate(30));
                //this.setfecha_nacimiento(rs.getString(31));
                this.padrino.setIdSolicitante(rs.getLong(31));
                this.setpadrino_nombre(rs.getString(32));
                this.setpadrino_apellido(rs.getString(33));
                this.madrina.setIdSolicitante(rs.getLong(34));                
                this.setmadrina_nombre(rs.getString(35));
                this.setmadrina_apellido(rs.getString(36));
                //this.re.setLugarBautizo(rs.getString(37));
                this.setlugar_bautizo(rs.getString(37));
                this.setEstado(rs.getBoolean(38));
                
                rs.close();
                con.close();              
            }                  
            catch(SQLException e){
                setMensaje_error(e.getMessage());
                con.close();             
            }            
        }        
    }
    
    public boolean buscarIdsBautizo(long id_, String doc)throws SQLException{
        rs = null;
        
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{                                
                cst=con.prepareCall("{CALL ssp_buscar_ids(?,?)}");
                cst.setLong(1,id_);
                cst.setString(2,doc);                
                rs=cst.executeQuery();
                
                rs.next();
                
                bautizado.setIdSolicitante(rs.getLong(1));
                padre.setIdSolicitante(rs.getLong(2));
                madre.setIdSolicitante(rs.getLong(3));
                padrino.setIdSolicitante(rs.getLong(4));
                madrina.setIdSolicitante(rs.getLong(5));
                rc.setIdRegistroCivil(rs.getLong(6));
                ministro.setId_ministro(rs.getLong(7));
                re.setIdRegistroEclesiastico(rs.getLong(8));
                                
                rs.close();
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

    public boolean actualizarBautizo(long id_usuario_)throws SQLException{
        rs = null;
        //cambiarSexo();
        //buscarIdsBautizo(getIdBautizo());
        if(cnx.conectar()) con= cnx.getConexion();
        
        if(con!=null){
            try{                                
                cst=con.prepareCall("{CALL ssp_actualizar_datos_bautizo(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
                cst.setLong(1,getIdBautizo());
                cst.setLong(2,bautizado.getIdSolicitante());
                cst.setLong(3,padre.getIdSolicitante());
                cst.setLong(4,madre.getIdSolicitante());
                cst.setLong(5,padrino.getIdSolicitante());
                cst.setLong(6,madrina.getIdSolicitante());
                cst.setLong(7,rc.getIdRegistroCivil());
                cst.setLong(8,re.getIdRegistroEclesiastico());                                
                cst.setString(9,getbautizado_nombre());
                cst.setString(10,getbautizado_apellido());
                cst.setBoolean(11,bautizado.getSexo());     
                cst.setDate(12, (java.sql.Date)bautizado.getFechaNacimiento());  
                cst.setString(13,getlugar_nacimiento());                
                cst.setString(14,getpadre_nombre());
                cst.setString(15,getpadre_apellido());
                cst.setString(16,getmadre_nombre());
                cst.setString(17,getmadre_apellido());                
                cst.setString(18,getpadrino_nombre());
                cst.setString(19,getpadrino_apellido());
                cst.setString(20,getmadrina_nombre());
                cst.setString(21,getmadrina_apellido());
                cst.setString(22,rc.getTomo());
                cst.setString(23,rc.getAnio());
                cst.setString(24,rc.getFolio());
                cst.setString(25,rc.getActa());
                cst.setString(26,rc.getLugarInscripcion());
                cst.setLong(27,ministro.getId_ministro());                           
                cst.setLong(28,id_usuario_); 
                cst.setString(29,getre_num_sacramento());
                cst.setString(30,getre_num_libro());
                cst.setString(31,getre_folio_libro());
                cst.setString(32,getre_anio_libro());
                cst.setString(33,re.getLugarBautizo());
                cst.setDate(34,(java.sql.Date)re.getFechaBautizo());
                cst.setString(35,getObservacion());
                cst.registerOutParameter(36,java.sql.Types.CHAR);
                cst.execute();
                setMensaje_error(cst.getString(36));
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
    
    public boolean anularBautizo(String id_, String doc)throws SQLException{
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
            else
                return false;
        }
        else
            return false;
    }    
}