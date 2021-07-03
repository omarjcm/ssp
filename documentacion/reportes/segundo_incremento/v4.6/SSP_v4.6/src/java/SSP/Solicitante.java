/*
 * Solicitante.java
 *
 * Created on 1 de junio de 2007, 11:04 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package SSP;

import java.lang.*;
import java.util.*;

/**
 * Clase en la cual se maneja los datos del Solicitante.
 * @author CoDeSOFTWARE
 * @version 4.6
 */
public class Solicitante {
    
    /**
     * identifica un Solicitante
     */
    private long id_solicitante;
    /**
     * nombre del Solicitante
     */
    private String nombre;
    /**
     * apellido del Solicitante
     */
    private String apellido;
    /**
     * dirección del Solicitante
     */
    private String direccion;
    /**
     * tipo de Solicitante(bautizado, confirmado, comulgado, esposo, esposa, madrina, padrino, madre, padre)
     */
    private String tipo;
    /**
     * telefono del solicitante
     */
    private String telefono;
    /**
     * profesión del Solicitante
     */
    private String profesion;
    /**
     * edad del Solicitante
     */
    private int edad;
    /**
     * lugar de nacimiento del Solictante
     */
    private String lugar_nacimiento;
    /**
     * fecha de nacimiento del Solicitante
     */
    private Date fecha_nacimiento;
    /**
     * sexo del Solicitante es 1 femenino y 0 masculino.
     */
    private boolean sexo;
    /**
     * identifica si el Solicitante es hijo legitimo.
     */
    private boolean legitimo;
    /**
     * Identifica si un Solicitante tiene algún impedimento para casarse
     */
    private boolean impedimento;

    /**
     * Constructor que genera una instancia de Solicitante
     */
    public Solicitante() {
    }
 
    /**
     * Inicializa el id del Solicitante
     */
    public void setIdSolicitante(long id_solicitante) {
        this.id_solicitante = id_solicitante;
    }
    
    /**
     * Inicializa el nombre
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * Inicializa el apellido
     */
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    /**
     * Inicializa la dirección
     */
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    /**
     * Inicializa la edad
     */
    public void setEdad(int edad) {
        this.edad = edad;
    }

    /**
     * Inicializa la fecha de nacimiento.
     */
    public void setFechaNacimiento(Date fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    /**
     * Inicializa el impedimento.
     */
    public void setImpedimento(boolean impedimento) {
        this.impedimento = impedimento;
    }

    /**
     * Inicializa el lugar de nacimiento
     */
    public void setLugarNacimiento(String lugar_nacimiento) {
        this.lugar_nacimiento = lugar_nacimiento;
    }

    /**
     * Inicializa el sexo.
     */
    public void setSexo(boolean sexo) {
        this.sexo = sexo;
    }

    /**
     * Inicializa la profesión.
     */
    public void setProfesion(String profesion) {
        this.profesion = profesion;
    }

    /**
     * Inicializa el teléfono.
     */
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    /**
     * Inicializa el tipo.
     */
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    /**
     * Retorna 1 si es legitimo y 0 si no lo es.
     * @return boolean
     */
    public void getLegitimo(boolean legitimo) {
        this.legitimo = legitimo;
    }

    /**
     * Retorna el id del Solicitante.
     * @return long
     */
    public long getIdSolicitante() {
        return id_solicitante;
    }
  
    /**
     * Retorna el nombre.
     * @return String
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * Retorna el apellido.
     * @return String
     */
    public String getApellido() {
        return apellido;
    }

    /**
     * Retoena la edad.
     * @return int
     */
    public int getEdad() {
        return edad;
    }

    /**
     * Retorna la dirección.
     * @return String
     */
    public String getDireccion() {
        return direccion;
    }

    /**
     * Retorna la fecha de Nacimiento.
     * @return Date
     */
    public Date getFechaNacimiento() {
        return fecha_nacimiento;
    }

    /**
     * Retorna el telefono.
     * @return String
     */
    public String getTelefono() {
        return telefono;
    }

    /**
     * Retorna la profesión.
     * @return String
     */
    public String getProfesion() {
        return profesion;
    }

    /**
     * Retorna el lugar de nacimiento.
     * @return String
     */
    public String getLugarNacimiento() {
        return lugar_nacimiento;
    }

    /**
     * Retorna el tipo.
     * @return String
     */
    public String getTipo() {
        return tipo;
    }

    /**
     * Retorna 0 o 1.
     * @return boolean
     */
    public boolean getImpedimento() {
        return impedimento;
    }

    /**
     * Retorna 0 si no es legitimo o 1 si es legitimo.
     * @return boolean
     */
    public boolean getLegitimo() {
        return legitimo;
    }

    /**
     * Retorna el sexo.
     * @return boolean
     */
    public boolean getSexo() {
        return sexo;
    }
   
}