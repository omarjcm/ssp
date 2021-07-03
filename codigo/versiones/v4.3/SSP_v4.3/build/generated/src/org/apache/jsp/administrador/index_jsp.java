package org.apache.jsp.administrador;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\r\n");
      out.write("<title>Sistema de Servicios Parroquiales - Administraci&oacute;n</title>\r\n");
      out.write("<link href=\"../estilos/menu.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<table width=\"800\" border=\"0\" align=\"center\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"180\" rowspan=\"2\"><div align=\"right\"><img src=\"../imagenes/Logo.gif\" alt=\"\" name=\"Logo_Prinicipal\" width=\"153\" height=\"153\" id=\"Logo_Prinicipal\" /></div></td>\r\n");
      out.write("    <td width=\"426\" height=\"132\">&nbsp;</td>\r\n");
      out.write("    <td width=\"180\" rowspan=\"2\" valign=\"top\">&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td>Inicio </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"208\" valign=\"top\">\r\n");
      out.write("\t\t    <div align=\"right\">\r\n");
      out.write("\t\t      <ul id=\"navmenu\">\r\n");
      out.write("\t\t        <li><a href=\"#\">Ingresar Documento  </a>\r\n");
      out.write("\t\t          <ul>\r\n");
      out.write("     \t  \t\t    <div align=\"left\">\r\n");
      out.write("\t\t            <li><a href=\"../bautismo/ingresar/ingresar.jsp\">de Bautismo</a></li>\r\n");
      out.write("\t\t            <li><a href=\"#\">de Primera Comuni&oacute;n</a></li>\r\n");
      out.write("\t\t            <li><a href=\"#\">de Confirmaci&oacute;n</a></li>\r\n");
      out.write("\t\t            <li><a href=\"#\">de Matrimonio</a></li>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t              </ul>\r\n");
      out.write("\t            </li>\r\n");
      out.write("\t\t        <li><a href=\"#\">Generar Documento</a>\r\n");
      out.write("\t\t          <ul>\r\n");
      out.write("     \t  \t\t    <div align=\"left\">\r\n");
      out.write("\t\t            <li><a href=\"#\">de Bautismo</a></li>\r\n");
      out.write("\t\t            <li><a href=\"#\">de Primera Comuni&oacute;n</a></li>\r\n");
      out.write("\t\t            <li><a href=\"#\">de Confirmaci&oacute;n</a></li>\r\n");
      out.write("\t\t            <li><a href=\"#\">de Matrimonio</a></li>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t              </ul>\r\n");
      out.write("\t            </li>\r\n");
      out.write("\t\t        <li><a href=\"#\">Modificar Documento</a>\r\n");
      out.write("\t\t          <ul>\r\n");
      out.write("     \t  \t\t    <div align=\"left\">\r\n");
      out.write("\t\t            <li><a href=\"#\">de Bautismo</a></li>\r\n");
      out.write("\t\t            <li><a href=\"#\">de Primera Comuni&oacute;n</a></li>\r\n");
      out.write("\t\t            <li><a href=\"#\">de Confirmaci&oacute;n</a></li>\r\n");
      out.write("\t\t            <li><a href=\"#\">de Matrimonio</a></li>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t              </ul>\r\n");
      out.write("\t            </li>\r\n");
      out.write("\t\t        <li><a href=\"#\">Anular Documento</a>\r\n");
      out.write("\t\t          <ul>\r\n");
      out.write("     \t  \t\t    <div align=\"left\">\r\n");
      out.write("\t\t            <li><a href=\"#\">de Bautismo</a></li>\r\n");
      out.write("\t\t            <li><a href=\"#\">de Primera Comuni&oacute;n</a></li>\r\n");
      out.write("\t\t            <li><a href=\"#\">de Confirmaci&oacute;n</a></li>\r\n");
      out.write("\t\t            <li><a href=\"#\">de Matrimonio</a></li>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t              </ul>\r\n");
      out.write("\t            </li>\t\t\t\t\r\n");
      out.write("\t\t      </ul>\r\n");
      out.write("    </div></td>\r\n");
      out.write("    <td valign=\"top\">&nbsp;</td>\r\n");
      out.write("    <td valign=\"top\">\r\n");
      out.write("\t\t    <div align=\"left\">\r\n");
      out.write("\t\t      <ul id=\"navmenu\">\r\n");
      out.write("\t\t        <li><a href=\"#\">Ingresar Usuario</a></li>\t\t\t\t\r\n");
      out.write("\t\t        <li><a href=\"#\">Modificar Usuario</a></li>\t\t\t\t\r\n");
      out.write("\t\t        <li><a href=\"#\">Eliminar Usuario</a></li>\t\t\t\t\r\n");
      out.write("\t\t\t  </ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t        <p>\r\n");
      out.write("\t\t    <div align=\"left\">\r\n");
      out.write("\t\t      <ul id=\"navmenu\">\r\n");
      out.write("\t\t        <li><a href=\"#\">Ingresar Ministro</a></li>\r\n");
      out.write("\t\t\t  </ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t</p></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td>&nbsp;</td>\r\n");
      out.write("    <td><div align=\"center\">Desarrollado por CoDeSOFTWARE </div></td>\r\n");
      out.write("    <td>&nbsp;</td>\r\n");
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
