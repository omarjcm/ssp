<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="SSP.*"%>
<%@ page import="java.util.LinkedList"%>

<jsp:useBean id = "ministroBEAN" class = "SSP.Ministro" scope="page"/>

<html>
<head>
	<title>Ingreso de Ministro</title>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<link href="../../estilos/formularios_01.css" rel="stylesheet" type="text/css">
	<link href="../../estilos/my_style.css" rel="stylesheet" type="text/css">
	<script language="JavaScript" type="text/javascript" src="ministro.js"></script>
</head>
<body>
<table width="550" border="0" align="left" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="23" height="23">&nbsp;</td>
    <td width="384" align="center" valign="middle">
      <div class="titulo_principal">INGRESO DE MINISTRO</div>
    </td>
    <td width="27">&nbsp;</td>
  </tr>
  
  <tr>
    <td height="299">&nbsp;</td>
    <td valign="middle">
	<form name="Ministro" method="post" action="ministroBEAN.jsp">
      <fieldset>
			<legend>Datos del Ministro </legend>
                <p>
                  <label for="id_ministro_dignidad">Dignidad: </label>
                  <select name="id_ministro_dignidad" id="id_ministro_dignidad">
                    <option value="0">P.</option>
                    <option value="1">Mons.</option>
                    <option value="2">Di&aacute;c.</option>
                  </select>
                </p>
                <p>
                  <label for="ministro_nombre">Nombre(s): </label>
                  <input type="text" name="ministro_nombre" id="ministro_nombre" class="txt"/>
                </p>
                <p>
                  <label for="ministro_apellido">Apellido(s): </label>
                  <input type="text" name="ministro_apellido" id="ministro_apellido" class="txt"/>
                </p>
		</fieldset>
      <br>
        <table width="87%"  border="0" align="center">
          <tr>
            <th scope="row"><a onclick="validar(Ministro)" id="enlace">Aceptar</a></th>
          </tr>
        </table>
    </form></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" colspan="3" align="center" valign="middle"background="../../imagenes/spacer_down.gif"><div align="center"> Desarrollado por <strong>CoDeSOFTWARE</strong></div></td>
  </tr>
</table>
</body>
</html>
