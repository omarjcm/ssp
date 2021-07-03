<%@ page contentType="text/html; charset=iso-8859-1" language="java" session="true"%>
<%@ page import="Sistfarm.*"%>
<%@ page import="javax.swing.*"%>
<html>
<jsp:useBean id="usuario" class="Sistfarm.Usuario"/>
<head>
<title>Ingreso de usuario</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%
	String login_usuario = "", clave = "";
	login_usuario=request.getParameter("txt_user");
	clave=request.getParameter("txt_pass");
	
	if (Usuario.existeUsuarioYContrasena(login_usuario,clave)){
		HttpSession sesionOk = request.getSession();
		sesionOk.setAttribute("txt_user",login_usuario);
		if (Usuario.esUsuarioAdministrador(login_usuario)){
			JOptionPane.showMessageDialog(null, "Bienvenido "+Usuario.obtenerNombreUsuario(login_usuario)+" al módulo de administrador","Mensaje del Sistema",JOptionPane.INFORMATION_MESSAGE);%>
			<jsp:forward page="PrincipalAdministrador.jsp"/><%
		}else{
			JOptionPane.showMessageDialog(null, "Bienvenido "+Usuario.obtenerNombreUsuario(login_usuario)+" al módulo de empleado","Mensaje del Sistema",JOptionPane.INFORMATION_MESSAGE);%>
			<jsp:forward page="PrincipalEmpleado.jsp"/><% 
		}
	}else{
		JOptionPane.showMessageDialog(null, "Problemas con el ingreso, Inténtelo de nuevo, Ingrese correctamente su usuario y contraseña","Mensaje del Sistema",JOptionPane.INFORMATION_MESSAGE);%>
		<jsp:forward page="Index.jsp" /><%
	}
%>
</body>
</html>
