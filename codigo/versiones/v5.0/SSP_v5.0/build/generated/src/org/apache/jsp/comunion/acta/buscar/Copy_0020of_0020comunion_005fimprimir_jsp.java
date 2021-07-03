package org.apache.jsp.comunion.acta.buscar;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Copy_0020of_0020comunion_005fimprimir_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      SSP.ComulgarPorPrimeraVez comunionBEAN = null;
      synchronized (session) {
        comunionBEAN = (SSP.ComulgarPorPrimeraVez) _jspx_page_context.getAttribute("comunionBEAN", PageContext.SESSION_SCOPE);
        if (comunionBEAN == null){
          comunionBEAN = new SSP.ComulgarPorPrimeraVez();
          _jspx_page_context.setAttribute("comunionBEAN", comunionBEAN, PageContext.SESSION_SCOPE);
        }
      }
      out.write('\r');
      out.write('\n');
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

String id = request.getParameter("id");

comunionBEAN.consultarDatosComunion(id);
ministroBEAN.consultarMinistroPrincipal();

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Certificado de Primera Comunio&oacute;n</title>\r\n");
      out.write("        \r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\r\n");
      out.write("        <link href=\"../../../estilos/acta.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <script languaje=\"JavaScript\">\r\n");
      out.write("            var mydate=new Date()\r\n");
      out.write("            var year=mydate.getYear()\r\n");
      out.write("\r\n");
      out.write("            if (year < 1000)\r\n");
      out.write("                year+=1900\r\n");
      out.write("\r\n");
      out.write("            var day=mydate.getDay()\r\n");
      out.write("            var month=mydate.getMonth()\r\n");
      out.write("            var daym=mydate.getDate()\r\n");
      out.write("\r\n");
      out.write("            var dayarray=new Array(\"domingo\",\"lunes\",\"martes\",\"mi&eacute;rcoles\",\"jueves\",\"viernes\",\"s&aacute;bado\")\r\n");
      out.write("            var montharray=new Array(\"enero\",\"febrero\",\"marzo\",\"abril\",\"mayo\",\"junio\",\"julio\",\"agosto\",\"septiembre\",\"octubre\",\"noviembre\",\"diciembre\")\r\n");
      out.write("        </script>\r\n");
      out.write("    </head>\r\n");
      out.write("    \r\n");
      out.write("    <body>\r\n");
      out.write("        <div id=\"frame\">\r\n");
      out.write("            <div id=\"header\">\r\n");
      out.write("                <div id=\"logo\"></div>\r\n");
      out.write("                <div id=\"titulo\">\r\n");
      out.write("                    <div id=\"titulo_principal\">Certificado de Primera Comuni&oacute;n</div>\r\n");
      out.write("                    <div id=\"fecha\">\r\n");
      out.write("                        Guayaquil, <script languaje=\"JavaScript\">document.write(dayarray[day]+\" \"+daym+\" de \"+montharray[month]+\" del \"+year);</script>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div id=\"middle\">\r\n");
      out.write("                <div id=\"columnLeft\">\r\n");
      out.write("                    A&ntilde;o: ");
out.print(comunionBEAN.getanio_libro());
      out.write("\r\n");
      out.write("                    <br>\r\n");
      out.write("                    Libro: ");
out.print(comunionBEAN.getnum_libro());
      out.write("\r\n");
      out.write("                    <br>\r\n");
      out.write("                    Folio: ");
 out.println(comunionBEAN.getfolio_libro());
      out.write("\r\n");
      out.write("                    <br>\r\n");
      out.write("                    No: ");
 out.println(comunionBEAN.getId_comunion());
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("                <div id=\"columnRight\">\r\n");
      out.write("                    El suscrito ");
 out.println(ministroBEAN.getDignidad()+" "+ministroBEAN.getNombre()+" "+ministroBEAN.getApellido());
      out.write("\r\n");
      out.write("                    <br><br>\r\n");
      out.write("                    CERTIFICA que, en el libro de Primera Comuni&oacute;n, consta lo siguiente:\r\n");
      out.write("                    <br><br>\r\n");
      out.write("                    En la ");
 out.println(comunionBEAN.getlugar_comunion());
      out.write(" \r\n");
      out.write("                    el ");
 out.println( String.valueOf(comunionBEAN.getFechaComunion()));
      out.write(" \r\n");
      out.write("                    hizo la Primera Comuni&oacute;n ");
 out.println(comunionBEAN.getcomulgado_nombre());
      out.write(" \r\n");
      out.write("                    ");
 if (comunionBEAN.comulgado.getSexo()) out.println("hijo"); else out.println("hija");
      out.write(" \r\n");
      out.write("                    de ");
 out.println(comunionBEAN.getpadre_nombre()+" "+ comunionBEAN.getpadre_apellido());
      out.write(" \r\n");
      out.write("                    y de ");
 out.println(comunionBEAN.getmadre_nombre()+" "+ comunionBEAN.getmadre_apellido());
      out.write(" \r\n");
      out.write("                    ");
 if (comunionBEAN.comulgado.getSexo()) out.println("nacido"); else out.println("nacida");
      out.write(" \r\n");
      out.write("                    en ");
 out.print(comunionBEAN.comulgado.getLugarNacimiento());
      out.write(".\r\n");
      out.write("                    <br><br>\r\n");
      out.write("                    Ministro de Primera Comuni&oacute;n ");
 out.print(comunionBEAN.ministro.getDignidad()+" "+comunionBEAN.ministro.getNombre()+" "+comunionBEAN.ministro.getApellido());
      out.write(".\r\n");
      out.write("                    <br><br>\r\n");
      out.write("                    Fueron Padrinos de este sacramento el Sr. ");
 out.print(comunionBEAN.getpadrino_nombre()+" "+comunionBEAN.getpadrino_apellido());
      out.write(" \r\n");
      out.write("                    y la Sra. ");
 out.print(comunionBEAN.getmadrina_nombre()+" "+comunionBEAN.getmadrina_apellido());
      out.write(".\r\n");
      out.write("                    <br><br>\r\n");
      out.write("                    Es fiel copia del original que reposa en nuestro archivo.\r\n");
      out.write("                    <br><br>\r\n");
      out.write("                    LO CERTIFICO\r\n");
      out.write("                    <br><br>\r\n");
      out.write("                    ");
 out.println(ministroBEAN.getDignidad()+" "+ministroBEAN.getNombre()+" "+ministroBEAN.getApellido());
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
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
