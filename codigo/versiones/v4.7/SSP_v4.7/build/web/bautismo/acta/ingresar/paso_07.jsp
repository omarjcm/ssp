<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="mensaje_fallido.jsp" %>

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope="session"/>
<jsp:useBean id = "bautizoBEAN" class = "SSP.Bautizar" scope="session"/>

<%-- OBSERVACIONES --%>
<jsp:setProperty
    name = "bautizoBEAN"
    property="observacion"
    value="<%= request.getParameter("observacion") %>"
/>

<%
 //   if(bautizoBEAN.ingresarBautizo(uBEAN.getIdUsuario())){
//        response.sendRedirect("bautismo_.jsp"); 
   // }
%>




