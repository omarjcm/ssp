<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<jsp:setProperty 
    name = "uBEAN" 
    property = "usuario" 
    value = '<%= request.getParameter("usuario") %>'/>
<jsp:setProperty 
    name = "uBEAN" 
    property = "contrasenia"
    value='<%= request.getParameter("contrasenia") %>'/>

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
            /*if(uBEAN.validarUsuario(uBEAN.getUsuario(), uBEAN.getContrasenia(),"contador") )
            {
	        response.sendRedirect("menu/index.jsp");
            }
            else{
                out.println(uBEAN.getMensaje_error());
                //response.sendRedirect("error/error.jsp");
            }*/
            out.println(uBEAN.getMensaje_error());
            //response.sendRedirect("error/error.jsp");
        }
    }
%>