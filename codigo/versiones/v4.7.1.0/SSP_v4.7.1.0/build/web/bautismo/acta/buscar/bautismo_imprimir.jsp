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
<link href="../../../estilos/my_style.css" rel="stylesheet" type="text/css">
</head>

<body>
<%
    if(bautizoBEAN.getIdBautizo()!=0){
%>
		
<table width="72%" height="190"  border="0" align="center">
  <tr>
    <th scope="row"><table width="614" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="18" height="107">&nbsp;</td>
        <td colspan="2" valign="top"><img src="../../../imagenes/logo_c.gif" width="232" height="93"></td>
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
          var dayarray=new Array("Domingo","Lunes","Martes","Mi&eacute;rcoles","Jueves","Viernes","S&aacute;bado")
          var montharray=new Array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre")
          document.write("<small><font color=#000000 font-family: 'Verdana', Arial, Helvetica, sans-serif; font-size: small; text-decoration: underline;>"+dayarray[day]+" "+daym+" de "+montharray[month]+" del "+year+"</font></small>")
        </script>
        </h5></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="315"></td>
        <td width="206" valign="top"><h5 align="left">No:
        <% out.println(bautizoBEAN.getre_num_sacramento());%>
        <br>
        A&ntilde;o:
        <% out.println(bautizoBEAN.getre_anio_libro());%>
        <br>
        Libro:
        <% out.println(bautizoBEAN.getre_num_libro());%>
        <br>
        Folio:
        <% out.println(bautizoBEAN.getre_folio_libro());%>
          </h5>
            <h5 align="left"> <strong>REGISTRO CIVIL:</strong></h5>
            <h5 align="left">A&ntilde;o:
                <%
              out.println(bautizoBEAN.getrc_anio());
            // out.println(bBEAN.getrc_anio());
          %>
                <br>
        Tomo:
        <% out.println(bautizoBEAN.getrc_tomo());%>
        <br>
        Acta:
        <% out.println(bautizoBEAN.getrc_acta());%>
        <br>
        Ciudad:
        <% out.println(bautizoBEAN.getrc_lugar());%>
            </h5>
            <h5 align="left"><strong>NOTA MARGINAL:<br>
                  <br>
                  <% if(bautizoBEAN.getObservacion() !=null) out.println(bautizoBEAN.getObservacion()); %>
                  <br>
          </strong></h5></td>
        <td colspan="2" valign="top"><h5 align="left">El infrascrito
               <% out.println(ministroBEAN.getDignidad()+" "+ministroBEAN.getNombre()+" "+ministroBEAN.getApellido());%>
                <br>
        CERTIFICA: en forma legal que, en el libro especial de Bautizos de esta Parroquia, se haya una Partida que copiada literalmente dice:</h5>
            <h5 align="left">En la Iglesia de
                <% out.println(bautizoBEAN.getlugar_bautizo());%>
        el
        <% out.println(String.valueOf(bautizoBEAN.getfecha_bautizo()));%>
        se bautiz&oacute; a
        <% out.println(bautizoBEAN.bautizado.getNombre());%>
        <% 
       if (bautizoBEAN.bautizado.getSexo())
               out.println("hijo");
      else
               out.println("hija");
%>
        <% 
       if (bautizoBEAN.bautizado.getSexo())
               out.println("legitimo");
      else
               out.println("legitima");
%>
        de
        <% out.println(bautizoBEAN.getpadre_nombre()+" "+bautizoBEAN.getpadre_apellido());%>
        y de
        <% out.println(bautizoBEAN.getmadre_nombre()+" "+bautizoBEAN.getmadre_apellido());%>
        <% 
       if (bautizoBEAN.bautizado.getSexo())
               out.println("nacido");
      else
               out.println("nacida");
%>
        en
        <% out.println(bautizoBEAN.getlugar_nacimiento());%>
        .</h5>
            <h5 align="left">Fueron Padrinos de este Bautismo el Sr.
                <% out.println(bautizoBEAN.getpadrino_nombre()+" "+bautizoBEAN.getpadrino_apellido());%>
        y la Sra.
        <% out.println(bautizoBEAN.getmadrina_nombre()+" "+bautizoBEAN.getmadrina_apellido());%>
        .</h5>
            <h5 align="left">Es fiel copia del original que reposa en nuestro archivo.</h5>
            <h5 align="center">LO CERTIFICO</h5>
            <h5 align="center">
              <% out.println(ministroBEAN.getDignidad()+" "+ministroBEAN.getNombre()+" "+ministroBEAN.getApellido());%>
        </h5>      </tr>
    </table></th>
  </tr>
  <tr>
    <th scope="row"><input name="btn_imprimir" type="button" id="btn_imprimir" value="Imprimir">&nbsp;&nbsp;&nbsp;
    <input name="btn_cerrar" type="button" id="btn_cerrar" value=" Cerrar " onClick="javascript:window.close();"></th>
  </tr>
</table>
<%
    } else {
        out.println(bautizoBEAN.getMensaje_error());
    }
%>
</body>
</html>