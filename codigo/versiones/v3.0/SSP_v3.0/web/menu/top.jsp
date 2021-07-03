<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope="session"/>

<html>
<head>
<script language="JavaScript" type="text/javascript" src="cerrarSesion.js"></script>

<title>Administrador - SSP</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<link href="../estilos/my_style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style3 {color: #FFFFFF}
-->
</style></head>

<body>

<br>
<table width="765" border="0" align="center" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="480" height="97" colspan="3" valign="top"><img src="../imagenes/Logo_SSP.gif" width="480" height="97"></td>
    <td width="285" colspan="2"><form name="Usuario" method="post" action="cerrarSesion.jsp">
      <table width="101%"  border="0" align="right">
        <!--DWLayoutTable-->
        <tr>
          <th width="279" height="86" valign="top"><div align="right"><br>
            Usuario:<br><% out.println(uBEAN.getUsuario()); %><br>
            <br>
            <br>
            <a href="../index.jsp" target="_parent" style="cursor:pointer; font-weight: bold; color: #0000FF;" onclick="cerrarSesion()">Logout</a></div></th>
          </tr>
      </table>
      </form></td>
  </tr>
</table>
</body>
</html>
