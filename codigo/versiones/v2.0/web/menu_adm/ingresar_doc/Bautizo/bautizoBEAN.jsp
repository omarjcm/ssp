<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>

<jsp:useBean id = "uBEAN" class = "pkgSSP.Usuario" scope="session"/>
<jsp:useBean id = "bautizoBEAN" class = "pkgSSP.Bautizar" scope="page"/>
<jsp:useBean id = "registroBEAN" class = "pkgSSP.RegistroCivil" scope="page"/>

<%-- DATOS DE REGISTROS EN EL ACTA --%>
<jsp:setProperty
    name = "bautizoBEAN"
    property="id_bautizo"
    value="<%= request.getParameter("id_bautizo") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="anio_libro"
    value="<%= request.getParameter("reg_acta_anio") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="num_libro"
    value="<%= request.getParameter("reg_acta_libro") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="folio"
    value="<%= request.getParameter("reg_acta_folio") %>"
/>

<%-- DATOS DE LA PARROQUIA --%>
<jsp:setProperty
    name = "bautizoBEAN"
    property="ministro_cna"
    value="<%= request.getParameter("id_ministro") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="dia_bautizo"
    value="<%= request.getParameter("dia_fecha_sacramento") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="mes_bautizo"
    value="<%= request.getParameter("mes_fecha_sacramento") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="anio_bautizo"
    value="<%= request.getParameter("anio_fecha_sacramento") %>"
/>

<%-- DATOS DEL BAUTIZADO --%>
<jsp:setProperty
    name = "bautizoBEAN"
    property="bautizado_nombre"
    value="<%= request.getParameter("solicitante_nombre") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="bautizado_apellido"
    value="<%= request.getParameter("solicitante_apellido") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="provin_nombre"
    value="<%= request.getParameter("id_provincia") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="city_nombre"
    value="<%= request.getParameter("id_ciudad") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="bautizado_sexo"
    value="<%= request.getParameter("solicitante_sexo") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="dia_nacimiento"
    value="<%= request.getParameter("dia_fecha_nacimiento") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="mes_nacimiento"
    value="<%= request.getParameter("mes_fecha_nacimiento") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="anio_nacimiento"
    value="<%= request.getParameter("anio_fecha_nacimiento") %>"
/>

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

<%-- DATOS DE LOS PADRINOS --%>
<jsp:setProperty
    name = "bautizoBEAN"
    property="padrino_nombre"
    value="<%= request.getParameter("padrino_nombre") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="padrino_apellido"
    value="<%= request.getParameter("padrino_apellido") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="madrina_nombre"
    value="<%= request.getParameter("madrina_nombre") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="madrina_apellido"
    value="<%= request.getParameter("madrina_apellido") %>"
/>

<%-- DATOS DEL REGISTRO CIVIL --%>
<jsp:setProperty
    name = "bautizoBEAN"
    property="rc_acta"
    value="<%= request.getParameter("rc_acta") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="rc_anio"
    value="<%= request.getParameter("rc_acta_anio") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="rc_tomo"
    value="<%= request.getParameter("rc_acta_tomo") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="rc_folio"
    value="<%= request.getParameter("rc_acta_folio") %>"
/>

<%-- OBSERVACIONES --%>
<jsp:setProperty
    name = "bautizoBEAN"
    property="observacion"
    value="<%= request.getParameter("observacion") %>"
/>

<%
    bautizoBEAN.bautizado.usuario.setId_usuario(uBEAN.getId_usuario());
    
    bautizoBEAN.padre.usuario.setId_usuario(uBEAN.getId_usuario());
    bautizoBEAN.madre.usuario.setId_usuario(uBEAN.getId_usuario());
    bautizoBEAN.padrino.usuario.setId_usuario(uBEAN.getId_usuario());
    bautizoBEAN.madrina.usuario.setId_usuario(uBEAN.getId_usuario());
    
    String valida= bautizoBEAN.INSERTAR_BAUTIZO();
    if(valida.compareTo("TODO ESTA INGRESADO!!!!")==0)
        response.sendRedirect("mensaje_exito.jsp");
    else
        response.sendRedirect("mensaje_fallido.jsp");
%>




