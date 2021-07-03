<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope="session"/>
<jsp:useBean id = "bautizoBEAN" class = "SSP.Bautizar" scope="page"/>

<%-- DATOS DE REGISTROS EN EL ACTA --%>
<jsp:setProperty
    name = "bautizoBEAN"
    property="re_num_sacramento"
    value="<%= request.getParameter("num_sacramento") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="re_anio_libro"
    value="<%= request.getParameter("anio_libro") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="re_num_libro"
    value="<%= request.getParameter("num_libro") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="re_folio_libro"
    value="<%= request.getParameter("folio_libro") %>"
/>

<%-- DATOS DE LA PARROQUIA --%>
<jsp:setProperty
    name = "bautizoBEAN"
    property="id_ministro"
    value="<%= request.getParameter("id_ministro") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="re_lugar_bautizo"
    value="<%= request.getParameter("lugar_bautizo") %>"
/>

<%-- DATOS DEL BAUTIZADO --%>
<jsp:setProperty
    name = "bautizoBEAN"
    property="bautizado_nombre"
    value="<%= request.getParameter("bautizado_nombre") %>"
/>
<jsp:setProperty
    name = "bautizoBEAN"
    property="bautizado_apellido"
    value="<%= request.getParameter("bautizado_apellido") %>"
/>

<jsp:setProperty
    name = "bautizoBEAN"
    property="bautizado_sexo"
    value="<%= request.getParameter("id_sexo") %>"
/>

<jsp:setProperty
    name = "bautizoBEAN"
    property="bautizado_lugar_nac"
    value="<%= request.getParameter("bautizado_lugar_nac") %>"
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
    value="<%= request.getParameter("lugar") %>"
/>

<%-- OBSERVACIONES --%>
<jsp:setProperty
    name = "bautizoBEAN"
    property="observacion"
    value="<%= request.getParameter("observacion") %>"
/>

<%
    if(bautizoBEAN.ingresarBautizo(uBEAN.getIdUsuario())){
        response.sendRedirect("mensaje_exito.jsp"); 
    }
    else{
		out.println(bautizoBEAN.getMensaje_error());
        //response.sendRedirect("mensaje_fallido.jsp");     
    }  
%>




