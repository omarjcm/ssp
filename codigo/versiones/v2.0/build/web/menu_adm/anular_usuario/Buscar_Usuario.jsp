<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>
<jsp:useBean id = "cBEAN" class = "pkgSSP.ConexionDB"  scope = "session"/>


<jsp:useBean id = "uanulaBEAN" class = "pkgSSP.Usuario" scope = "session"/>

<jsp:setProperty
    name = "uanulaBEAN"
    property="nombre"
    value="<%= request.getParameter("nombre") %>"
/>
<jsp:setProperty
    name = "uanulaBEAN"
    property="apellido"
    value="<%= request.getParameter("apellido") %>"
/>
<jsp:setProperty
    name = "uanulaBEAN"
    property="cargo"
    value="<%= request.getParameter("id_cargo") %>"
/>

<%
 
   if (uanulaBEAN.BuscarUsuario())
   {
      if(uanulaBEAN.Anular_Usuario()){
      response.sendRedirect("exito.jsp");
       }
       else
       {
           out.println("ERROR: "+uanulaBEAN.getError());
          //response.sendRedirect("fallido.jsp");
       }
   }
   else
   {
       out.println(uanulaBEAN.getError());
       out.println(uanulaBEAN.mensaje);
       response.sendRedirect("mensaje_fallido.jsp");
   }
 %>  