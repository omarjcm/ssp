<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="mensaje_fallido.jsp" %>

<jsp:useBean id = "bautizoBEAN" class = "SSP.Bautizar" scope="session"/>

<%-- DATOS DEL BAUTIZADO --%>
<jsp:setProperty
    name = "bautizoBEAN"
    property="bautizado_nombre"
    value="<%= request.getParameter("bautizado_nombre") %>"
/>

<jsp:setProperty
    name = "bautizoBEAN"
    property="bautizado_apellido"
    value="<%= request.getParameter("bautizado_apellido") %>"
/>

<jsp:setProperty
    name = "bautizoBEAN"
    property="bautizado_sexo"
    value="<%= request.getParameter("id_sexo") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="lugar_nacimiento"
    value="<%= request.getParameter("lugar_nacimiento") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="fecha_nacimiento"
    value="<%= request.getParameter("fecha_nacimiento") %>"
/>

<%
    response.sendRedirect("bautismo.jsp?paso=1");
%>