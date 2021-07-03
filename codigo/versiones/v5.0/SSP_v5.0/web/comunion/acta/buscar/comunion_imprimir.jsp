<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="comunionBEAN" class="SSP.ComulgarPorPrimeraVez" scope="session"/>
<jsp:useBean id="ministroBEAN" class="SSP.Ministro" scope="page"/>

<%
String id = request.getParameter("id");

comunionBEAN.consultarDatosComunion(id);
ministroBEAN.consultarMinistroPrincipal();
%>

<html>
    <head>
        <title>Certificado de Primera Comunio&oacute;n</title>
        
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
                    <div id="titulo_principal">Certificado de Primera Comuni&oacute;n</div>
                    <div id="fecha">
                        Guayaquil, <script languaje="JavaScript">document.write(dayarray[day]+" "+daym+" de "+montharray[month]+" del "+year);</script>
                    </div>
                </div>
            </div>
            <div id="middle">
                <div id="columnLeft">
                    A&ntilde;o: <%out.print(comunionBEAN.getanio_libro());%>
                    <br>
                    Libro: <%out.print(comunionBEAN.getnum_libro());%>
                    <br>
                    Folio: <% out.println(comunionBEAN.getfolio_libro());%>
                    <br>
                    No: <% out.println(comunionBEAN.getId_comunion());%>
                </div>
                <div id="columnRight">
                    El suscrito <% out.println(ministroBEAN.getDignidad()+" "+ministroBEAN.getNombre()+" "+ministroBEAN.getApellido());%>
                    <br><br>
                    CERTIFICA que, en el libro de Primera Comuni&oacute;n, consta lo siguiente:
                    <br><br>
                    En la <% out.println(comunionBEAN.getlugar_comunion());%> 
                    el <% out.println( String.valueOf(comunionBEAN.getFechaComunion()));%> 
                    hizo la Primera Comuni&oacute;n <% out.println(comunionBEAN.getcomulgado_nombre());%> 
                    <% if (comunionBEAN.comulgado.getSexo()) out.println("hijo"); else out.println("hija");%> 
                    de <% out.println(comunionBEAN.getpadre_nombre()+" "+ comunionBEAN.getpadre_apellido());%> 
                    y de <% out.println(comunionBEAN.getmadre_nombre()+" "+ comunionBEAN.getmadre_apellido());%> 
                    <% if (comunionBEAN.comulgado.getSexo()) out.println("nacido"); else out.println("nacida");%> 
                    en <% out.print(comunionBEAN.comulgado.getLugarNacimiento());%>.
                    <br><br>
                    Ministro de Primera Comuni&oacute;n <% out.print(comunionBEAN.ministro.getDignidad()+" "+comunionBEAN.ministro.getNombre()+" "+comunionBEAN.ministro.getApellido());%>.
                    <br><br>
                    Fueron Padrinos de este sacramento el Sr. <% out.print(comunionBEAN.getpadrino_nombre()+" "+comunionBEAN.getpadrino_apellido());%> 
                    y la Sra. <% out.print(comunionBEAN.getmadrina_nombre()+" "+comunionBEAN.getmadrina_apellido());%>.
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