<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Servicios Parroquiales - SSP</title>
		<link href="../../estilos/formularios.css" rel="stylesheet" type="text/css">
		<link href="../../estilos/my_style.css" rel="stylesheet" type="text/css">
	    <script language="JavaScript" type="text/javascript" src="../../inicio/cerrarSesion.js"></script>
	    <script language="JavaScript" type="text/javascript" src="usuario.js"></script>
    </head>
    <body>
<%
	if( uBEAN!=null && (uBEAN.esAdministrador()==true) || (uBEAN.esSecretario()==true) )
	{
%>
    <table width="770" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td height="152" colspan="4"><img src="../../imagenes/banner.png" width="805" height="150"></td>
      </tr>
      <tr>
        <td width="191" height="449" rowspan="3" valign="top"><br><table width="188" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="188" height="45" background="../../imagenes/documentacion.png">&nbsp;</td>
          </tr>
          <tr>
            <td  height="79" valign="top"background="../../imagenes/contenido.png">
			<br>
<%
    if( (uBEAN.esAdministrador()==true) || (uBEAN.esSecretario()==true) )
    {
%>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<img src="../../imagenes/add.png" width="7" height="7"> <a href="../../bautismo/acta/ingresar/bautismo.jsp">Ingresar Acta</a>			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<img src="../../imagenes/add.png" width="7" height="7"> <a href="../../bautismo/acta/buscar/bautismo.jsp">Buscar Acta</a>			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%
		if (uBEAN.esAdministrador()==true)
		{
%>
			<img src="../../imagenes/add.png" width="8" height="7"> <a href="../../bautismo/acta/modificar/bautismo.jsp">Modificar Acta</a>			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<img src="../../imagenes/add.png" width="8" height="7"> <a href="../../bautismo/acta/anular/bautismo.jsp">Anular Acta</a>			<br>			
<%
		}
	}
%>
</td>
          </tr>
          <tr>
            <td width="188" height="8" background="../../imagenes/abajo.png"></td>
          </tr>
        </table>
<%
	if (uBEAN.esAdministrador()==true)
	{
%>
		<br>
          <table width="189" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="189" height="45" background="../../imagenes/administracion.png">&nbsp;</td>
            </tr>
            <tr>
              <td  height="64" valign="top"background="../../imagenes/contenido.png"><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="4" width="8" height="7"> <a href="usuario.jsp">Ingresar Usuario</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="2" width="8" height="7"> <a href="index_temporal.jsp">Modificar Usuario</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="1" width="8" height="7"> <a href="index_temporal.jsp">Eliminar Usuario</a> <br>              </td>
            </tr>
            <tr>
              <td width="189" height="8" background="../../imagenes/abajo.png"></td>
            </tr>
          </table>
<%
	}
%>		  
		  <br>
		  <p>&nbsp;</p>
        <p>&nbsp;</p></td>
        <td width="512" height="40" valign="middle"><a href="../../inicio/index.jsp">Inicio</a> &gt; <span id="titulo">Ingreso de Usuario </span> </td>
        <td width="36" rowspan="2" align="left" valign="middle">
		<form action="../../inicio/cerrarSesion.jsp" method="post">
			<img src="../../imagenes/gnome-shutdown.png" width="36,727" height="35,196" border="0" style="cursor:pointer;" onclick="cerrarSesion()"></form>
</td>
        <td width="31" rowspan="2" align="left" valign="middle">Salir</td>
      </tr>
      <tr>
        <td height="12" valign="middle">&nbsp;</td>
      </tr>
      <tr>
        <td height="391" colspan="3" align="center" valign="top">

          <table width="550" border="0" align="left" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <tr>
            <td width="23" height="18">&nbsp;</td>
            <td width="384" align="center" valign="middle">
              <strong>INGRESO DE  USUARIO</strong>
			</td>
            <td width="27">&nbsp;</td>
          </tr>

          <tr>
            <td height="449">&nbsp;</td>
            <td valign="top">
              <form name="Usuario" method="post" action="usuarioBEAN.jsp">
                <fieldset>
                        <legend class="usuario">Registro del usuario y contrase&ntilde;a </legend>
                <p>
                  <label for="usuario">Usuario: </label>
                  <input name="usuario" type="text" class="txt" id="usuario" maxlength="10"/>
                </p>
                <p>
                  <label for="contrasenia">Contrase&ntilde;a: </label>
                  <input name="contrasenia" type="password" class="txt" id="contrasenia" maxlength="10"/>
                </p>
                </fieldset>
                <fieldset>
                        <legend class="usuario">Datos del Usuario </legend>
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
                  <label for="id_tipo">Tipo de usuario: </label>
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
                  <label for="telefono2">Tel&eacute;fono / Celular: </label>
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
                    <th scope="row"><input name="btn_guardar" type="button" id="btn_guardar" value="Guardar" onclick="validar(Usuario)">
                    &nbsp;&nbsp;&nbsp;
                      <input name="btn_limpiar" type="reset" id="btn_limpiar" value="Limpiar"></th>
                  </tr>
                </table>
            </form></td>
            <td>&nbsp;</td>
          </tr>
          </table>

	</td>
      </tr>
      <tr>
        <td height="14" colspan="4">&nbsp;</td>
      </tr>
    </table>
<%
	}
%>
    </body>
</html>
