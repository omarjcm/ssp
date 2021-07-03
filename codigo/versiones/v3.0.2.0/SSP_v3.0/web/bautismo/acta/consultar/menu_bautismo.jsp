<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<html>
<head>
<title>Men&uacute; de Acta de Bautismo</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../../../estilos/my_style.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="550" border="0" align="left" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td height="56">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="72" height="85">&nbsp;</td>
    <td width="397"><table width="367" border="0" align="center" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="369" height="22" align="center" valign="middle" background="../../../imagenes/ctop.gif"><div class="style2"><strong>ACTA DE BAUTISMO </strong></div></td>
      </tr>
      <tr>
        <td height="34" align="center" valign="middle"background="../../../imagenes/ccen.gif"><h4 align="center"><br>B&uacute;squeda por nombre(s) y apellido(s) </h4>
        <form action="" method="post" name="busqueda_nombre_apellido" id="busqueda_nombre_apellido">
            <label>Nombre(s):
              <input name="bautizado_nombre" type="text" id="bautizado_nombre">
              </label>
            <p><label>Apellido(s):
              <input name="bautizado_apellido" type="text" id="bautizado_apellido">
              </label>
            </p>
            <h5 align="right">Buscar&nbsp;&nbsp;&nbsp;</h5>
          </form>
          <h4 align="center">B&uacute;squeda por fecha</h4>
          <form action="" method="post" name="busqueda_fecha" id="busqueda_fecha">
            <label>Fecha:
              <input type="text" name="textfield3">
              </label>
            <h5 align="right">Buscar&nbsp;&nbsp;&nbsp;</h5>
          </form>          </td>
      </tr>
      <tr>
        <td height="22" valign="top" background="../../../imagenes/cdown.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
      </tr>
    </table>
        <div align="center"></div></td>
    <td width="81">&nbsp;</td>
  </tr>
  <tr>
    <td height="56">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" colspan="3" align="center" valign="middle"background="../../../imagenes/spacer_down.gif"><div align="center"> &quot;Sistemas de Servicios Parroquiales&quot; (SSP)</div></td>
  </tr>
</table>
</body>
</html>
