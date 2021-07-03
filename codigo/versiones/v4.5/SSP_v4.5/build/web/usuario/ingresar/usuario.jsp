<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="SSP.*"%>
<%@ page import="java.util.LinkedList"%>

<jsp:useBean id = "ministroBEAN" class = "SSP.Ministro" scope="page"/>

<html>
<head>
	<title>Ingreso de Usuario</title>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<link href="../../estilos/formularios_01.css" rel="stylesheet" type="text/css">
	<link href="../../estilos/my_style.css" rel="stylesheet" type="text/css">
	<script language="JavaScript" type="text/javascript" src="usuario.js"></script>
</head>
<body>
<table width="550" border="0" align="left" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="23" height="23">&nbsp;</td>
    <td width="384" align="center" valign="middle">
      <div class="titulo_principal">INGRESO DE USUARIO</div>
    </td>
    <td width="27">&nbsp;</td>
  </tr>
  
  <tr>
    <td height="113">&nbsp;</td>
    <td valign="top">
	<form name="Usuario" method="post" action="usuarioBEAN.jsp">
      <br>
		<fieldset>
			<legend>Registro del usuario y contrase&ntilde;a </legend>
                <p>
                  <label for="usuario">Usuario: </label>
                  <input type="text" name="usuario" id="usuario" class="txt"/>
                </p>
                <p>
                  <label for="contrasenia">Contrase&ntilde;a: </label>
                  <input name="contrasenia" type="password" class="txt" id="contrasenia"/>
                </p>
		</fieldset>
      <br>
		<fieldset>
			<legend>Datos del Usuario </legend>
                <p>
                  <label for="usuario_nombre">Nombre(s): </label>
                  <input type="text" name="usuario_nombre" id="usuario_nombre" class="txt"/>
                </p>
                <p>
                  <label for="usuario_apellido">Apellido(s): </label>
                  <input type="text" name="usuario_apellido" id="usuario_apellido" class="txt"/>
                </p>
                <p>
                  <label for="id_sexo">Sexo: </label>
                  <select name="id_sexo" id="id_sexo">
                    <option value="0" selected>Femenino</option>
                    <option value="1">Masculino</option>
                  </select>
                </p>
                <p>
                  <label for="lugar_nacimiento">Lugar de Nacimiento: </label>
                  <input name="lugar_nacimiento" type="text" class="txt" id="lugar_nacimiento" value="Guayaquil - Guayas"/>
                </p>
                <p>
                  <label for="id_tipo">Tipo: </label>
				  <select name="id_tipo" id="id_tipo">
					<option value="0">Administrador</option>
					<option value="1" selected>Secretario</option>
					<option value="2">Contador</option>
				  </select>
                </p>
                <p>
                  <label for="id_cargo">Cargo: </label>
				  <select name="id_cargo" id="id_cargo">
					<option value="0">Sra.</option>
					<option value="1">Sr.</option>
					<option value="2">Hno.</option>
					<option value="3">Hna.</option>
					<option value="4" selected>Srta.</option>
				  </select>
                </p>
                <p>
                  <label for="telefono1">Tel&eacute;fono: </label>
                  <input name="telefono1" type="text" class="txt" id="telefono1"/>
                </p>
                <p>
                  <label for="telefono2">Tel&eacute;fono: </label>
                  <input name="telefono2" type="text" class="txt" id="telefono2"/>
                </p>
                <p>
                  <label for="direccion">Direcci&oacute;n de Domicilio: </label>
                  <input name="direccion" type="text" class="txt" id="direccion"/>
                </p>
		</fieldset>
      <br>
        <table width="87%"  border="0" align="center">
          <tr>
            <th scope="row"><a onclick="validar(Usuario)" id="enlace">Aceptar</a></th>
          </tr>
        </table>
        <p>&nbsp;</p>
    </form></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" colspan="3" align="center" valign="middle"background="../../imagenes/spacer_down.gif"><div align="center"> Desarrollado por <strong>CoDeSOFTWARE</strong></div></td>
  </tr>
</table>
</body>
</html>
