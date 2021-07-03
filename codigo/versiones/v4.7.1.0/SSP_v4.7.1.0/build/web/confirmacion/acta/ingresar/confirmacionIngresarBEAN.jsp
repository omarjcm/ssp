<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope="session"/>
<jsp:useBean id = "confirmacionBEAN" class = "SSP.Confirmar" scope="session"/>

<%-- DATOS DEL REGISTRO ECLESIÁSTICO --%>
<jsp:setProperty
    name = "confirmacionBEAN"
    property="num_sacramento"
    value="<%= request.getParameter("num_sacramento") %>"
/>
<jsp:setProperty
    name = "confirmacionBEAN"
    property="anio_libro"
    value="<%= request.getParameter("anio_libro") %>"
/>
<jsp:setProperty
    name = "confirmacionBEAN"
    property="num_libro"
    value="<%= request.getParameter("num_libro") %>"
/>
<jsp:setProperty
    name = "confirmacionBEAN"
    property="folio_libro"
    value="<%= request.getParameter("folio_libro") %>"
/>

<%-- DATOS DE LA PARROQUIA --%>
<jsp:setProperty
    name = "confirmacionBEAN"
    property="id_ministro"
    value="<%= request.getParameter("id_ministro") %>"
/>
<jsp:setProperty
    name = "confirmacionBEAN"
    property="fecha_confirmacion"
    value="<%= request.getParameter("fecha_confirmacion") %>"
/>

<%-- DATOS DEL CONFIRMADO --%>
<jsp:setProperty
    name = "confirmacionBEAN"
    property="confirmado_nombre"
    value="<%= request.getParameter("confirmado_nombre") %>"
/>
<jsp:setProperty
    name = "confirmacionBEAN"
    property="confirmado_apellido"
    value="<%= request.getParameter("confirmado_apellido") %>"
/>

<jsp:setProperty
    name = "confirmacionBEAN"
    property="confirmado_sexo"
    value="<%= request.getParameter("id_sexo") %>"
/>

<jsp:setProperty
    name = "confirmacionBEAN"
    property="fecha_nacimiento"
    value="<%= request.getParameter("fecha_nacimiento") %>"
/>

<jsp:setProperty
    name = "confirmacionBEAN"
    property="lugar_confirmacion"
    value="<%= request.getParameter("lugar_confirmacion") %>"
/>
<%-- DATOS DE LOS PADRES --%>
<jsp:setProperty
    name = "confirmacionBEAN"
    property="padre_nombre"
    value="<%= request.getParameter("padre_nombre") %>"
/>
<jsp:setProperty
    name = "confirmacionBEAN"
    property="padre_apellido"
    value="<%= request.getParameter("padre_apellido") %>"
/>
<jsp:setProperty
    name = "confirmacionBEAN"
    property="madre_nombre"
    value="<%= request.getParameter("madre_nombre") %>"
/>
<jsp:setProperty
    name = "confirmacionBEAN"
    property="madre_apellido"
    value="<%= request.getParameter("madre_apellido") %>"
/>

<%-- DATOS DE LOS PADRINOS --%>
<jsp:setProperty
    name = "confirmacionBEAN"
    property="padrino_nombre"
    value="<%= request.getParameter("padrino_nombre") %>"
/>
<jsp:setProperty
    name = "confirmacionBEAN"
    property="padrino_apellido"
    value="<%= request.getParameter("padrino_apellido") %>"
/>
<jsp:setProperty
    name = "confirmacionBEAN"
    property="madrina_nombre"
    value="<%= request.getParameter("madrina_nombre") %>"
/>
<jsp:setProperty
    name = "confirmacionBEAN"
    property="madrina_apellido"
    value="<%= request.getParameter("madrina_apellido") %>"
/>

<%-- OBSERVACIONES --%>
<jsp:setProperty
    name = "confirmacionBEAN"
    property="observacion"
    value="<%= request.getParameter("observacion") %>"
/>

<%
    if ( confirmacionBEAN.ingresarConfirmacion(uBEAN.getIdUsuario()) )
        response.sendRedirect("confirmacion.jsp?id=3");
    else
        response.sendRedirect("confirmacion.jsp?id=4");
%>