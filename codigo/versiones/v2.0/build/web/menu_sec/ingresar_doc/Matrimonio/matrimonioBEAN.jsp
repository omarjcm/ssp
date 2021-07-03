<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>

<jsp:useBean id = "uBEAN" class = "pkgSSP.Usuario" scope="session"/>
<jsp:useBean id = "matrimonioBEAN" class = "pkgSSP.Casar" scope="page"/>

<%-- DATOS DE REGISTROS EN EL ACTA --%>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="id_matrimonio"
    value="<%= request.getParameter("id_matrimonio") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="anio"
    value="<%= request.getParameter("reg_acta_anio") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="num_libro"
    value="<%= request.getParameter("reg_acta_libro") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="folio"
    value="<%= request.getParameter("reg_acta_folio") %>"
/>

<%-- DATOS DE LA PARROQUIA --%>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="ministro_cna"
    value="<%= request.getParameter("id_ministro") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="dia_mat"
    value="<%= request.getParameter("dia_fecha_sacramento") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="mes_mat"
    value="<%= request.getParameter("mes_fecha_sacramento") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="anio_mat"
    value="<%= request.getParameter("anio_fecha_sacramento") %>"
/>

<%-- DATOS DE LOS ESPOSOS --%>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="novio_nombre"
    value="<%= request.getParameter("esposo_nombre") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="novio_apellido"
    value="<%= request.getParameter("esposo_apellido") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="novia_nombre"
    value="<%= request.getParameter("esposa_nombre") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="novia_apellido"
    value="<%= request.getParameter("esposa_apellido") %>"
/>

<%-- DATOS DE LOS PADRES DEL ESPOSO --%>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="paNovio_nombre"
    value="<%= request.getParameter("padre_esposo_nombre") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="paNovio_apellido"
    value="<%= request.getParameter("padre_esposo_apellido") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="maNovio_nombre"
    value="<%= request.getParameter("madre_esposo_nombre") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="maNovio_apellido"
    value="<%= request.getParameter("madre_esposo_apellido") %>"
/>

<%-- DATOS DE LOS PADRES DE LA ESPOSA --%>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="paNovia_nombre"
    value="<%= request.getParameter("padre_esposa_nombre") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="paNovia_apellido"
    value="<%= request.getParameter("padre_esposa_apellido") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="maNovia_nombre"
    value="<%= request.getParameter("madre_esposa_nombre") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="maNovia_apellido"
    value="<%= request.getParameter("madre_esposa_apellido") %>"
/>

<%-- DATOS DE LOS PADRINOS --%>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="padrino_nombre"
    value="<%= request.getParameter("padrino_nombre") %>"
/>
<jsp:setProperty
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
    value="<%= request.getParameter("rc_acta") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="rc_anio"
    value="<%= request.getParameter("rc_acta_anio") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="rc_tomo"
    value="<%= request.getParameter("rc_acta_tomo") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="rc_folio"
    value="<%= request.getParameter("rc_acta_folio") %>"
/>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="rc_lugar"
    value="<%= request.getParameter("rc_acta_lugar") %>"
/>

<%-- OBSERVACIONES --%>
<jsp:setProperty
    name = "matrimonioBEAN"
    property="observacion"
    value="<%= request.getParameter("observacion") %>"
/>


<%
   matrimonioBEAN.novia.usuario.setId_usuario(uBEAN.getId_usuario());
   matrimonioBEAN.novio.usuario.setId_usuario(uBEAN.getId_usuario());
   matrimonioBEAN.manovia.usuario.setId_usuario(uBEAN.getId_usuario());
   matrimonioBEAN.panovia.usuario.setId_usuario(uBEAN.getId_usuario());
   matrimonioBEAN.manovio.usuario.setId_usuario(uBEAN.getId_usuario());
   matrimonioBEAN.panovio.usuario.setId_usuario(uBEAN.getId_usuario());
   matrimonioBEAN.padrino.usuario.setId_usuario(uBEAN.getId_usuario());
   matrimonioBEAN.madrina.usuario.setId_usuario(uBEAN.getId_usuario());
  
   
  String valida= matrimonioBEAN.INSERTAR_MATRIMONIO();
    if(valida.compareTo("INGRESO TODO!!")==0)
        response.sendRedirect("mensaje_exito.jsp");
    else
        response.sendRedirect("mensaje_fallido.jsp");
%>
