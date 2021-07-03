<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="../mensajes/sesion_terminada.jsp" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Servicios Parroquiales - SSP</title>
		<link href="../estilos/estilo_01.css" rel="stylesheet" type="text/css">
		<link href="../estilos/formularios_01.css" rel="stylesheet" type="text/css">
		<link href="../estilos/my_style.css" rel="stylesheet" type="text/css">
	    <script language="JavaScript" type="text/javascript" src="cerrarSesion.js"></script>
    </head>
    <body>
<%
    if( (uBEAN.esAdministrador()==true) || (uBEAN.esSecretario()==true) )
    {
%>
	
    <table width="770" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td height="152" colspan="4"><img src="../imagenes/banner.png" width="805" height="150"></td>
      </tr>
      <tr>
        <td width="187" height="449" rowspan="3" valign="top"><br><table width="188" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="187" height="45" background="../imagenes/documentacion.png">&nbsp;</td>
          </tr>
          <tr>
            <td  height="79" valign="top"background="../imagenes/contenido.png">
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<img src="../imagenes/add.png" width="7" height="7"> <a href="../bautismo/acta/ingresar/bautismo.jsp?id=1">Ingresar Acta</a>			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<img src="../imagenes/add.png" width="7" height="7"> <a href="../bautismo/acta/buscar/bautismo.jsp?id=1">Buscar Acta</a>			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<img src="../imagenes/add.png" width="8" height="7"> <a href="index_temporal.jsp">Modificar Acta</a>			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<img src="../imagenes/add.png" width="8" height="7"> <a href="index_temporal.jsp">Anular Acta</a>			<br>			</td>
          </tr>
          <tr>
            <td width="188" height="8" background="../imagenes/abajo.png"></td>
          </tr>
        </table>
		<br>
          <table width="187" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="187" height="45" background="../imagenes/administracion.png">&nbsp;</td>
            </tr>
            <tr>
              <td  height="64" valign="top"background="../imagenes/contenido.png"><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../imagenes/add.png" alt="4" width="8" height="7"> <a href="index_temporal.jsp">Ingresar Usuario</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../imagenes/add.png" alt="2" width="8" height="7"> <a href="index_temporal.jsp">Modificar Usuario</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../imagenes/add.png" alt="1" width="8" height="7"> <a href="index_temporal.jsp">Eliminar Usuario</a> <br>              </td>
            </tr>
            <tr>
              <td width="189" height="8" background="../imagenes/abajo.png"></td>
            </tr>
          </table>
		  <br>
		  <p>&nbsp;</p>
        <p>&nbsp;</p></td>
        <td width="512" height="40" valign="middle"><% 
			if( uBEAN.esAdministrador() )
    		{
				out.println("ADMINISTRADOR(A)");
			} 
			else if( uBEAN.esSecretario() )
    		{
				out.println("SECRETARIO(A)");
			} 
		   %>: 
          <% out.print(uBEAN.getCargo()+" "+uBEAN.getNombre()+" "+uBEAN.getApellido()); %></td>
        <td width="36" rowspan="2" align="left" valign="middle">
		<img src="../imagenes/gnome-shutdown.png" width="36,727" height="35,196" border="0" style="cursor:pointer;" onclick="cerrarSesion()">		</td>
        <td width="31" rowspan="2" align="left" valign="middle">Salir</td>
      </tr>
      <tr>
        <td height="12" valign="middle">&nbsp;</td>
      </tr>
      <tr>
        <td height="391" colspan="3" align="center"><table width="321" border="0">
          <tr>
            <td width="315" align="center"><div id="lema">Lo sentimos pero esta funcionalidad se encuentra <br>
            en construcci&oacute;n... </div></td>
          </tr>
        </table></td>
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
