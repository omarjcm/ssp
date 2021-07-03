<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id = "comuBEAN" class = "pkgSSP.Comulgar"  scope = "session"/>
<html>
<head>
<title>Certificado de Primera Comunio&oacute;n</title>

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
	    </h3>
            <h3 align="right">&nbsp;</h3></th>
          </tr>
          <tr>
            <th height="306" scope="col"><h3 align="left">A&ntilde;o: 
            <% out.println(comuBEAN.getAnio());%>
            <br>
Libro:
<% out.println(comuBEAN.getNum_libro());%>
<br>
Folio:
<% out.println(comuBEAN.getFolio());%>
<br>
No:
<% out.println(comuBEAN.getId_comunion());%>
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
             <% out.println(comuBEAN.parroco.getCargo()+" "+comuBEAN.parroco.getNombre()+" "+comuBEAN.parroco.getApellido());%>
             <br>
  CERTIFICA: en forma legal que, en el libro de Primera Comuni&oacute;n, consta lo siguiente:</h3>
              <h3 align="left">En la Iglesia de
              <% out.println(comuBEAN.getparroquia());%>
              el 
              <% out.println( String.valueOf((Date)comuBEAN.fecha_comunion));%> 
              hizo la Primera Comuni&oacute;n 
              <% out.println(comuBEAN.getcomulgado_nombre());%>
              <% 
               if (comuBEAN.comulgado.getSexo().compareTo("masculino") == 0)
                out.println("hijo");
               else
                out.println("hija");
              %>
              de
              <% out.println(comuBEAN.getpadre_nombre()+" "+ comuBEAN.getpadre_apellido());%>
              y de
              <% out.println(comuBEAN.getmadre_nombre()+" "+ comuBEAN.getmadre_apellido());%> 
              <% 
       if (comuBEAN.comulgado.getSexo().compareTo("masculino") == 0)
               out.println("nacido");
      else
               out.println("nacida");
%>            en 
              <% out.println(comuBEAN.comulgado.ciudad.getNombre());%> 
              
               <%// out.println( String.value.getministro_apellido()Of(comuBEAN.rc.getFecha_nacimineto());%>.
              </h3>
              <h3 align="left">Ministro de Primera Comuni&oacute;n 
               <% out.println(comuBEAN.ministro.getCargo()+" "+comuBEAN.ministro.getNombre()+" "+comuBEAN.ministro.getApellido());%>
              <h3 align="left">Fueron Padrinos de este sacramento el Sr.
              <% out.println(comuBEAN.getpadrino_nombre()+" "+comuBEAN.getpadrino_apellido());%>
              y la Sra.
              <% out.println(comuBEAN.getmadrina_nombre()+" "+comuBEAN.getmadrina_apellido());%>
              .</h3>
              <h3 align="left">Es fiel copia del original que reposa en nuestro archivo.</h3>
              <h3 align="center">LO CERTIFICO</h3>
            <h3 align="center">
            <% out.println(comuBEAN.parroco.getCargo()+" "+comuBEAN.parroco.getNombre()+" "+comuBEAN.parroco.getApellido());%>
            <h3 align="left">NOTA: El documento Primera Comunión se encuentra en estado NULO</h3>
            </h3></th>
          </tr>
        </table>
        </form></th>
  </tr>
  <tr>
    <th scope="row"><h4><a href="../../menu/adm_menu_PC.jsp"><br>
    Atr&aacute;s</a></h4></th>
  </tr>
</table>

</body>
</html>
