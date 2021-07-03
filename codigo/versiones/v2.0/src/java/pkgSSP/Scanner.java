/*
 * Scanner.java
 *
 * Created on 25 de julio de 2006, 12:57
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package pkgSSP;

/**
 *
 * @author root
 */
public class Scanner {
    
    /** Creates a new instance of Scanner */
    public Scanner() {
    }
    
    
    
    public String getApellidosPaternos(String padre_apellido, String madre_apellido)
    {
        String padre_solicitante, madre_solicitante;
        int indice;
        
        try
        {
            indice = padre_apellido.indexOf(" ");
            padre_solicitante = padre_apellido.substring(0, indice);
        }
        catch (Exception e)
        {
            padre_solicitante = padre_apellido.substring(0, padre_apellido.length());
        }
        
        try 
        {
            indice = madre_apellido.indexOf(" ");
            madre_solicitante = madre_apellido.substring(0, indice);
        }
        catch (Exception e)
        {
            madre_solicitante = madre_apellido.substring(0, madre_apellido.length());
        }
        
        return (padre_solicitante+" "+madre_solicitante);
    }
}
