<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="SSP.*"%>
<%@ page import="java.util.LinkedList"%>

<jsp:useBean id = "ministroBEAN" class = "SSP.Ministro" scope="page"/>

<html>
<head>
	<title>Acta de Matrimonio</title>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<script language="JavaScript" type="text/javascript" src="matrimonio.js"></script>
	<link href="../../../estilos/formularios_01.css" rel="stylesheet" type="text/css">
	<link href="../../../estilos/my_style.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="550" border="0" align="left" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="23" height="23">&nbsp;</td>
    <td width="384" align="center" valign="middle">
      <div class="titulo_principal">ACTA DE MATRIMONIO </div>
    </td>
    <td width="27">&nbsp;</td>
  </tr>
  
  <tr>
    <td height="113">&nbsp;</td>
    <td valign="top">
	<form name="Matrimonio" method="post" action="matrimonioBEAN.jsp">
      <br>
		<fieldset>
			<legend>Registro Eclesi&aacute;stico</legend>
                <p>
                  <label for="num_sacramento">No: </label>
                  <input type="text" name="num_sacramento" id="num_sacramento" class="txt"/>
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
                  <label for="fecha_matrimonio">Fecha del Matrimonio: </label>
                  <input name="fecha_matrimonio" type="text" class="txt" id="fecha_matrimonio" value="aaaa-mm-dd"/>
                </p>
			
		</fieldset>
      <br>
		<fieldset>
			<legend>Datos de los Esposos </legend>
                <p>
                  <label for="esposo_nombre">Nombre(s) del esposo: </label>
                  <input type="text" name="esposo_nombre" id="esposo_nombre" class="txt"/>
                </p>
                <p>
                  <label for="esposo_apellido">Apellido(s) del esposo: </label>
                  <input type="text" name="esposo_apellido" id="esposo_apellido" class="txt"/>
                </p>
                <p>
                  <label for="esposa_nombre">Nombre(s) de la esposa: </label>
                  <input name="esposa_nombre" type="text" class="txt" id="esposa_nombre"/>
                </p>
                <p>
                  <label for="esposa_apellido">Apellido(s) de la esposa: </label>
                  <input name="esposa_apellido" type="text" class="txt" id="esposa_apellido"/>
                </p>
			
		</fieldset>
      <br>
		<fieldset>
			<legend>Datos de los Padres del esposo </legend>
                <p>
                  <label for="padre_nombre">Nombre(s) del padre: </label>
                  <input type="text" name="esposo_padre_nombre" id="esposo_padre_nombre" class="txt"/>
                </p>
                <p>
                  <label for="padre_apellido">Apellido(s) del padre: </label>
                  <input type="text" name="esposo_padre_apellido" id="esposo_padre_apellido" class="txt"/>
                </p>
                <p>
                  <label for="madre_nombre">Nombre(s) de la madre: </label>
                  <input type="text" name="esposo_madre_nombre" id="esposo_madre_nombre" class="txt"/>
                </p>
                <p>
                  <label for="madre_apellido">Apellido(s) de la madre: </label>
                  <input type="text" name="esposo_madre_apellido" id="esposo_madre_apellido" class="txt"/>
                </p>
		</fieldset>
      <br>
		<fieldset>
			<legend>Datos de los Padres de la esposa</legend>
                <p>
                  <label for="padre_nombre">Nombre(s) del padre: </label>
                  <input type="text" name="esposa_padre_nombre" id="esposa_padre_nombre" class="txt"/>
                </p>
                <p>
                  <label for="padre_apellido">Apellido(s) del padre: </label>
                  <input type="text" name="esposa_padre_apellido" id="esposa_padre_apellido" class="txt"/>
                </p>
                <p>
                  <label for="madre_nombre">Nombre(s) de la madre: </label>
                  <input type="text" name="esposa_madre_nombre" id="esposa_madre_nombre" class="txt"/>
                </p>
                <p>
                  <label for="madre_apellido">Apellido(s) de la madre: </label>
                  <input type="text" name="esposa_madre_apellido" id="esposa_madre_apellido" class="txt"/>
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
                  <label for="rc_lugar">Lugar: </label>
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
        <table width="87%"  border="0" align="center">
          <tr>
            <th scope="row"><a onclick="validar(Matrimonio)" id="enlace">Aceptar</a></th>
          </tr>
        </table>
        <p>&nbsp;</p>
    </form></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" colspan="3" align="center" valign="middle"background="../../../imagenes/spacer_down.gif"><div align="center"> Desarrollado por <strong>CoDeSOFTWARE</strong></div></td>
  </tr>
</table>
</body>
</html>
