<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Servicios Parroquiales - SSP</title>
	<link href="estilos/formularios_01.css" rel="stylesheet" type="text/css">
	<link href="estilos/my_style.css" rel="stylesheet" type="text/css">
	<script language="JavaScript" type="text/javascript" src="validarUsuario.js"></script>
    </head>
    <body>
    <table width="770" border="0" align="left">
      <tr>
        <td><img src="imagenes/banner.png" width="805" height="150"></td>
      </tr>
      <tr>
        <td height="285"><table width="406" height="60" border="0" align="center">
          <tr>
            <td width="470">
              <form name="Ingresar" method="post" action="sesion.jsp">
              <fieldset>
                <legend>Ingreso al Sistema</legend>
                <br>
                  <p>
                    <label for="usuario">Usuario: </label>
                    <input name="usuario" type="text" class="txt" id="usuario" maxlength="10"/>
                  </p>
                  <p>
                    <label for="contrasenia">Contrase&ntilde;a: </label>
                    <input name="contrasenia" type="password" class="txt" id="contrasenia" maxlength="10"/>
                  </p>
                <br>
              </fieldset>				
              <div align="center"><br>
                <input type="button" name="Button" value="Ingresar" onClick="validarUsuario(Ingresar)">
                <br>
              </div>
              </form>
            </td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
    </body>
</html>