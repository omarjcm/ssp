<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="mensaje_fallido.jsp" %>

<jsp:useBean id = "bautizoBEAN" class = "SSP.Bautizar" scope="session"/>

<%-- DATOS DEL REGISTRO CIVIL --%>
<jsp:setProperty
    name = "bautizoBEAN"
    property="rc_acta"
    value="<%= request.getParameter("acta") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="rc_anio"
    value="<%= request.getParameter("anio") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="rc_tomo"
    value="<%= request.getParameter("tomo") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="rc_folio"
    value="<%= request.getParameter("folio") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="rc_lugar"
    value="<%= request.getParameter("rc_lugar") %>"
/>