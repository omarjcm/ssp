<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Consulta de Acta de Bautizo</title>
<script language="JavaScript" type="text/javascript" src="valida_B.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../../css/my_style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
<link href="../../../css/my_style.css" rel="stylesheet" type="text/css">
</head>

<body>  

<br>
<table width="614" border="0" align="left" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="113" height="76">&nbsp;</td>
    <td width="367">&nbsp;</td>
    <td width="134">&nbsp;</td>
  </tr>
  <tr>
    <td height="124">&nbsp;</td>
    <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="367" height="22" valign="top" background="../../../images/ctop.gif"><div align="center" class="style3 style1 style1">
            <h1 class="style2 style1">Consultar Acta de Bautizo </h1>
          </div></td>
        </tr>
        <tr>
          <td height="80" valign="top"background="../../../images/ccen.gif"><form name="Consulta" method="post" action="Buscar_Consulta.jsp">
            <p>&nbsp;</p>
            <table width="88%"  border="0" align="center">
              <tr>
                <th scope="row"><div align="right">Nombres:</div></th>
                <td><input name="nombre" id="nombre" type="text" size="30"></td>
              </tr>
              <tr>
                <th scope="row"><div align="right">Apellidos:</div></th>
                <td><div align="left">
                    <input name="apellido" id="apellido" type="text" size="30">
                </div></td>
              </tr>
            </table>
            <p align="center"><a onclick="valida(Consulta)"  style="cursor:pointer; font-weight: bold; color: #0000FF;">Aceptar</a></p>
            </form>            </td></tr>
        <tr>
          <td height="22" valign="top" background="../../../images/cdown.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
        </tr>
    </table></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="77">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" colspan="3" valign="top"background="../../../images/spacer_down.gif"><div align="center"><br>      
        Proyecto de Bases de Datos &quot;Sistemas de Servicios Parroquiales&quot; (SSP)<br>
    </div></td>
  </tr>
</table>
</body>
</html>
