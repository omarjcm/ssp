<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>

<jsp:useBean id = "bautizoBEAN" class = "SSP.Bautizar" scope = "session"/>

<jsp:setProperty 
	name = "bautizoBEAN" 
	property = "fecha_bautizo" 
	value='<%= request.getParameter("fecha_bautizo") %>'/>
	
<%
       response.sendRedirect("bautismo.jsp?id=2&tipo=2");
%>