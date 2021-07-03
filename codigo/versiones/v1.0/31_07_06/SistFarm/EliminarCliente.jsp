<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" %>
<%@ page import="Sistfarm.*"%>
<html>
<jsp:useBean id="cliente" class="Sistfarm.Cliente"/>  
<head>
<title>Eliminación de cliente</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<form name="eliminacion" method="post" action="ValidarEliminacionCliente.jsp">
  <table width="984" border="1">
    <tr bgcolor="#3399FF">
      <td colspan="6"><div align="center"><font color="#000000" size="4" face="Tahoma"><strong>CLIENTES</strong></font></div></td>
    </tr>
    <tr bgcolor="#006699">
      <td width="20"></td>
      <td width="328">
        <div align="center"><font color="#ffffff" size="2" face="Tahoma"><strong>Nombre</strong></font></div></td>
      <td width="90">
        <div align="center"><font color="#ffffff" size="2" face="Tahoma"><strong>C&eacute;dula/RUC</strong></font></div></td>
      <td width="334">
        <div align="center"><font color="#ffffff" size="2" face="Tahoma"><strong>Direcci&oacute;n</strong></font></div></td>
      <td width="90">
        <div align="center"><font color="#ffffff" size="2" face="Tahoma"><strong>Tel&eacute;fono 1</strong></font></div></td>
      <td width="90"><div align="center"><font color="#ffffff" size="2" face="Tahoma"><strong>Tel&eacute;fono 2 </strong></font></div></td>
    </tr>
    <%
		LinkedList lstcl = Cliente.mostrarClientesOrdenadosPorNombre();
		if (lstcl.size()==0) out.print("<p><div align=center size=4 face=Tahoma><strong>NO EXISTE INFORMACI&Oacute;N DE CLIENTES</strong></font></div></p>");
		for (int i=0;i<lstcl.size();i++){
			cliente = (Cliente)lstcl.get(i);
			out.print("<tr>");
			out.print("<td width=20><div align=center><input name=opcion type=radio checked value="+cliente.getIdCliente()+"></div>");
			out.print("<td width=328><div align=center><size=2 face=Tahoma>"+cliente.getNombre()+"</font></div></td>");
			out.print("<td width=90><div align=center><size=2 face=Tahoma>"+cliente.getRucCedula()+"</font></div></td>");
			out.print("<td width=334><div align=center><size=2 face=Tahoma>"+cliente.getDireccion()+"</font></div></td>");
			if (cliente.getTelefono1()==null) out.print("<td width=90><div align=center><size=2 face=Tahoma>&nbsp;</font></div></td>");
			else out.print("<td width=90><div align=center><size=2 face=Tahoma>"+cliente.getTelefono1()+"</font></div></td>");
			if (cliente.getTelefono2()==null) out.print("<td width=90><div align=center><size=2 face=Tahoma>&nbsp;</font></div></td>");
			else out.print("<td width=90><div align=center><size=2 face=Tahoma>"+cliente.getTelefono2()+"</font></div></td>");
			out.print("</tr>");
		}
	%>
  </table>
  <%if (lstcl.size()!=0) out.print("<p><div align=center><font color=#000033 size=2 face=Tahoma, Arial><a href=javascript:document.eliminacion.submit();>Eliminar</a></font></p>");%>
  </div>
</form>
</body>
</html>
