<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Sistemas de Servicios Parroquiales - Ingresar Acta de Bautismo</title>
<script language="JavaScript" type="text/javascript" src="../../scripts/efectos.js"></script>

<link href="../../../estilos/formularios_01.css" rel="stylesheet" type="text/css" />
</head>
<body onload="MM_preloadImages('../../../imagenes/Menu_d.2.gif','../../imagenes/Menu_a.1.gif','../../imagenes/Menu_a.2.gif','../../imagenes/Menu_b.1.gif','../../imagenes/Menu_b.2.gif','../../imagenes/Menu_c.1.gif','../../imagenes/Menu_c.2.gif','../../imagenes/Menu_d.1.gif','../../../imagenes/Sub_menu_b.1.gif','../../../imagenes/Sub_menu_b.2.gif','../../../imagenes/Sub_menu_c.1.gif','../../../imagenes/Sub_menu_c.2.gif','../../../imagenes/Sub_menu_d.1.gif','../../../imagenes/Sub_menu_d.2.gif')">
<table width="823" border="0" align="center">
  <tr>
    <td width="153" rowspan="2"><img src="../../../imagenes/Logo.gif" width="153" height="153" /></td>
    <td height="132" colspan="3"><p>&nbsp;</p></td>
    <td width="173" rowspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3"><div align="left"><a href="../menu.jsp">Inicio</a> &gt; <a href="../menu.jsp">Ingresar</a> &gt; Acta de Bautismo</div></td>
  </tr>
  <tr>
    <td valign="top"><div align="right">
      <table border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td><a href="../menu.jsp" target="_top" onclick="MM_nbGroup('down','group1','ingresar','../../../imagenes/Menu_a.1.gif',1)" onmouseover="MM_nbGroup('over','ingresar','../../../imagenes/Menu_a.2.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="../../../imagenes/Menu_a.1.gif" alt="" name="ingresar" width="119" height="32" border="0" id="ingresar" onload="" /></a></td>
        </tr>
        <tr>
          <td><a href="javascript:;" target="_top" onclick="MM_nbGroup('down','group1','generar','../../../imagenes/Menu_b.1.gif',1)" onmouseover="MM_nbGroup('over','generar','../../../imagenes/Menu_b.2.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="../../../imagenes/Menu_b.1.gif" alt="" name="generar" width="119" height="32" border="0" id="generar" onload="" /></a></td>
        </tr>
        <tr>
          <td><a href="javascript:;" target="_top" onclick="MM_nbGroup('down','group1','modificar','../../../imagenes/Menu_c.1.gif',1)" onmouseover="MM_nbGroup('over','modificar','../../../imagenes/Menu_c.2.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="../../../imagenes/Menu_c.1.gif" alt="" name="modificar" width="119" height="32" border="0" id="modificar" onload="" /></a></td>
        </tr>
        <tr>
          <td><a href="javascript:;" target="_top" onclick="MM_nbGroup('down','group1','anular','../../../imagenes/Menu_d.1.gif',1)" onmouseover="MM_nbGroup('over','anular','../../../imagenes/Menu_d.2.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="../../../imagenes/Menu_d.1.gif" alt="" name="anular" width="119" height="32" border="0" id="anular" onload="" /></a></td>
        </tr>
      </table>
      </div></td>
    <td width="35" valign="top">&nbsp;</td>
    <td width="380" valign="top">
	<form id="bautismo" name="bautismo" method="post" action="bautismo.jsp">
      <fieldset>
      <legend>Registro del Acta</legend>
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
      <fieldset>
      <legend>Datos de la Parroquia</legend>
        <p>
			<label for="id_ministro">Ministro: </label>
			<select name="id_ministro" id="id_ministro">
			</select>
	  	</p>
        <p>
			<label for="lugar_bautizo">Lugar de Bautizo: </label>
			<input type="text" name="lugar_bautizo" id="lugar_bautizo" class="txt"/>
      	</p>
        <p>
			<label for="fecha_bautizo">Fecha de Bautizo: </label>
			<input type="text" name="fecha_bautizo" id="fecha_bautizo" size="15"/>
      	</p>
        </fieldset>
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
			<input type="text" name="lugar_nacimiento" id="lugar_nacimiento" class="txt"/>
      	</p>
        <p>
			<label for="fecha_bautizo">Fecha de Bautizo: </label>
			<input type="text" name="fecha_bautizo" id="fecha_bautizo" size="15"/>
      	</p>
        </fieldset>
    </form></td>
    <td width="25" valign="top">&nbsp;</td>
    <td valign="top">Actas de: <br />
        <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td><a href="bautismo.jsp"  target="_top" onclick="MM_nbGroup('down','group1','bautismo','../../../imagenes/Sub_menu_a.1.gif',1)" onmouseover="MM_nbGroup('over','bautismo','../../../imagenes/Sub_menu_a.2.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="../../../imagenes/Sub_menu_a.1.gif" alt="" name="bautismo" width="172" height="32" border="0" id="bautismo" onload="" /></a></td>
      </tr>
      <tr>
        <td><a href="../comunion/comunion.jsp" target="_top" onclick="MM_nbGroup('down','group1','comunion','../../../imagenes/Sub_menu_b.1.gif',1)" onmouseover="MM_nbGroup('over','comunion','../../../imagenes/Sub_menu_b.2.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="../../../imagenes/Sub_menu_b.1.gif" alt="" name="comunion" width="172" height="32" border="0" id="comunion" onload="" /></a></td>
      </tr>
      <tr>
        <td><a href="../confirmacion/confirmacion.jsp" target="_top" onclick="MM_nbGroup('down','group1','confirmacion','../../../imagenes/Sub_menu_c.1.gif',1)" onmouseover="MM_nbGroup('over','confirmacion','../../../imagenes/Sub_menu_c.2.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="../../../imagenes/Sub_menu_c.1.gif" alt="" name="confirmacion" width="172" height="32" border="0" id="confirmacion" onload="" /></a></td>
      </tr>
      <tr>
        <td><a href="../matrimonio/matrimonio.jsp" target="_top" onclick="MM_nbGroup('down','group1','matrimonio','../../../imagenes/Sub_menu_d.1.gif',1)" onmouseover="MM_nbGroup('over','matrimonio','../../../imagenes/Sub_menu_d.2.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="../../../imagenes/Sub_menu_d.1.gif" alt="" name="matrimonio" width="172" height="32" border="0" id="matrimonio" onload="" /></a></td>
      </tr>
    </table>
    Otros:<br />
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td><a href="../usuario/usuario.jsp" target="_top" onclick="MM_nbGroup('down','group1','usuario','../../../imagenes/Sub_menu_e.1.gif',1)" onmouseover="MM_nbGroup('over','usuario','../../../imagenes/Sub_menu_e.2.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="../../../imagenes/Sub_menu_e.1.gif" alt="" name="usuario" width="172" height="32" border="0" id="usuario" onload="" /></a></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="3"><div align="center">Desarrollado por CoDeSOFTWARE </div></td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
