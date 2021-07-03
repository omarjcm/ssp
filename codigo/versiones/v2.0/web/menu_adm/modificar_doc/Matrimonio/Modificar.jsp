<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>
<jsp:useBean id = "cBEAN" class = "pkgSSP.ConexionDB"  scope = "session"/>


<jsp:useBean id = "casarBEAN" class = "pkgSSP.Casar" scope = "session"/>
<jsp:useBean id = "snovioBEAN" class = "pkgSSP.Solicitante" scope = "session"/>
<jsp:useBean id = "snoviaBEAN" class = "pkgSSP.Solicitante" scope = "session"/>
<jsp:setProperty name = "snovioBEAN" property = "nombre" value='<%= request.getParameter("nombre_esposo") %>'/>
<jsp:setProperty name = "snovioBEAN" property = "apellido" value='<%= request.getParameter("apellido_esposo") %>'/>
<jsp:setProperty name = "snoviaBEAN" property = "nombre" value='<%= request.getParameter("nombre_esposa") %>'/>
<jsp:setProperty name = "snoviaBEAN" property = "apellido" value='<%= request.getParameter("apellido_esposa") %>'/>

<%
   //casarBEAN.usuario.id_usuario = uBEAN.id_usuario;
if (casarBEAN.buscar_MatrimonioxSolicitante(snovioBEAN.getNombre(),snovioBEAN.getApellido(),snoviaBEAN.getNombre(),snoviaBEAN.getApellido()))
   {
       response.sendRedirect("Matrimonio.jsp");
    }
   else
   {
        out.println(casarBEAN.getError());
     //  response.sendRedirect("../../error/error_consulta.jsp");
       
   }

%>