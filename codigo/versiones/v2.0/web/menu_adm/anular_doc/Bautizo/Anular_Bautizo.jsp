<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>
<jsp:useBean id = "cBEAN" class = "pkgSSP.ConexionDB"  scope = "session"/>


<jsp:useBean id = "bBEAN" class = "pkgSSP.Bautizar" scope = "session"/>
<jsp:useBean id = "uBEAN" class = "pkgSSP.Usuario" scope = "session"/>

<jsp:useBean id = "sBEAN" class = "pkgSSP.Solicitante" scope = "session"/>
<jsp:setProperty name = "sBEAN" property = "nombre" value='<%= request.getParameter("nombre") %>'/>
<jsp:setProperty name = "sBEAN" property = "apellido" value='<%= request.getParameter("apellido") %>'/>

<%
   bBEAN.bautizado.usuario.id_usuario = uBEAN.id_usuario;
   //if (bBEAN.buscar_BautizoxSolicitante(sBEAN.getNombre(),sBEAN.getApellido()))
   if (bBEAN.buscar_BautizoxSolicitante(sBEAN.getNombre(),sBEAN.getApellido()))
   {
      bBEAN.Anular_Bautizar(bBEAN.getId_bautizo());
      if (bBEAN.buscar_BautizoxSolicitante(sBEAN.getNombre(),sBEAN.getApellido())){
           response.sendRedirect("Bautizo.jsp");
      }
   }
   else
   {
      response.sendRedirect("mensaje_fallido.jsp");
   }
 %>  