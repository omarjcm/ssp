<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<%@ page errorPage="../mensajes/sesion_terminada.jsp" %>

<html>
<head>
	<title>Administrador - SSP</title>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<%
    if( (uBEAN.esAdministrador()==true) || (uBEAN.esSecretario()==true) )
    {
%>
		<frameset rows="143,*" cols="*" frameborder="NO" border="0" framespacing="0">
		  <frame src="top.jsp" name="topFrame" scrolling="NO" noresize>
		  <frameset rows="*" cols="430,*" framespacing="0" frameborder="NO" border="0">
			<frame src="menu.jsp" name="leftFrame" scrolling="NO" noresize>
			<frame src="contenido.jsp" name="mainFrame">
		  </frameset>
		</frameset>
		<noframes><body>
		</body></noframes>
<%
	}
%>
</html>