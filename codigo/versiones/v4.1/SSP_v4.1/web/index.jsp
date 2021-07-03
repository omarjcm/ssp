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

<script type="text/javascript">
	//<![CDATA[
	window.onload=setObjects;
	
	function setObjects(  ) {
	   document.Usuario.usuario.focus();
	}
	//]]>
</script>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="estilos/mi_estilo_01.css" rel="stylesheet" type="text/css">
    </head>
    <body>
		<div align="center" id="tabla">
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<table width="200" border="0">
              <tr>
                <td><img src="imagenes/Logo.gif" alt="" width="532" height="89"></td>
              </tr>
              <tr>
                <td height="191"><form name="Usuario" method="post" action="">
                  <table width="200" border="0" align="center">
                    <tr>
                      <td colspan="2"><div>Acceso</div></td>
                    </tr>
                    <tr>
                      <td><div>Usuario:</div></td>
                      <td><input name="usuario" type="text" id="usuario"></td>
                    </tr>
                    <tr>
                      <td><div>Contraseña:</div></td>
                      <td><input name="contrasenia" type="password" id="contrasenia" value=""></td>
                    </tr>
                    <tr>
                      <td colspan="2"><div><a href="formularios/reg_eclesiastico.jsp">Aceptar</a></div></td>
                    </tr>
                  </table>
                                </form>                </td>
              </tr>
              <tr>
                <td><div align="center">Desarrollado por CoDeSOFTWARE </div></td>
              </tr>
            </table>
			<p>&nbsp;</p>
		</div>
	</body>
</html>
