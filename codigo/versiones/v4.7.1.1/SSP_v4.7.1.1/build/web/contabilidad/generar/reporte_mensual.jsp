<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.* , java.sql.Date, SSP.*" errorPage="" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    
    <jsp:useBean id = "registroBEAN" class = "SSP.Registro" scope = "page"/>
    <jsp:useBean id = "ministroBEAN" class = "SSP.Ministro" scope="page"/>
    
    <%
    String fecha = request.getParameter("fecha");
    
    Date fecha_ = Date.valueOf(fecha);
    
    double total_eg_interno = registroBEAN.consultarTotalRegistroPorTipoPorMes(fecha_, "Egreso Interno");
    double total_eg_externo = registroBEAN.consultarTotalRegistroPorTipoPorMes(fecha_, "Egreso Externo");
    float total = (float) (total_eg_interno + total_eg_externo);
    
    ministroBEAN.consultarMinistroPrincipal();
    %>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Generaci&oacute;n de Reportes</title>
        <link href="contabilidad.css" type="text/css" rel=STYLESHEET>
    </head>
    <body>
        <table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr valign="middle">
                <td width="718" align="center" class="header_titulo">&quot;PARROQUIA CRISTO REY&quot;</td>
            </tr>
            <tr valign="middle">
                <td align="center" class="header_sub_titulo_01">INFORME ECON&Oacute;MICO</td>
            </tr>
            <tr valign="middle">
                <td align="center" class="header_sub_titulo_02">DETALLE GENERAL </td>
            </tr>
            <tr valign="middle">
                <td align="center" class="header_sub_titulo_03">&nbsp;</td>
            </tr>
            
            <tr>
                <td height="273" align="center" valign="top"><br /><table width="618" class="datatable">
                        <tr valign="middle">
                            <td width="576" colspan="2" class="informe_01">REPORTE DE EGRESOS </td>
                        </tr>
                    </table>
                    <br />
                    <table width="618" class="datatable">
                        <tr valign="middle">
                            <td colspan="2" class="informe_02">A. INTERNOS </td>
                        </tr>
                        <%
                        ArrayList egresoInterno = new ArrayList();
                        egresoInterno = registroBEAN.consultarRegistroPorTipoPorMes(fecha_,"Egreso Interno");
                        Registro egresoInt = new Registro();
                        
                        for(int i=0; i< egresoInterno.size(); i++) {
                            egresoInt = (SSP.Registro) egresoInterno.get(i);
                            out.println("<tr valign=\"middle\">");
                            out.println("<td> "+ String.valueOf(i+1) + ". " + egresoInt.descrip.getDescripcion() + " </td>");
                            out.println("<td align=\"right\"> $ " + egresoInt.getValor() + "</td>");
                            out.println("</tr>");
                        }
                        %>
                        <tr valign="middle" class="informe_01">
                            <td width="456">TOTAL EGRESOS INTERNOS </td>
                            <td width="120" align="right" class="informe"> $ <%=total_eg_interno%> </td>
                        </tr>
                    </table>
                    <br />
                    <table width="618" class="datatable">
                        <tr valign="middle">
                            <td colspan="2" class="informe_02">B. EXTERNOS </td>
                        </tr>
                        <%
                        ArrayList egresoExterno = new ArrayList();
                        egresoExterno = registroBEAN.consultarRegistroPorTipoPorMes(fecha_,"Egreso Externo");
                        Registro egresoExt = new Registro();
                        
                        for(int i=0; i< egresoExterno.size(); i++) {
                            egresoExt = (SSP.Registro) egresoExterno.get(i);
                            out.println("<tr valign=\"middle\">");
                            out.println("<td> "+ String.valueOf(i+1) + ". " + egresoExt.descrip.getDescripcion() + " </td>");
                            out.println("<td align=\"right\"> $ " + egresoExt.getValor() + "</td>");
                            out.println("</tr>");
                        }
                        %>
                        <tr valign="middle" class="informe_01">
                            <td width="456">TOTAL EGRESOS EXTERNOS </td>
                            <td width="120" align="right" class="informe">$ <%=total_eg_externo%> </td>
                        </tr>
                    </table>
                    <br />
                    <table width="618" class="datatable">
                        <tr valign="middle">
                            <td colspan="2" class="informe_01">EGRESOS</td>
                        </tr>
                        <tr valign="middle">
                            <td>TOTAL EGRESOS INTERNOS </td>
                            <td align="right">$ <%=total_eg_interno%></td>
                        </tr>
                        <tr valign="middle">
                            <td>TOTAL EGRESOS EXTERNOS </td>
                            <td align="right">$ <%=total_eg_externo%></td>
                        </tr>
                        <tr valign="middle" class="informe_01">
                            <td width="456">TOTAL EGRESOS </td>
                            <td width="120" align="right">$ <%=total%></td>
                        </tr>
                    </table>
                    <br />
                    <table width="200" border="0">
                        <tr>
                            <td align="center" valign="middle"><%out.println(ministroBEAN.getDignidad()+" "+ministroBEAN.getNombre()+" "+ministroBEAN.getApellido());%></td>
                        </tr>
                        <tr>
                            <td align="center" valign="middle">P&Aacute;RROCO</td>
                        </tr>
                </table></td>
            </tr>
        </table>
    </body>
</html>