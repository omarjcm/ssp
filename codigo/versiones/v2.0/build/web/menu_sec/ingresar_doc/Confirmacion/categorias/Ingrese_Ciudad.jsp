<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>


<jsp:useBean id = "ciudadBEAN" class = "pkgSSP.Ciudad" scope="page"/>

<jsp:setProperty
    name = "ciudadBEAN"
    property="idprovincia"
    value="<%= request.getParameter("select") %>"
/>

<jsp:setProperty
    name = "ciudadBEAN"
    property="nombre"
    value="<%= request.getParameter("nombre_ciudad") %>"
/>

<%
    ciudadBEAN.InsertarCiudad();
    out.println(ciudadBEAN.getError());
    response.sendRedirect("../confirmacion.jsp"); 
%>