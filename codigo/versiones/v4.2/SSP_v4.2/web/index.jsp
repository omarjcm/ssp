<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%--
The taglib directive below imports the JSTL library. If you uncomment it,
you must also add the JSTL library to the project. The Add Library... action
on Libraries node in Projects view can be used to add the JSTL 1.1 library.
--%>
<%--
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Servicios Parroquiales (SSP)</title>
        <link href="estilos/formularios.css" rel="stylesheet" type="text/css">
        <link href="estilos/estilo.css" rel="stylesheet" type="text/css">
		<script language="JavaScript" type="text/javascript" src="scripts/validarUsuario.js"></script>
    </head>
    <body>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <table height="263" border="0" align="center">
      <tr>
        <td height="27">&nbsp;</td>
      </tr>
      <tr>
        <td height="201"><form action="sesion.jsp" method="post" name="Usuario" id="Usuario">
          <table width="293" border="0" align="center">
            <tr>
              <td width="287"><div id="titulo_principal">Acceso</div></td>
            </tr>
            
            <tr>
              <td><div>
                <label for="label">Usuario:</label>
                <input type="text" name="usuario" id="label">
                <label for="textfield">Contraseña:</label>
                <input type="password" name="contrasenia" id="contrasenia">
              </div></td>
            </tr>
            <tr>
              <td><div>
                <div align="center"><a onclick="validar(Usuario)">Aceptar</a></div>
              </div></td>
            </tr>
          </table>
         </form>
        </td>
      </tr>
      <tr>
        <td height="27"><div align="center">Desarrollado por CoDeSOFTWARE </div></td>
      </tr>
    </table>
    <p>&nbsp;</p>
    </body>
</html>
