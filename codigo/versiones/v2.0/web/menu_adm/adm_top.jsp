<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "uBEAN" class = "pkgSSP.Usuario" scope="session"/>

<html>
<head>
<title>Acta de Matrimonio - SSP</title>
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
<table width="765" border="0" align="center" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="480" height="97" colspan="3" valign="top"><img src="../images/Logo_SSP.gif" width="480" height="97"></td>
    <td width="285" colspan="2"><form name="A" method="post" action="../Cerrar_Sesion.jsp">
      <table width="101%"  border="0" align="right">
        <!--DWLayoutTable-->
        <tr>
          <th width="279" height="86" valign="top"><div align="right"><br>
            Usuario:<br><% out.println(uBEAN.getUsuario()); %><br>
            <br>
            <br>
            <a href ="../index.jsp" target="_parent">Logout</a></div></th>
          </tr>
      </table>
      </form></td>
  </tr>
</table>
</body>
</html>
