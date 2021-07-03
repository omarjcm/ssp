<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "matrimonioBEAN" class = "SSP.Casar" scope = "session"/>

<%
    String nom01 = request.getParameter("nom01");
    String ape01 = request.getParameter("ape01");
    String nom02 = request.getParameter("nom02");
    String ape02 = request.getParameter("ape02");
%>

<html>
<head>
<title>Certificado de Matrimonio</title>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../../../css/my_style.css" rel="stylesheet" type="text/css">
</head>

<body>
<%
    matrimonioBEAN.consultarMatrimonio(nom01, ape01, nom02, ape02);
    
    if(matrimonioBEAN.getIdMatrimonio()!=0){    
%>
<table width="72%" height="190"  border="0" align="center">
  <tr>
    <th scope="row"><form name="form1" method="post" action="">
        <table width="569"  border="0">
          <tr>
            <th width="27%" height="21" scope="col"><div align="left"><img src="../../../imagenes/logo_c.gif" width="187" height="86"></div></th>
            <th width="73%" scope="col"><div align="right">
              <h1 align="right"><strong>Certificado de Matrimonio </strong></h1>
              </div></th>
          </tr>
          <tr>
            <th height="53" scope="col"><h3 align="left">&nbsp;</h3>            </th>
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
			</h3>
            <h3 align="right">&nbsp;</h3></th>
          </tr>
          <tr>
            <th height="287" scope="col"><h3 align="left"><br>
              REGISTRO CIVIL:</h3>
              <h3 align="left"> Reg. Civ.
               <% out.println(matrimonioBEAN.rc.getLugarInscripcion());%>
              <br>
A&ntilde;o:
<% out.println(matrimonioBEAN.rc.getAnio());%>
<br>
Tomo:
<% out.println(matrimonioBEAN.rc.getTomo());%>
<br>
P&aacute;gina:
<% out.println(matrimonioBEAN.rc.getFolio());%>
<br>
Acta:
<% out.println(matrimonioBEAN.rc.getActa());%>
<br>

<br>

<br>
<br>
<br>
<br>
<br>
<br>
</h3>            </th>
            <th scope="col"><h3 align="left">En el libro de MATRIMONIOS, N&ordm; 
              <% out.println(matrimonioBEAN.re.getNumSacramento());%> Tomo <% out.println(matrimonioBEAN.re.getNumLibro());%>
              P&aacute;gina <% out.println(matrimonioBEAN.re.getFolioLibro());%>
              se encuentra registrado el MATRIMONIO ECLESI&Aacute;STICO del Se&ntilde;or 
              <% out.println(matrimonioBEAN.esposo.getNombre()+" "+matrimonioBEAN.esposo.getApellido());%>
              con 
              <% out.println(matrimonioBEAN.esposa.getNombre()+" "+matrimonioBEAN.esposa.getApellido());%>
              celebrado el d&iacute;a <% out.println(matrimonioBEAN.dia_matrimonio);%> del mes <% out.println(matrimonioBEAN.mes_matrimonio);%> del a&ntilde;o <% out.println(matrimonioBEAN.anio_matrimonio);%>.</h3>
              <h3 align="left">Bendijo el MATRIMONIO EL PADRE 
              <% out.println(matrimonioBEAN.ministro.getDignidad()+" "+matrimonioBEAN.ministro.getNombre()+" "+matrimonioBEAN.ministro.getApellido());%>.</h3>
              <h3 align="left">Fueron testigos 
              <% out.println(matrimonioBEAN.padrino.getNombre()+" "+matrimonioBEAN.padrino.getApellido());%>
              y
              <% out.println(matrimonioBEAN.madrina.getNombre()+" "+matrimonioBEAN.madrina.getApellido());%>.</h3>
              <h3 align="left">De lo cual doy fe.</h3>
              <h3 align="center"><% out.println(/*matrimonioBEAN.parroco.getCargo()+" "+matrimonioBEAN.parroco.getNombre()+" "+matrimonioBEAN.parroco.getApellido()*/);%>
              </h3>
            </th>
          </tr>
        </table>
        </form></th>
  </tr>
  <tr>
    <th scope="row">
      <input name="btn_imprimir" type="button" id="btn_imprimir" value="Imprimir">
      &nbsp;&nbsp;&nbsp;
      <input name="btn_cerrar" type="button" id="btn_cerrar" value=" Cerrar " onClick="javascript:window.close();">
	</th>
  </tr>
</table>
<% }
        else{
            out.println(matrimonioBEAN.getMensaje_error());
            out.println(request.getParameter("esposo_nombre"));
            out.println(request.getParameter("esposo_apellido"));
            out.println(request.getParameter("esposa_nombre"));
            out.println(request.getParameter("esposa_apellido"));
            }%>
</body>
</html>
