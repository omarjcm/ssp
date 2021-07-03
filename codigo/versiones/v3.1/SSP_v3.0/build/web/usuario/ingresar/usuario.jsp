<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<link href="../../estilos/my_style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/javascript" src="validarUsuario.js"></script>
<script language="JavaScript" type="text/javascript" src="../../calendario/calendar.js"></script>

<title>Ingreso de Usuario</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<style type="text/css">
<!--
.style6 {font-size: 12pt}
-->
</style>
</head>
<body>
<table width="550" border="0" align="left" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="23" height="23">&nbsp;</td>
    <td width="384" align="center" valign="middle">
      <div class="titulo_principal">INGRESO DE USUARIO </div>
    </td>
    <td width="27">&nbsp;</td>
  </tr>
  
  <tr>
    <td height="113">&nbsp;</td>
    <td valign="top"><form name="Usuario" method="post" action="usuarioBEAN.jsp">
        <div class = "titulo"><br><br><br>
        Registro del usuario y la contrase&ntilde;a <br>
        <br></div>
        <table width="87%"  border="0" align="center">
          <tr>
            <th width="55%" scope="col">
              <div class = "etiqueta">
            Usuario:            </div></th>
            <th width="45%" align="right" valign="middle" scope="col"> 
              <div align="left">
                <input name="usuario"  id="usuario" type="text" size="30">
            </div></th></tr>
          <tr>
            <th scope="row"><div class = "etiqueta">
              Contrase&ntilde;a:
            </div></th>
            <td align="right" valign="middle">
              <div align="left">
                <input name="contrasenia"  id="contrasenia" type="password" size="30">
              </div></td></tr>
        </table>
      
        <div class = "titulo"><br>
            <br>
            <br>
          Datos del Usuario <br>
          <br>
        </div>
        <table width="87%"  border="0" align="center">
          <tr>
            <th scope="col"><div class = "etiqueta">Nombre(s):</div></th>
            <th align="right" valign="middle" scope="col">
              <div align="left">
                <input name="usuario_nombre"  id="usuario_nombre" type="text" size="30">
              </div></th>
          </tr>
          <tr>
            <th width="55%" scope="col"><div class = "etiqueta">Apellido(s):</div></th>
            <th width="45%" align="right" valign="middle" scope="col">
              <div align="left">
                <input name="usuario_apellido"  id="usuario_apellido" type="text" size="30">
              </div></th>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Tipo:</div></th>
            <td align="right" valign="middle"><div align="left">
              <select name="id_tipo" id="id_tipo">
                <option value="0">Administrador</option>
                <option value="1">Secretario</option>
                <option value="2">Contador</option>
                            </select>
            </div></td>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Cargo:</div></th>
            <td align="right" valign="middle"><div align="left">
              <select name="id_cargo" id="id_cargo">
                <option value="0">Sra.</option>
                <option value="1">Sr.</option>
                <option value="2">Hno.</option>
                <option value="3">Hna.</option>
                <option value="4">Srta.</option>
              </select>
            </div></td>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Tel&eacute;fono:</div></th>
            <td align="right" valign="middle"><div align="left">
              <input name="telefono1" id="telefono1" type="text" size="30">
            </div></td>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Tel&eacute;fono:</div></th>
            <td align="right" valign="middle"><div align="left">
              <input name="telefono2" id="telefono2" type="text" size="30">
            </div></td>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Direcci&oacute;n de domicilio:</div></th>
            <td align="right" valign="middle"><div align="left">
              <input name="direccion" id="direccion" type="text" size="30">
            </div></td>
          </tr>
        </table>
        <br>
        <table width="87%"  border="0" align="center">
          <tr>
            <th scope="row"><a onclick="validar(Usuario)" style="cursor:pointer; font-weight: bold; color: #0000FF;">Aceptar</a></th>
          </tr>
        </table>
        <p>&nbsp;</p>
    </form></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" colspan="3" align="center" valign="middle"background="../../imagenes/spacer_down.gif"><div align="center"> &quot;Sistemas de Servicios Parroquiales&quot; (SSP)</div></td>
  </tr>
</table>
</body>
</html>
