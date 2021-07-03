<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>
<jsp:useBean id = "cBEAN" class = "pkgSSP.ConexionDB"  scope = "session"/>


<jsp:useBean id = "casarBEAN" class = "pkgSSP.Casar" scope = "session"/>
<jsp:useBean id = "snovioBEAN" class = "pkgSSP.Solicitante" scope = "session"/>
<jsp:useBean id = "snoviaBEAN" class = "pkgSSP.Solicitante" scope = "session"/>
<jsp:setProperty name = "snovioBEAN" property = "nombre" value='<%= request.getParameter("esposo_nombre") %>'/>
<jsp:setProperty name = "snovioBEAN" property = "apellido" value='<%= request.getParameter("esposo_apellido") %>'/>
<jsp:setProperty name = "snoviaBEAN" property = "nombre" value='<%= request.getParameter("esposa_nombre") %>'/>
<jsp:setProperty name = "snoviaBEAN" property = "apellido" value='<%= request.getParameter("esposa_apellido") %>'/>

<%   
if (casarBEAN.buscar_MatrimonioxSolicitante(snovioBEAN.getNombre(),snovioBEAN.getApellido(),snoviaBEAN.getNombre(),snoviaBEAN.getApellido()))
   {
       response.sendRedirect("Matrimonio.jsp");
    }
   else
   {
       response.sendRedirect("mensaje_fallido1.jsp");
   }
%>