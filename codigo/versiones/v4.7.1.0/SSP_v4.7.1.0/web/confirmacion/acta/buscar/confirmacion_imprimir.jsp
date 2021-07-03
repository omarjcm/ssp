<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "confirmacionBEAN" class = "SSP.Confirmar"  scope = "session"/>
<jsp:useBean id="ministroBEAN" class="SSP.Ministro" scope="page" />

<%
    String id = request.getParameter("id");
    String tipo = request.getParameter("tipo");
%>

<html>
<head>
<title>Certificado de Confirmaci&oacute;n</title>

	
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../../../css/my_style.css" rel="stylesheet" type="text/css">
<link href="../../../estilos/my_style.css" rel="stylesheet" type="text/css">
</head>

<body>
    <% 
        if (tipo!=null && tipo.compareTo("1")==0) {
            confirmacionBEAN.confirmado.setIdSolici(id);
        }
        
        confirmacionBEAN.consultarConfirmacion(Long.parseLong(id));
        ministroBEAN.consultarMinistroPrincipal();
        
        if(confirmacionBEAN.getIdConfirmacion()!=0){
        %>
<br>
<table width="72%" height="190"  border="0" align="center">
  <tr>
    <th scope="row"><form name="confirmacion" method="get" action="">
        <table width="569"  border="0">
          <tr>
            <th width="27%" height="21" scope="col"><div align="left"><img src="../../../imagenes/logo_c.gif" width="187" height="86"></div></th>
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
              <% out.println(confirmacionBEAN.reg_eclesiastico.getAnioLibro());%>
              <br>
  Libro: 
  <% out.println(confirmacionBEAN.reg_eclesiastico.getNumLibro());%>
  <br>
  Folio: 
  <% out.println(confirmacionBEAN.reg_eclesiastico.getFolioLibro());%>
  <br>
  No: 
  <% out.println(confirmacionBEAN.reg_eclesiastico.getNumSacramento());%>
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
  CERTIFICA: en forma legal que, en el libro de Confirmaci&oacute;n, consta lo siguiente:</h3>
              <h3 align="left">En la Iglesia de  
                <% out.println(confirmacionBEAN.getLugarConfirmacion());%> 
              el 
              <% out.println(confirmacionBEAN.getFechaConfirmacion());%> 
              se confirm&oacute; a 
              <% out.println(confirmacionBEAN.confirmado.getNombre());%>
              <% 
       if (confirmacionBEAN.confirmado.getSexo())
               out.println("hijo");
      else
               out.println("hija");
%>
              de 
              <% out.println(confirmacionBEAN.padre.getNombre() +" "+ confirmacionBEAN.padre.getApellido());%>
              y de 
              <% out.println(confirmacionBEAN.madre.getNombre() +" "+ confirmacionBEAN.madre.getApellido());%> 
              <% 
       if (confirmacionBEAN.confirmado.getSexo())
               out.println("nacido");
      else
               out.println("nacida");
%> 
              en 
              <% out.println(confirmacionBEAN.confirmado.getLugarNacimiento());%> 
              el 
              <% out.println(confirmacionBEAN.confirmado.getFechaNacimiento());%>
              .</h3>
              <h3 align="left">Ministro de Confirmaci&oacute;n 
                <% out.println(confirmacionBEAN.ministro.getDignidad()+" "+confirmacionBEAN.ministro.getNombre()+" "+confirmacionBEAN.ministro.getApellido());%>
                .</h3>
              <h3 align="left">Fueron Padrinos de este sacramento el Sr. 
                <% out.println(confirmacionBEAN.padrino.getNombre()+" "+confirmacionBEAN.padrino.getApellido());%>
              y la Sra. 
              <% out.println(confirmacionBEAN.madrina.getNombre()+" "+confirmacionBEAN.madrina.getApellido());%>
              .</h3>
              <h3 align="left">Es fiel copia del original que reposa en nuestro archivo.</h3>
              <h3 align="center">LO CERTIFICO</h3>
            <h3 align="center">
                <% out.println(ministroBEAN.getDignidad()+" "+ministroBEAN.getNombre()+" "+ministroBEAN.getApellido());%>
            </h3></th>
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
<%
    }
        else{
            out.println(confirmacionBEAN.getMensaje_error());
        }
    %>
</body>
</html>