package org.apache.jsp.comunion.acta.ingresar;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import SSP.*;
import java.util.LinkedList;

public final class comunion_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t<title>Acta de Primera Comuni&oacute;n</title>\r\n");
      out.write("\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\r\n");
      out.write("\t<link href=\"../../../estilos/formularios_01.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\t<link href=\"../../../estilos/my_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\t<script language=\"JavaScript\" type=\"text/javascript\" src=\"comunion.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<table width=\"550\" border=\"0\" align=\"left\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <!--DWLayoutTable-->\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"23\" height=\"23\">&nbsp;</td>\r\n");
      out.write("    <td width=\"384\" align=\"center\" valign=\"middle\">\r\n");
      out.write("      <div class=\"titulo_principal\">ACTA DE PRIMERA COMUNI&Oacute;N</div>\r\n");
      out.write("    </td>\r\n");
      out.write("    <td width=\"27\">&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  \r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"113\">&nbsp;</td>\r\n");
      out.write("    <td valign=\"top\">\r\n");
      out.write("\t<form name=\"Comunion\" method=\"post\" action=\"comunionBEAN.jsp\">\r\n");
      out.write("      <br>\r\n");
      out.write("\t\t<fieldset>\r\n");
      out.write("\t\t\t<legend>Registro Eclesi&aacute;stico</legend>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"num_sacramento\">No: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"num_sacramento\" id=\"num_sacramento\" class=\"txt\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"anio_libro\">A&ntilde;o: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"anio_libro\" id=\"anio_libro\" class=\"txt\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"num_libro\">Libro: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"num_libro\" id=\"num_libro\" class=\"txt\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"folio_libro\">Folio: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"folio_libro\" id=\"folio_libro\" class=\"txt\"/>\r\n");
      out.write("                </p>\t\t\t\r\n");
      out.write("\t\t</fieldset>\r\n");
      out.write("      <br>\r\n");
      out.write("\t\t<fieldset>\r\n");
      out.write("\t\t\t<legend>Datos de la Parroquia</legend>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"id_ministro\">Ministro: </label>\r\n");
      out.write("\t\t\t\t\t<select name=\"id_ministro\" id=\"id_ministro\">\r\n");
      out.write("\t\t\t\t\t\t");

						   SSP.Ministro ministro;
						   LinkedList ministroList = ministroBEAN.listaDeMinistros();
						   for (int i = 0; i < ministroList.size(); i++)
						   {
						   	   ministro = (SSP.Ministro) ministroList.get(i);
							   out.println("<option value="+String.valueOf(ministro.getId_ministro())+">"
									   +ministro.getDignidad()+" "+ministro.getNombre()+" "
									   +ministro.getApellido()+"</option>");
							}
					    
      out.write("\r\n");
      out.write("\t\t\t\t\t</select>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"lugar_bautizo\">Lugar de la Primera Comuni&oacute;n: </label>\r\n");
      out.write("                  <input name=\"lugar_comunion\" type=\"text\" class=\"txt\" id=\"lugar_comunion\" value=\"Parroquia Cristo Rey\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"fecha_bautizo\">Fecha de la Primera Comuni&oacute;n: </label>\r\n");
      out.write("                  <input name=\"fecha_comunion\" type=\"text\" class=\"txt\" id=\"fecha_comunion\" value=\"aaaa-mm-dd\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t</fieldset>\r\n");
      out.write("      <br>\r\n");
      out.write("\t\t<fieldset>\r\n");
      out.write("\t\t\t<legend>Datos del Solicitante </legend>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"comulgado_nombre\">Nombre(s): </label>\r\n");
      out.write("                  <input type=\"text\" name=\"comulgado_nombre\" id=\"comulgado_nombre\" class=\"txt\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"comulgado_apellido\">Apellido(s): </label>\r\n");
      out.write("                  <input type=\"text\" name=\"comulgado_apellido\" id=\"comulgado_apellido\" class=\"txt\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"id_sexo\">Sexo: </label>\r\n");
      out.write("                  <select name=\"id_sexo\" id=\"id_sexo\">\r\n");
      out.write("                    <option value=\"0\">Femenino</option>\r\n");
      out.write("                    <option value=\"1\">Masculino</option>\r\n");
      out.write("                  </select>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"fecha_nacimiento\">Fecha de Nacimiento: </label>\r\n");
      out.write("                  <input name=\"fecha_nacimiento\" type=\"text\" class=\"txt\" id=\"fecha_nacimiento\" value=\"aaaa-mm-dd\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"edad\">Edad: </label>\r\n");
      out.write("                  <input name=\"edad\" type=\"text\" class=\"txt\" id=\"edad\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"grado\">Grado &oacute; Curso: </label>\r\n");
      out.write("                  <input name=\"grado\" type=\"text\" class=\"txt\" id=\"grado\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"nombre_institucion\">Escuela &oacute; Colegio: </label>\r\n");
      out.write("                  <input name=\"nombre_institucion\" type=\"text\" class=\"txt\" id=\"nombre_institucion\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"direccion\">Direcci&oacute;n de Domicilio : </label>\r\n");
      out.write("                  <input name=\"direccion\" type=\"text\" class=\"txt\" id=\"direccion\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("\t\t</fieldset>\r\n");
      out.write("      <br>\r\n");
      out.write("\t\t<fieldset>\r\n");
      out.write("\t\t\t<legend>Datos de los Padres</legend>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"padre_nombre\">Nombre(s) del padre: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"padre_nombre\" id=\"padre_nombre\" class=\"txt\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"padre_apellido\">Apellido(s) del padre: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"padre_apellido\" id=\"padre_apellido\" class=\"txt\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"madre_nombre\">Nombre(s) de la madre: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"madre_nombre\" id=\"madre_nombre\" class=\"txt\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"madre_apellido\">Apellido(s) de la madre: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"madre_apellido\" id=\"madre_apellido\" class=\"txt\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"estado_civil_padres\">Estado Civil: </label>\r\n");
      out.write("                  <input name=\"estado_civil_padres\" type=\"text\" class=\"txt\" id=\"estado_civil_padres\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("\t\t</fieldset>\r\n");
      out.write("      <br>\r\n");
      out.write("\t\t<fieldset>\r\n");
      out.write("\t\t\t<legend>Datos de los Padrinos</legend>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"padrino_nombre\">Nombre(s) del padrino: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"padrino_nombre\" id=\"padrino_nombre\" class=\"txt\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"padrino_apellido\">Apellido(s) del padrino: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"padrino_apellido\" id=\"padrino_apellido\" class=\"txt\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"madrina_nombre\">Nombre(s) de la madrina: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"madrina_nombre\" id=\"madrina_nombre\" class=\"txt\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"madrina_apellido\">Apellido(s) de la madrina: </label>\r\n");
      out.write("                  <input type=\"text\" name=\"madrina_apellido\" id=\"madrina_apellido\" class=\"txt\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("\t\t</fieldset>\r\n");
      out.write("      <br>\r\n");
      out.write("\t\t<fieldset>\r\n");
      out.write("\t\t\t<legend>Observaci&oacute;n</legend>\r\n");
      out.write("                <p align=\"center\">\r\n");
      out.write("                  <textarea name=\"observacion\" cols=\"40\" rows=\"4\" class=\"txt\" id=\"observacion\"></textarea>\r\n");
      out.write("                </p>\r\n");
      out.write("\t\t</fieldset>\r\n");
      out.write("      <br>\r\n");
      out.write("        <table width=\"87%\"  border=\"0\" align=\"center\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <th scope=\"row\"><a onclick=\"validar(Comunion)\" id=\"enlace\">Aceptar</a></th>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        <p>&nbsp;</p>\r\n");
      out.write("    </form></td>\r\n");
      out.write("    <td>&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"30\" colspan=\"3\" align=\"center\" valign=\"middle\"background=\"../../../imagenes/spacer_down.gif\"><div align=\"center\"> Desarrollado por <strong>CoDeSOFTWARE</strong></div></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
