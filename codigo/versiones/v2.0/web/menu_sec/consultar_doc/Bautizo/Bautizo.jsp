<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="bBEAN" class="pkgSSP.Bautizar"  scope="session"/>

<html>
<head>
<title>Certificado de Bautismo</title>

	

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../../css/my_style.css" rel="stylesheet" type="text/css">
<link href="../../../css/my_style.css" rel="stylesheet" type="text/css">
</head>

<body>
<br>
<table width="614" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="18" height="107">&nbsp;</td>
    <td colspan="2" valign="top"><img src="../../../images/logo_c.gif" width="232" height="93"></td>
    <td width="341" valign="top"><div align="center">
      <h3 align="right">&nbsp;</h3>
      <h3 align="right"><strong>Certificado de Bautismo</strong></h3>
    </div></td>
    <td width="20">&nbsp;</td>
  </tr>
  <tr>
    <td height="66">&nbsp;</td>
    <td colspan="2" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td valign="top"><h5 align="right"><br>
        Guayaquil,
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
    </h5></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="315"></td>
    <td width="206" valign="top"><h5 align="left">No:
          <% out.println(bBEAN.getnum_bautizo());%>
          <br>
  A&ntilde;o:
  <% out.println(bBEAN.getAnio_libro());%>
  <br>
  Libro:
  <% out.println(bBEAN.getNum_libro());%>
  <br>
  Folio:
  <% out.println(bBEAN.getFolio());%>
        </h5>      <h5 align="left"> <strong>REGISTRO CIVIL:</strong></h5>      <h5 align="left">A&ntilde;o:
          <%
              out.println(bBEAN.rc.getAnio());
            // out.println(bBEAN.getrc_anio());
          %>
          <br>
  Tomo:
  <% out.println(bBEAN.rc.getTomo());%>
  <br>
  Acta:
  <% out.println(bBEAN.rc.getActa());%>
  <br>
  Ciudad:
  <% out.println(bBEAN.rc.getLugar());%>
            </h5>      <h5 align="left"><strong>NOTA MARGINAL:<br>
            <br>
            <% if(bBEAN.getObservacion() !=null) out.println(bBEAN.getObservacion()); %>
            <br>
    </strong></h5></td>
    <td colspan="2" valign="top"><h5 align="left">El infrascrito
          <% out.println(bBEAN.ministro.getNombre()+" "+bBEAN.ministro.getApellido());%>
          <br>
  CERTIFICA: en forma legal que, en el libro especial de Bautizos de esta Parroquia, se haya una Partida que copiada literalmente dice:</h5>      <h5 align="left">En la Iglesia de
          <% out.println(bBEAN.getparroquia());%>
  el
  <% out.println(bBEAN.getFecha_bautizo());%>
  se bautiz&oacute; a
  <% out.println(bBEAN.getBautizado_nombre());%>
  <% 
       if (bBEAN.bautizado.getSexo().compareTo("masculino") == 0)
               out.println("hijo");
      else
               out.println("hija");
%>
  <% 
       if (bBEAN.bautizado.getSexo().compareTo("masculino") == 0)
               out.println("legitimo");
      else
               out.println("legitima");
%>
  de
  <% out.println(bBEAN.getpadre_nombre()+" "+bBEAN.getpadre_apellido());%>
  y de
  <% out.println(bBEAN.getmadre_nombre()+" "+bBEAN.getmadre_apellido());%>
  <% 
       if (bBEAN.bautizado.getSexo().compareTo("masculino") == 0)
               out.println("nacido");
      else
               out.println("nacida");
%>
  en
  <% out.println(bBEAN.bautizado.ciudad.getNombre());%>
  .</h5>      <h5 align="left">Fueron Padrinos de este Bautismo el Sr.
          <% out.println(bBEAN.getpadrino_nombre()+" "+bBEAN.getpadrino_apellido());%>
  y la Sra.
  <% out.println(bBEAN.getmadrina_nombre()+" "+bBEAN.getmadrina_apellido());%>
  .</h5>      <h5 align="left">Es fiel copia del original que reposa en nuestro archivo.</h5>      <h5 align="center">LO CERTIFICO</h5>      <h5 align="center">
        <% out.println(bBEAN.ministro.getNombre()+" "+bBEAN.ministro.getNombre());%>
    </h5></td>
    <td></td>
  </tr>
  <tr>
    <!--<td height="30"></td>
    <td></td>
    <td width="29"></td>
    <td>&nbsp;</td>
    <td></td>-->
     <th scope="row"><h4 align="center"><a href="../../menu/sec_menu_B.jsp"><br>
    Aceptar</a></h4></th>
  </tr>
</table>
</body>
</html>
