<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>Sistema de Servicios Parroquiales (SSP)</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <link href="estilos/my_style.css" rel="stylesheet" type="text/css">
    <script language="JavaScript" type="text/javascript" src="validarUsuario.js"></script>
</head>

<body>
<br>
<br>
<br>
<br>
<table width="765" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="407" height="97" valign="top"><img src="imagenes/Logo_SSP.gif" width="480" height="97"></td>
    <td width="285"><div align="center" class = "titulo">Parroquia Eclesi&aacute;stica </div>
      <div align="center" class="titulo_principal">&quot;CRISTO REY&quot; </div>
    </td>
  </tr>
  <tr>
    <td height="303" colspan="2" valign="top"><p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <form name="Usuario" method="post" action="sesion.jsp">
        <table width="200" border="0" align="center">
          <tr>
            <td colspan="2">
			<div align="center" class="titulo">Ingresar</div>
			<br>
            </td>
          </tr>
          <tr valign="middle">
            <td>
                <div align="center" class="etiqueta">Usuario:</div>
                </td>
            <td><input name="usuario" type="text" id="usuario"></td>
          </tr>
          <tr valign="middle">
            <td>
			<div align="center" class="etiqueta"> Contrase&ntilde;a:</div>
			</td>
            <td><input name="contrasenia" type="password" id="contrasenia"></td>
          </tr>
          <tr>
            <td colspan="2">
			  <div align="center">
			    <a id="enlace" onclick="validarUsuario(Usuario)"><br>Aceptar</a>
			  </div>
			</td>
          </tr>
        </table>
      </form>
    </td>
  </tr>
  <tr>
    <td height="30" colspan="2" align="center" valign="middle" background="imagenes/spacer_down.gif">
	  <div align="center">Desarrollado por <strong>CoDeSOFTWARE</strong> </div>
	</td>
  </tr>
</table>
</body>
</html>