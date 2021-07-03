<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="SSP.*"%>
<%@ page import="java.util.LinkedList"%>

<jsp:useBean id = "ministroBEAN" class = "SSP.Ministro" scope="page"/>
<jsp:useBean id = "bautizoBEAN" class = "SSP.Bautizar" scope="page"/>

<html>
<head>
	<link href="../../../estilos/my_style.css" rel="stylesheet" type="text/css">
	<script language="JavaScript" type="text/javascript" src="comunion.js"></script>
	<script language="JavaScript" type="text/javascript" src="formulario.js"></script>
	<title>Acta de Bautizo</title>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<link href="../../../estilos/formularios_01.css" rel="stylesheet" type="text/css">
	<link href="../../../estilos/menu_formulario.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="602" border="0" align="left" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="29" height="23">&nbsp;</td>
    <td width="541" align="center" valign="middle">
    <div class="titulo_principal">ACTA DE BAUTIZO</div>    </td>
    <td width="32">&nbsp;</td>
  </tr>
  
  <tr>
    <td height="200" rowspan="2">&nbsp;</td>
    <td height="312" valign="top">
	  <form name="Bautizo" method="post" action="confirmacionBEAN.jsp">
		<br>
		<fieldset>
			<legend>Registro Eclesi&aacute;stico</legend>
                <p>
                  <label for="num_sacramento">No: </label>
                  <input name="num_sacramento" type="text" class="txt" id="num_sacramento" value="<%out.println(bautizoBEAN.getUsuario());%>" size="30">"/>
                </p>
                <p>
                  <label for="anio_libro">A&ntilde;o: </label>
                  <input type="text" name="anio_libro" id="anio_libro" class="txt"/>
                </p>
                <p>
                  <label for="num_libro">Libro: </label>
                  <input type="text" name="num_libro" id="num_libro" class="txt"/>
                </p>
                <p>
                  <label for="folio_libro">Folio: </label>
                  <input type="text" name="folio_libro" id="folio_libro" class="txt"/>
                </p>			
		</fieldset>
		<br>
		<fieldset>
			<legend>Datos de la Parroquia</legend>
                <p>
                  <label for="id_ministro">Ministro: </label>
					<select name="id_ministro" id="id_ministro">
						<%
						   SSP.Ministro ministro;
						   LinkedList ministroList = ministroBEAN.listaDeMinistros();
						   for (int i = 0; i < ministroList.size(); i++)
						   {
						   	   ministro = (SSP.Ministro) ministroList.get(i);
							   out.println("<option value="+String.valueOf(ministro.getId_ministro())+">"
									   +ministro.getDignidad()+" "+ministro.getNombre()+" "
									   +ministro.getApellido()+"</option>");
							}
					    %>
					</select>
                </p>
                <p>
                  <label for="lugar_bautizo">Lugar de Bautizo: </label>
                  <input name="lugar_bautizo" type="text" class="txt" id="lugar_bautizo" value="Parroquia Cristo Rey"/>
                </p>
                <p>
                  <label for="fecha_bautizo">Fecha de Bautizo: </label>
                  <input name="fecha_bautizo" type="text" class="txt" id="fecha_bautizo" value="aaaa-mm-dd"/>
                </p>
		</fieldset>
		<br>
		<fieldset>
			<legend>Datos del Bautizado</legend>
                <p>
                  <label for="bautizado_nombre">Nombre(s): </label>
                  <input type="text" name="bautizado_nombre" id="bautizado_nombre" class="txt"/>
                </p>
                <p>
                  <label for="bautizado_apellido">Apellido(s): </label>
                  <input type="text" name="bautizado_apellido" id="bautizado_apellido" class="txt"/>
                </p>
                <p>
                  <label for="id_sexo">Sexo: </label>
                  <select name="id_sexo" id="id_sexo">
                    <option value="0">Femenino</option>
                    <option value="1">Masculino</option>
                  </select>
                </p>
                <p>
                  <label for="lugar_nacimiento">Lugar de Nacimiento: </label>
                  <input name="lugar_nacimiento" type="text" class="txt" id="lugar_nacimiento" value="Guayaquil - Guayas"/>
                </p>
                <p>
                  <label for="fecha_nacimiento">Fecha de Nacimiento: </label>
                  <input name="fecha_nacimiento" type="text" class="txt" id="fecha_nacimiento" value="aaaa-mm-dd"/>
                </p>
		</fieldset>
		<br>
		<fieldset>
			<legend>Datos de los Padres</legend>
                <p>
                  <label for="padre_nombre">Nombre(s) del padre: </label>
                  <input type="text" name="padre_nombre" id="padre_nombre" class="txt"/>
                </p>
                <p>
                  <label for="padre_apellido">Apellido(s) del padre: </label>
                  <input type="text" name="padre_apellido" id="padre_apellido" class="txt"/>
                </p>
                <p>
                  <label for="madre_nombre">Nombre(s) de la madre: </label>
                  <input type="text" name="madre_nombre" id="madre_nombre" class="txt"/>
                </p>
                <p>
                  <label for="madre_apellido">Apellido(s) de la madre: </label>
                  <input type="text" name="madre_apellido" id="madre_apellido" class="txt"/>
                </p>
		</fieldset>
		<br>
		<fieldset>
			<legend>Datos de los Padrinos</legend>
                <p>
                  <label for="padrino_nombre">Nombre(s) del padrino: </label>
                  <input type="text" name="padrino_nombre" id="padrino_nombre" class="txt"/>
                </p>
                <p>
                  <label for="padrino_apellido">Apellido(s) del padrino: </label>
                  <input type="text" name="padrino_apellido" id="padrino_apellido" class="txt"/>
                </p>
                <p>
                  <label for="madrina_nombre">Nombre(s) de la madrina: </label>
                  <input type="text" name="madrina_nombre" id="madrina_nombre" class="txt"/>
                </p>
                <p>
                  <label for="madrina_apellido">Apellido(s) de la madrina: </label>
                  <input type="text" name="madrina_apellido" id="madrina_apellido" class="txt"/>
                </p>
		</fieldset>
		<br>
        <fieldset>
			<legend>Datos del Registro Civil</legend>
                <p>
                  <label for="acta">Acta: </label>
                  <input type="text" name="acta" id="acta" class="txt"/>
                </p>
                <p>
                  <label for="anio">A&ntilde;o: </label>
                  <input type="text" name="anio" id="anio" class="txt"/>
                </p>
                <p>
                  <label for="tomo">Tomo: </label>
                  <input type="text" name="tomo" id="tomo" class="txt"/>
                </p>
                <p>
                  <label for="folio">Folio: </label>
                  <input type="text" name="folio" id="folio" class="txt"/>
                </p>
                <p>
                  <label for="lugar">Lugar: </label>
                  <input name="rc_lugar" type="text" class="txt" id="rc_lugar" value="Guayaquil - Guayas"/>
                </p>
		</fieldset>
		<br>
		<fieldset>
			<legend>Observaci&oacute;n</legend>
                <p align="center">
                  <textarea name="observacion" cols="40" rows="4" class="txt" id="observacion"></textarea>
                </p>
		</fieldset>
		<br>
		<table width="500" border="0" align="center">
          <tr>
            <td align="center"><a onclick="validar(Bautizo)" id="enlace">Aceptar</a></td>
          </tr>
        </table>
		</div>
    </form></td>
    <td rowspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td height="30" colspan="3" align="center" valign="middle"background="../../../imagenes/spacer_down.gif"><div align="center"> Desarrollado por <strong>CoDeSOFTWARE</strong></div></td>
  </tr>
</table>
</body>
</html>