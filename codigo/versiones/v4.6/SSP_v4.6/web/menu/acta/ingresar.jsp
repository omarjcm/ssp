<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<html>
<head>
	<title>Administrador - SSP</title>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<link href="../../estilos/my_style.css" rel="stylesheet" type="text/css">
    <link href="../../estilos/estilo_01.css" rel="stylesheet" type="text/css">
</head>

<body>

<br>
<table width="550" border="0" align="left" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td height="113">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="72" height="85">&nbsp;</td>
    <td width="397"><table width="367" border="0" align="center" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="369" height="22" align="center" valign="middle" background="../../imagenes/ctop.gif">
		<div id="titulo_lema">Ingresar Documentos</div></td>
      </tr>
      <tr>
        <td height="70" align="center" valign="middle"background="../../imagenes/ccen.gif">
		  <a href="../../bautismo/acta/ingresar/bautismo.jsp">de Bautismo</a><br>
          <a href="../../comunion/acta/ingresar/comunion.jsp">de Primera Comuni&oacute;n</a><br>
          <a href="../../confirmacion/acta/ingresar/confirmacion.jsp">de Confirmaci&oacute;n</a> <br>
          <a href="../../matrimonio/acta/ingresar/matrimonio.jsp">de Matrimonio</a></td>
      </tr>
      <tr>
        <td height="22" valign="top" background="../../imagenes/cdown.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
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
    <td height="30" colspan="3" align="center" valign="middle"background="../../imagenes/spacer_down.gif"><div align="center">Desarrollado por <strong>CoDeSOFTWARE</strong> </div></td>
  </tr>
</table>
</body>
</html>