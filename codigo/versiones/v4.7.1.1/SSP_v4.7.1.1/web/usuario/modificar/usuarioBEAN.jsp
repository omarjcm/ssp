<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope="session"/>
<jsp:useBean id = "usuarioBEAN" class = "SSP.Usuario" scope="session"/>

<jsp:setProperty
    name = "usuarioBEAN"
    property="usuario"
    value="<%= request.getParameter("usuario") %>"
/>
<jsp:setProperty
    name = "usuarioBEAN"
    property="contrasenia"
    value="<%= request.getParameter("contrasenia") %>"
/>
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
<jsp:setProperty
    name = "usuarioBEAN"
    property="tipo"
    value="<%= request.getParameter("id_tipo") %>"
/>
<jsp:setProperty
    name = "usuarioBEAN"
    property="cargo"
    value="<%= request.getParameter("id_cargo") %>"
/>

<jsp:setProperty
    name = "usuarioBEAN"
    property="telefono1"
    value="<%= request.getParameter("telefono1") %>"
/>
<jsp:setProperty
    name = "usuarioBEAN"
    property="telefono2"
    value="<%= request.getParameter("telefono2") %>"
/>
<jsp:setProperty
    name = "usuarioBEAN"
    property="direccion"
    value="<%= request.getParameter("direccion") %>"
/>

<%
    if(usuarioBEAN.modificarUsuario(uBEAN.getIdUsuario()))
        response.sendRedirect("usuario.jsp?id=4");
    else{
        response.sendRedirect("usuario.jsp?id=5");
		out.println(usuarioBEAN.getMensaje_error());
		}
%>