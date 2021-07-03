<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>


<jsp:useBean id = "ciudadBEAN" class = "pkgSSP.Ciudad" scope="page"/>

<jsp:setProperty
    name = "ciudadBEAN"
    property="id_provincia"
    value="<%= request.getParameter("id_provincia") %>"
/>

<jsp:setProperty
    name = "ciudadBEAN"
    property="nombre"
    value="<%= request.getParameter("nombre_ciudad") %>"
/>

<%
    ciudadBEAN.InsertarCiudad();
    out.println(ciudadBEAN.getError());
    response.sendRedirect("../matrimonio.jsp"); 
%>