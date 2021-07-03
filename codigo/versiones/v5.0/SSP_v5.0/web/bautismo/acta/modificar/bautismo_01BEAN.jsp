<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>
<jsp:useBean id = "solicitanteBEAN" class = "SSP.Solicitante" scope = "session"/>

<jsp:setProperty
    name = "solicitanteBEAN"
    property="nombre"
    value="<%= request.getParameter("bautizado_nombre") %>"
/>
<jsp:setProperty
    name = "solicitanteBEAN"
    property="apellido"
    value="<%= request.getParameter("bautizado_apellido") %>"
/>

<%
    response.sendRedirect("bautismo.jsp?id=2&tipo=1");
%>