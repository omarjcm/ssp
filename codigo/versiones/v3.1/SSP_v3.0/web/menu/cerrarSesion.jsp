<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<% 
	session.invalidate();
%>