<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>
<jsp:useBean id = "cBEAN" class = "pkgSSP.ConexionDB"  scope = "session"/>

<jsp:useBean id = "confirBEAN" class = "pkgSSP.Confirmar"  scope = "session"/>

<jsp:useBean id = "uBEAN" class = "pkgSSP.Usuario"  scope = "session"/>
<jsp:useBean id = "sBEAN" class = "pkgSSP.Solicitante"  scope = "page"/>
<jsp:setProperty name = "sBEAN" property = "nombre" value='<%= request.getParameter("nombre") %>'/>
<jsp:setProperty name = "sBEAN" property = "apellido" value='<%= request.getParameter("apellido") %>'/>

<%
   confirBEAN.confirmado.usuario.id_usuario = uBEAN.id_usuario;
   if (confirBEAN.buscar_ConfirmacionxSolicitante(sBEAN.getNombre(), sBEAN.getApellido()))
   {
       response.sendRedirect("confirmacion.jsp");
   }
   else
   {
       response.sendRedirect("mensaje_fallido1.jsp");
       
   }
%>