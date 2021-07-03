package org.apache.jsp.bautismo.acta.ingresar;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import SSP.*;
import java.util.LinkedList;

public final class bautismoPreview_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    JspFactory _jspxFactory = null;
    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      _jspxFactory = JspFactory.getDefaultFactory();
      response.setContentType("text/html; charset=iso-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      SSP.Ministro ministroBEAN = null;
      synchronized (_jspx_page_context) {
        ministroBEAN = (SSP.Ministro) _jspx_page_context.getAttribute("ministroBEAN", PageContext.PAGE_SCOPE);
        if (ministroBEAN == null){
          ministroBEAN = new SSP.Ministro();
          _jspx_page_context.setAttribute("ministroBEAN", ministroBEAN, PageContext.PAGE_SCOPE);
        }
      }
      out.write('\r');
      out.write('\n');
      SSP.Bautizar bautizoBEAN = null;
      synchronized (session) {
        bautizoBEAN = (SSP.Bautizar) _jspx_page_context.getAttribute("bautizoBEAN", PageContext.SESSION_SCOPE);
        if (bautizoBEAN == null){
          bautizoBEAN = new SSP.Bautizar();
          _jspx_page_context.setAttribute("bautizoBEAN", bautizoBEAN, PageContext.SESSION_SCOPE);
        }
      }
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t<title>Acta de Bautizo</title>\r\n");
      out.write("        <link href=\"../../../estilos/formularios.css\" type=\"text/css\" rel=STYLESHEET>\r\n");
      out.write("        <link href=\"../../../calendario/calendar.css\" type=\"text/css\" rel=STYLESHEET>\r\n");
      out.write("        \r\n");
      out.write("        <script language=\"JavaScript\" type=\"text/javascript\" src=\"../../../inicio/cerrarSesion.js\"></script>\r\n");
      out.write("        <script language=\"JavaScript\" type=\"text/javascript\" src=\"bautismoPreview.js\"></script>\r\n");
      out.write("        <script language=\"JavaScript\" type=\"text/javascript\" src=\"formulario.js\"></script>\r\n");
      out.write("        <SCRIPT language=JavaScript1.2 src=\"../../../calendario/calendar.js\" type=\"text/javascript\"></SCRIPT>\r\n");
      out.write("        <SCRIPT language=JavaScript1.2 src=\"../../../calendario/calendario.js\" type=\"text/javascript\"></SCRIPT>\r\n");
      out.write("        <SCRIPT language=JavaScript1.2 src=\"../../../calendario/calendar-es.js\" type=\"text/javascript\"></SCRIPT>\r\n");
      out.write("        <SCRIPT language=JavaScript1.2 src=\"../../../calendario/calendar-setup.js\" type=\"text/javascript\"></SCRIPT>\r\n");
      out.write("        <link href=\"../../../estilos/my_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<table width=\"602\" border=\"0\" align=\"left\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <!--DWLayoutTable-->\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"29\" height=\"23\">&nbsp;</td>\r\n");
      out.write("    <td width=\"541\" align=\"center\" valign=\"middle\">\r\n");
      out.write("    <div class=\"titulo_principal\">ACTA DE BAUTIZO</div>    </td>\r\n");
      out.write("    <td width=\"32\">&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  \r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"200\" rowspan=\"2\">&nbsp;</td>\r\n");
      out.write("    <td height=\"312\" valign=\"top\">\r\n");
      out.write("      <form method=\"post\" action=\"bautismoBEAN.jsp\">\r\n");
      out.write("        <br>\r\n");
      out.write("        <div onclick=\"show('Parroquia')\">\r\n");
      out.write("          <a href=\"#\" onclick=\"return false\">Datos de la Parroquia</a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"Parroquia\">\r\n");
      out.write("        <fieldset>\r\n");
      out.write("            <p>\r\n");
      out.write("              <label for=\"id_ministro\">Ministro: </label>\r\n");
      out.write("                <select name=\"id_ministro\" id=\"id_ministro\">\r\n");
      out.write("                ");

                   SSP.Ministro ministro;
                   LinkedList ministroList = ministroBEAN.listaDeMinistros();
                   for (int i = 0; i < ministroList.size(); i++)
                   {
                           ministro = (SSP.Ministro) ministroList.get(i);
                           if (bautizoBEAN.getid_ministro().compareTo(String.valueOf(ministro.getId_ministro()))==0)
                               out.println("<option selected value="+String.valueOf(ministro.getId_ministro())+">"
                                           +ministro.getDignidad()+" "+ministro.getNombre()+" "
                                           +ministro.getApellido()+"</option>");
                           else
                               out.println("<option value="+String.valueOf(ministro.getId_ministro())+">"
                                           +ministro.getDignidad()+" "+ministro.getNombre()+" "
                                           +ministro.getApellido()+"</option>");
                        }
                
      out.write("\r\n");
      out.write("                </select>\r\n");
      out.write("            </p>\r\n");
      out.write("            <p>\r\n");
      out.write("              <label for=\"lugar_bautizo\">Lugar de Bautizo: </label>\r\n");
      out.write("            <input name=\"lugar_bautizo\" type=\"text\" id=\"lugar_bautizo\" class=\"txt\" value=\"");

                if(bautizoBEAN.getlugar_bautizo()==null)
                    out.println("Parroquia Cristo Rey"); 
                else
                    out.println(bautizoBEAN.getlugar_bautizo());
                
      out.write("\"/>\r\n");
      out.write("            </p>\r\n");
      out.write("            <p>\r\n");
      out.write("              <label for=\"fecha_bautizo\">Fecha de Bautizo: </label>\r\n");
      out.write("              <input name=\"fecha_bautizo\" type=\"text\" id=\"fecha_bautizo\" class=\"txt\" value=\"");

                    out.println(bautizoBEAN.getfecha_bautizo());
                
      out.write("\"/>\r\n");
      out.write("              <button type=\"button\" name=\"btn_fecha_bautizo\" id=\"btn_fecha_bautizo\" onMouseOver=\"mostrarCalendarioBautizo()\"><img src=\"../../../imagenes/Calendar.gif\" border=\"0\"/></button>\r\n");
      out.write("            </p>\r\n");
      out.write("        </fieldset>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("        <br>\r\n");
      out.write("        <div onclick=\"show('Solicitante')\">\r\n");
      out.write("          <a href=\"#name\" onclick=\"return false\">Datos del Bautizado</a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"Solicitante\">\r\n");
      out.write("            <fieldset>\r\n");
      out.write("                <p>\r\n");
      out.write("                    <label for=\"bautizado_nombre\">Nombre(s): </label>\r\n");
      out.write("                    <input type=\"text\" name=\"bautizado_nombre\" id=\"bautizado_nombre\" class=\"txt\" value=\"");

                        if(bautizoBEAN.getbautizado_nombre() != null)
                            out.println(bautizoBEAN.getbautizado_nombre());
                    
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                    <label for=\"bautizado_apellido\">Apellido(s): </label>\r\n");
      out.write("                    <input type=\"text\" name=\"bautizado_apellido\" id=\"bautizado_apellido\" class=\"txt\" value=\"");

                        if(bautizoBEAN.getbautizado_apellido() != null)
                            out.println(bautizoBEAN.getbautizado_apellido());
                    
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                    <label for=\"id_sexo\">Sexo: </label>\r\n");
      out.write("                    <select name=\"id_sexo\" id=\"id_sexo\">\r\n");
      out.write("                    ");

                        if (bautizoBEAN.getbautizado_sexo() != null)
                        {
                            if (bautizoBEAN.getbautizado_sexo().compareTo("0") == 0)
                            {
                                out.println("<option selected value=\"0\">Femenino</option>");
                                out.println("<option value=\"1\">Masculino</option>");
                            }
                            else
                            {
                                out.println("<option value=\"0\">Femenino</option>");
                                out.println("<option selected value=\"1\">Masculino</option>");
                            }
                        }
                        else
                        {
                            out.println("<option selected value=\"0\">Femenino</option>");
                            out.println("<option value=\"1\">Masculino</option>");
                        }
                    
      out.write("\r\n");
      out.write("                    </select>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                    <label for=\"lugar_nacimiento\">Lugar de Nacimiento: </label>\r\n");
      out.write("                    <input name=\"lugar_nacimiento\" type=\"text\" class=\"txt\" id=\"lugar_nacimiento\" value=\"");

                        if(bautizoBEAN.getlugar_nacimiento() != null)
                            out.println(bautizoBEAN.getlugar_nacimiento());
                        else
                            out.println("Guayaquil - Guayas");
                    
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                    <label for=\"fecha_nacimiento\">Fecha de Nacimiento: </label>\r\n");
      out.write("                    <input name=\"fecha_nacimiento\" type=\"text\" class=\"txt\" id=\"fecha_nacimiento\" value=\"");

                            out.println(bautizoBEAN.getfecha_nacimiento());
                     
      out.write("\"/>\r\n");
      out.write("                    <button type=\"button\" name=\"btn_fecha_nacimiento\" id=\"btn_fecha_nacimiento\" onMouseOver=\"mostrarCalendarioNacimiento()\"><img src=\"../../../imagenes/Calendar.gif\" border=\"0\"/></button>\r\n");
      out.write("                </p>\r\n");
      out.write("            </fieldset>\r\n");
      out.write("        </div>\r\n");
      out.write("        <br>\r\n");
      out.write("        <div onclick=\"show('Padres')\">\r\n");
      out.write("          <a href=\"#name\" onclick=\"return false\">Datos de los Padres</a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"Padres\">\r\n");
      out.write("            <fieldset>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"padre_nombre\">Nombre(s) del padre: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"padre_nombre\" id=\"padre_nombre\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getpadre_nombre() != null)
                        out.println(bautizoBEAN.getpadre_nombre());
                  
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"padre_apellido\">Apellido(s) del padre: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"padre_apellido\" id=\"padre_apellido\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getpadre_apellido() != null)
                        out.println(bautizoBEAN.getpadre_apellido());
                  
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"madre_nombre\">Nombre(s) de la madre: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"madre_nombre\" id=\"madre_nombre\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getmadre_nombre() != null)
                        out.println(bautizoBEAN.getmadre_nombre());
                  
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"madre_apellido\">Apellido(s) de la madre: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"madre_apellido\" id=\"madre_apellido\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getmadre_nombre() != null)
                        out.println(bautizoBEAN.getmadre_nombre());
                  
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("            </fieldset>\r\n");
      out.write("        </div>\r\n");
      out.write("        <br>\r\n");
      out.write("        <div onclick=\"show('Padrinos')\">\r\n");
      out.write("          <a href=\"#name\" onclick=\"return false\">Datos de los Padrinos</a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"Padrinos\">\r\n");
      out.write("            <fieldset>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"padrino_nombre\">Nombre(s) del padrino: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"padrino_nombre\" id=\"padrino_nombre\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getpadrino_nombre() != null)
                        out.println(bautizoBEAN.getpadrino_nombre());
                  
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"padrino_apellido\">Apellido(s) del padrino: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"padrino_apellido\" id=\"padrino_apellido\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getpadrino_apellido() != null)
                        out.println(bautizoBEAN.getpadrino_apellido());
                  
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"madrina_nombre\">Nombre(s) de la madrina: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"madrina_nombre\" id=\"madrina_nombre\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getmadrina_nombre() != null)
                        out.println(bautizoBEAN.getmadrina_nombre());
                  
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"madrina_apellido\">Apellido(s) de la madrina: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"madrina_apellido\" id=\"madrina_apellido\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getmadrina_apellido() != null)
                        out.println(bautizoBEAN.getmadrina_apellido());
                  
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("            </fieldset>\r\n");
      out.write("        </div>\r\n");
      out.write("        <br>\r\n");
      out.write("        <div onclick=\"show('Registro_eclesiastico')\">\r\n");
      out.write("          <a href=\"#name\" onclick=\"return false\">Datos del Registro Eclesi&aacute;stico</a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"Registro_eclesiastico\">\r\n");
      out.write("            <fieldset>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"num_sacramento\">No: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"num_sacramento\" id=\"num_sacramento\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getre_num_sacramento() != null)
                        out.println(bautizoBEAN.getre_num_sacramento());
                  
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"anio_libro\">A&ntilde;o: </label>\r\n");
      out.write("                  <input name=\"anio_libro\" type=\"text\" id=\"anio_libro\" onKeyUp=\"onlyNumbers(this);\" maxlength=\"4\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getre_anio_libro() != null)
                        out.println(bautizoBEAN.getre_anio_libro());
                  
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"num_libro\">Libro: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"num_libro\" id=\"num_libro\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getre_num_libro() != null)
                        out.println(bautizoBEAN.getre_num_libro());
                  
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"folio_libro\">Folio: </label>\r\n");
      out.write("                  <input name=\"folio_libro\" type=\"text\" id=\"folio_libro\" onKeyUp=\"onlyNumbers(this);\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getre_folio_libro() != null)
                        out.println(bautizoBEAN.getre_folio_libro());
                  
      out.write("\"/>\r\n");
      out.write("                </p>\t\t\t\r\n");
      out.write("            </fieldset>\r\n");
      out.write("        </div>\r\n");
      out.write("        <br>\r\n");
      out.write("        <div onclick=\"show('Registro_civil')\">\r\n");
      out.write("          <a href=\"#name\" onclick=\"return false\">Datos del Registro Civil</a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"Registro_civil\">\r\n");
      out.write("            <fieldset>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"acta\">Acta: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"acta\" id=\"acta\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getrc_acta() != null)
                        out.println(bautizoBEAN.getrc_acta());
                  
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"anio\">A&ntilde;o: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"anio\" id=\"anio\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getrc_anio() != null)
                        out.println(bautizoBEAN.getrc_anio());
                  
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"tomo\">Tomo: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"tomo\" id=\"tomo\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getrc_tomo() != null)
                        out.println(bautizoBEAN.getrc_tomo());
                  
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"folio\">Folio: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"folio\" id=\"folio\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getrc_folio() != null)
                        out.println(bautizoBEAN.getrc_folio());
                  
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"lugar\">Lugar: </label>\r\n");
      out.write("                  <input name=\"rc_lugar\" type=\"text\" class=\"txt\" id=\"rc_lugar\" value=\"");

                    if(bautizoBEAN.getrc_lugar() != null)
                        out.println(bautizoBEAN.getrc_lugar());
                    else
                        out.println("Guayaquil - Guayas");
                  
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("            </fieldset>\r\n");
      out.write("        </div>\r\n");
      out.write("        <br>\r\n");
      out.write("        <div onclick=\"show('Observacion')\">\r\n");
      out.write("          <a href=\"#name\" onclick=\"return false\">Observaci&oacute;n</a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"Observacion\">\r\n");
      out.write("            <fieldset>\r\n");
      out.write("                <p align=\"center\">\r\n");
      out.write("              <textarea name=\"observacion\" cols=\"40\" rows=\"4\" id=\"observacion\" class=\"txt\" value=\"");

                if(bautizoBEAN.getObservacion() != null)
                    out.println(bautizoBEAN.getObservacion());
              
      out.write("\"></textarea>\r\n");
      out.write("                </p>\r\n");
      out.write("            </fieldset>\r\n");
      out.write("            <br>\r\n");
      out.write("        </div>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <table width=\"500\" border=\"0\" align=\"center\">\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td align=\"center\"><input type=\"submit\" name=\"Submit\" value=\"Guardar\">&nbsp;\r\n");
      out.write("              &nbsp;&nbsp;&nbsp;\r\n");
      out.write("              <input name=\"Cancelar\" type=\"reset\" id=\"Cancelar\" value=\"Cancelar\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        <br>\r\n");
      out.write("    </form></td>\r\n");
      out.write("    <td rowspan=\"2\">&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"30\" colspan=\"3\" align=\"center\" valign=\"middle\"background=\"../../../imagenes/spacer_down.gif\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      if (_jspxFactory != null) _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
