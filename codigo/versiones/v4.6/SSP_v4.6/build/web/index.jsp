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
<table width="765" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="97" colspan="2" valign="top"><img src="imagenes/banner.jpg" width="803" height="131"></td>
  </tr>
  <tr>
    <td width="172" height="44" valign="top"><img src="imagenes/banner_top.jpg" width="172" height="44"></td>
    <td width="631" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td height="367" colspan="2" valign="middle"><form name="Usuario" method="post" action="sesion.jsp">
        <table width="388" border="0" align="center">
          <tr>
            <td><img src="imagenes/menu_top.jpg" width="382" height="20"></td>
          </tr>
          <tr>
            <td background="imagenes/menu_contenido.jpg" width="382" height="20"><table width="200" border="0" align="center">
              <tr>
                <td colspan="2"><div align="center" class="titulo">Ingreso al Sistema </div>
                    <br>
                </td>
              </tr>
              <tr valign="middle">
                <td><div align="center" class="etiqueta">Usuario:</div></td>
                <td><input name="usuario" type="text" id="usuario"></td>
              </tr>
              <tr valign="middle">
                <td><div align="center" class="etiqueta"> Contrase&ntilde;a:</div></td>
                <td><input name="contrasenia" type="password" id="contrasenia"></td>
              </tr>
              <tr>
                <td colspan="2"><div align="center"> <a id="enlace" onclick="validarUsuario(Usuario)"><br>
                  Aceptar</a> </div></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><img src="imagenes/menu_footer.jpg" width="382" height="20"></td>
          </tr>
        </table>
    </form>    </td>
  </tr>
  <tr>
    <td height="32" colspan="2" align="center" valign="middle" background="imagenes/footer.jpg">Desarrollado por CoDeSOFTWARE </td>
  </tr>
</table>
</body>
</html>