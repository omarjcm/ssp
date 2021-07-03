<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.* , java.sql.Date, SSP.*" errorPage="" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>
<jsp:useBean id = "registroBEAN" class = "SSP.Registro" scope = "session"/>

<h1>Total Egresos Interno</h1>
<%
//response.sendRedirect("bautismo.jsp?id=2&tipo=1");

String inicio = request.getParameter("fecha_anual_inicio");
String fin = request.getParameter("fecha_anual_fin");
Date fi = Date.valueOf(inicio);
Date ff = Date.valueOf(fin);

double total_eg_interno = registroBEAN.consultarTotalRegistroPorTipo(fi,ff,"Egreso Interno");

if(total_eg_interno > 0) {
    out.println(total_eg_interno); 

%> <br>
<%}           
else{
out.println(registroBEAN.getMensaje_error());
out.println(request.getParameter("fecha_anual_inicio"));
out.println( request.getParameter("fecha_anual_fin"));
}
%>


<h1>Egresos Internos</h1>
<%
//response.sendRedirect("bautismo.jsp?id=2&tipo=1");

inicio = request.getParameter("fecha_anual_inicio");
fin = request.getParameter("fecha_anual_fin");
fi = Date.valueOf(inicio);
ff = Date.valueOf(fin);

ArrayList egresoInterno = new ArrayList();

egresoInterno = registroBEAN.consultarRegistroPorTipo(fi,ff,"Egreso Interno");
Registro egresoInt = new Registro();
if(egresoInterno.size() > 0) {
    for(int i=0; i< egresoInterno.size(); i++) {
        egresoInt = (SSP.Registro) egresoInterno.get(i);
        out.println(egresoInt.descrip.getDescripcion() + " " + egresoInt.getValor()); %> <br>
<%}
}
else{
out.println(registroBEAN.getMensaje_error());
out.println(request.getParameter("fecha_anual_inicio"));
out.println( request.getParameter("fecha_anual_fin"));
}
%>

<h1>Total Egresos Externos</h1>
<%
//response.sendRedirect("bautismo.jsp?id=2&tipo=1");

inicio = request.getParameter("fecha_anual_inicio");
fin = request.getParameter("fecha_anual_fin");
fi = Date.valueOf(inicio);
ff = Date.valueOf(fin);

double total_eg_externo = registroBEAN.consultarTotalRegistroPorTipo(fi,ff,"Egreso Externo");

if(total_eg_externo > 0) {
    out.println(total_eg_externo); 

%> <br>
<%}           
else{
out.println(registroBEAN.getMensaje_error());
out.println(request.getParameter("fecha_anual_inicio"));
out.println( request.getParameter("fecha_anual_fin"));
}
%>

<h1>Egresos Externo</h1>
<%
//response.sendRedirect("bautismo.jsp?id=2&tipo=1");

inicio = request.getParameter("fecha_anual_inicio");
fin = request.getParameter("fecha_anual_fin");
fi = Date.valueOf(inicio);
ff = Date.valueOf(fin);

ArrayList egresoExterno = new ArrayList();

egresoExterno = registroBEAN.consultarRegistroPorTipo(fi,ff,"Egreso Externo");
Registro egresoExt = new Registro();
if(egresoExterno.size() > 0) {
    for(int i=0; i< egresoExterno.size(); i++) {
        egresoExt = (SSP.Registro) egresoExterno.get(i);
        out.println(egresoExt.descrip.getDescripcion() + " " + egresoExt.getValor()); %> <br>
<%}
}
else{
out.println(registroBEAN.getMensaje_error());
out.println(request.getParameter("fecha_anual_inicio"));
out.println( request.getParameter("fecha_anual_fin"));
}
%>

<h1>Total Ingresos</h1>
<%
//response.sendRedirect("bautismo.jsp?id=2&tipo=1");

inicio = request.getParameter("fecha_anual_inicio");
fin = request.getParameter("fecha_anual_fin");
fi = Date.valueOf(inicio);
ff = Date.valueOf(fin);

double total_ingreso = registroBEAN.consultarTotalRegistroPorTipo(fi,ff,"Ingreso");

if(total_ingreso > 0) {
    out.println(total_ingreso); 

%> <br>
<%}           
else{
out.println(registroBEAN.getMensaje_error());
out.println(request.getParameter("fecha_anual_inicio"));
out.println( request.getParameter("fecha_anual_fin"));
}
%>

<h1>Ingresos</h1>
<%
//response.sendRedirect("bautismo.jsp?id=2&tipo=1");

inicio = request.getParameter("fecha_anual_inicio");
fin = request.getParameter("fecha_anual_fin");
fi = Date.valueOf(inicio);
ff = Date.valueOf(fin);

ArrayList ingreso = new ArrayList();

ingreso = registroBEAN.consultarRegistroPorTipo(fi,ff,"Ingreso");
Registro ing = new Registro();
if(ingreso.size() > 0) {
    for(int i=0; i< ingreso.size(); i++) {
        ing = (SSP.Registro) ingreso.get(i);
        out.println(ing.descrip.getDescripcion() + " " + ing.getValor()); %> <br>
<%}
}
else{
out.println(registroBEAN.getMensaje_error());
out.println(request.getParameter("fecha_anual_inicio"));
out.println( request.getParameter("fecha_anual_fin"));
}
%>