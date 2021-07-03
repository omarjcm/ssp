<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Sistemas de Servicios Parroquiales - Ingresar Acta de Confirmaci&oacute;n</title>
<script language="JavaScript" type="text/javascript" src="../../scripts/efectos.js"></script>

</head>
<body onload="MM_preloadImages('../../../imagenes/Menu_d.2.gif','../../imagenes/Menu_a.1.gif','../../imagenes/Menu_a.2.gif','../../imagenes/Menu_b.1.gif','../../imagenes/Menu_b.2.gif','../../imagenes/Menu_c.1.gif','../../imagenes/Menu_c.2.gif','../../imagenes/Menu_d.1.gif','../../../imagenes/Sub_menu_b.1.gif','../../../imagenes/Sub_menu_b.2.gif','../../../imagenes/Sub_menu_c.1.gif','../../../imagenes/Sub_menu_c.2.gif','../../../imagenes/Sub_menu_d.1.gif','../../../imagenes/Sub_menu_d.2.gif')">
<table width="823" border="0" align="center">
  <tr>
    <td width="153" rowspan="2"><img src="../../../imagenes/Logo.gif" width="153" height="153" /></td>
    <td width="484" height="132"><p>&nbsp;</p></td>
    <td width="172" rowspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td><div align="left"><a href="../menu.jsp">Inicio</a> &gt; <a href="../menu.jsp">Ingresar</a> &gt; Acta de Confirmaci&oacute;n </div></td>
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
    <td valign="top"></td>
    <td valign="top">Actas de: <br />
        <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td><a href="../bautismo/bautismo.jsp"  target="_top" onclick="MM_nbGroup('down','group1','bautismo','../../../imagenes/Sub_menu_a.1.gif',1)" onmouseover="MM_nbGroup('over','bautismo','../../../imagenes/Sub_menu_a.2.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="../../../imagenes/Sub_menu_a.1.gif" alt="" name="bautismo" width="172" height="32" border="0" id="bautismo" onload="" /></a></td>
      </tr>
      <tr>
        <td><a href="../comunion/comunion.jsp" target="_top" onclick="MM_nbGroup('down','group1','comunion','../../../imagenes/Sub_menu_b.1.gif',1)" onmouseover="MM_nbGroup('over','comunion','../../../imagenes/Sub_menu_b.2.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="../../../imagenes/Sub_menu_b.1.gif" alt="" name="comunion" width="172" height="32" border="0" id="comunion" onload="" /></a></td>
      </tr>
      <tr>
        <td><a href="confirmacion.jsp" target="_top" onclick="MM_nbGroup('down','group1','confirmacion','../../../imagenes/Sub_menu_c.1.gif',1)" onmouseover="MM_nbGroup('over','confirmacion','../../../imagenes/Sub_menu_c.2.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="../../../imagenes/Sub_menu_c.1.gif" alt="" name="confirmacion" width="172" height="32" border="0" id="confirmacion" onload="" /></a></td>
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
    <td><div align="center">Desarrollado por CoDeSOFTWARE </div></td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
