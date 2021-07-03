<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>

<jsp:useBean id = "umodiBEAN" class = "pkgSSP.Usuario" scope="session"/>
<jsp:useBean id = "cuiBEAN" class = "pkgSSP.Ciudad" scope="session"/>

<jsp:setProperty
    name = "umodiBEAN"
    property="usuario"
    value="<%= request.getParameter("user") %>"
/>
<jsp:setProperty
    name = "umodiBEAN"
    property="clave"
    value="<%= request.getParameter("password_new") %>"
/>
<jsp:setProperty
    name = "umodiBEAN"
    property="nombre"
    value="<%= request.getParameter("usuario_nombre") %>"
/>
<jsp:setProperty
    name = "umodiBEAN"
    property="apellido"
    value="<%= request.getParameter("usuario_apellido") %>"
/>

<jsp:setProperty
    name = "umodiBEAN"
    property="provincia_nombre"
    value="<%= request.getParameter("id_provincia") %>"
/>
<jsp:setProperty
    name = "umodiBEAN"
    property="ciudad_nombre"
    value="<%= request.getParameter("id_ciudad") %>"
/>
<jsp:setProperty
    name = "umodiBEAN"
    property="tipousuario"
    value="<%= request.getParameter("tipo_usuario") %>"
/>
<jsp:setProperty
    name = "umodiBEAN"
    property="cargo"
    value="<%= request.getParameter("id_cargo") %>"
/>

<jsp:setProperty
    name = "umodiBEAN"
    property="telefono1"
    value="<%= request.getParameter("telefono1") %>"
/>
<jsp:setProperty
    name = "umodiBEAN"
    property="telefono2"
    value="<%= request.getParameter("telefono2") %>"
/>
<jsp:setProperty
    name = "umodiBEAN"
    property="direccion"
    value="<%= request.getParameter("direccion") %>"
/>

<%
    if(umodiBEAN.ModificarUsuario()){
        response.sendRedirect("mensaje_exito.jsp");
    }
    else{
     /*   out.println(umodiBEAN.getError());
        out.println(umodiBEAN.mensaje);*/
        response.sendRedirect("mensaje_fallido.jsp");
    }
%>




