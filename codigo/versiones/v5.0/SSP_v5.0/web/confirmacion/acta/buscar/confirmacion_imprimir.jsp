<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "confirmacionBEAN" class = "SSP.Confirmar"  scope = "session"/>
<jsp:useBean id="ministroBEAN" class="SSP.Ministro" scope="page" />

<%
String id = request.getParameter("id");
String tipo = request.getParameter("tipo");

if (tipo!=null && tipo.compareTo("1")==0) {
    confirmacionBEAN.confirmado.setIdSolici(id);
}

confirmacionBEAN.consultarConfirmacion(Long.parseLong(id));
ministroBEAN.consultarMinistroPrincipal();
%>

<html>
    <head>
        <title>Certificado de Confirmaci&oacute;n</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <link href="../../../estilos/acta.css" rel="stylesheet" type="text/css">
        <script languaje="JavaScript">
		var mydate=new Date()
		var year=mydate.getYear()

		if (year < 1000)
			year+=1900

		var day=mydate.getDay()
		var month=mydate.getMonth()
		var daym=mydate.getDate()

		var dayarray=new Array("domingo","lunes","martes","mi&eacute;rcoles","jueves","viernes","s&aacute;bado")
		var montharray=new Array("enero","febrero","marzo","abril","mayo","junio","julio","agosto","septiembre","octubre","noviembre","diciembre")
        </script>
    </head>
    
    <body>
        <div id="frame">
            <div id="header">
                <div id="logo"></div>
                <div id="titulo">
                    <div id="titulo_principal">Certificado de Confirmaci&oacute;n</div>
                    <div id="fecha">
                        Guayaquil, <script languaje="JavaScript">document.write(dayarray[day]+" "+daym+" de "+montharray[month]+" del "+year);</script>
                    </div>
                </div>
            </div>
            <div id="middle">
                <div id="columnLeft">
                    A&ntilde;o: <% out.println(confirmacionBEAN.reg_eclesiastico.getAnioLibro());%>
                    <br>
                    Libro: <% out.println(confirmacionBEAN.reg_eclesiastico.getNumLibro());%>
                    <br>
                    Folio: <% out.println(confirmacionBEAN.reg_eclesiastico.getFolioLibro());%>
                    <br>
                    No: <% out.println(confirmacionBEAN.reg_eclesiastico.getNumSacramento());%>
                </div>
                <div id="columnRight">
                    El suscrito <% out.print(ministroBEAN.getDignidad()+" "+ministroBEAN.getNombre()+" "+ministroBEAN.getApellido());%>
                    <br><br>
                    CERTIFICA que, en el libro de Confirmaci&oacute;n, consta lo siguiente:
                    <br><br>
                    En la Iglesia de <% out.print(confirmacionBEAN.getLugarConfirmacion());%> 
                    el <% out.print(confirmacionBEAN.getFechaConfirmacion());%> 
                    se confirm&oacute; a <% out.print(confirmacionBEAN.confirmado.getNombre());%> 
                    <% if (confirmacionBEAN.confirmado.getSexo()) out.print("hijo"); else out.print("hija"); %> 
                    de <% out.print(confirmacionBEAN.padre.getNombre() +" "+ confirmacionBEAN.padre.getApellido());%> 
                    y de <% out.print(confirmacionBEAN.madre.getNombre() +" "+ confirmacionBEAN.madre.getApellido());%> 
                    <% if (confirmacionBEAN.confirmado.getSexo()) out.print("nacido"); else out.print("nacida"); %> 
                    en <% out.print(confirmacionBEAN.confirmado.getLugarNacimiento());%> 
                    el <% out.print(confirmacionBEAN.confirmado.getFechaNacimiento());%>.
                    <br><br>
                    Ministro de Confirmaci&oacute;n <% out.print(confirmacionBEAN.ministro.getDignidad()+" "+confirmacionBEAN.ministro.getNombre()+" "+confirmacionBEAN.ministro.getApellido());%>.
                    <br><br>
                    Fueron Padrinos de este sacramento el Sr. <% out.print(confirmacionBEAN.padrino.getNombre()+" "+confirmacionBEAN.padrino.getApellido());%> 
                    y la Sra. <% out.print(confirmacionBEAN.madrina.getNombre()+" "+confirmacionBEAN.madrina.getApellido());%>.
                    <br><br>
                    Es fiel copia del original que reposa en nuestro archivo.
                    <br><br>
                    LO CERTIFICO
                    <br><br>
                    <% out.println(ministroBEAN.getDignidad()+" "+ministroBEAN.getNombre()+" "+ministroBEAN.getApellido());%>
                </div>
            </div>
        </div>
    </body>
</html>