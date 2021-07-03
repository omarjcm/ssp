<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>

<jsp:useBean id = "uBEAN" class = "pkgSSP.Usuario" scope="session"/>
<jsp:useBean id = "primeraComunionBEAN" class = "pkgSSP.Comulgar" scope="page"/>

<%-- DATOS DE REGISTROS EN EL ACTA --%>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="id_comunion"
    value="<%= request.getParameter("id_primeraComunion") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="anio"
    value="<%= request.getParameter("reg_acta_anio") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="num_libro"
    value="<%= request.getParameter("reg_acta_libro") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="folio"
    value="<%= request.getParameter("reg_acta_folio") %>"
/>

<%-- DATOS DE LA PARROQUIA --%>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="ministro_cna"
    value="<%= request.getParameter("ministro") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="dia_comulgar"
    value="<%= request.getParameter("dia_fecha_sacramento") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="mes_comulgar"
    value="<%= request.getParameter("mes_fecha_sacramento") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="anio_comulgar"
    value="<%= request.getParameter("anio_fecha_sacramento") %>"
/>

<%-- DATOS DEL BAUTIZADO --%>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="comulgado_nombre"
    value="<%= request.getParameter("solicitante_nombre") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="comulgado_apellido"
    value="<%= request.getParameter("solicitante_apellido") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="provincia_nombre"
    value="<%= request.getParameter("id_provincia") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="ciudad_nombre"
    value="<%= request.getParameter("id_ciudad") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="edad"
    value="<%= request.getParameter("edad") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="nivel"
    value="<%= request.getParameter("grado_curso") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="nameInstitucion"
    value="<%= request.getParameter("nombre_institucion") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="direccion"
    value="<%= request.getParameter("direccion") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="comulgado_sexo"
    value="<%= request.getParameter("solicitante_sexo") %>"
/>

<%-- DATOS DE LOS PADRES --%>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="padre_nombre"
    value="<%= request.getParameter("padre_nombre") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="padre_apellido"
    value="<%= request.getParameter("padre_apellido") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="madre_nombre"
    value="<%= request.getParameter("madre_nombre") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="madre_apellido"
    value="<%= request.getParameter("madre_apellido") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="estadoCivilPadres"
    value="<%= request.getParameter("estado_civil") %>"
/>

<%-- DATOS DE LOS PADRINOS --%>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="padrino_nombre"
    value="<%= request.getParameter("padrino_nombre") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="padrino_apellido"
    value="<%= request.getParameter("padrino_apellido") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="madrina_nombre"
    value="<%= request.getParameter("madrina_nombre") %>"
/>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="madrina_apellido"
    value="<%= request.getParameter("madrina_apellido") %>"
/>

<%-- OBSERVACIONES --%>
<jsp:setProperty
    name = "primeraComunionBEAN"
    property="observacion"
    value="<%= request.getParameter("observacion") %>"
/>


<%
    primeraComunionBEAN.comulgado.usuario.setId_usuario(uBEAN.getId_usuario());
    
    primeraComunionBEAN.padre.usuario.setId_usuario(uBEAN.getId_usuario());
    primeraComunionBEAN.madre.usuario.setId_usuario(uBEAN.getId_usuario());
    primeraComunionBEAN.padrino.usuario.setId_usuario(uBEAN.getId_usuario());
    primeraComunionBEAN.madrina.usuario.setId_usuario(uBEAN.getId_usuario());
    
    String valida= primeraComunionBEAN.INSERTAR_PRIMERA_COMUNION();
    if(valida.compareTo("TODO ESTA INGRESADO!!!!")==0)
        response.sendRedirect("mensaje_exito.jsp");
    else
        response.sendRedirect("mensaje_fallido.jsp");
%>





