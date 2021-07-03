<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>
<jsp:useBean id = "matrimonioBEAN" class = "SSP.Casar" scope = "session"/>

<jsp:setProperty
    name = "matrimonioBEAN"
    property="esposo_nombre"
    value="<%= request.getParameter("esposo_nombre") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="esposo_apellido"
    value="<%= request.getParameter("esposo_apellido") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="esposa_nombre"
    value="<%= request.getParameter("esposa_nombre") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="esposa_apellido"
    value="<%= request.getParameter("esposa_apellido") %>"
/>

<%
       response.sendRedirect("matrimonio.jsp?id=2&tipo=1");
%>