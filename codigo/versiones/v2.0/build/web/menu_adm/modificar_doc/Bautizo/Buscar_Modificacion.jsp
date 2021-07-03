<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>
<jsp:useBean id = "cBEAN" class = "pkgSSP.ConexionDB"  scope = "session"/>


<jsp:useBean id = "bBEAN" class = "pkgSSP.Bautizar" scope = "session"/>
<jsp:useBean id = "uBEAN" class = "pkgSSP.Usuario" scope = "session"/>

<jsp:useBean id = "sBEAN" class = "pkgSSP.Solicitante" scope = "session"/>
<jsp:setProperty name = "sBEAN" property = "nombre" value='<%= request.getParameter("nombre") %>'/>
<jsp:setProperty name = "sBEAN" property = "apellido" value='<%= request.getParameter("apellido") %>'/>

<%
   
   if (bBEAN.buscar_BautizoxSolicitante(sBEAN.getNombre(), sBEAN.getApellido()))
   {
       response.sendRedirect("bautizo.jsp");
       
   }
   else
   {
       response.sendRedirect("mensaje_fallido1.jsp");
   }
 %>  