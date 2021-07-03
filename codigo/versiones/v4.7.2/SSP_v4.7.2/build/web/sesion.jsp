<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<jsp:setProperty 
    name = "uBEAN" 
    property = "usuario" 
    value = '<%= request.getParameter("user") %>'
/>
<jsp:setProperty 
    name = "uBEAN" 
    property = "contrasenia"
    value='<%= request.getParameter("password") %>'
/>

<%
    if(uBEAN.validarUsuario(uBEAN.getUsuario(), uBEAN.getContrasenia(),"administrador") )
    {
        response.sendRedirect("inicio/index.jsp");
    }
    else
    {
        if(uBEAN.validarUsuario(uBEAN.getUsuario(), uBEAN.getContrasenia(),"secretario") )
        {
            response.sendRedirect("inicio/index.jsp");
        }
    }
%>