<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>

<jsp:useBean id = "confirmacionBEAN" class = "SSP.Confirmar" scope = "session"/>
<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<jsp:setProperty 
	name = "confirmacionBEAN" 
	property = "fecha_confirmacion" 
	value='<%= request.getParameter("fecha_confirmacion") %>'/>
	
<%
    response.sendRedirect("confirmacion.jsp?id=2&tipo=2");
%>