<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.* , java.sql.Date, SSP.*" errorPage="" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    
    <jsp:useBean id = "registroBEAN" class = "SSP.Registro" scope = "page"/>
    <jsp:useBean id = "ministroBEAN" class = "SSP.Ministro" scope="page"/>
    
    <%
    String inicio = request.getParameter("fecha_inicio");
    String fin = request.getParameter("fecha_fin");
    
    Date fi = Date.valueOf(inicio);
    Date ff = Date.valueOf(fin);
    
    double total_ingreso_primer_semestral= registroBEAN.consultarRegistroPrimerSemestre(fi,"Ingreso");
    double total_egreso_primer_semestral= registroBEAN.consultarRegistroPrimerSemestre(fi,"Egreso");
    float total_primer_semestre = (float) (total_ingreso_primer_semestral - total_egreso_primer_semestral);
    
    double total_ingreso_segundo_semestral= registroBEAN.consultarRegistroSegundoSemestre(fi,ff,"Ingreso");
    double total_egreso_segundo_semestral= registroBEAN.consultarRegistroSegundoSemestre(fi,ff,"Egreso");
    float total_segundo_semestre = (float) (total_ingreso_segundo_semestral - total_egreso_segundo_semestral);
    
    /*
     * Fechas a mostrar 
     */
    
    // Fecha inicial
    registroBEAN.parsingFecha(inicio);
    int mes = java.lang.Integer.parseInt(registroBEAN.getFecha_mes());
    String inicio_mes = registroBEAN.mostrarMes(mes);
    String inicio_anio = registroBEAN.getFecha_anio();
    
    // Fecha semestral_01
    registroBEAN.parsingFecha(registroBEAN.getFecha_semestral().toString());
    mes = java.lang.Integer.parseInt(registroBEAN.getFecha_mes());
    if (mes == 1)
        mes = 12;
    else
        mes--;
    String semestre_01_mes = registroBEAN.mostrarMes(mes);
    int anio = java.lang.Integer.parseInt(registroBEAN.getFecha_anio());
    if (semestre_01_mes.compareTo("DICIEMBRE")==0) anio--;
    String semestre_01_anio = String.valueOf(anio);
    
    // Fecha semestral_02
    registroBEAN.parsingFecha(registroBEAN.getFecha_semestral().toString());
    mes = java.lang.Integer.parseInt(registroBEAN.getFecha_mes());
    String semestre_02_mes = registroBEAN.mostrarMes(mes);
    String semestre_02_anio = registroBEAN.getFecha_anio();
    
    // Fecha final
    registroBEAN.parsingFecha(fin);
    mes = java.lang.Integer.parseInt(registroBEAN.getFecha_mes());
    String fin_mes = registroBEAN.mostrarMes(mes);
    String fin_anio = registroBEAN.getFecha_anio();
    
    /*
     * Consultas de registro de contabilidad por tipos
     */
     
    double total_eg_interno = registroBEAN.consultarTotalRegistroPorTipo(fi,ff,"Egreso Interno");
    double total_eg_externo = registroBEAN.consultarTotalRegistroPorTipo(fi,ff,"Egreso Externo");
    float total = (float) (total_eg_interno + total_eg_externo);
    
    ministroBEAN.consultarMinistroPrincipal();
    %>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Generaci&oacute;n de Reporte Anual</title>
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
                <td align="center" class="header_sub_titulo_03"><%=inicio_mes%> <%=inicio_anio%> a <%=fin_mes%> <%=fin_anio%></td>
            </tr>
            <tr>
                <td height="177" align="center" valign="middle"><br />
                    <table width="480" class="datatable">
                        <tr valign="middle">
                            <td width="280">INGRESOS <%
                                if (inicio_anio.compareTo(semestre_01_anio) == 0)
                                    out.println(inicio_mes+" - " +semestre_01_mes+" "+semestre_01_anio);
                                else
                                    out.println(inicio_mes+" "+inicio_anio+" - " +semestre_01_mes+" "+semestre_01_anio);%>
                            </td>
                            <td width="120" align="right">$ 
                            <%=total_ingreso_primer_semestral%></td>
                        </tr>
                        <tr valign="middle">
                            <td>EGRESOS <%
                                if (inicio_anio.compareTo(semestre_01_anio) == 0)
                                    out.println(inicio_mes+" - " +semestre_01_mes+" "+semestre_01_anio);
                                else
                                    out.println(inicio_mes+" "+inicio_anio+" - " +semestre_01_mes+" "+semestre_01_anio);%>
                            </td>
                            <td align="right">$
                        <%=total_egreso_primer_semestral%></td></tr>
                        <tr valign="middle" class="informe_01">
                            <td>SALDO A <%=semestre_01_mes%> <%=semestre_01_anio%></td>
                            <td align="right">$ <%=total_primer_semestre%> </td>
                        </tr>
                  </table><br />
                    <table width="480" class="datatable">
                        <tr valign="middle">
                            <td width="280">INGRESOS <%
                                if (semestre_02_anio.compareTo(fin_anio)==0)
                                    out.println(semestre_02_mes+" - "+fin_mes+" "+fin_anio);
                                else
                                    out.println(semestre_02_mes+" "+semestre_02_anio+" - "+fin_mes+" "+fin_anio);
                                %>
                            </td>
                            <td width="120" align="right">$
                        <%=total_ingreso_segundo_semestral%></td></tr>
                        <tr valign="middle">
                            <td>EGRESOS <%
                                if (semestre_02_anio.compareTo(fin_anio)==0)
                                    out.println(semestre_02_mes+" - "+fin_mes+" "+fin_anio);
                                else
                                    out.println(semestre_02_mes+" "+semestre_02_anio+" - "+fin_mes+" "+fin_anio);
                                %></td>
                            <td align="right">$
                        <%=total_egreso_segundo_semestral%></td></tr>
                        <tr valign="middle" class="informe_01">
                            <td>SALDO A <%=fin_mes%> <%=fin_anio%></td>
                            <td align="right">$ <%=total_segundo_semestre%></td>
                        </tr>
                  </table>
                    <br />
                </td>
            </tr>
            <tr>
                <td height="273" align="center" valign="top">
                    <table width="618" class="datatable">
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
                        egresoInterno = registroBEAN.consultarRegistroPorTipo(fi,ff,"Egreso Interno");
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
                    <BR />
                    <table width="618" class="datatable">
                        <tr valign="middle">
                            <td colspan="2" class="informe_02">B. EXTERNOS </td>
                        </tr>
                        <%
                        ArrayList egresoExterno = new ArrayList();
                        egresoExterno = registroBEAN.consultarRegistroPorTipo(fi,ff,"Egreso Externo");
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
                    </table><br />
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
                    </table><BR />
                    <table width="200" border="0">
                        <tr>
                            <td align="center" valign="middle"><%out.println(ministroBEAN.getDignidad()+" "+ministroBEAN.getNombre()+" "+ministroBEAN.getApellido());%></td>
                        </tr>
                        <tr>
                            <td align="center" valign="middle">P&Aacute;RROCO</td>
                        </tr>
                </table></td>
            </tr>
        </table><BR />
    </body>
</html>