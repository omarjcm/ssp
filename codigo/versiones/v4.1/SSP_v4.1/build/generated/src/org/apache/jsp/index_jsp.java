package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\r\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t//<![CDATA[\r\n");
      out.write("\twindow.onload=setObjects;\r\n");
      out.write("\t\r\n");
      out.write("\tfunction setObjects(  ) {\r\n");
      out.write("\t   document.Usuario.usuario.focus();\r\n");
      out.write("\t}\r\n");
      out.write("\t//]]>\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("        <link href=\"estilos/mi_estilo_01.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("\t\t<div align=\"center\" id=\"tabla\">\r\n");
      out.write("\t\t\t<p>&nbsp;</p>\r\n");
      out.write("\t\t\t<p>&nbsp;</p>\r\n");
      out.write("\t\t\t<table width=\"200\" border=\"0\">\r\n");
      out.write("              <tr>\r\n");
      out.write("                <td><img src=\"imagenes/Logo.gif\" alt=\"\" width=\"532\" height=\"89\"></td>\r\n");
      out.write("              </tr>\r\n");
      out.write("              <tr>\r\n");
      out.write("                <td height=\"191\"><form name=\"Usuario\" method=\"post\" action=\"\">\r\n");
      out.write("                  <table width=\"200\" border=\"0\" align=\"center\">\r\n");
      out.write("                    <tr>\r\n");
      out.write("                      <td colspan=\"2\"><div>Acceso</div></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                      <td><div>Usuario:</div></td>\r\n");
      out.write("                      <td><input name=\"usuario\" type=\"text\" id=\"usuario\"></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                      <td><div>Contraseña:</div></td>\r\n");
      out.write("                      <td><input name=\"contrasenia\" type=\"password\" id=\"contrasenia\" value=\"\"></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                      <td colspan=\"2\"><div><a href=\"formularios/reg_eclesiastico.jsp\">Aceptar</a></div></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                  </table>\r\n");
      out.write("                                </form>                </td>\r\n");
      out.write("              </tr>\r\n");
      out.write("              <tr>\r\n");
      out.write("                <td><div align=\"center\">Desarrollado por CoDeSOFTWARE </div></td>\r\n");
      out.write("              </tr>\r\n");
      out.write("            </table>\r\n");
      out.write("\t\t\t<p>&nbsp;</p>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</body>\r\n");
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
