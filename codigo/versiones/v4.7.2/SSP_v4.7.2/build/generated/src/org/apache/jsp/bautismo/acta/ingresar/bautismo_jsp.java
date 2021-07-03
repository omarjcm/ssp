package org.apache.jsp.bautismo.acta.ingresar;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import SSP.*;
import java.util.LinkedList;

public final class bautismo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      SSP.Usuario uBEAN = null;
      synchronized (session) {
        uBEAN = (SSP.Usuario) _jspx_page_context.getAttribute("uBEAN", PageContext.SESSION_SCOPE);
        if (uBEAN == null){
          uBEAN = new SSP.Usuario();
          _jspx_page_context.setAttribute("uBEAN", uBEAN, PageContext.SESSION_SCOPE);
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

    String paso = request.getParameter("paso");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>SSP - Ingreso de Acta de Bautizo</title>\r\n");
      out.write("        <link href=\"../../../estilos/tabs.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <link href=\"../../../calendario/calendar.css\" type=\"text/css\" rel=STYLESHEET>\r\n");
      out.write("        \r\n");
      out.write("        <script language=\"JavaScript\" type=\"text/javascript\" src=\"../../../inicio/cerrarSesion.js\"></script>\r\n");
      out.write("        <script language=\"JavaScript\" type=\"text/javascript\" src=\"formulario.js\"></script>\r\n");
      out.write("        <SCRIPT language=JavaScript1.2 src=\"../../../calendario/calendar.js\" type=\"text/javascript\"></SCRIPT>\r\n");
      out.write("        <SCRIPT language=JavaScript1.2 src=\"../../../calendario/calendario.js\" type=\"text/javascript\"></SCRIPT>\r\n");
      out.write("        <SCRIPT language=JavaScript1.2 src=\"../../../calendario/calendar-es.js\" type=\"text/javascript\"></SCRIPT>\r\n");
      out.write("        <SCRIPT language=JavaScript1.2 src=\"../../../calendario/calendar-setup.js\" type=\"text/javascript\"></SCRIPT>\r\n");
      out.write("        <script type=\"text/javascript\">\r\n");
      out.write("            function onlyNumbers( el )\r\n");
      out.write("            {\r\n");
      out.write("                    var _number = el.value;\r\n");
      out.write("                    el.value = _number.replace(/\\D/g,\"\");\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            function esDigito(caracter) {\r\n");
      out.write("                    return (caracter >= \"0\"  && caracter <= \"9\")\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            function esNumero(texto){\r\n");
      out.write("                    var i;\r\n");
      out.write("                    for ( i = 0; i < texto.length; i++ ){\r\n");
      out.write("                            if (!esDigito(texto.charAt(i))){\r\n");
      out.write("                                    return false\r\n");
      out.write("                            }\r\n");
      out.write("                    }\r\n");
      out.write("                    return true\r\n");
      out.write("            }\t\r\n");
      out.write("\r\n");
      out.write("            function formatoCalendario( el )\r\n");
      out.write("            {\r\n");
      out.write("                    var _anio = el.value.substring(0,4);\r\n");
      out.write("                    var _number = el.value;\r\n");
      out.write("                    el.value = _number.replace(/\\D/g,\"\");\r\n");
      out.write("            }\r\n");
      out.write("        </script>\r\n");
      out.write("        <link href=\"../../../estilos/formularios.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <link href=\"../../../estilos/my_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("    <table width=\"770\" border=\"0\" align=\"left\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td height=\"152\" colspan=\"4\"><img src=\"../../../imagenes/banner.png\" width=\"805\" height=\"150\"></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td width=\"191\" height=\"449\" rowspan=\"3\" valign=\"top\"><br><table width=\"188\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td width=\"188\" height=\"45\" background=\"../../../imagenes/documentacion.png\">&nbsp;</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td  height=\"79\" valign=\"top\"background=\"../../../imagenes/contenido.png\">\r\n");
      out.write("                <br>\r\n");
      out.write("                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("                <img src=\"../../../imagenes/add.png\" width=\"7\" height=\"7\"> <a href=\"bautismo.jsp?paso=1\">Ingresar Acta</a><br>\r\n");
      out.write("                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("                <img src=\"../../../imagenes/add.png\" width=\"7\" height=\"7\"> <a href=\"../../../menu/index_temporal.jsp\">Buscar Acta</a>\t\t\t<br>\r\n");
      out.write("                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("                <img src=\"../../../imagenes/add.png\" width=\"8\" height=\"7\"> <a href=\"../../../menu/index_temporal.jsp\">Modificar Acta</a>\t\t\t<br>\r\n");
      out.write("                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("                <img src=\"../../../imagenes/add.png\" width=\"8\" height=\"7\"> <a href=\"../../../menu/index_temporal.jsp\">Anular Acta</a>\t\t\t<br>\t\t\t</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td width=\"188\" height=\"8\" background=\"../../../imagenes/abajo.png\"></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("\t\t<br>\r\n");
      out.write("          <table width=\"189\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td width=\"189\" height=\"45\" background=\"../../../imagenes/administracion.png\">&nbsp;</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td  height=\"64\" valign=\"top\"background=\"../../../imagenes/contenido.png\"><br>\r\n");
      out.write("                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src=\"../../../imagenes/add.png\" alt=\"4\" width=\"8\" height=\"7\"> <a href=\"../../../menu/index_temporal.jsp\">Ingresar Usuario</a> <br>\r\n");
      out.write("                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src=\"../../../imagenes/add.png\" alt=\"2\" width=\"8\" height=\"7\"> <a href=\"../../../menu/index_temporal.jsp\">Modificar Usuario</a> <br>\r\n");
      out.write("                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src=\"../../../imagenes/add.png\" alt=\"1\" width=\"8\" height=\"7\"> <a href=\"../../../menu/index_temporal.jsp\">Eliminar Usuario</a> <br>              </td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td width=\"189\" height=\"8\" background=\"../../../imagenes/abajo.png\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          </table>\r\n");
      out.write("\t\t  <br>\r\n");
      out.write("          <table width=\"188\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td width=\"188\" height=\"45\" background=\"../../../imagenes/ministro.png\">&nbsp;</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td  height=\"42\" valign=\"top\"background=\"../../../imagenes/contenido.png\"><br>\r\n");
      out.write("              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src=\"../../../imagenes/add.png\" alt=\"4\" width=\"8\" height=\"7\"> <a href=\"../../../menu/index_temporal.jsp\">Ingresar Ministro</a></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td width=\"188\" height=\"8\" background=\"../../../imagenes/abajo.png\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          </table>\r\n");
      out.write("          <p>&nbsp;</p>\r\n");
      out.write("        <p>&nbsp;</p></td>\r\n");
      out.write("        <td width=\"489\" height=\"10\" valign=\"middle\">&nbsp;</td>\r\n");
      out.write("        <td width=\"36\" rowspan=\"2\" align=\"left\" valign=\"middle\">\r\n");
      out.write("\t\t<form action=\"../../../inicio/cerrarSesion.jsp\" method=\"post\">\r\n");
      out.write("\t\t\t<img src=\"../../../imagenes/gnome-shutdown.png\" width=\"36,727\" height=\"35,196\" border=\"0\" style=\"cursor:pointer;\" onclick=\"cerrarSesion()\">\r\n");
      out.write("\t\t</form>\t\t</td>\r\n");
      out.write("        <td width=\"31\" rowspan=\"2\" align=\"left\" valign=\"middle\">Salir</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td height=\"10\" valign=\"middle\"><a href=\"../../../inicio/index.jsp\">Inicio</a> &gt; <span id=\"titulo\">Ingreso de Acta de Bautizo</span> </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td height=\"391\" colspan=\"3\" align=\"center\" valign=\"top\">\r\n");
      out.write("        <div id=\"tabsB\">\r\n");
      out.write("            <ul>\r\n");
      out.write("                <li id=\"current\"><a href=\"bautismo.jsp?paso=1\"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bautizo&nbsp;&nbsp;</span></a></li>\r\n");
      out.write("                <li><a href=\"../../../comunion/acta/ingresar/comunion.jsp?paso=1\"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Primera Comuni&oacute;n&nbsp;&nbsp;</span></a></li>\r\n");
      out.write("                <li><a href=\"../../../confirmacion/acta/ingresar/confirmacion.jsp?paso=1\"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirmaci&oacute;n&nbsp;&nbsp;</span></a></li>\r\n");
      out.write("                <li><a href=\"../../../matrimonio/acta/ingresar/matrimonio.jsp?paso=1\"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Matrimonio&nbsp;&nbsp;</span></a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<table width=\"570\" border=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"14\" valign=\"top\" align=\"center\"><span id=\"titulo\"><strong>ACTA DE BAUTIZO</strong></span></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"434\" height=\"356\" valign=\"top\">\r\n");

if (paso.compareTo("1") == 0)
{

      out.write("\r\n");
      out.write("  <form name=\"Parroquia\" method=\"post\" action=\"paso_01.jsp\">\r\n");
      out.write("    <table width=\"549\" height=\"278\" border=\"0\">\r\n");
      out.write("      <tr>\r\n");
      out.write("      <td height=\"251\" colspan=\"6\" valign=\"top\">\r\n");
      out.write("        <br>\r\n");
      out.write("        <span id=\"titulo\">Paso 1 de 7</span><br>\r\n");
      out.write("        <fieldset>\r\n");
      out.write("          <legend>Datos de la Parroquia</legend>\r\n");
      out.write("            <p>\r\n");
      out.write("            <label for=\"id_ministro\">Ministro: </label>\r\n");
      out.write("            <select name=\"id_ministro\" id=\"id_ministro\">\r\n");
      out.write("            ");

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
      out.write("            </select>\r\n");
      out.write("            </p>\r\n");
      out.write("            <p>\r\n");
      out.write("            <label for=\"lugar_bautizo\">Lugar de Bautizo: </label>\r\n");
      out.write("            <input name=\"lugar_bautizo\" type=\"text\" id=\"lugar_bautizo\" class=\"txt\" value=\"");

                if(bautizoBEAN.getlugar_bautizo()==null)
                    out.println("Parroquia Cristo Rey"); 
                else
                    out.println(bautizoBEAN.getlugar_bautizo());
                
      out.write("\"/>\r\n");
      out.write("            </p>\r\n");
      out.write("            <p>\r\n");
      out.write("          <label for=\"fecha_bautizo\">Fecha de Bautizo: </label>\r\n");
      out.write("          <input name=\"fecha_bautizo\" type=\"text\" id=\"fecha_bautizo\" class=\"txt\" value=\"");

                    out.println(bautizoBEAN.getfecha_bautizo());
                
      out.write("\"/>\r\n");
      out.write("          <button type=\"button\" name=\"btn_fecha_bautizo\" id=\"btn_fecha_bautizo\" onMouseOver=\"mostrarCalendarioBautizo()\"><img src=\"../../../imagenes/Calendar.gif\" border=\"0\"/></button>\r\n");
      out.write("        </fieldset>      </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("      <td width=\"10%\" align=\"center\">&nbsp;</td>\r\n");
      out.write("      <td width=\"10%\" align=\"center\">&nbsp;</td>\r\n");
      out.write("      <td width=\"30%\">&nbsp;</td>\r\n");
      out.write("      <td width=\"30%\">&nbsp;</td>\r\n");
      out.write("      <td width=\"10%\" align=\"center\"><a style=\"cursor:pointer;\" onclick=\"paso_01(Parroquia)\"><img src=\"../../../imagenes/next.png\" width=\"40\" height=\"37\" border=\"0\"></a></td>\r\n");
      out.write("      <td width=\"10%\" align=\"center\" valign=\"middle\"><div align=\"left\">Siguiente</div></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("  </form>\r\n");

    } else if (paso.compareTo("2") == 0)
    {

      out.write("\r\n");
      out.write("  <form name=\"Solicitante\" method=\"post\" action=\"paso_02.jsp\">\r\n");
      out.write("    <table width=\"549\" height=\"278\" border=\"0\">\r\n");
      out.write("      <tr>\r\n");
      out.write("      <td height=\"251\" colspan=\"6\" valign=\"top\">\r\n");
      out.write("        <br>\r\n");
      out.write("        <span id=\"titulo\">Paso 2 de 7</span><br>\r\n");
      out.write("        <fieldset>\r\n");
      out.write("          <legend>Datos del Bautizado</legend>\r\n");
      out.write("            <p>\r\n");
      out.write("            <label for=\"bautizado_nombre\">Nombre(s): </label>\r\n");
      out.write("            <input type=\"text\" name=\"bautizado_nombre\" id=\"bautizado_nombre\" class=\"txt\" value=\"");

                if(bautizoBEAN.getbautizado_nombre() != null)
                    out.println(bautizoBEAN.getbautizado_nombre());
            
      out.write("\"/>\r\n");
      out.write("            </p>\r\n");
      out.write("            <p>\r\n");
      out.write("            <label for=\"bautizado_apellido\">Apellido(s): </label>\r\n");
      out.write("            <input type=\"text\" name=\"bautizado_apellido\" id=\"bautizado_apellido\" class=\"txt\" value=\"");

                if(bautizoBEAN.getbautizado_apellido() != null)
                    out.println(bautizoBEAN.getbautizado_apellido());
            
      out.write("\"/>\r\n");
      out.write("            </p>\r\n");
      out.write("            <p>\r\n");
      out.write("            <label for=\"id_sexo\">Sexo: </label>\r\n");
      out.write("            <select name=\"id_sexo\" id=\"id_sexo\">\r\n");
      out.write("            ");

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
      out.write("            </select>\r\n");
      out.write("            </p>\r\n");
      out.write("            <p>\r\n");
      out.write("            <label for=\"lugar_nacimiento\">Lugar de Nacimiento: </label>\r\n");
      out.write("            <input name=\"lugar_nacimiento\" type=\"text\" class=\"txt\" id=\"lugar_nacimiento\" value=\"");

                if(bautizoBEAN.getlugar_nacimiento() != null)
                    out.println(bautizoBEAN.getlugar_nacimiento());
                else
                    out.println("Guayaquil - Guayas");
            
      out.write("\"/>\r\n");
      out.write("            </p>\r\n");
      out.write("            <p>\r\n");
      out.write("            <label for=\"fecha_nacimiento\">Fecha de Nacimiento: </label>\r\n");
      out.write("            <input name=\"fecha_nacimiento\" type=\"text\" class=\"txt\" id=\"fecha_nacimiento\" value=\"");

                    out.println(bautizoBEAN.getfecha_nacimiento());
             
      out.write("\"/>\r\n");
      out.write("            <button type=\"button\" name=\"btn_fecha_nacimiento\" id=\"btn_fecha_nacimiento\" onMouseOver=\"mostrarCalendarioNacimiento()\"><img src=\"../../../imagenes/Calendar.gif\" border=\"0\"/></button>\r\n");
      out.write("            </p>\r\n");
      out.write("        </fieldset>\r\n");
      out.write("        </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("    <td width=\"10%\" align=\"center\" valign=\"middle\"><div align=\"right\">Anterior</div></td>\r\n");
      out.write("    <td width=\"10%\" align=\"center\"><a href=\"bautismo.jsp?paso=1\"><img src=\"../../../imagenes/forward.png\" width=\"40\" height=\"37\" border=\"0\"></a></td>\r\n");
      out.write("    <td width=\"30%\">&nbsp;</td>\r\n");
      out.write("    <td width=\"30%\">&nbsp;</td>\r\n");
      out.write("    <td width=\"10%\" align=\"center\"><a style=\"cursor:pointer;\" onclick=\"paso_02(Solicitante)\"><img src=\"../../../imagenes/next.png\" width=\"40\" height=\"37\" border=\"0\"></a></td>\r\n");
      out.write("    <td width=\"10%\" align=\"center\" valign=\"middle\"><div align=\"left\">Siguiente</div></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("  </form>\r\n");

    } else if (paso.compareTo("3") == 0)
    {

      out.write("\r\n");
      out.write("        <form name=\"Padres\" method=\"post\" action=\"paso_03.jsp\">\r\n");
      out.write("        <table width=\"549\" height=\"278\" border=\"0\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td height=\"251\" colspan=\"6\" valign=\"top\">\t\t\r\n");
      out.write("                <br>\r\n");
      out.write("                <span id=\"titulo\">Paso 3 de 7</span><br>\r\n");
      out.write("                <fieldset>\r\n");
      out.write("                <legend>Datos de los Padres</legend>\r\n");
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
      out.write("                </fieldset>\r\n");
      out.write("                </td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td width=\"10%\" align=\"center\" valign=\"middle\"><div align=\"right\">Anterior</div></td>\r\n");
      out.write("            <td width=\"10%\" align=\"center\"><a href=\"bautismo.jsp?paso=2\"><img src=\"../../../imagenes/forward.png\" width=\"40\" height=\"37\" border=\"0\"></a></td>\r\n");
      out.write("            <td width=\"30%\">&nbsp;</td>\r\n");
      out.write("            <td width=\"30%\">&nbsp;</td>\r\n");
      out.write("            <td width=\"10%\" align=\"center\"><a style=\"cursor:pointer;\" onClick=\"paso_03(Padres)\"><img src=\"../../../imagenes/next.png\" width=\"40\" height=\"37\" border=\"0\"></a></td>\r\n");
      out.write("            <td width=\"10%\" align=\"center\" valign=\"middle\"><div align=\"left\">Siguiente</div></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        </form>\r\n");

    } else if (paso.compareTo("4") == 0)
    {

      out.write("\r\n");
      out.write("        <form name=\"Padrinos\" method=\"post\" action=\"paso_04.jsp\">\r\n");
      out.write("        <table width=\"549\" height=\"278\" border=\"0\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td height=\"251\" colspan=\"6\" valign=\"top\">\t\t\r\n");
      out.write("                <br>\r\n");
      out.write("                <span id=\"titulo\">Paso 4 de 7</span><br>\r\n");
      out.write("                <fieldset>\r\n");
      out.write("                <legend>Datos de los Padrinos</legend>\r\n");
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
      out.write("                </fieldset>\r\n");
      out.write("                </td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td width=\"10%\" align=\"center\" valign=\"middle\"><div align=\"right\">Anterior</div></td>\r\n");
      out.write("            <td width=\"10%\" align=\"center\"><a href=\"bautismo.jsp?paso=3\"><img src=\"../../../imagenes/forward.png\" width=\"40\" height=\"37\" border=\"0\"></a></td>\r\n");
      out.write("            <td width=\"30%\">&nbsp;</td>\r\n");
      out.write("            <td width=\"30%\">&nbsp;</td>\r\n");
      out.write("            <td width=\"10%\" align=\"center\"><a style=\"cursor:pointer;\" onClick=\"paso_04(Padrinos)\"><img src=\"../../../imagenes/next.png\" width=\"40\" height=\"37\" border=\"0\"></a></td>\r\n");
      out.write("            <td width=\"10%\" align=\"center\" valign=\"middle\"><div align=\"left\">Siguiente</div></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        </form>\r\n");

    } else if (paso.compareTo("5") == 0)
    {

      out.write("\r\n");
      out.write("        <form name=\"RegistroEclesiastico\" method=\"post\" action=\"paso_05.jsp\">\r\n");
      out.write("        <table width=\"549\" height=\"278\" border=\"0\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td height=\"251\" colspan=\"6\" valign=\"top\">\r\n");
      out.write("                <br>\r\n");
      out.write("                <span id=\"titulo\">Paso 5 de 7</span><br>\r\n");
      out.write("                <fieldset>\r\n");
      out.write("                <legend>Registro Eclesi&aacute;stico</legend>\r\n");
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
      out.write("                  <label for=\"folio_libro\">P&aacute;gina: </label>\r\n");
      out.write("                  <input name=\"folio_libro\" type=\"text\" id=\"folio_libro\" onKeyUp=\"onlyNumbers(this);\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getre_folio_libro() != null)
                        out.println(bautizoBEAN.getre_folio_libro());
                  
      out.write("\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                </fieldset>\r\n");
      out.write("                </td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td width=\"10%\" align=\"center\" valign=\"middle\"><div align=\"right\">Anterior</div></td>\r\n");
      out.write("            <td width=\"10%\" align=\"center\"><a href=\"bautismo.jsp?paso=4\"><img src=\"../../../imagenes/forward.png\" width=\"40\" height=\"37\" border=\"0\"></a></td>\r\n");
      out.write("            <td width=\"30%\">&nbsp;</td>\r\n");
      out.write("            <td width=\"30%\">&nbsp;</td>\r\n");
      out.write("            <td width=\"10%\" align=\"center\"><a style=\"cursor:pointer;\" onClick=\"paso_05(RegistroEclesiastico)\"><img src=\"../../../imagenes/next.png\" width=\"40\" height=\"37\" border=\"0\"></a></td>\r\n");
      out.write("            <td width=\"10%\" align=\"center\" valign=\"middle\"><div align=\"left\">Siguiente</div></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        </form>\r\n");

    } else if (paso.compareTo("6") == 0)
    {

      out.write("\r\n");
      out.write("        <form name=\"RegistroCivil\" method=\"post\" action=\"paso_06.jsp\">\r\n");
      out.write("        <table width=\"549\" height=\"278\" border=\"0\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td height=\"251\" colspan=\"6\" valign=\"top\">\r\n");
      out.write("                <br><span id=\"titulo\">Paso 6 de 7</span><br>\r\n");
      out.write("                <fieldset>\r\n");
      out.write("                <legend>Datos del Registro Civil</legend>\r\n");
      out.write("            <p>\r\n");
      out.write("              <label for=\"acta\">Acta: </label>\r\n");
      out.write("              <input type=\"text\" name=\"acta\" id=\"acta\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getrc_acta() != null)
                        out.println(bautizoBEAN.getrc_acta());
                  
      out.write("\"/>\r\n");
      out.write("            </p>\r\n");
      out.write("            <p>\r\n");
      out.write("              <label for=\"anio\">A&ntilde;o: </label>\r\n");
      out.write("              <input type=\"text\" name=\"anio\" id=\"anio\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getrc_anio() != null)
                        out.println(bautizoBEAN.getrc_anio());
                  
      out.write("\"/>\r\n");
      out.write("            </p>\r\n");
      out.write("            <p>\r\n");
      out.write("              <label for=\"tomo\">Tomo: </label>\r\n");
      out.write("              <input type=\"text\" name=\"tomo\" id=\"tomo\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getrc_tomo() != null)
                        out.println(bautizoBEAN.getrc_tomo());
                  
      out.write("\"/>\r\n");
      out.write("            </p>\r\n");
      out.write("            <p>\r\n");
      out.write("              <label for=\"folio\">Folio: </label>\r\n");
      out.write("              <input type=\"text\" name=\"folio\" id=\"folio\" class=\"txt\" value=\"");

                    if(bautizoBEAN.getrc_folio() != null)
                        out.println(bautizoBEAN.getrc_folio());
                  
      out.write("\"/>\r\n");
      out.write("            </p>\r\n");
      out.write("            <p>\r\n");
      out.write("              <label for=\"lugar\">Lugar: </label>\r\n");
      out.write("              <input name=\"rc_lugar\" type=\"text\" class=\"txt\" id=\"rc_lugar\" value=\"");

                    if(bautizoBEAN.getrc_lugar() != null)
                        out.println(bautizoBEAN.getrc_lugar());
                    else
                        out.println("Guayaquil - Guayas");
                  
      out.write("\"/>\r\n");
      out.write("            </p>\r\n");
      out.write("          </fieldset>\t\t\t</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td width=\"10%\" align=\"center\" valign=\"middle\"><div align=\"right\">Anterior</div></td>\r\n");
      out.write("            <td width=\"10%\" align=\"center\"><a href=\"bautismo.jsp?paso=5\"><img src=\"../../../imagenes/forward.png\" width=\"40\" height=\"37\" border=\"0\"></a></td>\r\n");
      out.write("            <td width=\"30%\">&nbsp;</td>\r\n");
      out.write("            <td width=\"30%\">&nbsp;</td>\r\n");
      out.write("            <td width=\"10%\" align=\"center\"><a style=\"cursor:pointer;\" onClick=\"paso_06(RegistroCivil)\"><img src=\"../../../imagenes/next.png\" width=\"40\" height=\"37\" border=\"0\"></a></td>\r\n");
      out.write("            <td width=\"10%\" align=\"center\" valign=\"middle\"><div align=\"left\">Finalizar</div></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        </form>\r\n");

    } else if (paso.compareTo("7") == 0)
    {

      out.write("\r\n");
      out.write("        <form name=\"Observacion\" method=\"post\" action=\"paso_07.jsp\">\r\n");
      out.write("        <table width=\"549\" height=\"278\" border=\"0\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td height=\"251\" colspan=\"6\" valign=\"top\">\r\n");
      out.write("            <br><span id=\"titulo\">Paso 7 de 7</span><br>\r\n");
      out.write("            <fieldset>\r\n");
      out.write("            <legend>Observaci&oacute;n</legend>\r\n");
      out.write("            <p align=\"center\">\r\n");
      out.write("              <textarea name=\"observacion\" cols=\"40\" rows=\"4\" id=\"observacion\" class=\"txt\" value=\"");

                if(bautizoBEAN.getObservacion() != null)
                    out.println(bautizoBEAN.getObservacion());
              
      out.write("\"></textarea>\r\n");
      out.write("            </p>\r\n");
      out.write("            </fieldset>\r\n");
      out.write("            </td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td width=\"10%\" align=\"center\" valign=\"middle\"><div align=\"right\">Anterior</div></td>\r\n");
      out.write("            <td width=\"10%\" align=\"center\"><a href=\"bautismo.jsp?paso=6\"><img src=\"../../../imagenes/forward.png\" width=\"40\" height=\"37\" border=\"0\"></a></td>\r\n");
      out.write("            <td width=\"30%\">&nbsp;</td>\r\n");
      out.write("            <td width=\"30%\">&nbsp;</td>\r\n");
      out.write("            <td width=\"10%\" align=\"center\">&nbsp;</td>\r\n");
      out.write("            <td width=\"10%\" align=\"center\">&nbsp;</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        </form>\r\n");
      out.write("        <table width=\"288\" border=\"0\" align=\"center\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td width=\"36%\">\r\n");
      out.write("              <div align=\"right\">\r\n");
      out.write("                <input name=\"guardar_btn\" type=\"button\" id=\"guardar_btn\" onclick=\"paso_07(Observacion)\" value=\"Guardar\">\t\t\t\r\n");
      out.write("              </div></td>\r\n");
      out.write("            <td width=\"36%\" align=\"center\"><a href=\"bautismoPreview.jsp\" target=\"popup\" onClick=\"window.open(this.href, this.target, 'width=600,height=700'); return false;\">\r\n");
      out.write("              <input type=\"submit\" name=\"Submit2\" value=\"Vista Previa\"></a></td>\r\n");
      out.write("            <td width=\"28%\"><form method=\"post\" action=\"eliminarBEAN.jsp\"><input name=\"limpiar\" type=\"submit\" value=\"Limpiar\"></form></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table>\r\n");

    }

      out.write("\r\n");
      out.write("    </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\t\t</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td height=\"14\" colspan=\"4\">&nbsp;</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("   </body>\r\n");
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
