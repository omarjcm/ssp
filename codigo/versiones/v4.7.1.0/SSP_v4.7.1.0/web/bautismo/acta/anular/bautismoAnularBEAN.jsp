<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>

<jsp:useBean id = "bautizoBEAN" class = "SSP.Bautizar" scope = "session"/>
<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<%
    if (bautizoBEAN.anularBautizo(bautizoBEAN.bautizado.getIdSolici(), "bautizo"))
        response.sendRedirect("bautismo.jsp?id=4");
    else
        response.sendRedirect("bautismo.jsp?id=5");        
%>