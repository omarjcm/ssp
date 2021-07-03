<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="SSP.*"%>
<%@ page import="java.util.LinkedList"%>

<jsp:useBean id = "ministroBEAN" class = "SSP.Ministro" scope="page"/>
<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>
<jsp:useBean id = "bautizoBEAN" class = "SSP.Bautizar" scope="session"/>

<%
    String id = request.getParameter("id");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SSP - Ingreso de Acta de Bautizo</title>
        <link href="formulario.css" rel="stylesheet" type="text/css">
        <link href="../../../estilos/tabs.css" type="text/css" rel=STYLESHEET>
        <link href="../../../estilos/estilos.css" type="text/css" rel=STYLESHEET>
        <link href="../../../estilos/my_style.css" type="text/css" rel=STYLESHEET>
        <link href="../../../estilos/tab_navigation.css" type="text/css" rel=STYLESHEET>
        <link href="../../../estilos/formularios.css" type="text/css" rel=STYLESHEET>
        
        <script language="JavaScript" type="text/javascript" src="../../../calendario/CalendarPopup.js"></script>
        <script language="JavaScript" type="text/javascript" src="../../../calendario/common.js"></script>		
        <script language="JavaScript" type="text/javascript" src="../../../inicio/cerrarSesion.js"></script>
        <script language="JavaScript" type="text/javascript" src="formulario.js"></script>
        <script type="text/javascript">
<%
    if ((id != null) && id.compareTo("1") == 0)
    {
%>
        window.onload = setObjects;
<%
    }
    else if ((id != null) && id.compareTo("2") == 0)
    {
%>
        window.onload = setup;
<%
    }
%>
        </script>
        <script type="text/javascript">
            var cal = new CalendarPopup();
            cal.showYearNavigation();
            cal.showYearNavigationInput();

			function onlyNumbers( el )
            {
                    var _number = el.value;
                    el.value = _number.replace(/\D/g,"");
            }

            function esDigito(caracter) {
                    return (caracter >= "0"  && caracter <= "9")
            }

            function esNumero(texto){
                    var i;
                    for ( i = 0; i < texto.length; i++ ){
                            if (!esDigito(texto.charAt(i))){
                                    return false
                            }
                    }
                    return true
            }

            function formatoCalendario( el )
            {
                    var _anio = el.value.substring(0,4);
                    var _number = el.value;
                    el.value = _number.replace(/\D/g,"");
            }
        </script>
    </head>
    <body>
<%
	if( uBEAN!=null && (uBEAN.esAdministrador()==true) || (uBEAN.esSecretario()==true) )
	{
%>	
    <table width="770" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td height="152" colspan="4"><img src="../../../imagenes/banner.png" width="805" height="150"></td>
      </tr>
      <tr>
        <td width="200" height="449" rowspan="3" valign="top"><br>
          <table width="187" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="187" height="45" background="../../../imagenes/documentacion.png">&nbsp;</td>
          </tr>
          <tr>
            <td  height="79" valign="top"background="../../../imagenes/contenido.png">
                <br>
<%
    if( (uBEAN.esAdministrador()==true) || (uBEAN.esSecretario()==true) )
    {
%>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a href="bautismo.jsp?id=1">Ingresar Acta</a><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a href="../buscar/bautismo.jsp?id=1">Buscar Acta</a>			<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <%
		if (uBEAN.esAdministrador()==true)
		{
%>
                <img src="../../../imagenes/add.png" width="8" height="7"> <a href="../modificar/bautismo.jsp?id=1">Modificar Acta</a>			<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="8" height="7"> <a href="../anular/bautismo.jsp?id=1">Anular Acta</a>			<br>			
                <%
		}
	}
%>
		  </td>
          </tr>
          <tr>
            <td width="188" height="8" background="../../../imagenes/abajo.png"></td>
          </tr>
        </table>
<%
	if (uBEAN.esAdministrador()==true)
	{
%>
		  <br>
          <table width="187" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="187" height="45" background="../../../imagenes/administracion.png">&nbsp;</td>
            </tr>
            <tr>
              <td  height="64" valign="top"background="../../../imagenes/contenido.png"><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="4" width="8" height="7"> <a href="../../../usuario/ingresar/usuario.jsp">Ingresar Usuario</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="2" width="8" height="7"> <a href="../../../inicio/index_temporal.jsp">Modificar Usuario</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="1" width="8" height="7"> <a href="../../../inicio/index_temporal.jsp">Eliminar Usuario</a> <br>              </td>
            </tr>
            <tr>
              <td width="189" height="8" background="../../../imagenes/abajo.png"></td>
            </tr>
          </table>
<%
	}
%>
		  <br>
		  <p>&nbsp;</p>
        <p>&nbsp;</p></td>
        <td width="512" height="40" valign="middle"><a href="../../../inicio/index.jsp">Inicio</a> &gt; Ingreso de Acta de Bautizo </td>
        <td width="36" rowspan="2" align="left" valign="middle">
		<form action="../../../inicio/cerrarSesion.jsp" method="post">
			<img src="../../../imagenes/gnome-shutdown.png" width="36,727" height="35,196" border="0" style="cursor:pointer;" onclick="cerrarSesion()">
		</form>		</td>
        <td width="31" rowspan="2" align="left" valign="middle">Salir</td>
      </tr>
      <tr>
        <td height="12" valign="middle">&nbsp;</td>
      </tr>
      <tr>
        <td height="372" colspan="3" align="center" valign="top"><table width="583" height="341" border="0">
      <tr>
        <td width="580" height="321" align="center" valign="top">			
            <ul id="tabnav">
                <li><a href="bautismo.jsp?id=1" class="active">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bautizo&nbsp;&nbsp;</a></li>
                <li><a href="../../../comunion/acta/ingresar/comunion.jsp?id=1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Primera Comuni&oacute;n&nbsp;&nbsp;</a></li>
                <li><a href="../../../confirmacion/acta/ingresar/confirmacion.jsp?id=1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirmaci&oacute;n&nbsp;&nbsp;</a></li>
                <li><a href="../../../matrimonio/acta/ingresar/matrimonio.jsp?id=1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Matrimonio&nbsp;&nbsp;</a></li>
            </ul>
      <div id="container">
<%
    if (id != null && id.compareTo("1") == 0)
    {
%>
      <form name="Bautizo" method="post" action="bautismoBEAN.jsp">
        <div id="titulo">INGRESO DE ACTA DE BAUTIZO</div><br><br><br>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <div id="parroquia">
            <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
            <tr>
            <td height="251" colspan="5" valign="top">
            <div id="titulo_paso">Paso 1 de 7</div>
            <fieldset>
                <legend>Datos de la Parroquia</legend>
                <p>
                    <label for="id_ministro">Ministro: </label>
                    <select name="id_ministro" id="id_ministro">
                        <%
                        SSP.Ministro ministro;
                        LinkedList ministroList = ministroBEAN.listaDeMinistros();
                        for (int i = 0; i < ministroList.size(); i++)
                        {
                        ministro = (SSP.Ministro) ministroList.get(i);
                        out.println("<option value="+String.valueOf(ministro.getId_ministro())+">"
                        +ministro.getDignidad()+" "+ministro.getNombre()+" "
                        +ministro.getApellido()+"</option>");
                        }
                        %>
                    </select>
                    <input name="btn_ministro" type="button" id="btn_ministro" value="Ingresar" onClick="mostrarMinistro()">
                </p>
                <p>
                    <label for="lugar_bautizo">Lugar de Bautizo: </label>
                    <input name="lugar_bautizo" type="text" class="txt" id="lugar_bautizo" value="Parroquia Cristo Rey"/>
                </p>
                <p>
                    <label for="fecha_bautizo">Fecha de Bautizo: </label>
                    <input name="fecha_bautizo" type="text" class="txt" id="fecha_bautizo"  value="aaaa-mm-dd" maxlength="10"/>
                    <button type="button" name="btn_fecha_bautizo" id="btn_fecha_bautizo" onclick="cal.select(document.Bautizo.fecha_bautizo,'btn_fecha_bautizo','yyyy-MM-dd'); return false;" title="cal.select(document.Bautizo.fecha_bautizo,'btn_fecha_bautizo','yyyy-MM-dd'); return false;"><img src="../../../imagenes/Calendar.gif" border="0"/></button>
                </p>
            </fieldset>            </td>
            </tr>
            <tr>
                <td width="10%" align="center">&nbsp;</td>
                <td width="10%" align="center">&nbsp;</td>
                <td>&nbsp;</td>
                <td width="10%" align="center"><a onclick="mostrarSolicitante()" style="cursor:pointer;"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
                <td width="10%" align="center" valign="middle"><div align="center">Paso Siguiente</div></td>
            </tr>
            </table>
            </div>
            
	<div id="solicitante">
            <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
            <tr>
            <td height="251" colspan="6" valign="top">
            <div id="titulo_paso">Paso 2 de 7</div>
                <fieldset>
                  <legend>Datos del Bautizado</legend>
                    <p>
                      <label for="bautizado_nombre">Nombre(s): </label>
                      <input type="text" name="bautizado_nombre" id="bautizado_nombre" class="txt"/>
                    </p>
                    <p>
                      <label for="bautizado_apellido">Apellido(s): </label>
                      <input type="text" name="bautizado_apellido" id="bautizado_apellido" class="txt"/>
                    </p>
                    <p>
                      <label for="id_sexo">Sexo: </label>
						<label ><input name="id_sexo" type="radio" value="0" checked> 
						Femenino</label>
						<label ><input name="id_sexo" type="radio" value="1"> Masculino</label>
                    </p>
                    <p>
                      <label for="lugar_nacimiento">Lugar de Nacimiento: </label>
                      <input name="lugar_nacimiento" type="text" class="txt" id="lugar_nacimiento" value="Guayaquil - Guayas"/>
                    </p>
                    <p>
                      <label for="fecha_nacimiento">Fecha de Nacimiento: </label>
                      <input name="fecha_nacimiento" type="text" class="txt" id="fecha_nacimiento" value="aaaa-mm-dd"/>
                      <button type="button" name="btn_fecha_nacimiento" id="btn_fecha_nacimiento" onclick="cal.select(document.Bautizo.fecha_nacimiento,'btn_fecha_nacimiento','yyyy-MM-dd'); return false;" title="cal.select(document.Bautizo.fecha_nacimiento,'btn_fecha_nacimiento','yyyy-MM-dd'); return false;"><img src="../../../imagenes/Calendar.gif" border="0"/></button>
                    </p>
                </fieldset>            </td>
            </tr>
            <tr>
                <td width="10%" align="center" valign="middle"><div align="center">Paso Anterior</div></td>
                <td width="10%" align="center"><a onclick="mostrarParroquia()" style="cursor:pointer;"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
                <td width="30%">&nbsp;</td>
                <td width="30%">&nbsp;</td>
                <td width="10%" align="center"><a onclick="mostrarPadres()" style="cursor:pointer;"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
                <td width="10%" align="center" valign="middle"><div align="center">Paso Siguiente</div></td>
            </tr>
            </table>
        </div>
            
        <div id="padres">
            <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
            <tr>
            <td height="251" colspan="6" valign="top">
            <div id="titulo_paso">Paso 3 de 7</div>
              <fieldset>
	      <legend>Datos de los Padres</legend>
                <p>
                  <label for="padre_nombre">Nombre(s) del padre: </label>
                  <input type="text" name="padre_nombre" id="padre_nombre" class="txt"/>
                </p>
                <p>
                  <label for="padre_apellido">Apellido(s) del padre: </label>
                  <input type="text" name="padre_apellido" id="padre_apellido" class="txt"/>
                </p>
                <p>
                  <label for="madre_nombre">Nombre(s) de la madre: </label>
                  <input type="text" name="madre_nombre" id="madre_nombre" class="txt"/>
                </p>
                <p>
                  <label for="madre_apellido">Apellido(s) de la madre: </label>
                  <input type="text" name="madre_apellido" id="madre_apellido" class="txt"/>
                </p>
            </fieldset>            </td>
            </tr>
            <tr>
                <td width="10%" align="center" valign="middle"><div align="center">Paso Anterior</div></td>
                <td width="10%" align="center"><a onclick="mostrarSolicitante()" style="cursor:pointer;"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
                <td width="30%">&nbsp;</td>
                <td width="30%">&nbsp;</td>
                <td width="10%" align="center"><a onclick="mostrarPadrinos()" style="cursor:pointer;"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
                <td width="10%" align="center" valign="middle"><div align="center">Paso Siguiente</div></td>
            </tr>
            </table>
        </div>
            
        <div id="padrinos">
            <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
            <tr>
            <td height="251" colspan="6" valign="top">
            <div id="titulo_paso">Paso 4 de 7</div>
		<fieldset>
			<legend>Datos de los Padrinos</legend>
                <p>
                  <label for="padrino_nombre">Nombre(s) del padrino: </label>
                  <input type="text" name="padrino_nombre" id="padrino_nombre" class="txt"/>
                </p>
                <p>
                  <label for="padrino_apellido">Apellido(s) del padrino: </label>
                  <input type="text" name="padrino_apellido" id="padrino_apellido" class="txt"/>
                </p>
                <p>
                  <label for="madrina_nombre">Nombre(s) de la madrina: </label>
                  <input type="text" name="madrina_nombre" id="madrina_nombre" class="txt"/>
                </p>
                <p>
                  <label for="madrina_apellido">Apellido(s) de la madrina: </label>
                  <input type="text" name="madrina_apellido" id="madrina_apellido" class="txt"/>
                </p>
		</fieldset>            </td>
            </tr>
            <tr>
                <td width="10%" align="center" valign="middle"><div align="center">Paso Anterior</div></td>
                <td width="10%" align="center"><a onclick="mostrarPadres()" style="cursor:pointer;"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
                <td width="30%">&nbsp;</td>
                <td width="30%">&nbsp;</td>
                <td width="10%" align="center"><a onclick="mostrarRegistroEclesiastico()" style="cursor:pointer;"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
                <td width="10%" align="center" valign="middle"><div align="center">Paso Siguiente</div></td>
            </tr>
            </table>
        </div>

        <div id="reg_eclesiastico">
          <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
            <tr>
            <td height="251" colspan="6" valign="top">
            <div id="titulo_paso">Paso 5 de 7</div>
            <fieldset>
            <legend>Registro Eclesi&aacute;stico</legend>
            <p>
              <label for="num_sacramento">No: </label>
              <input type="text" name="num_sacramento" id="num_sacramento" class="txt"/>
            </p>
            <p>
              <label for="anio_libro">A&ntilde;o: </label>
              <input type="text" name="anio_libro" id="anio_libro" class="txt" onKeyUp="onlyNumbers(this);" maxlength="4"/>
            </p>
            <p>
              <label for="num_libro">Libro: </label>
              <input type="text" name="num_libro" id="num_libro" class="txt"/>
            </p>
            <p>
              <label for="folio_libro">Folio: </label>
              <input type="text" name="folio_libro" id="folio_libro" class="txt" onKeyUp="onlyNumbers(this);"/>
            </p>	
            </fieldset>            </td>
            </tr>
            <tr>
                <td width="10%" align="center" valign="middle"><div align="center">Paso Anterior</div></td>
                <td width="10%" align="center"><a onclick="mostrarPadrinos()" style="cursor:pointer;"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
                <td width="30%">&nbsp;</td>
                <td width="30%">&nbsp;</td>
                <td width="10%" align="center"><a onclick="mostrarRegistroCivil()" style="cursor:pointer;"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
                <td width="10%" align="center" valign="middle"><div align="center">Paso Siguiente</div></td>
            </tr>
          </table>
        </div>
        
	<div id="reg_civil">
          <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
            <tr>
            <td height="251" colspan="6" valign="top">
            <div id="titulo_paso">Paso 6 de 7</div>
            <fieldset>
            <legend>Datos del Registro Civil</legend>
            <p>
              <label for="acta">Acta: </label>
              <input type="text" name="acta" id="acta" class="txt"/>
            </p>
            <p>
              <label for="anio">A&ntilde;o: </label>
              <input type="text" name="anio" id="anio" class="txt" onKeyUp="onlyNumbers(this);" maxlength="4"/>
            </p>
            <p>
              <label for="tomo">Tomo: </label>
              <input type="text" name="tomo" id="tomo" class="txt"/>
            </p>
            <p>
              <label for="folio">Folio: </label>
              <input type="text" name="folio" id="folio" class="txt" onKeyUp="onlyNumbers(this);"/>
            </p>
            <p>
              <label for="lugar">Lugar: </label>
              <input name="rc_lugar" type="text" class="txt" id="rc_lugar" value="Guayaquil - Guayas"/>
            </p>
            </fieldset>            </td>
            </tr>
            <tr>
                <td width="10%" align="center" valign="middle"><div align="center">Paso Anterior</div></td>
                <td width="10%" align="center"><a onclick="mostrarRegistroEclesiastico()" style="cursor:pointer;"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
                <td width="30%">&nbsp;</td>
                <td width="30%">&nbsp;</td>
                <td width="10%" align="center"><a onclick="mostrarObservacion()" style="cursor:pointer;"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
                <td width="10%" align="center" valign="middle"><div align="center">Finalizar</div></td>
            </tr>
          </table>
        </div>

        <div id="txt_observacion">
          <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
            <tr>
            <td height="251" colspan="6" valign="top">
			<div id="titulo_paso">Paso 7 de 7</div>
                <fieldset>
                <legend>Observaci&oacute;n</legend>
                <p align="center">
                  <textarea name="observacion" cols="40" rows="4" class="txt" id="observacion"></textarea>
                </p>
                </fieldset>            </td>
            </tr>
            <tr>
                <td width="10%" align="center" valign="middle"><div align="center">Paso Anterior</div></td>
                <td width="10%" align="center"><a onclick="mostrarRegistroCivil()" style="cursor:pointer;"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
                <td width="30%">&nbsp;</td>
                <td width="30%">&nbsp;</td>
                <td width="10%" align="center">&nbsp;</td>
                <td width="10%" align="center" valign="middle">&nbsp;</td>
            </tr>
          </table>
            <table width="500" border="0" align="center">
              <tr>
                <td align="center">
				  <input type="submit" name="Submit" value="Guardar">
				  &nbsp;&nbsp;&nbsp;
                  <input type="reset" name="Reset" value="Cancelar">                </td>
              </tr>
            </table>
          </div>
      </form>
<%
    } else if (id != null && id.compareTo("2") == 0) {
%>
      <form name="bautismo" method="post" action="bautismoIngresarBEAN.jsp">
        <div id="titulo">VERIFIQUE LOS DATOS A INGRESAR</div>
		<br>
		<br>
        <br>
        <div onclick="show('Parroquia')">
          <a href="#" onclick="return false">Datos de la Parroquia</a>        </div>
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
                    if(bautizoBEAN.getfecha_bautizo() != null) 
                        out.println(bautizoBEAN.getfecha_bautizo());
                %>"/> 
              <button type="button" name="btn_fecha_bautizo" id="btn_fecha_bautizo" onMouseOver="mostrarCalendarioBautizo()"> <img src="../../../imagenes/Calendar.gif" border="0"/></button>
            </p>
        </fieldset>
		</div>
        <br>
        <div onclick="show('Solicitante')">
          <a href="#name" onclick="return false">Datos del Bautizado</a>        </div>
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
                    <label ><input name="id_sexo" type="radio" value="0" <%if (bautizoBEAN.getbautizado_sexo().compareTo("0") == 0) out.println("checked");%>> Femenino</label>
                    <label ><input name="id_sexo" type="radio" value="1" <%if (bautizoBEAN.getbautizado_sexo().compareTo("1") == 0) out.println("checked");%>> Masculino</label>
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
                            if(bautizoBEAN.getfecha_nacimiento()!=null) out.println(bautizoBEAN.getfecha_nacimiento());
                     %>"/>
                    <button type="button" name="btn_fecha_nacimiento" id="btn_fecha_nacimiento" onMouseOver="mostrarCalendarioNacimiento()"><img src="../../../imagenes/Calendar.gif" border="0"/></button>
                </p>
            </fieldset>
        </div>
        <br>
        <div onclick="show('Padres')">
          <a href="#name" onclick="return false">Datos de los Padres</a>        </div>
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
                    if(bautizoBEAN.getmadre_apellido() != null)
                        out.println(bautizoBEAN.getmadre_apellido());
                  %>"/>
                </p>
            </fieldset>
        </div>
        <br>
        <div onclick="show('Padrinos')">
          <a href="#name" onclick="return false">Datos de los Padrinos</a>        </div>
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
          <a href="#name" onclick="return false">Datos del Registro Eclesi&aacute;stico</a>        </div>
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
          <a href="#name" onclick="return false">Datos del Registro Civil</a>        </div>
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
          <a href="#name" onclick="return false">Observaci&oacute;n</a>        </div>
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
        <input type="submit" name="btn_aceptar" value="    Ok    " onClick="validarIngreso();">&nbsp;&nbsp;&nbsp;
        <input name="btn_cancelar" type="button" id="btn_cancelar" value="Cancelar">
      </form>
<%
    } else if (id != null && id.compareTo("3") == 0) {
%>
    <table width="200" border="0">
      <tr>
        <td colspan="2">&nbsp;</td>
        </tr>
      <tr>
        <td width="64"><div align="center"><img src="../../../imagenes/dialog-information.png" width="48" height="48"></div></td>
        <td width="126"><div align="left">Se ha ingresado el Acta de Bautizo con &eacute;xito.  </div></td>
      </tr>
      <tr>
        <td colspan="2"><div align="center"><a href="bautismo.jsp?id=1">OK</a></div></td>
        </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        </tr>
    </table>
    <br>
<%
    } else if (id != null && id.compareTo("4") == 0) {
%>
<table width="200" border="0">
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td width="64"><div align="center"><img src="../../../imagenes/dialog-error.png" width="48" height="48"></div></td>
    <td width="126"><div align="left">Lo siento pero no se ha ingresado el Acta de Bautizo con &eacute;xito. </div></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center"><a href="bautismo.jsp?id=1">OK</a></div></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
</table><br>

<%
    } else {
        response.sendRedirect("bautismo.jsp?id=1");
    }
%>
      </div>

      <form name="Ministro" method="post" action="ministroBEAN.jsp">
          <div id="ministro">
          <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
            <tr>
            <td height="251" colspan="6" valign="top">
            <br>
            <fieldset>
                <legend>Ingresar Ministro</legend>
                <p>
                    <label for="id_ministro_dignidad">Dignidad: </label>
                    <select name="id_ministro_dignidad" id="id_ministro_dignidad">
                      <option value="0">P.</option>
                      <option value="1">Mons.</option>
                      <option value="2">Di&aacute;c.</option>
                    </select>
                </p>
                <p>
                    <label for="ministro_nombre">Nombre(s): </label>
                    <input type="text" name="ministro_nombre" id="ministro_nombre" class="txt"/>
                </p>
                <p>
                    <label for="ministro_apellido">Apellido(s): </label>
                    <input type="text" name="ministro_apellido" id="ministro_apellido" class="txt"/>
                </p>
            </fieldset>
            <br>
            <br>
            <table width="462" border="0" align="center">
              <tr>
                <td width="456" align="center">
                    <input type="button" name="btn_cancelar_ministro" value="Guardar"  onClick="ingresarMinistro()">
                    &nbsp;&nbsp;
                    <input type="button" name="btn_ingresar_ministro" value="Cancelar" onClick="ocultarMinistro()">                </td>
              </tr>
            </table>            </td>
            </tr>
            <tr>
                <td width="10%">&nbsp;</td>
                <td width="10%">&nbsp;</td>
                <td width="30%">&nbsp;</td>
                <td width="30%">&nbsp;</td>
                <td width="10%">&nbsp;</td>
                <td width="10%">&nbsp;</td>
            </tr>
          </table>
          </div>
      </form>
      
      </td>
      </tr>
      </table></td>
      </tr>
      <tr>
        <td height="14" colspan="4">&nbsp;</td>
      </tr>
    </table>
<%
}
%>	
   </body>
</html>