<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<link href="../../../estilos/my_style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/javascript" src="matrimonio.js"></script>
<script language="JavaScript" type="text/javascript" src="../../calendario/calendar.js"></script>

<title>Certificado de Matrimonio</title>
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
      <div class="titulo_principal">CERTIFICADO DE MATRIMONIO </div>
    </td>
    <td width="27">&nbsp;</td>
  </tr>
  
  <tr>
    <td height="113">&nbsp;</td>
    <td valign="top"><form name="Matrimonio" method="post" action="matrimonioBEAN.jsp">
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
            <th scope="row"><div class = "etiqueta"> Fecha del Matrimonio: </div></th>
            <td align="right" valign="middle">
              <div align="left"></div></td></tr>
        </table>
        <div class = "titulo"><br>
            <br>
            <br>
          Datos de los esposos <br>
          <br>
        </div>
        <table width="87%"  border="0" align="center">
          <tr>
            <th scope="col"><div class = "etiqueta">Nombre(s) del esposo:</div></th>
            <th align="right" valign="middle" scope="col">
              <div align="left">
                <input name="esposo_nombre"  id="esposo_nombre" type="text" size="30">
              </div></th>
          </tr>
          <tr>
            <th width="55%" scope="col"><div class = "etiqueta">Apellido(s) del esposo:</div></th>
            <th width="45%" align="right" valign="middle" scope="col">
              <div align="left">
                <input name="esposo_apellido"  id="esposo_apellido" type="text" size="30">
            </div></th>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Nombre(s) de la esposa:</div></th>
            <td align="right" valign="middle"><div align="left">
              <input name="esposa_nombre"  id="esposa_nombre" type="text" size="30">
            </div></td>
          </tr>
          
          <tr>
            <th scope="row"><div class = "etiqueta">Apellido(s) de la esposa:</div></th>
            <td align="right" valign="middle"><div align="left">
              <input name="esposa_apellido"  id="esposa_apellido" type="text" size="30">
            </div></td>
          </tr>
        </table>
        <div class = "titulo"><br>
            <br>
            <br>
          Datos de los Padres del esposo <br>
  <br>
        </div>
        <table width="87%"  border="0" align="center">
          <tr>
            <th scope="col"><div class = "etiqueta">Nombre(s) del padre:</div></th>
            <th align="right" valign="middle" scope="col"> <div align="left">
                <input name="esposo_padre_nombre"  id="esposo_padre_nombre" type="text" size="30">
            </div></th>
          </tr>
          <tr>
            <th width="55%" scope="col"><div class = "etiqueta">Apellido(s) del padre:</div></th>
            <th width="45%" align="right" valign="middle" scope="col"> <div align="left">
                <input name="esposo_padre_apellido"  id="esposo_padre_apellido" type="text" size="30">
            </div></th>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Nombre(s) de la madre:</div></th>
            <td align="right" valign="middle"><div align="left">
              <input name="esposo_madre_nombre"  id="esposo_madre_nombre" type="text" size="30">
            </div></td>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Apellido(s) de la madre:</div></th>
            <td align="right" valign="middle"><div align="left">
              <input name="esposo_madre_apellido"  id="esposo_madre_apellido" type="text" size="30">
            </div></td>
          </tr>
        </table>
        <div class = "titulo"><br>
            <br>
            <br>
          Datos de los Padres de la esposa<br>
  <br>
        </div>
        <table width="87%"  border="0" align="center">
          <tr>
            <th scope="col"><div class = "etiqueta">Nombre(s) del padre:</div></th>
            <th align="right" valign="middle" scope="col"> <div align="left">
                <input name="esposa_padre_nombre"  id="esposa_padre_nombre" type="text" size="30">
            </div></th>
          </tr>
          <tr>
            <th width="55%" scope="col"><div class = "etiqueta">Apellido(s) del padre:</div></th>
            <th width="45%" align="right" valign="middle" scope="col"> <div align="left">
                <input name="esposa_padre_apellido"  id="esposa_padre_apellido" type="text" size="30">
            </div></th>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Nombre(s) de la madre:</div></th>
            <td align="right" valign="middle"><div align="left">
                <input name="esposa_madre_nombre"  id="esposa_madre_nombre" type="text" size="30">
            </div></td>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta">Apellido(s) de la madre:</div></th>
            <td align="right" valign="middle"><div align="left">
                <input name="esposa_madre_apellido"  id="esposa_madre_apellido" type="text" size="30">
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
            <th width="55%" scope="col"><div class = "etiqueta">Nombre(s) y Apellido(s) de los padrinos:</div></th>
            <th width="45%" align="right" valign="middle" scope="col"> <div align="left">
                <input name="padrinos"  id="padrinos" type="text" size="30">
            </div></th>
          </tr>
        </table>
        <div class = "titulo"><br>
            <br>
            <br>
          Datos del Registro Civil <br>
  <br>
        </div>
        <table width="87%"  border="0" align="center">
          <tr>
            <th width="55%" scope="col"> <div class = "etiqueta"> Acta: </div></th>
            <th width="45%" align="right" valign="middle" scope="col"> <div align="left">
                <input name="acta"  id="acta" type="text" size="30">
            </div></th>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta"> A&ntilde;o: </div></th>
            <td align="right" valign="middle"><div align="left">
                <input name="anio"  id="anio" type="text" size="30">
            </div></td>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta"> Tomo: </div></th>
            <td align="right" valign="middle"><div align="left">
                <input name="tomo" id="tomo" type="text" size="30">
            </div></td>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta"> Folio: </div></th>
            <td align="right" valign="middle"><div align="left">
              <input name="folio" id="folio" type="text" size="30">
            </div></td>
          </tr>
          <tr>
            <th scope="row"><div class = "etiqueta"> Lugar: </div></th>
            <td align="right" valign="middle"><div align="left">
                <input name="lugar" id="lugar" type="text" size="30">
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
            <th scope="row"><span class="style6">Aceptar</span></th>
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
