<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="SSP.*"%>
<%@ page import="java.util.LinkedList"%>

<jsp:useBean id = "ministroBEAN" class = "SSP.Ministro" scope="page"/>
<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>
<jsp:useBean id = "bautizoBEAN" class = "SSP.Bautizar" scope="session"/>
<jsp:useBean id = "solicitanteBEAN" class = "SSP.Solicitante" scope = "session"/>

<%
    String id = request.getParameter("id");
    String tipo = request.getParameter("tipo");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SSP - Modificar Acta de Bautizo</title>
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
                <img src="../../../imagenes/add.png" width="7" height="7"> <a href="../ingresar/bautismo.jsp?id=1">Ingresar Acta</a><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a href="../buscar/bautismo.jsp?id=1">Buscar Acta</a>			<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%
		if (uBEAN.esAdministrador()==true)
		{
%>
                <img src="../../../imagenes/add.png" width="8" height="7"> <a href="bautismo.jsp?id=1">Modificar Acta</a>			<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="8" height="7"> <a href="../anular/bautismo.jsp?id=1">Anular Acta</a>			<br>			
<%
		}
	}
%></td>
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
        <td width="512" height="40" valign="middle"><a href="../../../inicio/index.jsp">Inicio</a> &gt; Modificar Acta de Bautizo </td>
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
                <li><a href="../../../comunion/acta/modificar/comunion.jsp?id=1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Primera Comuni&oacute;n&nbsp;&nbsp;</a></li>
                <li><a href="../../../confirmacion/acta/modificar/confirmacion.jsp?id=1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirmaci&oacute;n&nbsp;&nbsp;</a></li>
                <li><a href="../../../matrimonio/acta/modificar/matrimonio.jsp?id=1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Matrimonio&nbsp;&nbsp;</a></li>
            </ul>
      <div id="container">
<%
    if ((id != null) && (id.compareTo("1") == 0)) 
    {
%>
        <form name="ninguno">
            <div id="titulo">MODIFICAR ACTA DE BAUTIZO</div>
            </a><br>
            <br>
            <fieldset>
                <legend>Elegir la forma de b&uacute;squeda</legend>
                <p>
                    <label class="buscar">
                        <input type="radio" name="Elegir forma de b&uacute;squeda" value="radio_btn_nombre_apellido" onClick="mostrarBusquedaPorNombreYApellido()">
                    Por nombre(s) y/o apellido(s)</label>
                </p>
                <p>
                    <label class="buscar">
                        <input type="radio" name="Elegir forma de b&uacute;squeda" value="radio_btn_fecha" onClick="mostrarBusquedaPorFecha()">
                    Por fecha</label>
                </p>
            </fieldset>
        </form>
        <form name="PorNombreApellido" method="post" action="bautismo_01BEAN.jsp">
            <div id="buscar_por_nombre_apellido">
                <table width="519" border="0">
                  <!--DWLayoutTable-->
                    <tr>
                    <td width="455">
                    <fieldset>
                        <legend>B&uacute;squeda por nombre(s) y apellido(s)</legend>
                        <p>
                            <label for="bautizado_nombre">Nombre(s): </label>
                            <input type="text" name="bautizado_nombre" id="bautizado_nombre" class="txt"/>
                        </p>
                        <p>
                            <label for="bautizado_apellido">Apellido(s): </label>
                            <input type="text" name="bautizado_apellido" id="bautizado_apellido" class="txt"/>
                        </p>
                    </fieldset>                    </td>
                    </tr>
                    <tr>
                      <td height="44"><div align="center">
                        <input name="btn_buscar_porNombreApellido" type="submit" id="btn_buscar_porNombreApellido" value="Buscar">
                      </div></td>
                    </tr>
                </table>
            </div>
        </form>
        <form name="PorFecha" method="post" action="bautismo_02BEAN.jsp">        
        <div id="buscar_por_fecha">
            <table width="501" border="0">
              <!--DWLayoutTable-->
              <tr>
                <td width="455">
                <fieldset>
                  <legend>B&uacute;squeda por fecha</legend>
                    <p>
                        <label for="fecha_bautizo">Fecha de Bautizo: </label>
                        <input name="fecha_bautizo" type="text" class="txt" id="fecha_bautizo"  value="aaaa-mm-dd" maxlength="10"/>
                        <button type="button" name="btn_fecha_bautizo" id="btn_fecha_bautizo" onclick="cal.select(document.PorFecha.fecha_bautizo,'btn_fecha_bautizo','yyyy-MM-dd'); return false;" title="cal.select(document.PorFecha.fecha_bautizo,'btn_fecha_bautizo','yyyy-MM-dd'); return false;"><img src="../../../imagenes/Calendar.gif" border="0"/></button>
                    </p>
                </fieldset>                </td>
              </tr>
              <tr>
                <td height="42"><div align="center">
                  <input name="btn_buscar_porFecha" type="submit" id="btn_buscar_porFecha" value="Buscar">
                </div></td>
              </tr>
            </table>
        </div>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>     
      </form>
<%
    } else if ((id != null && tipo != null) && (id.compareTo("2") == 0 && tipo.compareTo("1") == 0))
    {
%>
      <form name="Consultar">
          <div id="titulo">MODIFICAR ACTA DE BAUTIZO</div>
          <br>
          <br>
        <br>
          <table width="300" border="0">
              <tr>
                  <td>
                      <span id="titulo"><strong>Nombres y Apellidos</strong></span>                                  </td>
              </tr>
          <%
              solicitanteBEAN.setTipo("bautizado");
              SSP.Solicitante solicitante;
              LinkedList solicitanteList = solicitanteBEAN.listaDeSolicitantes();
              for (int i = 0; i < solicitanteList.size(); i++)
              {
                  solicitante = (SSP.Solicitante) solicitanteList.get(i);
                  out.println("<tr><td>");
          %>
                  <a href="bautismo.jsp?id=3&tipo=1&id_bautizado=<%=String.valueOf(solicitante.getIdSolicitante())%>">
                      <%out.print(solicitante.getNombre()+" "+solicitante.getApellido());%></a>
          <%
                  out.println("</td></tr>");
              }
          %>
          </table>
          <br>
          <p><a href="bautismo.jsp?id=1">OK</a></p>
      </form>
<%
    } else if ((id != null && tipo != null) && (id.compareTo("2") == 0 && tipo.compareTo("2") == 0))
    {
%>
      <form name="Consultar">
          <div id="titulo">MODIFICAR ACTA DE BAUTIZO</div>
          </span><br>
          <br>
        <br>
          <table width="300" border="0">
              <tr>
                  <td>
                  <span id="titulo"><strong>Nombres y Apellidos</strong></span>                                  </td>
              </tr>
              <%
              SSP.Solicitante bautizado;
              LinkedList bautizos = bautizoBEAN.generarBautizoFecha(bautizoBEAN.getfecha_bautizo(),"bautizo");
              for (int i = 0; i < bautizos.size(); i++)
              {
              bautizado = (SSP.Solicitante) bautizos.get(i);		
                          out.println("<tr><td>");
              %>
              <a href="bautismo.jsp?id=3&tipo=1&id_bautizado=<%=String.valueOf(bautizado.getIdSolicitante())%>">
              <%out.println(bautizado.getNombre() + " " + bautizado.getApellido());%></a>
              <%
                          out.println("</td></tr>");
              }
              %>
          </table>
          <br>
          <p><a href="bautismo.jsp?id=1">OK</a></p>
  </form>
<%
    } else if ((id != null) && (id.compareTo("3") == 0))
    {
        String id_bautizado = request.getParameter("id_bautizado");
        if (id_bautizado != null)
        {
            if (tipo != null)
                bautizoBEAN.bautizado.setIdSolici(id_bautizado);
            bautizoBEAN.consultarDatosBautizo(id_bautizado);
%>
      <form name="Bautizo" method="post" action="bautismoModificarBEAN.jsp">
        <div id="titulo">MODIFICAR ACTA DE BAUTIZO</div>
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
                    if(bautizoBEAN.getfecha_bautizo()!=null)out.println(bautizoBEAN.getfecha_bautizo());
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
        <input type="submit" name="Submit" value="    Ok    ">&nbsp;&nbsp;&nbsp;
        <input name="btn_cancelar" type="button" id="btn_cancelar" value="Cancelar">
      </form>
<%
	} else
            response.sendRedirect("bautismo.jsp?id=1");
    } else if ((id != null) && (id.compareTo("4") == 0)) {
%>
<table width="200" border="0">
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td width="64"><div align="center"><img src="../../../imagenes/dialog-information.png" width="48" height="48"></div></td>
    <td width="126"><div align="left">Se ha modificado el Acta de Bautizo con &eacute;xito.</div></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center"><a href="bautismo.jsp?id=1">OK</a></div></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
</table>
<%
    } else if ((id != null) && (id.compareTo("5") == 0)) {
%>
<table width="200" border="0">
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td width="64"><div align="center"><img src="../../../imagenes/dialog-error.png" width="48" height="48"></div></td>
    <td width="126"><div align="left">Lo siento pero no se ha modificado el Acta de Bautizo con &eacute;xito.</div></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center"><a href="bautismo.jsp?id=1">OK</a></div></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
</table>
<%
    } else
        response.sendRedirect("bautismo.jsp?id=1");
%>
      </div>      </td>
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