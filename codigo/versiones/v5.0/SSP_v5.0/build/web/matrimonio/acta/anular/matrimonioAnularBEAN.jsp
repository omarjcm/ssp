<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>

<jsp:useBean id = "matrimonioBEAN" class = "SSP.Casar" scope = "session"/>
<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<%
    if (matrimonioBEAN.anularMatrimonio())
        response.sendRedirect("matrimonio.jsp?id=4");
    else
        response.sendRedirect("matrimonio.jsp?id=5");        
%>