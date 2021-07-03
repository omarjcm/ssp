<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>
<jsp:useBean id = "usuarioBEAN" class = "SSP.Usuario" scope = "session"/>

<%
    if (usuarioBEAN.anularUsuario(usuarioBEAN.getIdUsuario()))
        response.sendRedirect("usuario.jsp?id=4");
    else
        response.sendRedirect("usuario.jsp?id=5");
%>