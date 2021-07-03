<%@page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope="session"/>
<jsp:useBean id = "comunionBEAN" class = "SSP.ComulgarPorPrimeraVez" scope="page"/>

<%-- DATOS DE REGISTROS EN EL ACTA --%>
<jsp:setProperty
    name = "comunionBEAN"
    property="num_sacramento"
    value="<%= request.getParameter("num_sacramento") %>"
/>
<jsp:setProperty
    name = "comunionBEAN"
    property="anio_libro"
    value="<%= request.getParameter("anio_libro") %>"
/>
<jsp:setProperty
    name = "comunionBEAN"
    property="num_libro"
    value="<%= request.getParameter("num_libro") %>"
/>
<jsp:setProperty
    name = "comunionBEAN"
    property="folio_libro"
    value="<%= request.getParameter("folio_libro") %>"
/>

<%-- DATOS DE LA PARROQUIA --%>

<%-- DATOS DEL BAUTIZADO --%>
<jsp:setProperty
    name = "comunionBEAN"
    property="comulgado_nombre"
    value="<%= request.getParameter("comulgado_nombre") %>"
/>
<jsp:setProperty
    name = "comunionBEAN"
    property="comulgado_apellido"
    value="<%= request.getParameter("comulgado_apellido") %>"
/>
<jsp:setProperty
    name = "comunionBEAN"
    property="comulgado_sexo"
    value="<%= request.getParameter("id_sexo") %>"
/>
<jsp:setProperty
    name = "comunionBEAN"
    property="comulgado_edad"
    value="<%= request.getParameter("edad") %>"
/>
<jsp:setProperty
    name = "comunionBEAN"
    property="comulgado_grado"
    value="<%= request.getParameter("grado") %>"
/>
<jsp:setProperty
    name = "comunionBEAN"
    property="nombre_institucion"
    value="<%= request.getParameter("nombre_institucion") %>"
/>
<jsp:setProperty
    name = "comunionBEAN"
    property="comulgado_direccion"
    value="<%= request.getParameter("direccion") %>"
/>

<%-- DATOS DE LOS PADRES --%>
<jsp:setProperty
    name = "comunionBEAN"
    property="padre_nombre"
    value="<%= request.getParameter("padre_nombre") %>"
/>
<jsp:setProperty
    name = "comunionBEAN"
    property="padre_apellido"
    value="<%= request.getParameter("padre_apellido") %>"
/>
<jsp:setProperty
    name = "comunionBEAN"
    property="madre_nombre"
    value="<%= request.getParameter("madre_nombre") %>"
/>
<jsp:setProperty
    name = "comunionBEAN"
    property="madre_apellido"
    value="<%= request.getParameter("madre_apellido") %>"
/>
<jsp:setProperty
    name = "comunionBEAN"
    property="estado_civil_padres"
    value="<%= request.getParameter("estado_civil_padres") %>"
/>
<%-- DATOS DE LOS PADRINOS --%>
<jsp:setProperty
    name = "comunionBEAN"
    property="padrino_nombre"
    value="<%= request.getParameter("padrino_nombre") %>"
/>
<jsp:setProperty
    name = "comunionBEAN"
    property="padrino_apellido"
    value="<%= request.getParameter("padrino_apellido") %>"
/>
<jsp:setProperty
    name = "comunionBEAN"
    property="madrina_nombre"
    value="<%= request.getParameter("madrina_nombre") %>"
/>
<jsp:setProperty
    name = "comunionBEAN"
    property="madrina_apellido"
    value="<%= request.getParameter("madrina_apellido") %>"
/>


<%-- OBSERVACIONES --%>
<jsp:setProperty
    name = "comunionBEAN"
    property="observacion"
    value="<%= request.getParameter("observacion") %>"
/>

<%
  /*  if(bautizoBEAN.ingresarComunion()){
        response.sendRedirect("mensaje_exito.jsp"); 
    }
    else{
		out.println(bautizoBEAN.getMensaje_error());
        //response.sendRedirect("mensaje_fallido.jsp");     
    }*/
    
    out.println("paso");
%>



