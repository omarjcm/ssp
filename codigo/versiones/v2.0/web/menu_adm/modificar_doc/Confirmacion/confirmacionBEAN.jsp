<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>

<jsp:useBean id = "uBEAN" class = "pkgSSP.Usuario" scope="session"/>
<jsp:useBean id = "confirBEAN" class = "pkgSSP.Confirmar" scope="session"/>

<%-- DATOS DE REGISTROS EN EL ACTA --%>
<jsp:setProperty
    name = "confirBEAN"
    property="id_confirmacion"
    value="<%= request.getParameter("id_confirmacion") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="anio_libro"
    value="<%= request.getParameter("reg_acta_anio") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="num_libro"
    value="<%= request.getParameter("reg_acta_libro") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="folio_libro"
    value="<%= request.getParameter("reg_acta_folio") %>"
/>

<%-- DATOS DE LA PARROQUIA --%>
<jsp:setProperty
    name = "confirBEAN"
    property="ministro_cna"
    value="<%= request.getParameter("id_ministro") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="dia_confirmacion"
    value="<%= request.getParameter("dia_fecha_sacramento") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="mes_confirmacion"
    value="<%= request.getParameter("mes_fecha_sacramento") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="anio_confirmacion"
    value="<%= request.getParameter("anio_fecha_sacramento") %>"
/>

<%-- DATOS DEL BAUTIZADO --%>
<jsp:setProperty
    name = "confirBEAN"
    property="confirmado_nombre"
    value="<%= request.getParameter("solicitante_nombre") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="confirmado_apellido"
    value="<%= request.getParameter("solicitante_apellido") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="provincia_nombre"
    value="<%= request.getParameter("id_provincia") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="ciudad_nombre"
    value="<%= request.getParameter("id_ciudad") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="confirmado_sexo"
    value="<%= request.getParameter("solicitante_sexo") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="dia_nacimiento"
    value="<%= request.getParameter("dia_fecha_nacimiento") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="mes_nacimiento"
    value="<%= request.getParameter("mes_fecha_nacimiento") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="anio_nacimiento"
    value="<%= request.getParameter("anio_fecha_nacimiento") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="ciudad_bautizo"
    value="<%= request.getParameter("ciudad_bautizo") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="nombre_IglesiaBautizo"
    value="<%= request.getParameter("iglesia_bautizo") %>"
/>

<%-- DATOS DE LOS PADRES --%>
<jsp:setProperty
    name = "confirBEAN"
    property="padre_nombre"
    value="<%= request.getParameter("padre_nombre") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="padre_apellido"
    value="<%= request.getParameter("padre_apellido") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="madre_nombre"
    value="<%= request.getParameter("madre_nombre") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="madre_apellido"
    value="<%= request.getParameter("madre_apellido") %>"
/>

<%-- DATOS DE LOS PADRINOS --%>
<jsp:setProperty
    name = "confirBEAN"
    property="padrino_nombre"
    value="<%= request.getParameter("padrino_nombre") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="padrino_apellido"
    value="<%= request.getParameter("padrino_apellido") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="madrina_nombre"
    value="<%= request.getParameter("madrina_nombre") %>"
/>
<jsp:setProperty
    name = "confirBEAN"
    property="madrina_apellido"
    value="<%= request.getParameter("madrina_apellido") %>"
/>

<%-- OBSERVACIONES --%>
<jsp:setProperty
    name = "confirBEAN"
    property="observacion"
    value="<%= request.getParameter("observacion") %>"
/>

<%
    confirBEAN.confirmado.usuario.setId_usuario(uBEAN.getId_usuario());
    
    confirBEAN.padre.usuario.setId_usuario(uBEAN.getId_usuario());
    confirBEAN.madre.usuario.setId_usuario(uBEAN.getId_usuario());
    confirBEAN.padrino.usuario.setId_usuario(uBEAN.getId_usuario());
    confirBEAN.madrina.usuario.setId_usuario(uBEAN.getId_usuario());
    
    String valida= confirBEAN.MODIFICAR_CONFIRMACION();
    if(valida.compareTo("Todo esta Modificado!!!!") == 0)
    {
        response.sendRedirect("mensaje_exito.jsp");
    }
    else
    {
        response.sendRedirect("mensaje_fallido2.jsp");
    }
%>





