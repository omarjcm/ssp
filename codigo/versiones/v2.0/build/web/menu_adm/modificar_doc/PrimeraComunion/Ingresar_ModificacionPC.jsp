<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>

<jsp:useBean id = "uBEAN" class = "pkgSSP.Usuario" scope="session"/>
<jsp:useBean id = "comuBEAN" class = "pkgSSP.Comulgar" scope="session"/>

<%-- DATOS DE REGISTROS EN EL ACTA --%>
<jsp:setProperty
    name = "comuBEAN"
    property="id_comunion"
    value="<%= request.getParameter("id_primeraComunion") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="anio"
    value="<%= request.getParameter("reg_acta_anio") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="num_libro"
    value="<%= request.getParameter("reg_acta_libro") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="folio"
    value="<%= request.getParameter("reg_acta_folio") %>"
/>

<%-- DATOS DE LA PARROQUIA--%> 
<jsp:setProperty
    name = "comuBEAN"
    property="ministro_cna"
    value="<%= request.getParameter("id_ministro") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="dia_comulgar"
    value="<%= request.getParameter("dia_fecha_sacramento") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="mes_comulgar"
    value="<%= request.getParameter("mes_fecha_sacramento") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="anio_comulgar"
    value="<%= request.getParameter("anio_fecha_sacramento") %>"
/>

<%-- DATOS DEL BAUTIZADO --%>
<jsp:setProperty
    name = "comuBEAN"
    property="comulgado_nombre"
    value="<%= request.getParameter("solicitante_nombre") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="comulgado_apellido"
    value="<%= request.getParameter("solicitante_apellido") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="provincia_nombre"
    value="<%= request.getParameter("id_provincia") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="ciudad_nombre"
    value="<%= request.getParameter("id_ciudad") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="edad"
    value="<%= request.getParameter("edad") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="nivel"
    value="<%= request.getParameter("grado_curso") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="nameInstitucion"
    value="<%= request.getParameter("nombre_institucion") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="direccion"
    value="<%= request.getParameter("direccion") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="comulgado_sexo"
    value="<%= request.getParameter("solicitante_sexo") %>"
/>

<%-- DATOS DE LOS PADRES --%>
<jsp:setProperty
    name = "comuBEAN"
    property="padre_nombre"
    value="<%= request.getParameter("padre_nombre") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="padre_apellido"
    value="<%= request.getParameter("padre_apellido") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="madre_nombre"
    value="<%= request.getParameter("madre_nombre") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="madre_apellido"
    value="<%= request.getParameter("madre_apellido") %>"
/>

<%-- DATOS DE LOS PADRINOS --%>
<jsp:setProperty
    name = "comuBEAN"
    property="padrino_nombre"
    value="<%= request.getParameter("padrino_nombre") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="padrino_apellido"
    value="<%= request.getParameter("padrino_apellido") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="madrina_nombre"
    value="<%= request.getParameter("madrina_nombre") %>"
/>
<jsp:setProperty
    name = "comuBEAN"
    property="madrina_apellido"
    value="<%= request.getParameter("madrina_apellido") %>"
/>

<%-- OBSERVACIONES --%>
<jsp:setProperty
    name = "comuBEAN"
    property="observacion"
    value="<%= request.getParameter("observacion") %>"
/>


<%
    comuBEAN.comulgado.usuario.setId_usuario(uBEAN.getId_usuario());
    
    comuBEAN.padre.usuario.setId_usuario(uBEAN.getId_usuario());
    comuBEAN.madre.usuario.setId_usuario(uBEAN.getId_usuario());
    comuBEAN.padrino.usuario.setId_usuario(uBEAN.getId_usuario());
    comuBEAN.madrina.usuario.setId_usuario(uBEAN.getId_usuario());
    
     
   String valida = comuBEAN.MODIFICAR_PRIMERACOMUNION();
   if(valida.compareTo("Todo esta Modificado!!!!")==0)
   {  
     response.sendRedirect("mensaje_exito.jsp");
   }
   else{
       response.sendRedirect("mensaje_fallido2.jsp");
   }
%>





