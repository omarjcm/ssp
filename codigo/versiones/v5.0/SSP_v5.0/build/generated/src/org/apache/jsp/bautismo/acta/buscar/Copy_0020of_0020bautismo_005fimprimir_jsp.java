package org.apache.jsp.bautismo.acta.buscar;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Copy_0020of_0020bautismo_005fimprimir_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      SSP.Bautizar bautizoBEAN = null;
      synchronized (session) {
        bautizoBEAN = (SSP.Bautizar) _jspx_page_context.getAttribute("bautizoBEAN", PageContext.SESSION_SCOPE);
        if (bautizoBEAN == null){
          bautizoBEAN = new SSP.Bautizar();
          _jspx_page_context.setAttribute("bautizoBEAN", bautizoBEAN, PageContext.SESSION_SCOPE);
        }
      }
      out.write('\r');
      out.write('\n');
      SSP.Solicitante solicitanteBEAN = null;
      synchronized (session) {
        solicitanteBEAN = (SSP.Solicitante) _jspx_page_context.getAttribute("solicitanteBEAN", PageContext.SESSION_SCOPE);
        if (solicitanteBEAN == null){
          solicitanteBEAN = new SSP.Solicitante();
          _jspx_page_context.setAttribute("solicitanteBEAN", solicitanteBEAN, PageContext.SESSION_SCOPE);
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
String tipo = request.getParameter("tipo");

if (tipo!=null && tipo.compareTo("1")==0) {
    bautizoBEAN.bautizado.setIdSolici(id);
}

bautizoBEAN.consultarDatosBautizo(id);
ministroBEAN.consultarMinistroPrincipal();

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Certificado de Bautismo</title>\r\n");
      out.write("        \r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\r\n");
      out.write("        <link href=\"../../../estilos/acta.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <script languaje=\"JavaScript\">\r\n");
      out.write("\t  var mydate=new Date()\r\n");
      out.write("\t  var year=mydate.getYear()\r\n");
      out.write("\t  \r\n");
      out.write("          if (year < 1000)\r\n");
      out.write("            year+=1900\r\n");
      out.write("\t  \r\n");
      out.write("          var day=mydate.getDay()\r\n");
      out.write("          var month=mydate.getMonth()\r\n");
      out.write("          var daym=mydate.getDate()\r\n");
      out.write("\r\n");
      out.write("          var dayarray=new Array(\"domingo\",\"lunes\",\"martes\",\"mi&eacute;rcoles\",\"jueves\",\"viernes\",\"s&aacute;bado\")\r\n");
      out.write("          var montharray=new Array(\"enero\",\"febrero\",\"marzo\",\"abril\",\"mayo\",\"junio\",\"julio\",\"agosto\",\"septiembre\",\"octubre\",\"noviembre\",\"diciembre\")\r\n");
      out.write("        </script>\r\n");
      out.write("    </head>\r\n");
      out.write("    \r\n");
      out.write("    <body>\r\n");
      out.write("        <div id=\"frame\">\r\n");
      out.write("            <div id=\"header\">\r\n");
      out.write("                <div id=\"logo\"></div>\r\n");
      out.write("                <div id=\"titulo\">\r\n");
      out.write("                    <div id=\"titulo_principal\">Certificado de Bautizo</div>\r\n");
      out.write("                    <div id=\"fecha\">\r\n");
      out.write("                        Guayaquil, \r\n");
      out.write("                        <script languaje=\"JavaScript\"> \r\n");
      out.write("                            document.write(dayarray[day]+\" \"+daym+\" de \"+montharray[month]+\" del \"+year); \r\n");
      out.write("                        </script>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div id=\"middle\">\r\n");
      out.write("                <div id=\"columnLeft\">\r\n");
      out.write("                    No: ");
 out.println(bautizoBEAN.getre_num_sacramento());
      out.write("\r\n");
      out.write("                    <br>\r\n");
      out.write("                    A&ntilde;o: ");
 out.println(bautizoBEAN.getre_anio_libro());
      out.write("\r\n");
      out.write("                    <br>\r\n");
      out.write("                    Libro: ");
 out.println(bautizoBEAN.getre_num_libro());
      out.write("\r\n");
      out.write("                    <br>\r\n");
      out.write("                    Folio: ");
 out.println(bautizoBEAN.getre_folio_libro());
      out.write("\r\n");
      out.write("                    <br><br>\r\n");
      out.write("                    <strong>REGISTRO CIVIL:</strong>\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("                    A&ntilde;o: ");
 out.println(bautizoBEAN.getrc_anio()); 
      out.write("\r\n");
      out.write("                    <br>\r\n");
      out.write("                    Tomo: ");
 out.println(bautizoBEAN.getrc_tomo());
      out.write("\r\n");
      out.write("                    <br>\r\n");
      out.write("                    Acta: ");
 out.println(bautizoBEAN.getrc_acta());
      out.write("\r\n");
      out.write("                    <br>\r\n");
      out.write("                    Ciudad: ");
 out.println(bautizoBEAN.getrc_lugar());
      out.write("\r\n");
      out.write("                    <br><br>\r\n");
      out.write("                    <strong>NOTA MARGINAL:</strong>\r\n");
      out.write("                    <br>\r\n");
      out.write("                    ");
 if(bautizoBEAN.getObservacion() !=null) out.println(bautizoBEAN.getObservacion()); 
      out.write("\r\n");
      out.write("                    <br>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div id=\"columnRight\">\r\n");
      out.write("                    El suscrito ");
 out.println(ministroBEAN.getDignidad()+" "+ministroBEAN.getNombre()+" "+ministroBEAN.getApellido());
      out.write("\r\n");
      out.write("                    <br><br>\r\n");
      out.write("                    CERTIFICA que, en el libro especial de Bautizos de esta Parroquia, se haya una Partida que copiada literalmente dice:\r\n");
      out.write("                    <br><br>\r\n");
      out.write("                    En la Iglesia de ");
 out.println(bautizoBEAN.getlugar_bautizo()); 
      out.write(" \r\n");
      out.write("                    el ");
 out.println(String.valueOf(bautizoBEAN.getfecha_bautizo()));
      out.write(" \r\n");
      out.write("                    se bautiz&oacute; a ");
 out.println(bautizoBEAN.bautizado.getNombre());
      out.write(" \r\n");
      out.write("                    ");
 if (bautizoBEAN.bautizado.getSexo()) out.println("hijo"); else out.println("hija"); 
      out.write(" \r\n");
      out.write("                    ");
 if (bautizoBEAN.bautizado.getSexo()) out.println("legitimo"); else out.println("legítima"); 
      out.write(" \r\n");
      out.write("                    de ");
 out.println(bautizoBEAN.getpadre_nombre()+" "+bautizoBEAN.getpadre_apellido());
      out.write(" \r\n");
      out.write("                    y de ");
 out.println(bautizoBEAN.getmadre_nombre()+" "+bautizoBEAN.getmadre_apellido());
      out.write(" \r\n");
      out.write("                    ");
 if (bautizoBEAN.bautizado.getSexo()) out.println("nacido"); else out.println("nacida"); 
      out.write(" \r\n");
      out.write("                    en ");
out.print(bautizoBEAN.getlugar_nacimiento());
      out.write(".\r\n");
      out.write("                    <br><br>\r\n");
      out.write("                    Fueron Padrinos de este Bautismo el Sr. ");
 out.println(bautizoBEAN.getpadrino_nombre()+" "+bautizoBEAN.getpadrino_apellido());
      out.write(" y la Sra. ");
 out.println(bautizoBEAN.getmadrina_nombre()+" "+bautizoBEAN.getmadrina_apellido());
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
      out.write("            <div id=\"footer\">\r\n");
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
