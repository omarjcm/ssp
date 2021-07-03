package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"validarUsuario.js\"></script>\r\n");
      out.write("<title>Sistema de Servicios Parroquiales (SSP)</title>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\r\n");
      out.write("<link href=\"estilos/my_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<p>&nbsp;</p>\r\n");
      out.write("<p><br>\r\n");
      out.write("</p>\r\n");
      out.write("<table width=\"765\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <!--DWLayoutTable-->\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"407\" height=\"97\" valign=\"top\"><img src=\"imagenes/Logo_SSP.gif\" width=\"480\" height=\"97\"></td>\r\n");
      out.write("    <td width=\"285\"><div align=\"center\" class = \"titulo\">Parroquia Eclesi&aacute;stica </div>\r\n");
      out.write("      <div align=\"center\" class=\"titulo_principal\">&quot;CRISTO REY&quot; </div>\r\n");
      out.write("    </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"303\" colspan=\"2\" valign=\"top\"><p>&nbsp;</p>\r\n");
      out.write("      <p>&nbsp;</p>\r\n");
      out.write("      <p>&nbsp;</p>\r\n");
      out.write("      <form name=\"Usuario\" method=\"post\" action=\"sesion.jsp\">\r\n");
      out.write("        <table width=\"200\" border=\"0\" align=\"center\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td colspan=\"2\"><div align=\"center\" class = \"titulo\">Acceso </div>              <br>\r\n");
      out.write("            </td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr valign=\"middle\">\r\n");
      out.write("            <td><div align=\"center\" class = \"etiqueta\"> Usuario:</div></td>\r\n");
      out.write("            <td><input name=\"usuario\" type=\"text\" id=\"usuario\"></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr valign=\"middle\">\r\n");
      out.write("            <td><div align=\"center\" class = \"etiqueta\"> Contrase&ntilde;a:</div></td>\r\n");
      out.write("            <td><input name=\"contrasenia\" type=\"password\" id=\"contrasenia\"></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td colspan=\"2\"><div align=\"center\"><a style=\"cursor:pointer; font-weight: bold; color: #0000FF; font-size: 10pt;\" onclick=\"validarUsuario(Usuario)\"><br>Aceptar</a></div></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("      </form>            \r\n");
      out.write("    </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"30\" colspan=\"2\" align=\"center\" valign=\"middle\"background=\"imagenes/spacer_down.gif\"><div align=\"center\">&quot;Sistemas de Servicios Parroquiales&quot; (SSP)</div></td>\r\n");
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
