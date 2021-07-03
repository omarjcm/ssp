<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>

<jsp:useBean id = "usuarioBEAN" class = "pkgSSP.Usuario" scope="session"/>
<jsp:useBean id = "cuiBEAN" class = "pkgSSP.Ciudad" scope="page"/>

<jsp:setProperty
    name = "usuarioBEAN"
    property="usuario"
    value="<%= request.getParameter("user") %>"
/>
<jsp:setProperty
    name = "usuarioBEAN"
    property="clave"
    value="<%= request.getParameter("password_temp") %>"
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
    property="provincia_nombre"
    value="<%= request.getParameter("id_provincia") %>"
/>
<jsp:setProperty
    name = "usuarioBEAN"
    property="ciudad_nombre"
    value="<%= request.getParameter("id_ciudad") %>"
/>
<jsp:setProperty
    name = "usuarioBEAN"
    property="tipousuario"
    value="<%= request.getParameter("tipo_usuario") %>"
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
    if(usuarioBEAN.IngresarUsuario()){
        response.sendRedirect("mensaje_exito.jsp");
    }
    else{
        out.println(usuarioBEAN.getError());
        out.println(usuarioBEAN.mensaje);
        //response.sendRedirect("../../../error/error.jsp");
    }
%>




