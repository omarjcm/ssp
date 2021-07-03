<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="comunionBEAN" class="SSP.ComulgarPorPrimeraVez" scope="session"/>
<jsp:useBean id="ministroBEAN" class="SSP.Ministro" scope="page"/>

<%
    String id = request.getParameter("id");
    String tipo = request.getParameter("tipo");
%>

<html>
<head>
<title>Certificado de Primera Comunio&oacute;n</title>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../../../estilos/my_style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<form name="ninguno" method="get">
    <table width="72%" height="190"  border="0" align="center">
  <tr>
    <th scope="row">
        <table width="569"  border="0">
          <tr>
            <th width="27%" height="21" scope="col"><div align="left"><img src="../../../imagenes/logo_c.gif" width="232" height="93"></div></th>
            <th width="73%" scope="col"><div align="right">
              <h1 align="right"><strong>Certificado de Primera Comuni&oacute;n</strong></h1>
              </div></th>
          </tr>
          <tr>
            <th height="21" scope="col"><h3 align="left">&nbsp;</h3>            </th>
            <th scope="col"><h3 align="right">Guayaquil, 
            <script languaje="JavaScript">
                  var mydate=new Date()
                  var year=mydate.getYear()
                  if (year < 1000)
                  year+=1900
                  var day=mydate.getDay()
                  var month=mydate.getMonth()
                  var daym=mydate.getDate()
                  if (daym<10)
                  daym="0"+daym
                  var dayarray=new Array("Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado")
                  var montharray=new Array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre")
                  document.write("<small><font color=#000000 font-family: 'Verdana', Arial, Helvetica, sans-serif; font-size: small; text-decoration: underline;>"+dayarray[day]+" "+daym+" de "+montharray[month]+" del "+year+"</font></small>")
        </script>			
<%
    comunionBEAN.consultarDatosComunion(id);
    ministroBEAN.consultarMinistroPrincipal();
%>
	    </h3>
            <h3 align="right">&nbsp;</h3></th>
          </tr>
          <tr>
            <th height="306" scope="col"><h3 align="left">A&ntilde;o: 
            <% out.println(comunionBEAN.getanio_libro());%>
            <br>
Libro:
<% out.println(comunionBEAN.getnum_libro());%>
<br>
Folio:
<% out.println(comunionBEAN.getfolio_libro());%>
<br>
No:
<% out.println(comunionBEAN.getId_comunion());%>
</h3>
              <h3 align="left">&nbsp;</h3>
              <h3 align="left">&nbsp;</h3>
              <h3 align="left">&nbsp;</h3>
              <h3 align="left">&nbsp;</h3>
              <h3 align="left"><br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
              </h3></th>
            <th scope="col"><h3 align="left">  El suscrito 
             <% out.println(ministroBEAN.getDignidad()+" "+ministroBEAN.getNombre()+" "+ministroBEAN.getApellido());%>
             <br>
  CERTIFICA: en forma legal que, en el libro de Primera Comuni&oacute;n, consta lo siguiente:</h3>
              <h3 align="left">En la Iglesia de <% out.println(comunionBEAN.getlugar_comunion());%> el 
              <% out.println( String.valueOf(comunionBEAN.getFechaComunion()));%> 
              hizo la Primera Comuni&oacute;n 
              <% out.println(comunionBEAN.getcomulgado_nombre());%>
              <% 
               if (comunionBEAN.comulgado.getSexo())
                out.println("hijo");
               else
                out.println("hija");
              %>
              de
              <% out.println(comunionBEAN.getpadre_nombre()+" "+ comunionBEAN.getpadre_apellido());%>
              y de
              <% out.println(comunionBEAN.getmadre_nombre()+" "+ comunionBEAN.getmadre_apellido());%> 
              <% 
       if (comunionBEAN.comulgado.getSexo())
               out.println("nacido");
      else
               out.println("nacida");
%>            en 
              <% out.println(comunionBEAN.comulgado.getLugarNacimiento());%> 
              </h3>
              <h3 align="left">Ministro de Primera Comuni&oacute;n 
               <% out.println(comunionBEAN.ministro.getDignidad()+" "+comunionBEAN.ministro.getNombre()+" "+comunionBEAN.ministro.getApellido());%></h3>
              <h3 align="left">Fueron Padrinos de este sacramento el Sr.
              <% out.println(comunionBEAN.getpadrino_nombre()+" "+comunionBEAN.getpadrino_apellido());%>
              y la Sra.
              <% out.println(comunionBEAN.getmadrina_nombre()+" "+comunionBEAN.getmadrina_apellido());%>
              .</h3>
              <h3 align="left">Es fiel copia del original que reposa en nuestro archivo.</h3>
              <h3 align="center">LO CERTIFICO</h3>
            <h3 align="center">
            <% out.println(ministroBEAN.getDignidad()+" "+ministroBEAN.getNombre()+" "+ministroBEAN.getApellido());%>
            </h3></th>
          </tr>
        </table>
        </th>
  </tr>
  <tr>
    <th scope="row">
      <input name="btn_imprimir" type="button" id="btn_imprimir" value="Imprimir" onClick="javascript:window.print();">
      &nbsp;&nbsp;&nbsp;
      <input name="btn_cerrar" type="button" id="btn_cerrar" value=" Cerrar " onClick="javascript:window.close();">
    </th>
  </tr>
</table>
</form>
</body>
</html>