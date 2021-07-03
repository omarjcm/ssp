<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="SSP.*"%>
<%@ page import="java.util.LinkedList"%>

<jsp:useBean id = "ministroBEAN" class = "SSP.Ministro" scope="page"/>
<jsp:useBean id = "bautizoBEAN" class = "SSP.Bautizar" scope="session"/>

<html>
<head>
	<title>Acta de Bautizo</title>
        <link href="../../../estilos/formularios.css" type="text/css" rel=STYLESHEET>
        <link href="../../../calendario/calendar.css" type="text/css" rel=STYLESHEET>
        
        <script language="JavaScript" type="text/javascript" src="../../../inicio/cerrarSesion.js"></script>
        <script language="JavaScript" type="text/javascript" src="bautismoPreview.js"></script>
        <script language="JavaScript" type="text/javascript" src="formulario.js"></script>
        <SCRIPT language=JavaScript1.2 src="../../../calendario/calendar.js" type="text/javascript"></SCRIPT>
        <SCRIPT language=JavaScript1.2 src="../../../calendario/calendario.js" type="text/javascript"></SCRIPT>
        <SCRIPT language=JavaScript1.2 src="../../../calendario/calendar-es.js" type="text/javascript"></SCRIPT>
        <SCRIPT language=JavaScript1.2 src="../../../calendario/calendar-setup.js" type="text/javascript"></SCRIPT>
        <link href="../../../estilos/my_style.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="602" border="0" align="left" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="29" height="23">&nbsp;</td>
    <td width="541" align="center" valign="middle">
    <div class="titulo_principal">ACTA DE BAUTIZO</div>    </td>
    <td width="32">&nbsp;</td>
  </tr>
  
  <tr>
    <td height="200" rowspan="2">&nbsp;</td>
    <td height="312" valign="top">
      <form method="post" action="bautismoBEAN.jsp">
        <br>
        <div onclick="show('Parroquia')">
          <a href="#" onclick="return false">Datos de la Parroquia</a>
        </div>
        <div id="Parroquia">
        <fieldset>
            <p>
              <label for="id_ministro">Ministro: </label>
                <select name="id_ministro" id="id_ministro">
                <%
                   SSP.Ministro ministro;
                   LinkedList ministroList = ministroBEAN.listaDeMinistros();
                   for (int i = 0; i < ministroList.size(); i++)
                   {
                           ministro = (SSP.Ministro) ministroList.get(i);
                           if (bautizoBEAN.getid_ministro().compareTo(String.valueOf(ministro.getId_ministro()))==0)
                               out.println("<option selected value="+String.valueOf(ministro.getId_ministro())+">"
                                           +ministro.getDignidad()+" "+ministro.getNombre()+" "
                                           +ministro.getApellido()+"</option>");
                           else
                               out.println("<option value="+String.valueOf(ministro.getId_ministro())+">"
                                           +ministro.getDignidad()+" "+ministro.getNombre()+" "
                                           +ministro.getApellido()+"</option>");
                        }
                %>
                </select>
            </p>
            <p>
              <label for="lugar_bautizo">Lugar de Bautizo: </label>
            <input name="lugar_bautizo" type="text" id="lugar_bautizo" class="txt" value="<%
                if(bautizoBEAN.getlugar_bautizo()==null)
                    out.println("Parroquia Cristo Rey"); 
                else
                    out.println(bautizoBEAN.getlugar_bautizo());
                %>"/>
            </p>
            <p>
              <label for="fecha_bautizo">Fecha de Bautizo: </label>
              <input name="fecha_bautizo" type="text" id="fecha_bautizo" class="txt" value="<%
                    out.println(bautizoBEAN.getfecha_bautizo());
                %>"/>
              <button type="button" name="btn_fecha_bautizo" id="btn_fecha_bautizo" onMouseOver="mostrarCalendarioBautizo()"><img src="../../../imagenes/Calendar.gif" border="0"/></button>
            </p>
        </fieldset>
		</div>
        <br>
        <div onclick="show('Solicitante')">
          <a href="#name" onclick="return false">Datos del Bautizado</a>
        </div>
        <div id="Solicitante">
            <fieldset>
                <p>
                    <label for="bautizado_nombre">Nombre(s): </label>
                    <input type="text" name="bautizado_nombre" id="bautizado_nombre" class="txt" value="<%
                        if(bautizoBEAN.getbautizado_nombre() != null)
                            out.println(bautizoBEAN.getbautizado_nombre());
                    %>"/>
                </p>
                <p>
                    <label for="bautizado_apellido">Apellido(s): </label>
                    <input type="text" name="bautizado_apellido" id="bautizado_apellido" class="txt" value="<%
                        if(bautizoBEAN.getbautizado_apellido() != null)
                            out.println(bautizoBEAN.getbautizado_apellido());
                    %>"/>
                </p>
                <p>
                    <label for="id_sexo">Sexo: </label>
                    <select name="id_sexo" id="id_sexo">
                    <%
                        if (bautizoBEAN.getbautizado_sexo() != null)
                        {
                            if (bautizoBEAN.getbautizado_sexo().compareTo("0") == 0)
                            {
                                out.println("<option selected value=\"0\">Femenino</option>");
                                out.println("<option value=\"1\">Masculino</option>");
                            }
                            else
                            {
                                out.println("<option value=\"0\">Femenino</option>");
                                out.println("<option selected value=\"1\">Masculino</option>");
                            }
                        }
                        else
                        {
                            out.println("<option selected value=\"0\">Femenino</option>");
                            out.println("<option value=\"1\">Masculino</option>");
                        }
                    %>
                    </select>
                </p>
                <p>
                    <label for="lugar_nacimiento">Lugar de Nacimiento: </label>
                    <input name="lugar_nacimiento" type="text" class="txt" id="lugar_nacimiento" value="<%
                        if(bautizoBEAN.getlugar_nacimiento() != null)
                            out.println(bautizoBEAN.getlugar_nacimiento());
                        else
                            out.println("Guayaquil - Guayas");
                    %>"/>
                </p>
                <p>
                    <label for="fecha_nacimiento">Fecha de Nacimiento: </label>
                    <input name="fecha_nacimiento" type="text" class="txt" id="fecha_nacimiento" value="<%
                            out.println(bautizoBEAN.getfecha_nacimiento());
                     %>"/>
                    <button type="button" name="btn_fecha_nacimiento" id="btn_fecha_nacimiento" onMouseOver="mostrarCalendarioNacimiento()"><img src="../../../imagenes/Calendar.gif" border="0"/></button>
                </p>
            </fieldset>
        </div>
        <br>
        <div onclick="show('Padres')">
          <a href="#name" onclick="return false">Datos de los Padres</a>
        </div>
        <div id="Padres">
            <fieldset>
                <p>
                  <label for="padre_nombre">Nombre(s) del padre: </label>
                  <input type="text" name="padre_nombre" id="padre_nombre" class="txt" value="<%
                    if(bautizoBEAN.getpadre_nombre() != null)
                        out.println(bautizoBEAN.getpadre_nombre());
                  %>"/>
                </p>
                <p>
                  <label for="padre_apellido">Apellido(s) del padre: </label>
                  <input type="text" name="padre_apellido" id="padre_apellido" class="txt" value="<%
                    if(bautizoBEAN.getpadre_apellido() != null)
                        out.println(bautizoBEAN.getpadre_apellido());
                  %>"/>
                </p>
                <p>
                  <label for="madre_nombre">Nombre(s) de la madre: </label>
                  <input type="text" name="madre_nombre" id="madre_nombre" class="txt" value="<%
                    if(bautizoBEAN.getmadre_nombre() != null)
                        out.println(bautizoBEAN.getmadre_nombre());
                  %>"/>
                </p>
                <p>
                  <label for="madre_apellido">Apellido(s) de la madre: </label>
                  <input type="text" name="madre_apellido" id="madre_apellido" class="txt" value="<%
                    if(bautizoBEAN.getmadre_nombre() != null)
                        out.println(bautizoBEAN.getmadre_nombre());
                  %>"/>
                </p>
            </fieldset>
        </div>
        <br>
        <div onclick="show('Padrinos')">
          <a href="#name" onclick="return false">Datos de los Padrinos</a>
        </div>
        <div id="Padrinos">
            <fieldset>
                <p>
                  <label for="padrino_nombre">Nombre(s) del padrino: </label>
                  <input type="text" name="padrino_nombre" id="padrino_nombre" class="txt" value="<%
                    if(bautizoBEAN.getpadrino_nombre() != null)
                        out.println(bautizoBEAN.getpadrino_nombre());
                  %>"/>
                </p>
                <p>
                  <label for="padrino_apellido">Apellido(s) del padrino: </label>
                  <input type="text" name="padrino_apellido" id="padrino_apellido" class="txt" value="<%
                    if(bautizoBEAN.getpadrino_apellido() != null)
                        out.println(bautizoBEAN.getpadrino_apellido());
                  %>"/>
                </p>
                <p>
                  <label for="madrina_nombre">Nombre(s) de la madrina: </label>
                  <input type="text" name="madrina_nombre" id="madrina_nombre" class="txt" value="<%
                    if(bautizoBEAN.getmadrina_nombre() != null)
                        out.println(bautizoBEAN.getmadrina_nombre());
                  %>"/>
                </p>
                <p>
                  <label for="madrina_apellido">Apellido(s) de la madrina: </label>
                  <input type="text" name="madrina_apellido" id="madrina_apellido" class="txt" value="<%
                    if(bautizoBEAN.getmadrina_apellido() != null)
                        out.println(bautizoBEAN.getmadrina_apellido());
                  %>"/>
                </p>
            </fieldset>
        </div>
        <br>
        <div onclick="show('Registro_eclesiastico')">
          <a href="#name" onclick="return false">Datos del Registro Eclesi&aacute;stico</a>
        </div>
        <div id="Registro_eclesiastico">
            <fieldset>
                <p>
                  <label for="num_sacramento">No: </label>
                  <input type="text" name="num_sacramento" id="num_sacramento" class="txt" value="<%
                    if(bautizoBEAN.getre_num_sacramento() != null)
                        out.println(bautizoBEAN.getre_num_sacramento());
                  %>"/>
                </p>
                <p>
                  <label for="anio_libro">A&ntilde;o: </label>
                  <input name="anio_libro" type="text" id="anio_libro" onKeyUp="onlyNumbers(this);" maxlength="4" class="txt" value="<%
                    if(bautizoBEAN.getre_anio_libro() != null)
                        out.println(bautizoBEAN.getre_anio_libro());
                  %>"/>
                </p>
                <p>
                  <label for="num_libro">Libro: </label>
                  <input type="text" name="num_libro" id="num_libro" class="txt" value="<%
                    if(bautizoBEAN.getre_num_libro() != null)
                        out.println(bautizoBEAN.getre_num_libro());
                  %>"/>
                </p>
                <p>
                  <label for="folio_libro">Folio: </label>
                  <input name="folio_libro" type="text" id="folio_libro" onKeyUp="onlyNumbers(this);" class="txt" value="<%
                    if(bautizoBEAN.getre_folio_libro() != null)
                        out.println(bautizoBEAN.getre_folio_libro());
                  %>"/>
                </p>			
            </fieldset>
        </div>
        <br>
        <div onclick="show('Registro_civil')">
          <a href="#name" onclick="return false">Datos del Registro Civil</a>
        </div>
        <div id="Registro_civil">
            <fieldset>
                <p>
                  <label for="acta">Acta: </label>
                  <input type="text" name="acta" id="acta" class="txt" value="<%
                    if(bautizoBEAN.getrc_acta() != null)
                        out.println(bautizoBEAN.getrc_acta());
                  %>"/>
                </p>
                <p>
                  <label for="anio">A&ntilde;o: </label>
                  <input type="text" name="anio" id="anio" class="txt" value="<%
                    if(bautizoBEAN.getrc_anio() != null)
                        out.println(bautizoBEAN.getrc_anio());
                  %>"/>
                </p>
                <p>
                  <label for="tomo">Tomo: </label>
                  <input type="text" name="tomo" id="tomo" class="txt" value="<%
                    if(bautizoBEAN.getrc_tomo() != null)
                        out.println(bautizoBEAN.getrc_tomo());
                  %>"/>
                </p>
                <p>
                  <label for="folio">Folio: </label>
                  <input type="text" name="folio" id="folio" class="txt" value="<%
                    if(bautizoBEAN.getrc_folio() != null)
                        out.println(bautizoBEAN.getrc_folio());
                  %>"/>
                </p>
                <p>
                  <label for="lugar">Lugar: </label>
                  <input name="rc_lugar" type="text" class="txt" id="rc_lugar" value="<%
                    if(bautizoBEAN.getrc_lugar() != null)
                        out.println(bautizoBEAN.getrc_lugar());
                    else
                        out.println("Guayaquil - Guayas");
                  %>"/>
                </p>
            </fieldset>
        </div>
        <br>
        <div onclick="show('Observacion')">
          <a href="#name" onclick="return false">Observaci&oacute;n</a>
        </div>
        <div id="Observacion">
            <fieldset>
                <p align="center">
              <textarea name="observacion" cols="40" rows="4" id="observacion" class="txt" value="<%
                if(bautizoBEAN.getObservacion() != null)
                    out.println(bautizoBEAN.getObservacion());
              %>"></textarea>
                </p>
            </fieldset>
            <br>
        </div>
        <br>
        <br>
        <table width="500" border="0" align="center">
        <tr>
            <td align="center"><input type="submit" name="Submit" value="Guardar">&nbsp;
              &nbsp;&nbsp;&nbsp;
              <input name="Cancelar" type="reset" id="Cancelar" value="Cancelar"></td>
        </tr>
        </table>
        <br>
    </form></td>
    <td rowspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td height="30" colspan="3" align="center" valign="middle"background="../../../imagenes/spacer_down.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
  </tr>
</table>
</body>
</html>