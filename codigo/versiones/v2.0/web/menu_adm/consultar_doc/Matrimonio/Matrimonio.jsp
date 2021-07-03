<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id = "casarBEAN" class = "pkgSSP.Casar" scope = "session"/>
<html>
<head>
<title>Certificado de Matrimonio</title>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../../css/my_style.css" rel="stylesheet" type="text/css">
<link href="../../../css/my_style.css" rel="stylesheet" type="text/css">
</head>

<body>
<br>
<table width="72%" height="190"  border="0" align="center">
  <tr>
    <th scope="row"><form name="form1" method="post" action="">
        <table width="569"  border="0">
          <tr>
            <th width="27%" height="21" scope="col"><div align="left"><img src="../../../images/logo_c.gif" width="187" height="86"></div></th>
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
               <% out.println(casarBEAN.registroCivil.getLugar());%>
              <br>
A&ntilde;o:
<% out.println(casarBEAN.registroCivil.getAnio());%>
<br>
Tomo:
<% out.println(casarBEAN.registroCivil.getTomo());%>
<br>
P&aacute;gina:
<% out.println(casarBEAN.registroCivil.getFolio());%>
<br>
Acta:
<% out.println(casarBEAN.registroCivil.getActa());%>
<% out.println(casarBEAN.novia.getId_solicitante());%>
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
              <% out.println(casarBEAN.getId_matrimonio());%> Tomo <% out.println(casarBEAN.getNum_libro());%>
              P&aacute;gina <% out.println(casarBEAN.getFolio());%>
              se encuentra registrado el MATRIMONIO ECLESI&Aacute;STICO del Se&ntilde;or 
              <% out.println(casarBEAN.novio.getNombre()+" "+casarBEAN.novio.getApellido());%>
              con 
              <% out.println(casarBEAN.novia.getNombre()+" "+casarBEAN.novia.getApellido());%>
              celebrado el d&iacute;a <% out.println(casarBEAN.dia_mat);%> del mes <% out.println(casarBEAN.mes_mat);%> del a&ntilde;o <% out.println(casarBEAN.anio_mat);%>.</h3>
              <h3 align="left">Bendijo el MATRIMONIO EL PADRE 
              <% out.println(casarBEAN.ministro.getCargo()+" "+casarBEAN.ministro.getNombre()+" "+casarBEAN.ministro.getApellido());%>.</h3>
              <h3 align="left">Fueron testigos 
              <% out.println(casarBEAN.padrino.getNombre()+" "+casarBEAN.padrino.getApellido());%>
              y
              <% out.println(casarBEAN.madrina.getNombre()+" "+casarBEAN.madrina.getApellido());%>.</h3>
              <h3 align="left">De lo cual doy fe.</h3>
              <h3 align="center"><% out.println(casarBEAN.parroco.getCargo()+" "+casarBEAN.parroco.getNombre()+" "+casarBEAN.parroco.getApellido());%>
              </h3>
            </th>
          </tr>
        </table>
        </form></th>
  </tr>
  <tr>
    <th scope="row"><h3><a href="consulta_m.jsp"><br>
          <strong>Atr&aacute;s</strong></a></h3></th>
  </tr>
</table>

</body>
</html>
