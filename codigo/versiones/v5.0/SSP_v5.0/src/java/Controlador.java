/*
 * 
 * Archivo:	Controlador.java
 * Autor:	CoDeSoftware 
 * Licencia:	GNU/GPL
 * Fecha de Creación: 25/08/2007
 *
 * ==============================================================
 *
 * Historial de Modificaciones:
 *
 * Versión	Responsable         Fecha     Cambio     Razón de Cambio
 *   4.7.1.1    Stephanie Flores    25/08/07   
 * ==============================================================
 *
 */
import java.io.*;
import java.net.*;
import java.sql.SQLException;
import java.util.*;
import java.lang.*;
import java.sql.Date;
import javax.servlet.*;
import javax.servlet.http.*;
import SSP.*;

/**
 * Clase usada para manejar el ajax del registro y de descripcion
 * <p>Referencia DDS:  
 * <p>Invariantes: 
 * @author	CoDeSOFTWARE
 * @version	1.0
 */
public class Controlador extends HttpServlet {
     /*ATRIBUTOS DE LA CLASE*/
    /**
     * identifica los datos de controlador
     
     /**
     * arreglo de lista de registro
     */    
    ArrayList registroList;
    
    /**
     * arreglo de lista
     */
    ArrayList lista;
    
    /**
    * inicializa cuando se llama al servlet
    * <p>Referencia DDS:
    * <p>Invariantes:  
    * <p>Precondiciones:
    * <p>Poscondiciones:
    * @param ServletConfig conf
    * @return void
    */
    public void init(ServletConfig conf) throws ServletException{
        registroList= new ArrayList();
        lista= new ArrayList();
        registroList.clear();
    }
    
    /**
    * Procesa una solicitud
    * <p>Referencia DDS:
    * <p>Invariantes:  
    * <p>Precondiciones:
    * <p>Poscondiciones:
    * @param HttpServletRequest request
    * @param HttpServletResponse response
    * @return void
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Registro registro = new Registro();
        Usuario usuario= new Usuario();
        Descripcion d= new Descripcion();
        HttpSession s= request.getSession();
        PrintWriter out = response.getWriter();
        response.setContentType("text/xml");
        usuario=(Usuario)s.getAttribute("uBEAN");
        
        if(request.getParameter("tipo")!=null) {
            registro.setDescripcion(request.getParameter("descripcion"));
            registro.setTipo(request.getParameter("tipo"));
            registro.setFecha(request.getParameter("fecha"));
            registro.setValor(request.getParameter("valor"));
            registroList.add(registro);
            registro.setItems_registro(registroList);
            //generarXml(registroList,response);
       }
       else if(request.getParameter("numero")!=null) {
            response.setContentType("text/html;charset=UTF-8");
            int num= Integer.parseInt(request.getParameter("numero"));
            Registro r= new Registro();
            Registro r2= new Registro();
            for(int i=0;i<registroList.size();i++) {
               //registroList.set(num,null);
                r= (Registro)registroList.get(i);
                r2= (Registro)registroList.get(num-1); 
               if(r.getDescripcion().compareTo(r2.getDescripcion())==0) {
                    registroList.remove(i);
               }
               registro.setItems_registro(registroList);
            }
            RequestDispatcher res = request.getRequestDispatcher("contabilidad/ingresar/contabilidad.jsp?id=1");
            res.forward(request, response);
        }
        else if(request.getParameter("accion") != null) {
            response.setContentType("text/html;charset=UTF-8");
            s.setAttribute("registroBean", registro);
            String valida="No paso";
            RequestDispatcher res = request.getRequestDispatcher("contabilidad/ingresar/contabilidad.jsp?id=1");
            if(registroList.size()!=0){
                for(int j=0;j<registroList.size();j++){
                    if(registroList.get(j)!=null){
                            try {
                                if(registro.guardarRegistro((Registro)registroList.get(j),usuario.getIdUsuario())){
                                    valida="inserto";
                                }
                                else{
                                    out.println("<html>");
                                    out.println("<head>");
                                    out.println("<title>Servlet Controlador</title>");
                                    out.println("</head>");
                                    out.println("<body>");
                                    out.println("<h1>Servlet Controlador at " + registro.getMensaje_error()+ "</h1>");
                                    out.println("</body>");
                                    out.println("</html>");
                                }
                            } catch (SQLException ex) {
                                ex.printStackTrace();
                            } 
                    }
                }
                //if(valida.compareTo("inserto")==0) res.forward(request, response);
            }
            else{
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet Controlador</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Servlet Controlador at " + registroList.size() + "</h1>");
                out.println("</body>");
                out.println("</html>");
            }
        }
        else if(request.getParameter("letra")!=null){
            //response.setContentType("text/html");
            d.setDescripcion(request.getParameter("letra"));
              try {
                    lista=d.listaDeDescripciones(request.getParameter("letra"));
                    if(lista!=null) generarXml(lista, response);
                    else out.println("la lista es nula");
                } catch (IOException ex) {
                    out.println(ex.getMessage());
                    out.println(d.getMensaje_error());
                    out.println("Entro al IO");
                    ex.printStackTrace();
                } catch (SQLException ex) {
                    out.println(ex.getMessage());
                    out.println(d.getMensaje_error());
                    out.println("Entro al SQL");
                    ex.printStackTrace();
                } catch (ServletException ex) {
                    out.println(ex.getMessage());
                    out.println(d.getMensaje_error());
                    out.println("Entro al Servlet");
                    ex.printStackTrace();
                } catch (Exception ex) {
                    out.println(ex.getMessage());
                    out.println(d.getMensaje_error());
                    out.println("Entro al Ex");
                    ex.printStackTrace();
                }

        }
        else{
            response.setContentType("text/html;charset=UTF-8");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getParameter("numero")+ request.getParameter("tipo")+"</h1>");
            out.println("</body>");
            out.println("</html>");
            /*RequestDispatcher res = request.getRequestDispatcher("contabilidad.jsp");
            res.forward(request, response);*/
        }
        out.close();
    }
    
    /**
    * Genera el codigo Xml de la consulta a la base de datos
    * <p>Referencia DDS:
    * <p>Invariantes:  
    * <p>Precondiciones:
    * <p>Poscondiciones:
    * @param ArrayList desc
    * @param HttpServletResponse response
    * @return void
    */
    public void generarXml(ArrayList desc,HttpServletResponse response)
    throws ServletException, IOException, SQLException {
        Descripcion des= new Descripcion();
        PrintWriter out = response.getWriter();
        out.println("<descripciones>");
        
        for(int i=0; i<desc.size(); i++){
            des= (Descripcion)desc.get(i);
            out.println("<descripcion>");
            out.println("<numero>" +String.valueOf(des.getId_descripcion())+ "</numero>");
            out.println("<nombre>" +des.getDescripcion()+ "</nombre>");
            out.println("</descripcion>");
        }
        out.println("</descripciones>");
        out.close();
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
    
    /** Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
    
    /** Returns a short description of the servlet.
     */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}
