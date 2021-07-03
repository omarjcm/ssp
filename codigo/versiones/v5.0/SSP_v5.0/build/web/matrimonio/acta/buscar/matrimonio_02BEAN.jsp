<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>

<jsp:useBean id = "matrimonioBEAN" class = "SSP.Casar" scope = "session"/>
<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<jsp:setProperty 
	name = "matrimonioBEAN" 
	property = "fecha_matrimonio" 
	value='<%= request.getParameter("fecha_matrimonio") %>'/>
	
<%
    response.sendRedirect("matrimonio.jsp?id=2&tipo=2");
%>