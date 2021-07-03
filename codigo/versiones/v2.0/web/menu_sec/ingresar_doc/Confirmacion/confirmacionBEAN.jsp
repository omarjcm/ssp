<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>

<jsp:useBean id = "uBEAN" class = "pkgSSP.Usuario" scope="session"/>
<jsp:useBean id = "confirmarBEAN" class = "pkgSSP.Confirmar" scope="page"/>

<%-- DATOS DE REGISTROS EN EL ACTA --%>
<jsp:setProperty
    name = "confirmarBEAN"
    property="id_confirmacion"
    value="<%= request.getParameter("id_confirmacion") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="anio_libro"
    value="<%= request.getParameter("reg_acta_anio") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="num_libro"
    value="<%= request.getParameter("reg_acta_libro") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="folio_libro"
    value="<%= request.getParameter("reg_acta_folio") %>"
/>

<%-- DATOS DE LA PARROQUIA --%>
<jsp:setProperty
    name = "confirmarBEAN"
    property="ministro_cna"
    value="<%= request.getParameter("id_ministro") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="dia_confirmacion"
    value="<%= request.getParameter("dia_fecha_sacramento") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="mes_confirmacion"
    value="<%= request.getParameter("mes_fecha_sacramento") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="anio_confirmacion"
    value="<%= request.getParameter("anio_fecha_sacramento") %>"
/>

<%-- DATOS DEL BAUTIZADO --%>
<jsp:setProperty
    name = "confirmarBEAN"
    property="confirmado_nombre"
    value="<%= request.getParameter("solicitante_nombre") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="confirmado_apellido"
    value="<%= request.getParameter("solicitante_apellido") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="provincia_nombre"
    value="<%= request.getParameter("id_provincia") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="ciudad_nombre"
    value="<%= request.getParameter("id_ciudad") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="confirmado_sexo"
    value="<%= request.getParameter("solicitante_sexo") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="dia_nacimiento"
    value="<%= request.getParameter("dia_fecha_nacimiento") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="mes_nacimiento"
    value="<%= request.getParameter("mes_fecha_nacimiento") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="anio_nacimiento"
    value="<%= request.getParameter("anio_fecha_nacimiento") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="ciudad_bautizo"
    value="<%= request.getParameter("ciudad_bautizo") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="nombre_IglesiaBautizo"
    value="<%= request.getParameter("iglesia_bautizo") %>"
/>

<%-- DATOS DE LOS PADRES --%>
<jsp:setProperty
    name = "confirmarBEAN"
    property="padre_nombre"
    value="<%= request.getParameter("padre_nombre") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="padre_apellido"
    value="<%= request.getParameter("padre_apellido") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="madre_nombre"
    value="<%= request.getParameter("madre_nombre") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="madre_apellido"
    value="<%= request.getParameter("madre_apellido") %>"
/>

<%-- DATOS DE LOS PADRINOS --%>
<jsp:setProperty
    name = "confirmarBEAN"
    property="padrino_nombre"
    value="<%= request.getParameter("padrino_nombre") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="padrino_apellido"
    value="<%= request.getParameter("padrino_apellido") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="madrina_nombre"
    value="<%= request.getParameter("madrina_nombre") %>"
/>
<jsp:setProperty
    name = "confirmarBEAN"
    property="madrina_apellido"
    value="<%= request.getParameter("madrina_apellido") %>"
/>

<%-- OBSERVACIONES --%>
<jsp:setProperty
    name = "confirmarBEAN"
    property="observacion"
    value="<%= request.getParameter("observacion") %>"
/>

<%
    confirmarBEAN.confirmado.usuario.setId_usuario(uBEAN.getId_usuario());
    
    confirmarBEAN.padre.usuario.setId_usuario(uBEAN.getId_usuario());
    confirmarBEAN.madre.usuario.setId_usuario(uBEAN.getId_usuario());
    confirmarBEAN.padrino.usuario.setId_usuario(uBEAN.getId_usuario());
    confirmarBEAN.madrina.usuario.setId_usuario(uBEAN.getId_usuario());
   
    String valida= confirmarBEAN.INSERTAR_CONFIRMACION();
    if(valida.compareTo("TODO ESTA INGRESADO!!!!")==0){
        response.sendRedirect("mensaje_exito.jsp");
    }
    else{
        response.sendRedirect("mensaje_fallido.jsp");
    }
%>





