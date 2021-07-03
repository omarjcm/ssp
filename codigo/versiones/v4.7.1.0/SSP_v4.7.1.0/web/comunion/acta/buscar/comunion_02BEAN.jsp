<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>

<jsp:useBean id = "comunionBEAN" class = "SSP.ComulgarPorPrimeraVez" scope = "session"/>
<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<jsp:setProperty 
	name = "comunionBEAN" 
	property = "fecha_comunion"
	value='<%= request.getParameter("fecha_comunion") %>'
/>

<%
    response.sendRedirect("comunion.jsp?id=2&tipo=2");
%>