<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="mensaje_fallido.jsp" %>

<jsp:useBean id = "bautizoBEAN" class = "SSP.Bautizar" scope="session"/>

<%-- DATOS DE LOS PADRES --%>
<jsp:setProperty
    name = "bautizoBEAN"
    property="padre_nombre"
    value="<%= request.getParameter("padre_nombre") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="padre_apellido"
    value="<%= request.getParameter("padre_apellido") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="madre_nombre"
    value="<%= request.getParameter("madre_nombre") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="madre_apellido"
    value="<%= request.getParameter("madre_apellido") %>"
/>