<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Sistema de Servicios Parroquiales - Administraci&oacute;n</title>
<link href="../../estilos/menu.css" rel="stylesheet" type="text/css" />
<link href="../../estilos/formularios_02.css" rel="stylesheet" type="text/css" />
</head>

<body>
<table width="800" border="0" align="center">
  <tr>
    <td width="180" rowspan="2"><div align="right"><img src="../../imagenes/Logo.gif" alt="" name="Logo_Prinicipal" width="153" height="153" id="Logo_Prinicipal" /></div></td>
    <td width="426" height="132">&nbsp;</td>
    <td width="180" rowspan="2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td><a href="../../menu/index.jsp">Inicio</a> &gt; Ingresar Acta de Bautizo </td>
  </tr>
  <tr>
    <td height="208" valign="top">
		    <div align="right">
		      <ul id="navmenu">
		        <li><a href="#">Ingresar Documento  </a>
		          <ul>
     	  		    <div align="left">
		            <li><a href="#">de Bautismo</a></li>
		            <li><a href="#">de Primera Comuni&oacute;n</a></li>
		            <li><a href="#">de Confirmaci&oacute;n</a></li>
		            <li><a href="#">de Matrimonio</a></li>
					</div>
	              </ul>
	            </li>
		        <li><a href="#">Generar Documento</a>
		          <ul>
     	  		    <div align="left">
		            <li><a href="#">de Bautismo</a></li>
		            <li><a href="#">de Primera Comuni&oacute;n</a></li>
		            <li><a href="#">de Confirmaci&oacute;n</a></li>
		            <li><a href="#">de Matrimonio</a></li>
					</div>
	              </ul>
	            </li>
		        <li><a href="#">Modificar Documento</a>
		          <ul>
     	  		    <div align="left">
		            <li><a href="#">de Bautismo</a></li>
		            <li><a href="#">de Primera Comuni&oacute;n</a></li>
		            <li><a href="#">de Confirmaci&oacute;n</a></li>
		            <li><a href="#">de Matrimonio</a></li>
					</div>
	              </ul>
	            </li>
		        <li><a href="#">Anular Documento</a>
		          <ul>
     	  		    <div align="left">
		            <li><a href="#">de Bautismo</a></li>
		            <li><a href="#">de Primera Comuni&oacute;n</a></li>
		            <li><a href="#">de Confirmaci&oacute;n</a></li>
		            <li><a href="#">de Matrimonio</a></li>
					</div>
	              </ul>
	            </li>				
		      </ul>
    </div>
	
	<p>
		    <div align="right">
		      <ul id="navmenu">
		        <li><a href="#">Administrar Usuario</a>
		          <ul>
     	  		    <div align="left">
		            <li><a href="#">Ingresar</a></li>
		            <li><a href="#">Modificar</a></li>
		            <li><a href="#">Eliminar</a></li>
					</div>
	              </ul>
	            </li>
			  </ul>
			</div>	
	
	</td>
    <td align="center" valign="top"><table width="402" border="0" align="center">
      <tr>
        <td width="252" valign="top">
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
					<input name="lugar_bautizo" type="text" class="txt" id="lugar_bautizo" value="Parroquia Cristo Rey"/>
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
			  <fieldset>
			  <legend>Datos de los Padres</legend>
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
			  <legend>Datos de los Padrinos</legend>
				<p>
					<label for="padre_nombre">Nombre(s) del padrino: </label>
					<input type="text" name="padre_nombre" id="padre_nombre" class="txt"/>
				</p>
				<p>
					<label for="padre_apellido">Apellido(s) del padrino: </label>
					<input type="text" name="bautizado_apellido" id="bautizado_apellido" class="txt"/>
				</p>
				<p>
					<label for="madre_nombre">Nombre(s) de la madrina: </label>
					<input type="text" name="madre_nombre" id="madre_nombre" class="txt"/>
				</p>
				<p>
					<label for="madre_apellido">Apellido(s) de la madrina: </label>
					<input type="text" name="madre_apellido" id="madre_apellido" class="txt"/>
				</p>
			  </fieldset>
			  <fieldset>
			  <legend>Datos del Registro Civil</legend>
				<p>
					<label for="acta">Acta: </label>
					<input type="text" name="acta" id="acta" class="txt"/>
				</p>
				<p>
					<label for="anio">Año: </label>
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
					<input name="lugar" type="text" class="txt" id="lugar" value="Guayaquil - Guayas"/>
				</p>
			  </fieldset>
			  <fieldset>
			  <legend>Observaci&oacute;n</legend>
				<p>
					<textarea name="acta" cols="40" rows="4" class="txt" id="acta"></textarea>
				</p>
			  </fieldset>
				<p align="center">Aceptar</p>
			</form>
		
		</td>
      </tr>
    </table></td>
    <td valign="top">
		    <div align="left">
		      <ul id="navmenu">
		        <li><a href="#">Ingresar Ministro</a></li>
			  </ul>
			</div>
			</p></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><div align="center">Desarrollado por CoDeSOFTWARE </div></td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
