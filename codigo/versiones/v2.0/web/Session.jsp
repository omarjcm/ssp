<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>

<jsp:useBean id = "cBEAN" class = "pkgSSP.ConexionDB"  scope = "session"/>
<jsp:useBean id = "uBEAN" class = "pkgSSP.Usuario" scope = "session"/>

<jsp:setProperty 
    name = "uBEAN" 
    property = "usuario" 
    value = '<%= request.getParameter("usuario") %>'/>
<jsp:setProperty 
    name = "uBEAN" 
    property = "clave" 
    value='<%= request.getParameter("clave") %>'/>

<%
    if(uBEAN.Administrador(uBEAN.getUsuario(),uBEAN.getClave()))
    {
        session.setAttribute("usuario",uBEAN.getUsuario());
        response.sendRedirect("menu_adm/adm_index.htm");
    }
    else
    {
        if(uBEAN.Secretaria(uBEAN.getUsuario(),uBEAN.getClave()))
        {
            session.setAttribute("usuario",uBEAN.getUsuario());
            response.sendRedirect("menu_sec/sec_index.htm");
        }
        else
        {
            response.sendRedirect("error/error.jsp");
        }
    }
%>