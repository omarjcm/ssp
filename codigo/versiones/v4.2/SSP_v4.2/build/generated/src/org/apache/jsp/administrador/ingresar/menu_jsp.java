package org.apache.jsp.administrador.ingresar;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class menu_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<title>Sistemas de Servicios Parroquiales - Ingresar Acta</title>\r\n");
      out.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"../scripts/efectos.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body onload=\"MM_preloadImages('../../imagenes/Menu_d.2.gif','../imagenes/Menu_a.1.gif','../imagenes/Menu_a.2.gif','../imagenes/Menu_b.1.gif','../imagenes/Menu_b.2.gif','../imagenes/Menu_c.1.gif','../imagenes/Menu_c.2.gif','../imagenes/Menu_d.1.gif','../../imagenes/Sub_menu_b.1.gif','../../imagenes/Sub_menu_b.2.gif','../../imagenes/Sub_menu_c.1.gif','../../imagenes/Sub_menu_c.2.gif','../../imagenes/Sub_menu_d.1.gif','../../imagenes/Sub_menu_d.2.gif')\">\r\n");
      out.write("<table width=\"823\" border=\"0\" align=\"center\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"153\" rowspan=\"2\"><img src=\"../../imagenes/Logo.gif\" width=\"153\" height=\"153\" /></td>\r\n");
      out.write("    <td width=\"484\" height=\"132\"><p>&nbsp;</p></td>\r\n");
      out.write("    <td width=\"172\" rowspan=\"2\">&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td><div align=\"left\"><a href=\"menu.jsp\">Inicio</a> &gt; Ingresar</div></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td valign=\"top\"><div align=\"right\">\r\n");
      out.write("      <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td><a href=\"menu.jsp\" target=\"_top\" onclick=\"MM_nbGroup('down','group1','ingresar','../../imagenes/Menu_a.1.gif',1)\" onmouseover=\"MM_nbGroup('over','ingresar','../../imagenes/Menu_a.2.gif','',1)\" onmouseout=\"MM_nbGroup('out')\"><img src=\"../../imagenes/Menu_a.1.gif\" alt=\"\" name=\"ingresar\" width=\"119\" height=\"32\" border=\"0\" id=\"ingresar\" onload=\"\" /></a></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td><a href=\"javascript:;\" target=\"_top\" onclick=\"MM_nbGroup('down','group1','generar','../../imagenes/Menu_b.1.gif',1)\" onmouseover=\"MM_nbGroup('over','generar','../../imagenes/Menu_b.2.gif','',1)\" onmouseout=\"MM_nbGroup('out')\"><img src=\"../../imagenes/Menu_b.1.gif\" alt=\"\" name=\"generar\" width=\"119\" height=\"32\" border=\"0\" id=\"generar\" onload=\"\" /></a></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td><a href=\"javascript:;\" target=\"_top\" onclick=\"MM_nbGroup('down','group1','modificar','../../imagenes/Menu_c.1.gif',1)\" onmouseover=\"MM_nbGroup('over','modificar','../../imagenes/Menu_c.2.gif','',1)\" onmouseout=\"MM_nbGroup('out')\"><img src=\"../../imagenes/Menu_c.1.gif\" alt=\"\" name=\"modificar\" width=\"119\" height=\"32\" border=\"0\" id=\"modificar\" onload=\"\" /></a></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td><a href=\"javascript:;\" target=\"_top\" onclick=\"MM_nbGroup('down','group1','anular','../../imagenes/Menu_d.1.gif',1)\" onmouseover=\"MM_nbGroup('over','anular','../../imagenes/Menu_d.2.gif','',1)\" onmouseout=\"MM_nbGroup('out')\"><img src=\"../../imagenes/Menu_d.1.gif\" alt=\"\" name=\"anular\" width=\"119\" height=\"32\" border=\"0\" id=\"anular\" onload=\"\" /></a></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table>\r\n");
      out.write("      </div></td>\r\n");
      out.write("    <td valign=\"top\"></td>\r\n");
      out.write("    <td valign=\"top\">Actas de: <br />\r\n");
      out.write("        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td><a href=\"bautismo/bautismo.jsp\"  target=\"_top\" onclick=\"MM_nbGroup('down','group1','bautismo','../../imagenes/Sub_menu_a.1.gif',1)\" onmouseover=\"MM_nbGroup('over','bautismo','../../imagenes/Sub_menu_a.2.gif','',1)\" onmouseout=\"MM_nbGroup('out')\"><img src=\"../../imagenes/Sub_menu_a.1.gif\" alt=\"\" name=\"bautismo\" width=\"172\" height=\"32\" border=\"0\" id=\"bautismo\" onload=\"\" /></a></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td><a href=\"comunion/comunion.jsp\" target=\"_top\" onclick=\"MM_nbGroup('down','group1','comunion','../../imagenes/Sub_menu_b.1.gif',1)\" onmouseover=\"MM_nbGroup('over','comunion','../../imagenes/Sub_menu_b.2.gif','',1)\" onmouseout=\"MM_nbGroup('out')\"><img src=\"../../imagenes/Sub_menu_b.1.gif\" alt=\"\" name=\"comunion\" width=\"172\" height=\"32\" border=\"0\" id=\"comunion\" onload=\"\" /></a></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td><a href=\"confirmacion/confirmacion.jsp\" target=\"_top\" onclick=\"MM_nbGroup('down','group1','confirmacion','../../imagenes/Sub_menu_c.1.gif',1)\" onmouseover=\"MM_nbGroup('over','confirmacion','../../imagenes/Sub_menu_c.2.gif','',1)\" onmouseout=\"MM_nbGroup('out')\"><img src=\"../../imagenes/Sub_menu_c.1.gif\" alt=\"\" name=\"confirmacion\" width=\"172\" height=\"32\" border=\"0\" id=\"confirmacion\" onload=\"\" /></a></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td><a href=\"matrimonio/matrimonio.jsp\" target=\"_top\" onclick=\"MM_nbGroup('down','group1','matrimonio','../../imagenes/Sub_menu_d.1.gif',1)\" onmouseover=\"MM_nbGroup('over','matrimonio','../../imagenes/Sub_menu_d.2.gif','',1)\" onmouseout=\"MM_nbGroup('out')\"><img src=\"../../imagenes/Sub_menu_d.1.gif\" alt=\"\" name=\"matrimonio\" width=\"172\" height=\"32\" border=\"0\" id=\"matrimonio\" onload=\"\" /></a></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("    Otros:<br />\r\n");
      out.write("    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td><a href=\"usuario/usuario.jsp\" target=\"_top\" onclick=\"MM_nbGroup('down','group1','usuario','../../imagenes/Sub_menu_e.1.gif',1)\" onmouseover=\"MM_nbGroup('over','usuario','../../imagenes/Sub_menu_e.2.gif','',1)\" onmouseout=\"MM_nbGroup('out')\"><img src=\"../../imagenes/Sub_menu_e.1.gif\" alt=\"\" name=\"usuario\" width=\"172\" height=\"32\" border=\"0\" id=\"usuario\" onload=\"\" /></a></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table></td>\r\n");
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
