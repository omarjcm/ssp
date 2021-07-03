<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<html>
<head>
	<title>Mensaje de fallo</title>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<link href="../../../estilos/my_style.css" rel="stylesheet" type="text/css">
    <link href="../../../estilos/estilo_01.css" rel="stylesheet" type="text/css">
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
        <td width="369" height="22" align="center" valign="middle" background="../../../imagenes/ctop.gif">
		<div id="titulo_lema"></div></td>
      </tr>
      <tr>
        <td height="107" align="center" valign="middle"background="../../../imagenes/ccen.gif">
			<div id="lema">
			  <table width="91%"  border="0" align="center">
                <tr>
                  <th scope="col">No se ingres&oacute; el <br>
                    ACTA DE PRIMERA COMUNI&Oacute;N
                  </th>
                </tr>
              </table>
			  <p><a href="comunion.jsp">OK</a></p>
			</div>
		</td>
      </tr>
      <tr>
        <td height="22" valign="top" background="../../../imagenes/cdown.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
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
    <td height="30" colspan="3" align="center" valign="middle"background="../../../imagenes/spacer_down.gif"><div align="center">Desarrollado por <strong>CoDeSOFTWARE</strong> </div></td>
  </tr>
</table>
</body>
</html>