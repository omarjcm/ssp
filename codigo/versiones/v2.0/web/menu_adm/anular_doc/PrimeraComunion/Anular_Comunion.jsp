<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>
<jsp:useBean id = "cBEAN" class = "pkgSSP.ConexionDB"  scope = "session"/>

<jsp:useBean id = "comuBEAN" class = "pkgSSP.Comulgar"  scope = "session"/>
<jsp:useBean id = "uBEAN" class = "pkgSSP.Usuario" scope = "session"/>

<jsp:useBean id = "sBEAN" class = "pkgSSP.Solicitante"  scope = "session"/>
<jsp:setProperty name = "sBEAN" property = "nombre" value='<%= request.getParameter("nombre") %>'/>
<jsp:setProperty name = "sBEAN" property = "apellido" value='<%= request.getParameter("apellido") %>'/>

<%
   if (comuBEAN.buscar_ComulgarxSolicitante(sBEAN.getNombre(), sBEAN.getApellido()))
   {
       comuBEAN.Anular_Comulgar(comuBEAN.getId_comunion());
       if (comuBEAN.buscar_ComulgarxSolicitante(sBEAN.getNombre(), sBEAN.getApellido()))
        {
            response.sendRedirect("PrimeraComunion.jsp");}
   }
   else
   {
      response.sendRedirect("mensaje_fallido.jsp");
   }
 %> 
