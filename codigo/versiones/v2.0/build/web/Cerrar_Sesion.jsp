<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" session="true"%>
<html>
<%
   session.invalidate();
   response.sendRedirect("index.jsp");
%>
<head>
<title>Cerrar sesión</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
</body>
</html>