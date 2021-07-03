<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "matrimonioBEAN" class = "SSP.Casar" scope = "session"/>
<jsp:useBean id="ministroBEAN" class="SSP.Ministro" scope="page" />

<%
String id_matrimonio = request.getParameter("id_matrimonio");

matrimonioBEAN.consultarMatrimonio(id_matrimonio);
ministroBEAN.consultarMinistroPrincipal();
%>
<html>
    <head>
        <title>Certificado de Matrimonio</title>
        
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
                    <strong>REGISTRO CIVIL:</strong>
                    <br><br>
                    Reg. Civ.: <% out.print(matrimonioBEAN.rc.getLugarInscripcion());%>
                    <br>
                    A&ntilde;o: <% out.print(matrimonioBEAN.rc.getAnio());%>
                    <br>
                    Tomo: <% out.print(matrimonioBEAN.rc.getTomo());%>
                    <br>
                    P&aacute;gina: <% out.print(matrimonioBEAN.rc.getFolio());%>
                    <br>
                    Acta: <% out.print(matrimonioBEAN.rc.getActa());%>
                </div>
                <div id="columnRight">
                    En el libro de MATRIMONIOS, N&ordm; <% out.print(matrimonioBEAN.re.getNumSacramento());%> 
                    Tomo <% out.print(matrimonioBEAN.re.getNumLibro());%> 
                    P&aacute;gina <% out.print(matrimonioBEAN.re.getFolioLibro());%> 
                    se encuentra registrado el MATRIMONIO ECLESI&Aacute;STICO del Se&ntilde;or 
                    <% out.print(matrimonioBEAN.esposo.getNombre()+" "+matrimonioBEAN.esposo.getApellido());%> 
                    con <% out.print(matrimonioBEAN.esposa.getNombre()+" "+matrimonioBEAN.esposa.getApellido());%> 
                    celebrado el d&iacute;a <% out.println(matrimonioBEAN.dia_matrimonio);%> del mes <% out.print(matrimonioBEAN.mes_matrimonio);%> del a&ntilde;o <% out.print(matrimonioBEAN.anio_matrimonio);%>.
                    <br><br>
                    Bendijo el MATRIMONIO EL PADRE 
                    <% out.print(matrimonioBEAN.ministro.getDignidad()+" "+matrimonioBEAN.ministro.getNombre()+" "+matrimonioBEAN.ministro.getApellido());%>.
                    <br><br>
                    Fueron testigos <% out.print(matrimonioBEAN.padrino.getNombre()+" "+matrimonioBEAN.padrino.getApellido());%>
                    y <% out.print(matrimonioBEAN.madrina.getNombre()+" "+matrimonioBEAN.madrina.getApellido());%>.
                    <br><br>
                    De lo cual doy fe.
                    <br><br>
                    <% out.println(ministroBEAN.getDignidad()+" "+ministroBEAN.getNombre()+" "+ministroBEAN.getApellido());%>
                </div>
            </div>
        </div>
    </body>
</html>
