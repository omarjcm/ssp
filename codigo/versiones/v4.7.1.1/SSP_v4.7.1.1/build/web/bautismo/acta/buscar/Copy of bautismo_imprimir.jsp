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
                        Guayaquil, 
                        <script languaje="JavaScript"> 
                            document.write(dayarray[day]+" "+daym+" de "+montharray[month]+" del "+year); 
                        </script>
                    </div>
                </div>
            </div>
            <div id="middle">
                <div id="columnLeft">
                </div>
                <div id="columnRight">
                </div>
            </div>
            <div id="footer">
            </div>
        </div>
    </body>
</html>