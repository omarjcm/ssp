<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<html>
<head>
<title>Administrador - SSP</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<link href="../estilos/my_style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style3 {color: #FFFFFF}
-->
</style></head>

<body>

<%
    if( uBEAN.esAdministrador() && uBEAN != null )
    {
%>
<table width="189" border="0" align="right" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="189" height="144" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="189" height="21" valign="top" background="../imagenes/top_menu.gif"></td>
        </tr>
        <tr>
          <td height="85" valign="top"background="../imagenes/cen_menu.gif"><br>
            &nbsp;&nbsp;&nbsp;&nbsp;<img src="../imagenes/item.gif" width="7" height="7"> <a href="acta/ingresar.jsp" target="mainFrame">Ingresar Acta </a><br>
&nbsp;&nbsp;&nbsp;&nbsp;<img src="../imagenes/item.gif" width="7" height="7"> <a href="temporal.jsp" target="mainFrame">Generar Acta </a><br>
&nbsp;&nbsp;&nbsp;&nbsp;<img src="../imagenes/item.gif" width="7" height="7"> <a href="temporal.jsp" target="mainFrame">Modificar Acta </a><br>
&nbsp;&nbsp;&nbsp;&nbsp;<img src="../imagenes/item.gif" width="7" height="7"> <a href="temporal.jsp" target="mainFrame">Anular Acta </a></td>
        </tr>
        <tr>
          <td height="23" valign="top"background="../imagenes/down_menu.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
        </tr>
    </table>
    <br>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="189" height="21" valign="top" background="../imagenes/top_menu.gif"></td>
      </tr>
      <tr>
        <td height="70" valign="top"background="../imagenes/cen_menu.gif"><br>
          &nbsp;&nbsp;&nbsp;&nbsp;<img src="../imagenes/item.gif" alt="4" width="7" height="7"> <a href="../usuario/ingresar/usuario.jsp" target="mainFrame">Ingresar Usuario </a><br>
          &nbsp;&nbsp;&nbsp;&nbsp;<img src="../imagenes/item.gif" alt="2" width="7" height="7"> <a href="temporal.jsp" target="mainFrame">Modificar Usuario </a><br>
          &nbsp;&nbsp;&nbsp;&nbsp;<img src="../imagenes/item.gif" alt="1" width="7" height="7"> <a href="temporal.jsp" target="mainFrame">Eliminar Usuario  </a></td>
      </tr>
      <tr>
        <td height="23" valign="top"background="../imagenes/down_menu.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
      </tr>
    </table>
    <br></td>
  </tr>
  <tr>
    <td height="167" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="189" height="21" valign="top" background="../imagenes/top_menu.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
        </tr>
        <tr>
          <td height="44" valign="top"background="../imagenes/cen_menu.gif"><br>        

&nbsp;&nbsp;&nbsp;&nbsp;<img src="../imagenes/item.gif" width="7" height="7"> <a href="../ministro/ingresar/ministro.jsp" target="mainFrame">Ingresar Ministro</a> </td>
        </tr>
        <tr>
          <td height="23" valign="top"background="../imagenes/down_menu.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
        </tr>
    </table></td>
  </tr>
</table>
<%
	}
	else if ( uBEAN.esSecretario() && uBEAN != null )
	{
%>
<table width="189" border="0" align="right" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="189" height="144" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="189" height="21" valign="top" background="../imagenes/top_menu.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
        </tr>
        <tr>
          <td height="60" valign="top"background="../imagenes/cen_menu.gif"><br>
&nbsp;&nbsp;&nbsp;&nbsp;<img src="../imagenes/item.gif" width="7" height="7"> <a href="acta/ingresar.jsp" target="mainFrame">Ingresar Acta </a><br>
&nbsp;&nbsp;&nbsp;&nbsp;<img src="../imagenes/item.gif" width="7" height="7"> <a href="temporal.jsp" target="mainFrame">Generar Acta </a><br></td>
        </tr>
        <tr>
          <td height="23" valign="top"background="../imagenes/down_menu.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td height="167" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="189" height="21" valign="top" background="../imagenes/top_menu.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
        </tr>
        <tr>
          <td height="45" valign="top"background="../imagenes/cen_menu.gif"><br>
&nbsp;&nbsp;&nbsp;&nbsp;<img src="../imagenes/item.gif" width="7" height="7"> <a href="../ministro/ingresar/ministro.jsp" target="mainFrame">Ingresar Ministro</a> </td>
        </tr>
        <tr>
          <td height="23" valign="top"background="../imagenes/down_menu.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
        </tr>
    </table></td>
  </tr>
</table>
<%
	}
%>

</body>
</html>
