<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="bautizoBEAN" class="SSP.Bautizar"  scope="session"/>
<jsp:useBean id="solicitanteBEAN" class="SSP.Solicitante" scope="session"/>
<jsp:useBean id="ministroBEAN" class="SSP.Ministro" scope="page"/>

<%
String id = request.getParameter("id");
String tipo = request.getParameter("tipo");

if (tipo!=null && tipo.compareTo("1")==0) {
    bautizoBEAN.bautizado.setIdSolici(id);
}

bautizoBEAN.consultarDatosBautizo(id);
ministroBEAN.consultarMinistroPrincipal();
%>

<html>
    <head>
        <title>Certificado de Bautismo</title>
        
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
                    <div id="titulo_principal">Certificado de Bautizo</div>
                    <div id="fecha">
                        Guayaquil, <script languaje="JavaScript">document.write(dayarray[day]+" "+daym+" de "+montharray[month]+" del "+year);</script>
                    </div>
                </div>
            </div>
            <div id="middle">
                <div id="columnLeft">
                    No: <% out.println(bautizoBEAN.getre_num_sacramento());%>
                    <br>
                    A&ntilde;o: <% out.println(bautizoBEAN.getre_anio_libro());%>
                    <br>
                    Libro: <% out.println(bautizoBEAN.getre_num_libro());%>
                    <br>
                    Folio: <% out.println(bautizoBEAN.getre_folio_libro());%>
                    <br><br>
                    <strong>REGISTRO CIVIL:</strong>
                    <br>
                    A&ntilde;o: <% out.println(bautizoBEAN.getrc_anio()); %>
                    <br>
                    Tomo: <% out.println(bautizoBEAN.getrc_tomo());%>
                    <br>
                    Acta: <% out.println(bautizoBEAN.getrc_acta());%>
                    <br>
                    Ciudad: <% out.println(bautizoBEAN.getrc_lugar());%>
                    <br><br>
                    <strong>NOTA MARGINAL:</strong>
                    <br>
                    <% if(bautizoBEAN.getObservacion() !=null) out.println(bautizoBEAN.getObservacion()); %>
                    <br>
                </div>
                <div id="columnRight">
                    <span>El suscrito</span> <% out.println(ministroBEAN.getDignidad()+" "+ministroBEAN.getNombre()+" "+ministroBEAN.getApellido());%>
                    <br><br>
                    CERTIFICA que, en el libro especial de Bautizos de esta Parroquia, se haya una Partida que copiada literalmente dice:
                    <br><br>
                    En la <%out.print(bautizoBEAN.getlugar_bautizo());%> 
                    el <%out.print(String.valueOf(bautizoBEAN.getfecha_bautizo()));%> 
                    se bautiz&oacute; a <%out.print(bautizoBEAN.bautizado.getNombre());%> 
                    <% if (bautizoBEAN.bautizado.getSexo()) out.print("hijo"); else out.print("hija"); %> 
                    <% if (bautizoBEAN.bautizado.getSexo()) out.print("legítimo"); else out.print("legítima"); %> 
                    de <% out.print(bautizoBEAN.getpadre_nombre()+" "+bautizoBEAN.getpadre_apellido());%> 
                    y de <% out.print(bautizoBEAN.getmadre_nombre()+" "+bautizoBEAN.getmadre_apellido());%> 
                    <% if (bautizoBEAN.bautizado.getSexo()) out.print("nacido"); else out.print("nacida"); %> 
                    en <%out.print(bautizoBEAN.getlugar_nacimiento());%>.
                    <br><br>
                    Fueron Padrinos de este Bautismo el Sr. <% out.print(bautizoBEAN.getpadrino_nombre()+" "+bautizoBEAN.getpadrino_apellido());%> y la Sra. <%out.print(bautizoBEAN.getmadrina_nombre()+" "+bautizoBEAN.getmadrina_apellido());%>.
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