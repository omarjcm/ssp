<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<html>
<head>
<title>Administraci&oacute;n de Usuarios</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../../estilos/my_style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/javascript" src="ministro.js"></script>
<!--<script language="JavaScript" type="text/javascript" src="../ingresar.js"></script>-->

</head>

<body>
<br>
<table width="550" border="0" align="left" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td height="85">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="72" height="85">&nbsp;</td>
    <td width="397"><table width="367" border="0" align="center" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="369" height="22" align="center" valign="middle" background="../../imagenes/ctop.gif"><div align="center"><span class="style2">INGRESAR MINISTRO  </span></div></td>
      </tr>
      <tr>
        <td height="34" align="center" valign="middle"background="../../imagenes/ccen.gif"><form name="Ministro" method="post" action="ministroBEAN.jsp"><br>
        <table width="86%"  border="0" align="center">
            <tr>
              <th width="49%" scope="col"> <div class = "etiqueta">Dignidad: </div></th>
              <th width="51%" align="right" valign="middle" scope="col"> <div align="left">
                  <select name="id_ministro_dignidad" id="id_ministro_dignidad">
                    <option value="0">P.</option>
                    <option value="1">Mons.</option>
                    <option value="2">Di&aacute;c.</option>
                    </select>
              </div></th>
            </tr>
            <tr>
              <th scope="row"><div class = "etiqueta"> Nombre(s): </div></th>
              <td align="right" valign="middle"><div align="left">
                  <input name="ministro_nombre"  id="ministro_nombre" type="text" size="30">
              </div></td>
            </tr>
            <tr>
              <th scope="row"><div class = "etiqueta"> Apellido(s): </div></th>
              <td align="right" valign="middle"><div align="left">
                <input name="ministro_apellido"  id="ministro_apellido" type="text" size="30">
              </div></td>
            </tr>
          </table>        
          <p align="center"><a onclick="validar(Ministro)"style="cursor:pointer; font-weight: bold; color: #0000FF;">Aceptar</a> </form> 
          </p>
          </td>
      </tr>
      <tr>
        <td height="22" valign="top" background="../../imagenes/cdown.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
      </tr>
    </table>
        <div align="center"></div></td>
    <td width="81">&nbsp;</td>
  </tr>
  <tr>
    <td height="113">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" colspan="3" align="center" valign="middle"background="../../imagenes/spacer_down.gif"><div align="center"> &quot;Sistemas de Servicios Parroquiales&quot; (SSP)</div></td>
  </tr>
</table>
</body>
</html>
