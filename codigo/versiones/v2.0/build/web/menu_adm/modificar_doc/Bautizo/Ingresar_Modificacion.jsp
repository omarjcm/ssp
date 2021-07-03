<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>

<jsp:useBean id = "uBEAN" class = "pkgSSP.Usuario" scope="session"/>
<jsp:useBean id = "bBEAN" class = "pkgSSP.Bautizar" scope="session"/>
<jsp:useBean id = "registroBEAN" class = "pkgSSP.RegistroCivil" scope="page"/>

<%-- DATOS DE REGISTROS EN EL ACTA --%>
<jsp:setProperty
    name = "bBEAN"
    property="id_bautizo"
    value="<%= request.getParameter("id_bautizo") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="anio_libro"
    value="<%= request.getParameter("reg_acta_anio") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="num_libro"
    value="<%= request.getParameter("reg_acta_libro") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="folio"
    value="<%= request.getParameter("reg_acta_folio") %>"
/>

<%-- DATOS DE LA PARROQUIA --%>
<jsp:setProperty
    name = "bBEAN"
    property="ministro_cna"
    value="<%= request.getParameter("id_ministro") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="dia_bautizo"
    value="<%= request.getParameter("dia_fecha_sacramento") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="mes_bautizo"
    value="<%= request.getParameter("mes_fecha_sacramento") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="anio_bautizo"
    value="<%= request.getParameter("anio_fecha_sacramento") %>"
/>

<%-- DATOS DEL BAUTIZADO --%>
<jsp:setProperty
    name = "bBEAN"
    property="bautizado_nombre"
    value="<%= request.getParameter("solicitante_nombre") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="bautizado_apellido"
    value="<%= request.getParameter("solicitante_apellido") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="provin_nombre"
    value="<%= request.getParameter("id_provincia") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="city_nombre"
    value="<%= request.getParameter("id_ciudad") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="bautizado_sexo"
    value="<%= request.getParameter("solicitante_sexo") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="dia_nacimiento"
    value="<%= request.getParameter("dia_fecha_nacimiento") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="mes_nacimiento"
    value="<%= request.getParameter("mes_fecha_nacimiento") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="anio_nacimiento"
    value="<%= request.getParameter("anio_fecha_nacimiento") %>"
/>

<%-- DATOS DE LOS PADRES --%>
<jsp:setProperty
    name = "bBEAN"
    property="padre_nombre"
    value="<%= request.getParameter("padre_nombre") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="padre_apellido"
    value="<%= request.getParameter("padre_apellido") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="madre_nombre"
    value="<%= request.getParameter("madre_nombre") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="madre_apellido"
    value="<%= request.getParameter("madre_apellido") %>"
/>

<%-- DATOS DE LOS PADRINOS --%>
<jsp:setProperty
    name = "bBEAN"
    property="padrino_nombre"
    value="<%= request.getParameter("padrino_nombre") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="padrino_apellido"
    value="<%= request.getParameter("padrino_apellido") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="madrina_nombre"
    value="<%= request.getParameter("madrina_nombre") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="madrina_apellido"
    value="<%= request.getParameter("madrina_apellido") %>"
/>

<%-- DATOS DEL REGISTRO CIVIL --%>
<jsp:setProperty
    name = "bBEAN"
    property="rc_acta"
    value="<%= request.getParameter("rc_acta") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="rc_anio"
    value="<%= request.getParameter("rc_acta_anio") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="rc_tomo"
    value="<%= request.getParameter("rc_acta_tomo") %>"
/>
<jsp:setProperty
    name = "bBEAN"
    property="rc_folio"
    value="<%= request.getParameter("rc_acta_folio") %>"
/>

<%-- OBSERVACIONES --%>
<jsp:setProperty
    name = "bBEAN"
    property="observacion"
    value="<%= request.getParameter("observacion") %>"
/>

<%
   bBEAN.bautizado.usuario.setId_usuario(uBEAN.getId_usuario());
    
   bBEAN.padre.usuario.setId_usuario(uBEAN.getId_usuario());
   bBEAN.madre.usuario.setId_usuario(uBEAN.getId_usuario());
   bBEAN.padrino.usuario.setId_usuario(uBEAN.getId_usuario());
   bBEAN.madrina.usuario.setId_usuario(uBEAN.getId_usuario());
    
   String valida = bBEAN.MODIFICAR_BAUTIZO();
   if(valida.compareTo("Todo esta Modificado!!!!")==0)
   {
     response.sendRedirect("mensaje_exito.jsp");
   }
   else{
    response.sendRedirect("mensaje_fallido2.jsp");
   }
%>
