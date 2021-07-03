<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>
<jsp:useBean id = "solicitanteBEAN" class = "SSP.Solicitante" scope = "session"/>

<jsp:setProperty
    name = "solicitanteBEAN"
    property="nombre"
    value="<%= request.getParameter("comulgado_nombre") %>"
/>
<jsp:setProperty
    name = "solicitanteBEAN"
    property="apellido"
    value="<%= request.getParameter("comulgado_apellido") %>"
/>

<%
    response.sendRedirect("comunion.jsp?id=2&tipo=1");	
%>