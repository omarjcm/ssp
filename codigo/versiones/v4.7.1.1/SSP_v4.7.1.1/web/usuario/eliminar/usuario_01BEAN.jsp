<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>
<jsp:useBean id = "usuarioBEAN" class = "SSP.Usuario" scope = "session"/>

<jsp:setProperty
    name = "usuarioBEAN"
    property="nombre"
    value="<%= request.getParameter("usuario_nombre") %>"
/>
<jsp:setProperty
    name = "usuarioBEAN"
    property="apellido"
    value="<%= request.getParameter("usuario_apellido") %>"
/>

<%
       response.sendRedirect("usuario.jsp?id=2&tipo=1");
%>