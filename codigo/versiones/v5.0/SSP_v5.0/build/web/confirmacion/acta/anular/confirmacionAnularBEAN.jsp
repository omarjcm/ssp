<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>

<jsp:useBean id = "confirmacionBEAN" class = "SSP.Confirmar" scope = "session"/>
<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<%
    if (confirmacionBEAN.anularConfirmacion())
        response.sendRedirect("confirmacion.jsp?id=4");
    else
        response.sendRedirect("confirmacion.jsp?id=5");
%>