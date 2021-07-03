<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>

<jsp:useBean id = "comunionBEAN" class = "SSP.ComulgarPorPrimeraVez" scope = "session"/>
<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<%
    if (comunionBEAN.anularComunion(comunionBEAN.comulgado.getIdSolici(), "comunion"))
        response.sendRedirect("comunion.jsp?id=4");
    else
        response.sendRedirect("comunion.jsp?id=5");        
%>