<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Servicios Parroquiales - SSP</title>
        
        <!-- Estilos -->
        <link href="estilos/formularios.css" rel="stylesheet" type="text/css">
        <link href="estilos/my_style.css" rel="stylesheet" type="text/css">
        <!-- Scripts -->
    </head>
    <body>
	<script language="JavaScript" type="text/javascript" src="validarUsuario.js"></script>
    <table width="1053" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td width="1053"><img src="imagenes/banner.png" width="805" height="150"></td>
      </tr>
      <tr>
        <td height="200"><table width="330" height="60" border="0" align="center" cellpadding="0">
          <tr>
            <td width="200">
              <form name="Ninguno" method="post">
              <fieldset>
                <legend>Acceso denegado</legend>
                <br>
                  <p>
					<label class="mensaje">Su clave o contrase&ntilde;a son incorrectos, por favor vuelva a intentar.<br></label>
                  </p>
                <br>
              </fieldset>
                  <div align="center"><br>
                    <input type="submit" name="Submit" value="     Ok     " onClick="mostrarPrincipal()">
                    <br>
                </div>				
            </form>            </td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
    </body>
</html>