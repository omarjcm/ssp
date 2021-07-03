<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>

<jsp:useBean id = "bautizoBEAN" class = "SSP.Bautizar" scope="session"/>

<%-- DATOS DE LA PARROQUIA --%>
<jsp:setProperty
    name = "bautizoBEAN"
    property="id_ministro"
    value="<%= request.getParameter("id_ministro") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="fecha_bautizo"
    value="<%= request.getParameter("fecha_bautizo") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="lugar_bautizo"
    value="<%= request.getParameter("lugar_bautizo") %>"
/>

<%
    out.println("Hola mundo");
    //out.println(bautizoBEAN.getlugar_bautizo());
    //response.Redirect("bautismo.jsp?paso=7");
%>