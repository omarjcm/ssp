<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="mensaje_fallido.jsp" %>

<jsp:useBean id = "bautizoBEAN" class = "SSP.Bautizar" scope="session"/>

<%
    bautizoBEAN = null;
    response.sendRedirect("bautismo.jsp?paso=1");
%>




