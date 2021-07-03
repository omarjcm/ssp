<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="pkgSSP.*"%>
<%@ page import="java.util.LinkedList"%>
<jsp:useBean id = "provinciaBEAN" class = "pkgSSP.Provincia" scope="session"/>
<html>
<head>
<script language="JavaScript" type="text/javascript" src="validar_ciudad.js"></script>
<title>Ingresar Ciudad</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../../../css/my_style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
<link href="../../../../css/my_style.css" rel="stylesheet" type="text/css">
</head>

<body>  

<br>
<table width="614" border="0" align="left" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="113" height="89">&nbsp;</td>
    <td width="367">&nbsp;</td>
    <td width="134">&nbsp;</td>
  </tr>
  <tr>
    <td height="124">&nbsp;</td>
    <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="367" height="22" valign="top" background="../../../../images/ctop.gif"><div align="center" class="style3">
            <h1 class="style1">INGRESE CIUDAD </h1>
          </div></td>
        </tr>
        <tr>
          <td height="80" valign="top"background="../../../../images/ccen.gif"><form name="Ciudad" method="post" action="Ingrese_Ciudad.jsp">
            <p>&nbsp;</p>
            <table width="97%"  border="0" align="center">
              <tr>
                <th scope="col"><div align="right">Provincia:</div></th>
                <th scope="col"><div align="left">
                    <select name="id_provincia" id="id_provincia">
                                            <%
                           pkgSSP.Provincia provincia;
                           LinkedList provinciaList = provinciaBEAN.ListaDeProvincias();
                           for (int i = 0; i < provinciaList.size(); i++)
                           {
                               provincia = new Provincia();
                               provincia = (Provincia) provinciaList.get(i);
                               out.println("<option value="+String.valueOf(provincia.getId_provincia())+">"
                                       +provincia.getNombre()+"</option>");
                           }
                        %>
                    </select> 
                    <a href="provincia.jsp" target="_self">Ir</a></div></th>
              </tr>
              <tr>
                <th scope="row"><div align="right">Ciudad:</div></th>
                <td><div align="left">
                    <input name="nombre_ciudad" id="nombre_ciudad" type="text" size="30">
                </div></td>
              </tr>
            </table>
            <p align="center"><a onclick="validarCiudad(Ciudad)"style="cursor:pointer; font-weight: bold; color: #0000FF;">Aceptar</a></p>
            </form>            </td></tr>
        <tr>
          <td height="22" valign="top" background="../../../../images/cdown.gif"></td>
        </tr>
    </table></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="84">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" colspan="3" valign="top"background="../../../../images/spacer_down.gif"><div align="center"><br>      
        Proyecto de Bases de Datos &quot;Sistemas de Servicios Parroquiales&quot; (SSP)<br>
    </div></td>
  </tr>
</table>
</body>
</html>
