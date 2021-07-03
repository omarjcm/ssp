<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>
<jsp:useBean id = "cBEAN" class = "pkgSSP.ConexionDB"  scope = "session"/>


<jsp:useBean id = "umodiBEAN" class = "pkgSSP.Usuario" scope = "session"/>

<jsp:setProperty
    name = "umodiBEAN"
    property="nombre"
    value="<%= request.getParameter("nombre") %>"
/>
<jsp:setProperty
    name = "umodiBEAN"
    property="apellido"
    value="<%= request.getParameter("apellido") %>"
/>
<jsp:setProperty
    name = "umodiBEAN"
    property="cargo"
    value="<%= request.getParameter("id_cargo") %>"
/>

<%
 
   if (umodiBEAN.BuscarUsuario())
   {
       response.sendRedirect("usuarioModificar.jsp");
   }
   else
   {
       response.sendRedirect("mensaje_fallido1.jsp");
   }
 %>  