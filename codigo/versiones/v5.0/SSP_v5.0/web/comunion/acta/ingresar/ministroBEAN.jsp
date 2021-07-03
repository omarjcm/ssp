<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>


<jsp:useBean id = "usuarioBEAN" class = "SSP.Usuario" scope="session"/>
<jsp:useBean id = "ministroBEAN" class = "SSP.Ministro" scope="page"/>

<jsp:setProperty
    name = "ministroBEAN"
    property="dignidad"
    value="<%= request.getParameter("id_ministro_dignidad") %>"
/>

<jsp:setProperty
    name = "ministroBEAN"
    property="nombre"
    value="<%= request.getParameter("ministro_nombre") %>"
/>

<jsp:setProperty
    name = "ministroBEAN"
    property="apellido"
    value="<%= request.getParameter("ministro_apellido") %>"
/>

<%
    if(ministroBEAN.ingresarMinistro()){
        response.sendRedirect("comunion.jsp"); 
    }
%>