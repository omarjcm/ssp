<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" session="true"%>
<html>
<%
	HttpSession sesionOk = request.getSession();
	sesionOk.invalidate();
%><jsp:forward page="index.jsp"/>
<head>
<title>Cerrar sesión</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
</body>
</html>
