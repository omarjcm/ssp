package org.apache.jsp.usuario.ingresar;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import SSP.*;
import java.util.LinkedList;

public final class usuario_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t<title>Ingreso de Usuario</title>\r\n");
      out.write("\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\r\n");
      out.write("\t<link href=\"../../estilos/formularios_01.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\t<link href=\"../../estilos/my_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\t<script language=\"JavaScript\" type=\"text/javascript\" src=\"usuario.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<table width=\"550\" border=\"0\" align=\"left\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <!--DWLayoutTable-->\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"23\" height=\"23\">&nbsp;</td>\r\n");
      out.write("    <td width=\"384\" align=\"center\" valign=\"middle\">\r\n");
      out.write("      <div class=\"titulo_principal\">INGRESO DE USUARIO</div>\r\n");
      out.write("    </td>\r\n");
      out.write("    <td width=\"27\">&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  \r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"113\">&nbsp;</td>\r\n");
      out.write("    <td valign=\"top\">\r\n");
      out.write("\t<form name=\"Usuario\" method=\"post\" action=\"usuarioBEAN.jsp\">\r\n");
      out.write("      <br>\r\n");
      out.write("\t\t<fieldset>\r\n");
      out.write("\t\t\t<legend>Registro del usuario y contrase&ntilde;a</legend>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"usuario\">Usuario: </label>\r\n");
      out.write("                  <input name=\"usuario\" type=\"text\" class=\"txt\" id=\"usuario\" value=\"  \" maxlength=\"10\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"contrasenia\">Contrase&ntilde;a: </label>\r\n");
      out.write("                  <input name=\"contrasenia\" type=\"password\" class=\"txt\" id=\"contrasenia\" maxlength=\"10\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("\t\t</fieldset>\r\n");
      out.write("      <br>\r\n");
      out.write("\t\t<fieldset>\r\n");
      out.write("\t\t\t<legend>Datos del Usuario </legend>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"usuario_nombre\">Nombre(s): </label>\r\n");
      out.write("                  <input type=\"text\" name=\"usuario_nombre\" id=\"usuario_nombre\" class=\"txt\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"usuario_apellido\">Apellido(s): </label>\r\n");
      out.write("                  <input type=\"text\" name=\"usuario_apellido\" id=\"usuario_apellido\" class=\"txt\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"id_sexo\">Sexo: </label>\r\n");
      out.write("                  <select name=\"id_sexo\" id=\"id_sexo\">\r\n");
      out.write("                    <option value=\"0\" selected>Femenino</option>\r\n");
      out.write("                    <option value=\"1\">Masculino</option>\r\n");
      out.write("                  </select>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"lugar_nacimiento\">Lugar de Nacimiento: </label>\r\n");
      out.write("                  <input name=\"lugar_nacimiento\" type=\"text\" class=\"txt\" id=\"lugar_nacimiento\" value=\"Guayaquil - Guayas\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"id_tipo\">Tipo: </label>\r\n");
      out.write("\t\t\t\t  <select name=\"id_tipo\" id=\"id_tipo\">\r\n");
      out.write("\t\t\t\t\t<option value=\"0\">Administrador</option>\r\n");
      out.write("\t\t\t\t\t<option value=\"1\" selected>Secretario</option>\r\n");
      out.write("\t\t\t\t\t<option value=\"2\">Contador</option>\r\n");
      out.write("\t\t\t\t  </select>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"id_cargo\">Cargo: </label>\r\n");
      out.write("\t\t\t\t  <select name=\"id_cargo\" id=\"id_cargo\">\r\n");
      out.write("\t\t\t\t\t<option value=\"0\">Sra.</option>\r\n");
      out.write("\t\t\t\t\t<option value=\"1\">Sr.</option>\r\n");
      out.write("\t\t\t\t\t<option value=\"2\">Hno.</option>\r\n");
      out.write("\t\t\t\t\t<option value=\"3\">Hna.</option>\r\n");
      out.write("\t\t\t\t\t<option value=\"4\" selected>Srta.</option>\r\n");
      out.write("\t\t\t\t  </select>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"telefono1\">Tel&eacute;fono: </label>\r\n");
      out.write("                  <input name=\"telefono1\" type=\"text\" class=\"txt\" id=\"telefono1\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"telefono2\">Tel&eacute;fono: </label>\r\n");
      out.write("                  <input name=\"telefono2\" type=\"text\" class=\"txt\" id=\"telefono2\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                  <label for=\"direccion\">Direcci&oacute;n de Domicilio: </label>\r\n");
      out.write("                  <input name=\"direccion\" type=\"text\" class=\"txt\" id=\"direccion\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("\t\t</fieldset>\r\n");
      out.write("      <br>\r\n");
      out.write("        <table width=\"87%\"  border=\"0\" align=\"center\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <th scope=\"row\"><a onclick=\"validar(Usuario)\" id=\"enlace\">Aceptar</a></th>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        <p>&nbsp;</p>\r\n");
      out.write("    </form></td>\r\n");
      out.write("    <td>&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"30\" colspan=\"3\" align=\"center\" valign=\"middle\"background=\"../../imagenes/spacer_down.gif\"><div align=\"center\"> Desarrollado por <strong>CoDeSOFTWARE</strong></div></td>\r\n");
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
