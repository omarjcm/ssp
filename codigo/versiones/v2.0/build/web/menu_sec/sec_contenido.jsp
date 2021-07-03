<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "uBEAN" class = "pkgSSP.Usuario" scope = "session"/>

<html>
<head>
<script language="JavaScript" type="text/javascript" src="salir.js"></script>
<title>Administrador - SSP</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="css/my_style.css" rel="stylesheet" type="text/css">

<link href="../css/my_style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style3 {color: #FFFFFF}
-->
</style></head>

<body>

<br>
<table width="614" border="0" align="left" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="113" height="85">&nbsp;</td>
    <td width="367">&nbsp;</td>
    <td width="134">&nbsp;</td>
  </tr>
  <tr>
    <td height="124">&nbsp;</td>
    <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="367" height="22" valign="top" background="../images/ctop.gif"><div align="center"><span class="style3"><% out.println(uBEAN.getTipousuario().toUpperCase()); %></span></div></td>
        </tr>
        <tr>
          <td height="80" valign="top"background="../images/ccen.gif"><h5 align="center"><br>
          <% out.println(uBEAN.getCargo()+" "+uBEAN.getNombre()+" "+uBEAN.getApellido()); %><br>
          </h5></td>
        </tr>
        <tr>
          <td height="22" valign="top" background="../images/cdown.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
        </tr>
    </table></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="113">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" colspan="3" valign="top"background="../images/spacer_down.gif"><div align="center"><br>      
        Proyecto de Bases de Datos &quot;Sistemas de Servicios Parroquiales&quot; (SSP)<br>
    </div></td>
  </tr>
</table>
</body>
</html>
