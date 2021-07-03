<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Servicios Parroquiales - SSP</title>
        
        <!-- Estilos -->
        <link href="estilos/formularios_01.css" rel="stylesheet" type="text/css">
        <link href="estilos/my_style.css" rel="stylesheet" type="text/css">
        <link href="estilos/estilos.css" rel="stylesheet" type="text/css">
    </head>
    <body  onLoad="pageFocus();">
	<!-- Scripts -->
	<script language="JavaScript" type="text/javascript" src="validarUsuario.js"></script>
    <table width="770" border="0" align="left">
      <tr>
        <td><img src="imagenes/banner.png" width="805" height="150"></td>
      </tr>
      <tr>
        <td height="285"><br><br>
		<form name="Usuario" method="post" action="sesion.jsp" onsubmit="return validarUsuario();">
		  <div align="center">
		    <table width="200" border="0" class="tituloOpcion">
            <tr>
              <td colspan="2"><div align="center"><span class="tituloPagina">Ingreso al Sistema</span><br><br>
              </div></td>
            </tr>
            <tr>
              <td>Usuario:</td>
              <td><input name="user" type="text" id="user" maxlength="10"/></td>
            </tr>
            <tr>
              <td>Contrase&ntilde;a:</td>
              <td><input name="password" type="password" id="password" maxlength="10"/></td>
            </tr>
                  </table><br>
		    <table width="168" border="0">
              <tr>
                <td width="82"><input type="submit" name="Button" value="Ingresar" onClick="submit_login();return(false);">
                </td>
                <td width="76"><div align="right">
                  <input name="reset" type="reset" onClick="pageFocus();" value="Limpiar">
                </div></td>
              </tr>
                    </table>
	      </div>
		</form>
        </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
    </body>
</html>