<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>
<jsp:useBean id = "cBEAN" class = "pkgSSP.ConexionDB"  scope = "session"/>


<jsp:useBean id = "uanulaBEAN" class = "pkgSSP.Usuario" scope = "session"/>

<jsp:useBean id = "sBEAN" class = "pkgSSP.Solicitante" scope = "session"/>
<jsp:setProperty name = "sBEAN" property = "nombre" value='<%= request.getParameter("nombre") %>'/>
<jsp:setProperty name = "sBEAN" property = "apellido" value='<%= request.getParameter("apellido") %>'/>

<%
  
   if(uanulaBEAN.Anular_Usuario()){
      response.sendRedirect("exito.jsp");
   }
   else
   {
       out.println("ERROR: "+uanulaBEAN.getError());
      //response.sendRedirect("fallido.jsp");
   }
 %>  