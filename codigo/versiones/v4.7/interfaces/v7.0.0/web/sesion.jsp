<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="mensajes/mensaje_fallido.jsp" session="true"%>

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<jsp:setProperty 
    name = "uBEAN" 
    property = "usuario" 
    value = '<%= request.getParameter("usuario") %>'
/>
<jsp:setProperty 
    name = "uBEAN" 
    property = "contrasenia"
    value='<%= request.getParameter("contrasenia") %>'
/>

<%
    if(uBEAN.validarUsuario(uBEAN.getUsuario(), uBEAN.getContrasenia(),"administrador") )
    {
        response.sendRedirect("menu/index.jsp");
    }
    else
    {
        if(uBEAN.validarUsuario(uBEAN.getUsuario(), uBEAN.getContrasenia(),"secretario") )
        {
	        response.sendRedirect("menu/index.jsp");
        }
        else
        {
	        response.sendRedirect("mensajes/mensaje_fallido.jsp");
        }
    }
%>