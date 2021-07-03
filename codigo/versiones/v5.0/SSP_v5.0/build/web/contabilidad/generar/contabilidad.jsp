<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="mensaje_error.jsp" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SSP - Generar Reportes</title>
    <link href="../../estilos/formularios.css" rel="stylesheet" type="text/css">
    <link href="../../estilos/my_style.css" rel="stylesheet" type="text/css">
    <link href="../../estilos/tab_navigation.css" type="text/css" rel=STYLESHEET>
    <link href="contabilidad.css" type="text/css" rel=STYLESHEET>
    
    <script language="JavaScript" type="text/javascript" src="../../calendario/CalendarPopup.js"></script>
    <script language="JavaScript" type="text/javascript" src="../../calendario/common.js"></script>		
    <script language="JavaScript" type="text/javascript" src="../../inicio/cerrarSesion.js"></script>
    <script language="JavaScript" type="text/javascript" src="contabilidad.js"></script>
    <script type="text/javascript" language="javascript">
        var cal = new CalendarPopup();
        cal.showYearNavigation();
        cal.showYearNavigationInput();
		
		var cal_ = new CalendarPopup();
		cal_.setDisplayType("month");
		cal_.setReturnMonthFunction("monthReturn");
		cal_.showYearNavigation();
		function monthReturn(y ,m) {
			document.Reporte.fecha.value=y+"-"+m;
		}
    </script>
</head>
<body>
<%
if( uBEAN!=null && uBEAN.esAdministrador() || uBEAN.esSecretario() || uBEAN.esContador() ) {
%>
<table width="770" border="0" align="left" cellpadding="0" cellspacing="0">
<tr>
    <td height="152" colspan="4"><img src="../../imagenes/banner.png" width="805" height="150"></td>
</tr>
<tr>
<td width="191" height="449" rowspan="3" valign="top">
    <%
    if( uBEAN.esAdministrador() || uBEAN.esSecretario() ) {
    %>
    <br>
    <table width="187" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td width="187" height="45" background="../../imagenes/documentacion.png">&nbsp;</td>
        </tr>
        <tr>
            <td  height="79" valign="top"background="../../imagenes/contenido.png">
                <br>
                <%
                if( uBEAN.esAdministrador() || uBEAN.esSecretario() ) {
                %>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../imagenes/add.png" width="7" height="7"> <a href="../../bautismo/acta/ingresar/bautismo.jsp?id=1">Ingresar Acta</a>			<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../imagenes/add.png" width="7" height="7"> <a href="../../bautismo/acta/buscar/bautismo.jsp?id=1">Buscar Acta</a>			<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <%
                if (uBEAN.esAdministrador()) {
                %>
                <img src="../../imagenes/add.png" width="8" height="7"> <a href="../../bautismo/acta/modificar/bautismo.jsp?id=1">Modificar Acta</a>			<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../imagenes/add.png" width="8" height="7"> <a href="../../bautismo/acta/anular/bautismo.jsp?id=1">Anular Acta</a>			<br>			
                <%
                }
                }
                %>
            </td>
        </tr>
        <tr>
            <td width="188" height="8" background="../../imagenes/abajo.png"></td>
        </tr>
    </table>
    <%
    }
    if (uBEAN.esAdministrador()) {
    %>
    <table width="187" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td width="187" height="45" background="../../imagenes/administracion.png">&nbsp;</td>
        </tr>
        <tr>
            <td  height="64" valign="top"background="../../imagenes/contenido.png"><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="4" width="8" height="7"> <a href="../../usuario/ingresar/usuario.jsp?id=1">Ingresar Usuario</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="2" width="8" height="7"> <a href="../../usuario/modificar/usuario.jsp?id=1">Modificar Usuario</a> <br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="1" width="8" height="7"> <a href="../../usuario/eliminar/usuario.jsp?id=1">Eliminar Usuario</a> <br>              </td>
        </tr>
        <tr>
            <td width="189" height="8" background="../../imagenes/abajo.png"></td>
        </tr>
    </table>
    <%
    }
    if (uBEAN.esAdministrador() || uBEAN.esContador()) {
        if (uBEAN.esContador()) out.println("<br>");
    %>
    <table width="187" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td width="187" height="45" background="../../imagenes/contabilidad.png">&nbsp;</td>
        </tr>
        <tr>
            <td  height="52" valign="top"background="../../imagenes/contenido.png"><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="4" width="8" height="7"> <a href="../ingresar/contabilidad.jsp?id=1">Ingresar Registro</a><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="2" width="8" height="7"> <a href="contabilidad.jsp?id=1">Generar Reportes</a><br>
            </td>
        </tr>
        <tr>
            <td width="189" height="8" background="../../imagenes/abajo.png"></td>
        </tr>
    </table>
    <%
    }
    %>
</td>
<td width="512" height="40" valign="middle"><a href="../../inicio/index.jsp">Inicio</a> &gt; <% 
    if (uBEAN.esAdministrador())
        out.println("<span id=\"pista_administrador\">");
    else if (uBEAN.esContador())
        out.println("<span id=\"pista_contador\">");
    %>
Generar Reportes </span></td>
<td width="36" rowspan="2" align="left" valign="middle">
    <form action="../../inicio/cerrarSesion.jsp" method="post">
    <img src="../../imagenes/gnome-shutdown.png" width="36,727" height="35,196" border="0" style="cursor:pointer;" onclick="cerrarSesion()"></form>
</td>
<td width="31" rowspan="2" align="left" valign="middle">Salir</td>
</tr>
<tr>
    <td height="12" valign="middle">&nbsp;</td>
</tr>
<tr>
    <td height="391" colspan="3" align="center" valign="top">
        <div id="contenedor">
            <table width="486" height="456" border="0" align="center" cellpadding="0" cellspacing="0">
                <!--DWLayoutTable-->
                <tr>
                    <td width="476" height="441" valign="top">
                        <form name="Reporte">
                            <div id="titulo">
                                <div align="center">GENERAR REPORTES</div>
                            </div>
                            <br>
                            <fieldset>
                            <legend>Ingrese los datos correspondientes </legend>
							<br>
                            <table width="266" border="0" align="center">
                              
                              <tr>
                                <td width="92"><label>Elija una opci&oacute;n:</label></td>
                                <td width="150">
								<label><input name="radio_reporte" type="radio" onClick="mostrarMensual();" value="0" checked>
                                  Mensual</input></label>
								<label><input name="radio_reporte" type="radio" value="1" onClick="mostrarAnual();">
                                Anual</input></label>        </td>
                              </tr>
                          </table>
                            <div id="anual">
                            <table width="266" border="0" align="center">
                                <tr>
                                  <td width="90"><label for="fecha_inicio">Fecha Inicio: </label></td>
                                  <td width="125"><input name="fecha_inicio" type="text" class="preview_dato" id="fecha_inicio" value="aaaa-mm-dd" maxlength="10"/></td>
                                  <td width="37"><button type="button" name="btn_fecha_inicio" id="btn_fecha_inicio" onclick="cal.select(document.Reporte.fecha_inicio,'btn_fecha_inicio','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la fecha de inicio."><img src="../../imagenes/Calendar.gif" border="0"/></button></td>
                                </tr>
                                <tr>
                                    <td><label for="fecha_fin">Fecha Fin: </label></td>
                                    <td><input name="fecha_fin" type="text" class="preview_dato" id="fecha_fin" value="aaaa-mm-dd" maxlength="10"/></td>
                                    <td><button type="button" name="btn_fecha_fin" id="btn_fecha_fin" onclick="cal.select(document.Reporte.fecha_fin,'btn_fecha_fin','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la fecha final."><img src="../../imagenes/Calendar.gif" border="0"/></button></td>
                                </tr>
                            </table>
							</div>
							<div id="mensual">
                            <table width="266" border="0" align="center">
                              <tr>
                                <td width="90"><label for="label">Fecha: </label></td>
                                <td width="125"><input name="fecha" type="text" class="preview_dato" value="aaaa-mm" maxlength="7"/></td>
                                <td width="37"><button type="button" name="btn_fecha" id="btn_fecha" onclick="cal_.showCalendar('btn_fecha'); return false;" title="Haga click aqu&iacute; para ingresar la fecha del mes y el a&ntilde;o correspondiente."><img src="../../imagenes/Calendar.gif" border="0"/></button></td>
                              </tr>
                            </table>
							</div>
                            <br><br><br><br><br><br><br>
                            <br><br>
                            <div align="center">
                                <input name="btn_generar_reporte_anual" type="button" id="btn_generar_reporte_anual" value="Generar" onClick="mostrarReporte();">
                            </div>										
                        </form>
                    </td>
                </tr>
            </table>
            <br>
        </div>
    </td>
</tr>
<tr>
    <td height="14" colspan="4">&nbsp;</td>
</tr>
</table>
<%
}
%>
</body>
</html>