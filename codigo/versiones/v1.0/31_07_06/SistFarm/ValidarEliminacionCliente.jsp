<%@ page contentType="text/html; charset=iso-8859-1"%>
<%@ page import="Sistfarm.*"%>
<%@ page import="javax.swing.*"%>
<html>
<jsp:useBean id="cliente" class="Sistfarm.Cliente"/>
<head>
<title>Eliminaci� de cliente</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%
	cliente.setIdCliente((Integer.valueOf(request.getParameter("opcion"))).intValue());
        if (Cliente.eliminarClientePorCodigo(cliente)){
		JOptionPane.showMessageDialog(null, "Eliminaci� exitosa","Mensaje del Sistema",JOptionPane.INFORMATION_MESSAGE);
		%><jsp:forward page="ConsultarCliente.jsp"/><%
	}else{ 
		JOptionPane.showMessageDialog(null, "Problemas con la eliminaci�, Int�telo de nuevo","Mensaje del Sistema",JOptionPane.INFORMATION_MESSAGE);
		%><jsp:forward page="EliminarCliente.jsp"/><%
	}
%>
</body>
</html>
