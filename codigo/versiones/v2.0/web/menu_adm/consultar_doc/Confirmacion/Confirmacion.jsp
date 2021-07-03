<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id = "confirBEAN" class = "pkgSSP.Confirmar"  scope = "session"/>

<html>
<head>
<title>Certificado de Confirmaci&oacute;n</title>

	
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
              <h1 align="right"><strong>Certificado de Confirmaci&oacute;n</strong></h1>
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
			
			</h3>
            <h3 align="right">&nbsp;</h3></th>
          </tr>
          <tr>
            <th height="306" scope="col"><h3 align="left">A&ntilde;o: 
              <% out.println(confirBEAN.getAnio_libro());%>
              <br>
  Libro: 
  <% out.println(confirBEAN.getNum_libro());%>
  <br>
  Folio: 
  <% out.println(confirBEAN.getFolio_libro());%>
  <br>
  No: 
  <% out.println(confirBEAN.getId_confirmacion());%>
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
              <% out.println(confirBEAN.parroco.getCargo()+" "+confirBEAN.parroco.getNombre()+" "+confirBEAN.parroco.getApellido());%>
              <br>
  CERTIFICA: en forma legal que, en el libro de Confirmaci&oacute;n, consta lo siguiente:</h3>
              <h3 align="left">En la Iglesia de  
                <% out.println(confirBEAN.getParroquia_nombre());%> 
              el 
              <% out.println(confirBEAN.f_confirmar);%> 
              se confirm&oacute; a 
              <% out.println(confirBEAN.confirmado.getNombre());%>
              <% 
       if (confirBEAN.confirmado.getSexo().compareTo("masculino") == 0)
               out.println("hijo");
      else
               out.println("hija");
%>
              de 
              <% out.println(confirBEAN.padre.getNombre() +" "+ confirBEAN.padre.getApellido());%>
              y de 
              <% out.println(confirBEAN.madre.getNombre() +" "+ confirBEAN.madre.getApellido());%> 
              <% 
       if (confirBEAN.confirmado.getSexo().compareTo("masculino") == 0)
               out.println("nacido");
      else
               out.println("nacida");
%> 
              en 
              <% out.println(confirBEAN.confirmado.ciudad.getNombre());%> 
              Provincia 
              <% out.println(confirBEAN.confirmado.ciudad.provincia.getNombre());%> 
              el 
              <% out.println(confirBEAN.f_nacimiento);%>
              .</h3>
              <h3 align="left">Ministro de Confirmaci&oacute;n 
                <% out.println(confirBEAN.ministro.getCargo()+" "+confirBEAN.ministro.getNombre()+" "+confirBEAN.ministro.getApellido());%>
                .</h3>
              <h3 align="left">Fueron Padrinos de este sacramento el Sr. 
                <% out.println(confirBEAN.padrino.getNombre()+" "+confirBEAN.padrino.getApellido());%>
              y la Sra. 
              <% out.println(confirBEAN.madrina.getNombre()+" "+confirBEAN.madrina.getApellido());%>
              .</h3>
              <h3 align="left">Es fiel copia del original que reposa en nuestro archivo.</h3>
              <h3 align="center">LO CERTIFICO</h3>
            <h3 align="center">
                <% out.println(confirBEAN.parroco.getCargo()+" "+confirBEAN.parroco.getNombre()+" "+confirBEAN.parroco.getApellido());%>
            </h3></th>
          </tr>
        </table>
        </form></th>
  </tr>
  <tr>
    <th scope="row"><h3><a href="consulta_c.jsp"><strong><br>
  Atr&aacute;s</strong></a></h3></th>
  </tr>
</table>

</body>
</html>
