<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>

<jsp:useBean id = "uBEAN" class = "pkgSSP.Usuario" scope="session"/>
<jsp:useBean id = "casarBEAN" class = "pkgSSP.Casar" scope="session"/>

<%-- DATOS DE REGISTROS EN EL ACTA --%>
<jsp:setProperty
    name = "casarBEAN"
    property="id_matrimonio"
    value="<%= request.getParameter("id_matrimonio") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="anio"
    value="<%= request.getParameter("reg_acta_anio") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="num_libro"
    value="<%= request.getParameter("reg_acta_libro") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="folio"
    value="<%= request.getParameter("reg_acta_folio") %>"
/>

<%-- DATOS DE LA PARROQUIA --%>
<jsp:setProperty
    name = "casarBEAN"
    property="ministro_cna"
    value="<%= request.getParameter("id_ministro") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="dia_mat"
    value="<%= request.getParameter("dia_fecha_sacramento") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="mes_mat"
    value="<%= request.getParameter("mes_fecha_sacramento") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="anio_mat"
    value="<%= request.getParameter("anio_fecha_sacramento") %>"
/>

<%-- DATOS DE LOS ESPOSOS --%>
<jsp:setProperty
    name = "casarBEAN"
    property="novio_nombre"
    value="<%= request.getParameter("novio_nombre") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="novio_apellido"
    value="<%= request.getParameter("novio_apellido") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="novia_nombre"
    value="<%= request.getParameter("novia_nombre") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="novia_apellido"
    value="<%= request.getParameter("novia_apellido") %>"
/>

<%-- DATOS DE LOS PADRES DEL ESPOSO --%>
<jsp:setProperty
    name = "casarBEAN"
    property="paNovio_nombre"
    value="<%= request.getParameter("padre_esposo_nombre") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="paNovio_apellido"
    value="<%= request.getParameter("padre_esposo_apellido") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="maNovio_nombre"
    value="<%= request.getParameter("madre_esposo_nombre") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="maNovio_apellido"
    value="<%= request.getParameter("madre_esposo_apellido") %>"
/>

<%-- DATOS DE LOS PADRES DE LA ESPOSA --%>
<jsp:setProperty
    name = "casarBEAN"
    property="paNovia_nombre"
    value="<%= request.getParameter("padre_esposa_nombre") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="paNovia_apellido"
    value="<%= request.getParameter("padre_esposa_apellido") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="maNovia_nombre"
    value="<%= request.getParameter("madre_esposa_nombre") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="maNovia_apellido"
    value="<%= request.getParameter("madre_esposa_apellido") %>"
/>

<%-- DATOS DE LOS PADRINOS --%>
<jsp:setProperty
    name = "casarBEAN"
    property="padrino_nombre"
    value="<%= request.getParameter("padrino_nombre") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="padrino_apellido"
    value="<%= request.getParameter("padrino_apellido") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="madrina_nombre"
    value="<%= request.getParameter("madrina_nombre") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="madrina_apellido"
    value="<%= request.getParameter("madrina_apellido") %>"
/>

<%-- DATOS DEL REGISTRO CIVIL --%>
<jsp:setProperty
    name = "casarBEAN"
    property="rc_acta"
    value="<%= request.getParameter("rc_acta_no") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="rc_anio"
    value="<%= request.getParameter("rc_acta_anio") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="rc_tomo"
    value="<%= request.getParameter("rc_acta_tomo") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="rc_folio"
    value="<%= request.getParameter("rc_acta_folio") %>"
/>
<jsp:setProperty
    name = "casarBEAN"
    property="rc_lugar"
    value="<%= request.getParameter("rc_acta_lugar") %>"
/>

<%-- OBSERVACIONES --%>
<jsp:setProperty
    name = "casarBEAN"
    property="observacion"
    value="<%= request.getParameter("observacion") %>"
/>


<%
   casarBEAN.novia.usuario.setId_usuario(uBEAN.getId_usuario());
   casarBEAN.novio.usuario.setId_usuario(uBEAN.getId_usuario());
   
   casarBEAN.manovia.usuario.setId_usuario(uBEAN.getId_usuario());
   casarBEAN.panovia.usuario.setId_usuario(uBEAN.getId_usuario());
   casarBEAN.manovio.usuario.setId_usuario(uBEAN.getId_usuario());
   casarBEAN.panovio.usuario.setId_usuario(uBEAN.getId_usuario());
   casarBEAN.padrino.usuario.setId_usuario(uBEAN.getId_usuario());
   casarBEAN.madrina.usuario.setId_usuario(uBEAN.getId_usuario());
   
   String valida= casarBEAN.MODIFICAR_MATRIMONIO();
    if(valida.compareTo("Todo esta Modificado!!!!")==0){
        response.sendRedirect("mensaje_exito.jsp");
    }
    else{
        response.sendRedirect("mensaje_fallido2.jsp");
    }
%>
