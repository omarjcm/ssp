<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<link href="../../../estilos/my_style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/javascript" src="comunion.js"></script>
<script language="JavaScript" type="text/javascript" src="../../calendario/calendar.js"></script>

<title>Certificado de Bautizo</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<style type="text/css">
<!--
.style6 {font-size: 12pt}
-->
</style>
</head>
<body>
<table width="550" border="0" align="left" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="23" height="23">&nbsp;</td>
    <td width="384" align="center" valign="middle">
      <div class="titulo_principal">CERTIFICADO DE PRIMERA COMUNI&Oacute;N </div>
    </td>
    <td width="27">&nbsp;</td>
  </tr>
  
  <tr>
    <td height="113">&nbsp;</td>
    <td valign="top"><form name="Comunion" method="post" action="comunionBEAN.jsp">
        <div class = "titulo"><br><br><br>Registro del acta<br><br></div>
        <table width="87%"  border="0" align="center">
          <tr>
            <th width="55%" scope="col">
              <div class = "etiqueta">
            No:            </div></th>
            <th width="45%" align="right" valign="middle" scope="col"> 
              <div align="left">
                <input name="num_sacramento"  id="num_sacramento" type="text" size="30">
            </div></th></tr>
          <tr>
            <th scope="row"><div class = "etiqueta">
              A&ntilde;o:
            </div></th>
            <td align="right" valign="middle">
              <div align="left">
                <input name="anio_libro"  id="anio_libro" type="text" size="30">
              </div></td></tr>
          <tr>
            <th scope="row"><div class = "etiqueta">
              Libro:
            </div></th>
            <td align="right" valign="middle">
              <div align="left">
                <input name="num_libro" id="num_libro" type="text" size="30">
              </div></td></tr>
          <tr>
            <th scope="row"><div class = "etiqueta">
              Folio:
            </div></th>
            <td align="right" valign="middle">
              <div align="left">
                <input name="folio_libro" id="folio_libro" type="text" size="30">
              </div></td></tr>
        </table>
      
        <div class = "titulo"><br>
            <br>
          <br>
          Datos de la Parroquia
          <br><br>
        </div>
        <table width="87%"  border="0" align="center">
          <tr>
            <th width="55%" scope="col"> <div class = "etiqueta"> Ministro: </div></th>
            <th width="45%" align="right" valign="middle" scope="col"> 
              <div align="left">
                <select name="id_minsitro" id="id_minsitro">
                </select>
            </div></th></tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Fecha de la Primera Comuni&oacute;n : </div></th>
            <td align="right" valign="middle">
              <div align="left"></div></td></tr>
        </table>
        <div class = "titulo"><br>
            <br>
            <br>
          Datos del Solicitante <br>
          <br>
        </div>
        <table width="87%"  border="0" align="center">
          <tr>
            <th scope="col"><div class = "etiqueta">Nombre(s):</div></th>
            <th align="right" valign="middle" scope="col">
              <div align="left">
                <input name="comulgado_nombre"  id="comulgado_nombre" type="text" size="30">
              </div></th>
          </tr>
          <tr>
            <th width="55%" scope="col"><div class = "etiqueta">Apellido(s):</div></th>
            <th width="45%" align="right" valign="middle" scope="col">
              <div align="left">
                <input name="comulgado_apellido"  id="comulgado_apellido" type="text" size="30">
            </div></th>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Sexo:</div></th>
            <td align="right" valign="middle"><div align="left">
              <select name="id_sexo" id="id_sexo">
                <option value="0">Femenino</option>
                <option value="1">Masculino</option>
                </select>
            </div></td>
          </tr>
          
          <tr>
            <th scope="row"><div class = "etiqueta">Lugar de Nacimiento:</div></th>
            <td align="right" valign="middle"><div align="left">
              <input name="lugar_nacimiento"  id="lugar_nacimiento" type="text" size="30">
            </div></td>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Edad:</div></th>
            <td align="right" valign="middle"><div align="left">
              <input name="edad" id="edad" type="text" size="30">
            </div></td>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Grado &oacute; Curso:</div></th>
            <td align="right" valign="middle"><div align="left">
              <input name="grado" id="grado" type="text" size="30">
            </div></td>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Escuela &oacute; Colegio:</div></th>
            <td align="right" valign="middle"><div align="left">
              <input name="nombre_institucion" id="nombre_institucion" type="text" size="30">
            </div></td>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Direcci&oacute;n de domicilio:</div></th>
            <td align="right" valign="middle"><div align="left">
              <input name="direccion" id="direccion" type="text" size="30">
            </div></td>
          </tr>
        </table>
        <div class = "titulo"><br>
            <br>
            <br>
          Datos de los Padres <br>
  <br>
        </div>
        <table width="87%"  border="0" align="center">
          <tr>
            <th scope="col"><div class = "etiqueta">Nombre(s) del padre:</div></th>
            <th align="right" valign="middle" scope="col"> <div align="left">
                <input name="padre_nombre"  id="padre_nombre" type="text" size="30">
            </div></th>
          </tr>
          <tr>
            <th width="55%" scope="col"><div class = "etiqueta">Apellido(s) del padre:</div></th>
            <th width="45%" align="right" valign="middle" scope="col"> <div align="left">
                <input name="padre_apellido"  id="padre_apellido" type="text" size="30">
            </div></th>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Nombre(s) de la madre:</div></th>
            <td align="right" valign="middle"><div align="left">
              <input name="madre_nombre"  id="madre_nombre" type="text" size="30">
            </div></td>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Apellido(s) de la madre:</div></th>
            <td align="right" valign="middle"><div align="left">
              <input name="madre_apellido"  id="madre_apellido" type="text" size="30">
            </div></td>
          </tr>
          
          <tr>
            <th scope="row"><div class = "etiqueta">Estado Civil:</div></th>
            <td align="right" valign="middle"><div align="left">
              <input name="estado_civil_padres"  id="estado_civil_padres" type="text" size="30">
            </div></td>
          </tr>
        </table>
        <div class = "titulo"><br>
            <br>
            <br>
          Datos de los Padrinos <br>
  <br>
        </div>
        <table width="87%"  border="0" align="center">
          <tr>
            <th scope="col"><div class = "etiqueta">Nombre(s) del padrino:</div></th>
            <th align="right" valign="middle" scope="col"> <div align="left">
                <input name="padrino_nombre"  id="padrino_nombre" type="text" size="30">
            </div></th>
          </tr>
          <tr>
            <th width="55%" scope="col"><div class = "etiqueta">Apellido(s) del padrino:</div></th>
            <th width="45%" align="right" valign="middle" scope="col"> <div align="left">
                <input name="padrino_apellido"  id="padrino_apellido" type="text" size="30">
            </div></th>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Nombre(s) de la madrina:</div></th>
            <td align="right" valign="middle"><div align="left">
                <input name="madrina_nombre"  id="madrina_nombre" type="text" size="30">
            </div></td>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Apellido(s) de la madrina:</div></th>
            <td align="right" valign="middle"><div align="left">
                <input name="madrina_apellido"  id="madrina_apellido" type="text" size="30">
            </div></td>
          </tr>
        </table>
        <div class = "titulo"><br>
            <br>
            <br>
          Observaci&oacute;n <br>
  <br>
        </div>
        <table width="87%"  border="0" align="center">
          <tr>
            <th scope="col"><p><textarea name="observacion" cols="40" rows="5" id="textarea"></textarea></p></th>
          </tr>
        </table>
        <br>
        <table width="87%"  border="0" align="center">
          <tr>
            <th scope="row"><a onclick="validar(Comunion)" style="cursor:pointer; font-weight: bold; color: #0000FF;">Aceptar</a></th>
          </tr>
        </table>
        <p>&nbsp;</p>
    </form></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" colspan="3" align="center" valign="middle"background="../../../imagenes/spacer_down.gif"><div align="center"> &quot;Sistemas de Servicios Parroquiales&quot; (SSP)</div></td>
  </tr>
</table>
</body>
</html>
