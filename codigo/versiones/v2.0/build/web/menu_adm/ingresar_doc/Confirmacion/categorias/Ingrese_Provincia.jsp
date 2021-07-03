<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>


<jsp:useBean id = "provinciaBEAN" class = "pkgSSP.Provincia" scope="page"/>


<jsp:setProperty
    name = "provinciaBEAN"
    property="nombre"
    value="<%= request.getParameter("provincia_nombre") %>"
/>

<%
    provinciaBEAN.IngresarProvincia();
    out.println(provinciaBEAN.getError());
    response.sendRedirect("ciudad.jsp"); 
%>