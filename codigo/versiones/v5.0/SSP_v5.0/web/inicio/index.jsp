<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="mensaje_error.jsp" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Servicios Parroquiales - SSP</title>
		<link href="../estilos/my_style.css" rel="stylesheet" type="text/css">
	    <script language="JavaScript" type="text/javascript" src="cerrarSesion.js"></script>
    </head>
    <body>
<%
	if( uBEAN!=null && uBEAN.esAdministrador() || uBEAN.esSecretario() || uBEAN.esContador() )
	{
%>
    <table width="770" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td height="152" colspan="4"><img src="../imagenes/banner.png" width="805" height="150"></td>
      </tr>
      <tr>
        <td width="200" height="449" rowspan="3" valign="top">
<%
	if( (uBEAN.esAdministrador()==true) || (uBEAN.esSecretario()==true) ) {
%>
          <br>
          <table width="187" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="187" height="45" background="../imagenes/documentacion.png">&nbsp;</td>
          </tr>
          <tr>
            <td  height="79" valign="top"background="../imagenes/contenido.png">
			<br>
<%
    if( (uBEAN.esAdministrador()==true) || (uBEAN.esSecretario()==true) )
    {
%>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<img src="../imagenes/add.png" width="7" height="7"> <a href="../bautismo/acta/ingresar/bautismo.jsp?id=1">Ingresar Acta</a>			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<img src="../imagenes/add.png" width="7" height="7"> <a href="../bautismo/acta/buscar/bautismo.jsp?id=1">Buscar Acta</a>			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%
		if (uBEAN.esAdministrador()==true)
		{
%>
			<img src="../imagenes/add.png" width="8" height="7"> <a href="../bautismo/acta/modificar/bautismo.jsp?id=1">Modificar Acta</a>			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<img src="../imagenes/add.png" width="8" height="7"> <a href="../bautismo/acta/anular/bautismo.jsp?id=1">Anular Acta</a>			<br>			
<%
		}
	}
%>
</td>
          </tr>
          <tr>
            <td width="188" height="8" background="../imagenes/abajo.png"></td>
          </tr>
        </table>
<%
	}
	if (uBEAN.esAdministrador()==true)
	{
%>
          <table width="187" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="187" height="45" background="../imagenes/administracion.png">&nbsp;</td>
            </tr>
            <tr>
              <td  height="64" valign="top"background="../imagenes/contenido.png"><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../imagenes/add.png" alt="4" width="8" height="7"> <a href="../usuario/ingresar/usuario.jsp?id=1">Ingresar Usuario</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../imagenes/add.png" alt="2" width="8" height="7"> <a href="../usuario/modificar/usuario.jsp?id=1">Modificar Usuario</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../imagenes/add.png" alt="1" width="8" height="7"> <a href="../usuario/eliminar/usuario.jsp?id=1">Eliminar Usuario</a> <br>              </td>
            </tr>
            <tr>
              <td width="189" height="8" background="../imagenes/abajo.png"></td>
            </tr>
          </table>
          <%
		            }
                    if (uBEAN.esAdministrador() || uBEAN.esContador()) {
						if (uBEAN.esContador()) out.println("<br>");
                    %>
          <table width="187" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="187" height="45" background="../imagenes/contabilidad.png">&nbsp;</td>
            </tr>
            <tr>
              <td  height="52" valign="top"background="../imagenes/contenido.png"><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../imagenes/add.png" alt="4" width="8" height="7"> <a href="../contabilidad/ingresar/contabilidad.jsp?id=1">Ingresar Registro</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../imagenes/add.png" alt="2" width="8" height="7"> <a href="../contabilidad/generar/contabilidad.jsp?id=1">Generar Reportes</a> <br>
              </td>
            </tr>
            <tr>
              <td width="189" height="8" background="../../imagenes/abajo.png"></td>
            </tr>
          </table>
          <%
		            }
		  %>
          <br>
		  <p>&nbsp;</p>
        <p>&nbsp;</p></td>
        <td width="512" height="40" valign="middle"><%
			if( uBEAN.esAdministrador() )
				out.println("<span id=\"pista_administrador\">ADMINISTRADOR(A) : </span>");
			else if( uBEAN.esSecretario() )
				out.println("<span id=\"pista_secretario\">SECRETARIO(A) : </span>");
			else if( uBEAN.esContador() )
				out.println("<span id=\"pista_contador\">CONTADOR(A) : </span>");
                        out.print(uBEAN.getCargo()+" "+uBEAN.getNombre()+" "+uBEAN.getApellido()); %></td>
        <td width="36" rowspan="2" align="left" valign="middle">
		<form action="cerrarSesion.jsp" method="post">
			<img src="../imagenes/gnome-shutdown.png" width="36,727" height="35,196" border="0" style="cursor:pointer;" onclick="cerrarSesion()" title="Haga click para salir."></form>
</td>
        <td width="31" rowspan="2" align="left" valign="middle">Salir</td>
      </tr>
      <tr>
        <td height="12" valign="middle">&nbsp;</td>
      </tr>
      <tr>
        <td height="391" colspan="3" align="center">
		<%
			if (uBEAN.esAdministrador()) {
                %>
                <table width="200" border="0">
                  <tr>
                    <td><div align="center"><img src="../imagenes/Login Manager.png" width="128" height="128"></div></td>
                  </tr>
                  <tr>
					<td><div align="center"><span id="pista_administrador">ADMINISTRACI&Oacute;N</span></div></td>
                  </tr>
                </table>
                <%
                        } else if (uBEAN.esSecretario()) {
                %>
                <table width="200" border="0">
                  <tr>
                    <td><div align="center"><img src="../imagenes/pybliographic.png" width="128" height="128"></div></td>
                  </tr>
                  <tr>
                    <td><div align="center"><span id="pista_secretario">SECRETAR&Iacute;A</span></div></td>
                  </tr>
                </table>
                <%
                        } else if (uBEAN.esContador()) {
                %>
                <table width="200" border="0">
                  <tr>
                    <td><div align="center"><img src="../imagenes/scribus.png" width="128" height="128"></div></td>
                  </tr>
                  <tr>
                    <td><div align="center"><span id="pista_contador">CONTABILIDAD</span></div></td>
                  </tr>
                </table>
                <%
                        }
		%></td>
      </tr>
      <tr>
        <td height="14" colspan="4">&nbsp;</td>
      </tr>
    </table>
<%
	}
%>
    </body>
</html>
