<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<html>
<head>
<title>Administraci&oacute;n de Usuarios</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../estilos/my_style.css" rel="stylesheet" type="text/css">

</head>

<body>
<br>
<table width="550" border="0" align="left" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td height="85">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="72" height="85">&nbsp;</td>
    <td width="397"><table width="367" border="0" align="center" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="369" height="22" align="center" valign="middle" background="../imagenes/ctop.gif"><div align="center"><span class="style2">ADMINISTRACI&Oacute;N DE USUARIOS </span></div></td>
      </tr>
      <tr>
        <td height="34" align="center" valign="middle"background="../imagenes/ccen.gif"><h5 align="center"><br>
                  <%
    if( uBEAN.esAdministrador() || uBEAN.esSecretario() )
    {
%>
					  <a href="ingresar/usuario.jsp" target="_self">Ingresar</a><br>
                  <%
	}
    if( uBEAN.esAdministrador() )
    {
%>
                  <a href="modificar/usuario.jsp" target="_self">Modificar</a><br>
                  <a href="anular/usuario.jsp" target="_self">Anular</a><br>
                  <%
	}
%>
        </h5></td>
      </tr>
      <tr>
        <td height="22" valign="top" background="../imagenes/cdown.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
      </tr>
    </table>
        <div align="center"></div></td>
    <td width="81">&nbsp;</td>
  </tr>
  <tr>
    <td height="113">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" colspan="3" align="center" valign="middle"background="../imagenes/spacer_down.gif"><div align="center"> &quot;Sistemas de Servicios Parroquiales&quot; (SSP)</div></td>
  </tr>
</table>
</body>
</html>
