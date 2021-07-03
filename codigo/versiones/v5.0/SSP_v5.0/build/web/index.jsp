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
    <body onLoad="pageFocus();">
        <script language="JavaScript" type="text/javascript" src="validarUsuario.js"></script>
        <table width="770" border="0" align="left" cellpadding="0" cellspacing="0">
            <tr>
                <td><img src="imagenes/banner.png" width="805" height="150"></td>
            </tr>
            <tr>
                <td height="337"><table width="330" height="174" border="0" align="center" cellpadding="0">
                        <tr>
                            <td width="324" height="170">
                                <form name="Usuario" method="post" action="sesion.jsp" onsubmit="return validarUsuario();">
                                    <fieldset>
                                        <legend>Ingreso al Sistema</legend>
                                        <br>
                                        <table width="227" border="0" align="center">
                                          <tr>
                                            <td width="73" align="right"><label for="user">Usuario: </label></td>
                                            <td width="144"><input name="user" type="text" class="required" id="usuario" maxlength="10"/></td>
                                          </tr>
                                          <tr>
                                            <td align="right"><label for="password">Contrase&ntilde;a: </label></td>
                                            <td><input name="password" type="password" class="required" id="contrasenia" maxlength="10"/></td>
                                          </tr>
                                          <tr>
                                            <td>&nbsp;</td>
                                            <td height="30" valign="bottom"><input type="submit" name="Button" value="Ingresar"  onClick="submit_login();return(false);"></td>
                                          </tr>
                                        </table>
                                        <br>
                                    </fieldset>
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