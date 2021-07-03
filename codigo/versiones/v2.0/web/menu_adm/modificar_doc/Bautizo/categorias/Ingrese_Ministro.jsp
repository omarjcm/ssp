<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>


<jsp:useBean id = "usuarioBEAN" class = "pkgSSP.Usuario" scope="page"/>

<jsp:setProperty
    name = "usuarioBEAN"
    property="cargo"
    value="<%= request.getParameter("ministro_cargo") %>"
/>


<jsp:setProperty
    name = "usuarioBEAN"
    property="nombre"
    value="<%= request.getParameter("ministro_nombre") %>"
/>

<jsp:setProperty
    name = "usuarioBEAN"
    property="apellido"
    value="<%= request.getParameter("ministro_apellido") %>"
/>

<%
    usuarioBEAN.IngresarUsuarioSoloComoMinistro();
    //out.println(usuarioBEAN.getError());
    out.println(usuarioBEAN.mensaje);
    response.sendRedirect("../bautizo.jsp"); 
%>