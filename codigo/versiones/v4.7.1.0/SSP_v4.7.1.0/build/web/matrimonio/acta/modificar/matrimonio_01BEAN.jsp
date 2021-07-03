<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>
<jsp:useBean id = "esposoBEAN" class = "SSP.Solicitante" scope = "session"/>
<jsp:useBean id = "esposaBEAN" class = "SSP.Solicitante" scope = "session"/>

<jsp:setProperty
    name = "esposoBEAN"
    property="nombre"
    value="<%= request.getParameter("esposo_nombre") %>"
/>
<jsp:setProperty
    name = "esposoBEAN"
    property="apellido"
    value="<%= request.getParameter("esposo_apellido") %>"
/>

<jsp:setProperty
    name = "esposaBEAN"
    property="nombre"
    value="<%= request.getParameter("esposa_nombre") %>"
/>
<jsp:setProperty
    name = "esposaBEAN"
    property="apellido"
    value="<%= request.getParameter("esposa_apellido") %>"
/>

<%
       response.sendRedirect("matrimonio.jsp?id=2&tipo=1");
%>