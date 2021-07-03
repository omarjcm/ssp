<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="mensaje_fallido.jsp" %>

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope="session"/>
<jsp:useBean id = "matrimonioBEAN" class = "SSP.Casar" scope="page"/>

<%-- DATOS DE REGISTROS EN EL ACTA --%>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="re_num_sacramento"
    value="<%= request.getParameter("num_sacramento") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="re_anio_libro"
    value="<%= request.getParameter("anio_libro") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="re_num_libro"
    value="<%= request.getParameter("num_libro") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="re_folio_libro"
    value="<%= request.getParameter("folio_libro") %>"
/>

<%-- DATOS DE LA PARROQUIA --%>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="id_ministro"
    value="<%= request.getParameter("id_ministro") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="fecha_matrimonio"
    value="<%= request.getParameter("fecha_matrimonio") %>"
/>
fecha_matrimonio

<%-- DATOS DE LOS ESPOSOS --%>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="esposo_nombre"
    value="<%= request.getParameter("esposo_nombre") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="esposo_apellido"
    value="<%= request.getParameter("esposo_apellido") %>"
/>

<jsp:setProperty
    name = "matrimonioBEAN"
    property="esposa_nombre"
    value="<%= request.getParameter("esposa_nombre") %>"
/>

<jsp:setProperty
    name = "matrimonioBEAN"
    property="esposa_apellido"
    value="<%= request.getParameter("esposa_apellido") %>"
/>

<%-- DATOS DE LOS PADRES DEL ESPOSO--%>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="pa_esposo_nombre"
    value="<%= request.getParameter("esposo_padre_nombre") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="pa_esposo_apellido"
    value="<%= request.getParameter("esposo_padre_apellido") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="ma_esposo_nombre"
    value="<%= request.getParameter("esposo_madre_nombre") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="ma_esposo_apellido"
    value="<%= request.getParameter("esposo_madre_apellido") %>"
/>

<%-- DATOS DE LOS PADRES DEL ESPOSA--%>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="pa_esposa_nombre"
    value="<%= request.getParameter("esposa_padre_nombre") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="pa_esposa_apellido"
    value="<%= request.getParameter("esposa_padre_apellido") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="ma_esposa_nombre"
    value="<%= request.getParameter("esposa_madre_nombre") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="ma_esposa_apellido"
    value="<%= request.getParameter("esposa_madre_apellido") %>"
/>

<%-- DATOS DE LOS PADRINOS --%>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="padrino_nombre"
    value="<%= request.getParameter("padrino_nombre") %>"
/><jsp:setProperty
    name = "matrimonioBEAN"
    property="padrino_apellido"
    value="<%= request.getParameter("padrino_apellido") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="madrina_nombre"
    value="<%= request.getParameter("madrina_nombre") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="madrina_apellido"
    value="<%= request.getParameter("madrina_apellido") %>"
/>

<%-- DATOS DEL REGISTRO CIVIL --%>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="rc_acta"
    value="<%= request.getParameter("acta") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="rc_anio"
    value="<%= request.getParameter("anio") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="rc_tomo"
    value="<%= request.getParameter("tomo") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="rc_folio"
    value="<%= request.getParameter("folio") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="rc_lugar"
    value="<%= request.getParameter("rc_lugar") %>"
/>

<%-- OBSERVACIONES --%>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="observacion"
    value="<%= request.getParameter("observacion") %>"
/>

<%
    if(matrimonioBEAN.ingresarMatrimonio(uBEAN.getIdUsuario())){
        response.sendRedirect("mensaje_exito.jsp"); 
    }
%>