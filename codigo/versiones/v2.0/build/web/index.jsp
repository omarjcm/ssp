<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<script language="JavaScript" type="text/javascript" src="valida.js"></script>
<title>Sistema de Servicios Parroquiales</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="css/my_style.css" rel="stylesheet" type="text/css">

<link href="../css/my_style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {font-family: Verdana}
-->
</style>
</head>

<body>

<br>
<table width="765" border="0" align="center" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td height="97" colspan="2" valign="top"><img src="images/Logo_SSP.gif" width="480" height="97"></td>
    <td width="285"><form name="Ingreso" method="post" action="Session.jsp">
      <table width="101%"  border="0" align="right">
        <!--DWLayoutTable-->
        <tr>
          <th width="279" height="86" valign="top"><div align="right">
            <table width="100%"  border="0" align="right">
              <!--DWLayoutTable-->
              <tr>
                <th colspan="2" scope="col"><h5>Login</h5></th>
              </tr>
              <tr>
                <th width="59" height="4"></th>
                <td width="165" rowspan="2"><div align="left">
                    <input name="usuario" type="text" id="usuario">
                </div></td>
              </tr>
              <tr>
                <th height="18" valign="top" scope="row"><div align="right" class="style1"> User:</div></th>
              </tr>
              <tr>
                <th height="4"></th>
                <td rowspan="2"><div align="left">
                    <input name="clave" type="password" id="clave">
                </div></td>
              </tr>
              <tr>
                <th height="18" valign="top" scope="row"><div align="right"> <span class="style1">Password</span>:</div></th>
              </tr>
              <tr>
                <th colspan="2" scope="row"><a onclick="validaIngreso(Ingreso)" style="cursor:pointer; font-weight: bold; color: #0000FF;">Aceptar</a></th>
              </tr>
            </table>
          </div></th>
          </tr>
      </table>
      </form></td>
  </tr>
  <tr>
    <td width="188" height="11"></td>
    <td width="292"></td>
    <td></td>
  </tr>
  <tr>
    <td height="144" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="188" height="21" valign="top" background="images/top_menu.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
        </tr>
        <tr>
          <td height="100" valign="top"background="images/cen_menu.gif"> <br>
&nbsp;&nbsp;&nbsp;&nbsp;Actas de:<br><br>
&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/item.gif" width="7" height="7"> Bautismo<br>
&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/item.gif" width="7" height="7"> Primera Comuni&oacute;n<br>
&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/item.gif" width="7" height="7"> Confirmaci&oacute;n<br>
&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/item.gif" width="7" height="7"> Matrimonio <br>   </td>
        </tr>
        <tr>
          <td height="23" valign="top"background="images/down_menu.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
        </tr>
                            </table></td>
    <td colspan="2" rowspan="2" valign="top"><br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <center>
        <table width="367" height="94" border="0" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <tr>
            <td width="367" height="23" background="images/ctop.gif"> &nbsp;&nbsp; <SPAN STYLE="font-style: normal; font-weight: bolder; font-family: Verdana; font-size: 10pt; color: #FFFFFF;"> BIENVENIDO</span> </td>
          </tr>
          <tr>
            <td background="images/ccen.gif" bgcolor="#ffffff">
              <DIV STYLE=" font-family: verdana; font-size: 10pt"> &nbsp;&nbsp;&nbsp;&nbsp;Mensaje de Bienvenida al <br>
&nbsp;&nbsp;&nbsp;&nbsp;Sistema de Servicios Parroquiales </DIV></td>
          </tr>
          <tr>
            <td height="21" valign="top" background="images/cdown.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
          </tr>
        </table>
        <br>
        <br>
    </center></td>
  </tr>
  <tr>
    <td height="167">&nbsp;</td>
  </tr>
  <tr>
    <td height="30" colspan="3" valign="top"background="images/spacer_down.gif"><div align="center"><br>      
        Proyecto de Bases de Datos &quot;Sistemas de Servicios Parroquiales&quot; (SSP)<br>
    </div></td>
  </tr>
</table>
</body>
</html>
