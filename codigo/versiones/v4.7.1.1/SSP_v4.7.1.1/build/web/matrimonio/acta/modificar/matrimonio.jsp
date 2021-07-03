<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="mensaje_error.jsp" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="SSP.*"%>
<%@ page import="java.util.LinkedList"%>
<%@ page import="java.sql.Date"%>

<jsp:useBean id = "ministroBEAN" class = "SSP.Ministro" scope="page"/>
<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>
<jsp:useBean id = "matrimonioBEAN" class = "SSP.Casar" scope="session"/>

<%
    String id = request.getParameter("id");
    String tipo = request.getParameter("tipo");
    
    if (id != null) {
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SSP - Modificar Acta de Matrimonio</title>
        <link href="../../../estilos/tabs.css" type="text/css" rel=STYLESHEET>
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

			function onlyChars( el )
			{
					var _character = el.value;
					var char = _character.charAt(_character.length-1);
					if (esCaracterEspecial(char) || esDigito(char))
						el.value = _character.substring(0, _character.length-1);
			}
</script>
    </head>
    <body>
<%
	if( uBEAN!=null && uBEAN.esAdministrador() || uBEAN.esSecretario() ) {
%>
    <table width="770" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td height="152" colspan="4"><img src="../../../imagenes/banner.png" width="805" height="150"></td>
      </tr>
      <tr>
        <td width="200" height="449" rowspan="3" valign="top"><%
	if( uBEAN.esAdministrador() || uBEAN.esSecretario() ) {
%>
          <br>
          <table width="187" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="187" height="45" background="../../../imagenes/documentacion.png">&nbsp;</td>
          </tr>
          <tr>
            <td  height="79" valign="top"background="../../../imagenes/contenido.png">
                <br>
<%
    if( uBEAN.esAdministrador() || uBEAN.esSecretario() ) {
%>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../ingresar/matrimonio.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../ingresar/matrimonio.jsp?id=1', mensaje_02)\"");
                %> >Ingresar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../buscar/matrimonio.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../buscar/matrimonio.jsp?id=1', mensaje_02)\"");
                %> >Buscar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%
		if (uBEAN.esAdministrador())
		{
%>
                <img src="../../../imagenes/add.png" width="8" height="7"> <a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"matrimonio.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('matrimonio.jsp?id=1', mensaje_01)\"");
                %> >Modificar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="8" height="7"> <a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../anular/matrimonio.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../anular/matrimonio.jsp?id=1', mensaje_02)\"");
                %> >Anular Acta</a>
                <br>
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
	} if (uBEAN.esAdministrador()) {
%>
<table width="187" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="187" height="45" background="../../../imagenes/administracion.png">&nbsp;</td>
            </tr>
            <tr>
              <td  height="64" valign="top"background="../../../imagenes/contenido.png"><br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="4" width="8" height="7"> <a
              <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../../../usuario/ingresar/usuario.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../../../usuario/ingresar/usuario.jsp?id=1', mensaje_02)\"");
              %> >Ingresar Usuario</a>
              <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="2" width="8" height="7"> <a
              <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../../../usuario/modificar/usuario.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../../../usuario/modificar/usuario.jsp?id=1', mensaje_02)\"");
              %> >Modificar Usuario</a>
              <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="1" width="8" height="7"> <a
              <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../../../usuario/eliminar/usuario.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../../../usuario/eliminar/usuario.jsp?id=1', mensaje_02)\"");
              %> >Eliminar Usuario</a> <br>              </td>
            </tr>
            <tr>
              <td width="189" height="8" background="../../../imagenes/abajo.png"></td>
            </tr>
          </table>
<%
		    } if (uBEAN.esAdministrador() || uBEAN.esContador()) {
%>
<table width="187" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="187" height="45" background="../../../imagenes/contabilidad.png">&nbsp;</td>
  </tr>
  <tr>
    <td  height="52" valign="top"background="../../imagenes/contenido.png"><br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="4" width="8" height="7"> <a
      <%
            if (id.compareTo("1") == 0)
                out.println("href=\"../../../contabilidad/ingresar/contabilidad.jsp?id=1\"");
            else
                out.println("href=\"#\" onClick=\"cambiar('../../../contabilidad/ingresar/contabilidad.jsp?id=1', mensaje_02)\"");
      %> >Ingresar Registro</a> <br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="2" width="8" height="7"> <a
      <%
            if (id.compareTo("1") == 0)
                out.println("href=\"../../../contabilidad/generar/contabilidad.jsp?id=1\"");
            else
                out.println("href=\"#\" onClick=\"cambiar('../../../contabilidad/generar/contabilidad.jsp?id=1', mensaje_02)\"");
      %> >Generar Reportes</a> <br>
    </td>
  </tr>
  <tr>
    <td width="189" height="8" background="../../imagenes/abajo.png"></td>
  </tr>
</table>
<%
		            }
					%></td>
        <td width="512" height="40" valign="middle"><a
<%
    if (id.compareTo("1") == 0)
        out.println("href=\"../../../inicio/index.jsp\"");
    else
        out.println("href=\"#\" onClick=\"cambiar('../../../inicio/index.jsp', mensaje_02)\"");
%> >Inicio</a> &gt;
<% 
    if (uBEAN.esAdministrador())
        out.println("<span id=\"pista_administrador\">");
    else if (uBEAN.esSecretario())
        out.println("<span id=\"pista_secretario\">");
%>
        Modificar Acta de Matrimonio</span></td>
        <td width="36" rowspan="2" align="left" valign="middle">
		<form action="../../../inicio/cerrarSesion.jsp" method="post">
			<img src="../../../imagenes/gnome-shutdown.png" width="36,727" height="35,196" border="0" style="cursor:pointer;" onclick="cerrarSesion()" title="Haga click para salir.">
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
                <li><a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../../../bautismo/acta/modificar/bautismo.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../../../bautismo/acta/modificar/bautismo.jsp?id=1', mensaje_02)\"");
                %> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bautizo&nbsp;&nbsp;</a></li>
                <li><a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../../../comunion/acta/modificar/comunion.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../../../comunion/acta/modificar/comunion.jsp?id=1', mensaje_02)\"");
                %> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Primera Comuni&oacute;n&nbsp;&nbsp;</a></li>
                <li><a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../../../confirmacion/acta/modificar/confirmacion.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../../../confirmacion/acta/modificar/confirmacion.jsp?id=1', mensaje_02)\"");
                %> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirmaci&oacute;n&nbsp;&nbsp;</a></li>
                <li><a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"matrimonio.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('matrimonio.jsp?id=1', mensaje_01)\"");
                %> class="active">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Matrimonio&nbsp;&nbsp;</a></li>
            </ul>
      <div id="container">
<%
    if (id.compareTo("1") == 0) {
%>
    	<form name="ninguno">
            <div id="titulo">MODIFICAR ACTA DE MATRIMONIO </div><br>
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
    <form name="PorNombreApellido" method="post" action="matrimonio_01BEAN.jsp">
        <div id="buscar_por_nombre_apellido">
            <table width="519" border="0">
              <!--DWLayoutTable-->
                <tr>
                <td width="455">
                <fieldset>
                    <legend>B&uacute;squeda por nombre(s) y apellido(s)</legend>
                    <p>
                      <label for="esposo_nombre">Nombre(s) del esposo: </label>
                      <input type="text" name="esposo_nombre" id="esposo_nombre" onKeyPress="return onlyChars(this)" class="txt"/>
                    </p>
                    <p>
                      <label for="esposo_apellido">Apellido(s) del esposo: </label>
                      <input type="text" name="esposo_apellido" id="esposo_apellido" onKeyPress="return onlyChars(this)" class="txt"/>
                    </p>
                    <p>
                      <label for="esposa_nombre">Nombre(s) de la esposa: </label>
                      <input type="text" name="esposa_nombre" id="esposa_nombre" onKeyPress="return onlyChars(this)" class="txt"/>
                    </p>
                    <p>
                      <label for="esposa_apellido">Apellido(s) de la esposa: </label>
                      <input type="text" name="esposa_apellido" id="esposa_apellido" onKeyPress="return onlyChars(this)" class="txt"/>
                    </p>
                </fieldset>                                    </td>
                </tr>
                <tr>
                  <td height="44"><div align="center">
                    <input name="btn_buscar_porNombreApellido" type="submit" id="btn_buscar_porNombreApellido" value="Buscar">
                  </div></td>
                </tr>
            </table>
        </div>
    </form>
    <form name="PorFecha" method="post" action="matrimonio_02BEAN.jsp" onSubmit="buscarPorFecha(); return false;">        
    <div id="buscar_por_fecha">
        <table width="501" border="0">
          <!--DWLayoutTable-->
          <tr>
            <td width="455">
            <fieldset>
              <legend>B&uacute;squeda por fecha</legend>
                <p>
                <label for="fecha_matrimonio">Fecha de Matrimonio: </label>
                <input name="fecha_matrimonio" type="text" class="txt" id="fecha_matrimonio"  value="aaaa-mm-dd" maxlength="10"/>
                <button type="button" name="btn_fecha_matrimonio" id="btn_fecha_matrimonio" onclick="cal.select(document.PorFecha.fecha_matrimonio,'btn_fecha_matrimonio','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la fecha del Matrimonio."><img src="../../../imagenes/Calendar.gif" border="0"/></button>
                </p>
            </fieldset>                </td>
          </tr>
          <tr>
            <td height="42"><div align="center">
              <input name="btn_buscar_porFecha" type="button" id="btn_buscar_porFecha" value="Buscar" onClick="buscarPorFecha();">
            </div></td>
          </tr>
        </table>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>     
  </form>
<%
    } else if ((id != null && tipo != null) && (id.compareTo("2") == 0 && tipo.compareTo("1") == 0)) {
%>
    <form name="Consultar" >
      <div id="titulo">MODIFICAR ACTA DE MATRIMONIO</div><br><br>
      <table width="450" border="0" align="center" class="datatable">
          <tr>
              <td class="informe_02">
                  <span id="titulo"><strong>Nombres y Apellidos de los esposos</strong></span>              </td>
          </tr>
            <%
            SSP.Esposos esposos;
            LinkedList espososList = matrimonioBEAN.listaDeEsposos();
            for (int i = 0; i < espososList.size(); i++) {
                esposos = (SSP.Esposos) espososList.get(i);
                out.println("<tr><td> "+String.valueOf(i+1)+". ");
                out.println("<a href=\"matrimonio.jsp?id=3&id_matrimonio="+
                        String.valueOf(esposos.getId_matrimonio()) +"\">");
                out.println(esposos.getEsposo().getNombre()+" "+esposos.getEsposo().getApellido()+" y "+
                        esposos.getEsposa().getNombre()+" "+esposos.getEsposa().getApellido());
                out.println("</a>");
                out.println("</td></tr>");
            }
            %>
      </table>
      <br>
      <p>
        <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='matrimonio.jsp?id=1';">
      </p>
    </form>
<%
    } else if ((id != null && tipo != null) && (id.compareTo("2") == 0 && tipo.compareTo("2") == 0)) {
%>
    <form name="Consultar" >
      <div id="titulo">MODIFICAR ACTA DE MATRIMONIO</div><br><br>
      <table width="450" border="0" align="center" class="datatable">
          <tr>
              <td class="informe_02">
                  <span id="titulo"><strong>Nombres y Apellidos de los esposos</strong></span>              </td>
          </tr>
            <%
            SSP.Esposos esposos;
            LinkedList matrimonios = matrimonioBEAN.generarMatrimonioFecha(matrimonioBEAN.getfecha_matrimonio(),"matrimonio");
            
            for (int i = 0; i < matrimonios.size(); i++) {
                esposos = (SSP.Esposos) matrimonios.get(i);
                out.println("<tr><td> "+String.valueOf(i+1)+". ");
                out.println("<a href=\"matrimonio.jsp?id=3&id_matrimonio="+
                            String.valueOf(esposos.getId_matrimonio()) +"\">");
                out.println(esposos.getEsposo().getNombre()+" "+esposos.getEsposo().getApellido()+" y "+
                            esposos.getEsposa().getNombre()+" "+esposos.getEsposa().getApellido());
                out.println("</a>");
                out.println("</td></tr>");
            }
            %>
      </table>
      <br>
      <p>
        <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='matrimonio.jsp?id=1';">
      </p>
    </form>
<%    
    } else if ((id != null) && (id.compareTo("3") == 0)) {
        String id_matrimonio = request.getParameter("id_matrimonio");
        if (id_matrimonio != null) {
            matrimonioBEAN.consultarMatrimonio(id_matrimonio);
%>
	<form name="Matrimonio" method="post" action="matrimonioModificarBEAN.jsp">
        <div id="titulo">MODIFICAR ACTA DE MATRIMONIO</div>
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
                           if (matrimonioBEAN.getid_ministro().compareTo(String.valueOf(ministro.getId_ministro()))==0)
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
              <label for="fecha_matrimonio">Fecha de Matrimonio: </label>
              <input name="fecha_matrimonio" type="text" id="fecha_matrimonio" class="txt" value="<%
                    if(matrimonioBEAN.getfecha_matrimonio()!=null)
                        out.println( matrimonioBEAN.getfecha_matrimonio());
                %>"/> 
              <button type="button" name="btn_fecha_matrimonio" id="btn_fecha_matrimonio" onclick="cal.select(document.Matrimonio.fecha_matrimonio,'btn_fecha_matrimonio','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la fecha del Matrimonio."><img src="../../../imagenes/Calendar.gif" border="0"/></button>
            </p>
        </fieldset>
		</div>
        <br>
        <div onclick="show('Solicitante')">
          <a href="#name" onclick="return false">Datos de los Esposos</a>        </div>
        <div id="Solicitante">
            <fieldset>
                <p>
                    <label for="esposo_nombre">Nombre(s) del esposo: </label>
                    <input type="text" name="esposo_nombre" id="esposo_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                        if(matrimonioBEAN.getesposo_nombre() != null)
                            out.println(matrimonioBEAN.getesposo_nombre());
                    %>"/>
                </p>
                <p>
                    <label for="esposo_apellido">Apellido(s) del esposo: </label>
                    <input type="text" name="esposo_apellido" id="esposo_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                        if(matrimonioBEAN.getesposo_apellido() != null)
                            out.println(matrimonioBEAN.getesposo_apellido());
                    %>"/>
                </p>
                <p>
                    <label for="esposa_nombre">Nombre(s) del esposa: </label>
                    <input name="esposa_nombre" type="text" class="txt" id="esposa_nombre" onKeyPress="return onlyChars(this)" value="<%
                        if(matrimonioBEAN.getesposa_nombre() != null)
                            out.println(matrimonioBEAN.getesposa_nombre());
                        else
                            out.println("Guayaquil - Guayas");
                    %>"/>
                </p>
                <p>
                    <label for="esposa_apellido">Apellido(s) del esposa: </label>
                    <input name="esposa_apellido" type="text" class="txt" id="esposa_apellido" onKeyPress="return onlyChars(this)" value="<%
                            if(matrimonioBEAN.getesposa_apellido()!=null) out.println(matrimonioBEAN.getesposa_apellido());
                     %>"/>                    
                </p>
            </fieldset>
        </div>
        <br>
        <div onclick="show('Padres_Esposo')">
          <a href="#name" onclick="return false">Datos de los Padres del Esposo</a>        </div>
        <div id="Padres_Esposo">
            <fieldset>
                <p>
                  <label for="pa_esposo_nombre">Nombre(s) del padre: </label>
                  <input type="text" name="pa_esposo_nombre" id="pa_esposo_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                    if(matrimonioBEAN.getpa_esposo_nombre()  != null)
                        out.println(matrimonioBEAN.getpa_esposo_nombre() );
                  %>"/>
                </p>
                <p>
                  <label for="pa_esposo_apellido">Apellido(s) del padre: </label>
                  <input type="text" name="pa_esposo_apellido" id="pa_esposo_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                    if(matrimonioBEAN.getpa_esposo_apellido() != null)
                        out.println(matrimonioBEAN.getpa_esposo_apellido());
                  %>"/>
                </p>
                <p>
                  <label for="ma_esposo_nombre">Nombre(s) de la madre: </label>
                  <input type="text" name="ma_esposo_nombre" id="ma_esposo_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                    if(matrimonioBEAN.getma_esposo_nombre() != null)
                        out.println(matrimonioBEAN.getma_esposo_nombre());
                  %>"/>
                </p>
                <p>
                  <label for="ma_esposo_apellido">Apellido(s) de la madre: </label>
                  <input type="text" name="ma_esposo_apellido" id="ma_esposo_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                    if(matrimonioBEAN.getma_esposo_apellido() != null)
                        out.println(matrimonioBEAN.getma_esposo_apellido());
                  %>"/>
                </p>
            </fieldset>
        </div>
        <br>
        <div onclick="show('Padres_Esposa')">
          <a href="#name" onclick="return false">Datos de los Padres de la Esposa</a>        </div>
        <div id="Padres_Esposa">
            <fieldset>
                <p>
                  <label for="pa_esposa_nombre">Nombre(s) del padre: </label>
                  <input type="text" name="pa_esposa_nombre" id="pa_esposa_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                    if(matrimonioBEAN.getpa_esposa_nombre()  != null)
                        out.println(matrimonioBEAN.getpa_esposa_nombre() );
                  %>"/>
                </p>
                <p>
                  <label for="pa_esposa_apellido">Apellido(s) del padre: </label>
                  <input type="text" name="pa_esposa_apellido" id="pa_esposa_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                    if(matrimonioBEAN.getpa_esposa_apellido() != null)
                        out.println(matrimonioBEAN.getpa_esposa_apellido());
                  %>"/>
                </p>
                <p>
                  <label for="ma_esposa_nombre">Nombre(s) de la madre: </label>
                  <input type="text" name="ma_esposa_nombre" id="ma_esposa_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                    if(matrimonioBEAN.getma_esposa_nombre() != null)
                        out.println(matrimonioBEAN.getma_esposa_nombre());
                  %>"/>
                </p>
                <p>
                  <label for="ma_esposa_apellido">Apellido(s) de la madre: </label>
                  <input type="text" name="ma_esposa_apellido" id="ma_esposa_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                    if(matrimonioBEAN.getma_esposa_apellido() != null)
                        out.println(matrimonioBEAN.getma_esposa_apellido());
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
                  <input type="text" name="padrino_nombre" id="padrino_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                    if(matrimonioBEAN.getpadrino_nombre() != null)
                        out.println(matrimonioBEAN.getpadrino_nombre());
                  %>"/>
                </p>
                <p>
                  <label for="padrino_apellido">Apellido(s) del padrino: </label>
                  <input type="text" name="padrino_apellido" id="padrino_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                    if(matrimonioBEAN.getpadrino_apellido() != null)
                        out.println(matrimonioBEAN.getpadrino_apellido());
                  %>"/>
                </p>
                <p>
                  <label for="madrina_nombre">Nombre(s) de la madrina: </label>
                  <input type="text" name="madrina_nombre" id="madrina_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                    if(matrimonioBEAN.getmadrina_nombre() != null)
                        out.println(matrimonioBEAN.getmadrina_nombre());
                  %>"/>
                </p>
                <p>
                  <label for="madrina_apellido">Apellido(s) de la madrina: </label>
                  <input type="text" name="madrina_apellido" id="madrina_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                    if(matrimonioBEAN.getmadrina_apellido() != null)
                        out.println(matrimonioBEAN.getmadrina_apellido());
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
                    if(matrimonioBEAN.getre_num_sacramento() != null)
                        out.println(matrimonioBEAN.getre_num_sacramento());
                  %>"/>
                </p>
                <p>
                  <label for="anio_libro">A&ntilde;o: </label>
                  <input name="anio_libro" type="text" id="anio_libro" onKeyUp="onlyNumbers(this);" maxlength="4" class="txt" value="<%
                    if(matrimonioBEAN.getre_anio_libro() != null)
                        out.println(matrimonioBEAN.getre_anio_libro());
                  %>"/>
                </p>
                <p>
                  <label for="num_libro">Libro: </label>
                  <input type="text" name="num_libro" id="num_libro" class="txt" value="<%
                    if(matrimonioBEAN.getre_num_libro() != null)
                        out.println(matrimonioBEAN.getre_num_libro());
                  %>"/>
				  </p>
                <p>
                  <label for="folio_libro">Folio: </label>
                  <input name="folio_libro" type="text" id="folio_libro" onKeyUp="onlyNumbers(this);" class="txt" value="<%
                    if(matrimonioBEAN.getre_folio_libro() != null)
                        out.println(matrimonioBEAN.getre_folio_libro());
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
                  <label for="rc_fecha_inscripcion">Fecha de Inscripci&oacute;n: </label>
                  <input name="rc_fecha_inscripcion" type="text" class="txt" id="rc_fecha_inscripcion"  value="<%
                    if(matrimonioBEAN.rc.getfecha_inscripcion()!=null)
                        out.println( matrimonioBEAN.rc.getfecha_inscripcion() );
                  %>" maxlength="10"/>
                  <button type="button" name="btn_fecha_inscripcion" id="btn_fecha_inscripcion" onclick="cal.select(document.casar.rc_fecha_inscripcion,'btn_fecha_inscripcion','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la fecha de la inscripci&oacute;n del Matrimonio Civil."><img src="../../../imagenes/Calendar.gif" border="0"/></button>
                </p>
                <p>
                  <label for="acta">Acta: </label>
                  <input type="text" name="acta" id="acta" class="txt" value="<%
                    if(matrimonioBEAN.getrc_acta() != null)
                        out.println(matrimonioBEAN.getrc_acta());
                  %>"/>
                </p>
                <p>
                  <label for="anio">A&ntilde;o: </label>
                  <input type="text" name="anio" id="anio" onKeyUp="onlyNumbers(this);" class="txt" value="<%
                    if(matrimonioBEAN.getrc_anio() != null)
                        out.println(matrimonioBEAN.getrc_anio());
                  %>"/>
                </p>
                <p>
                  <label for="tomo">Tomo: </label>
                  <input type="text" name="tomo" id="tomo" class="txt" value="<%
                    if(matrimonioBEAN.getrc_tomo() != null)
                        out.println(matrimonioBEAN.getrc_tomo());
                  %>"/>
                </p>
                <p>
                  <label for="folio">Folio: </label>
                  <input type="text" name="folio" id="folio" onKeyUp="onlyNumbers(this);" class="txt" value="<%
                    if(matrimonioBEAN.getrc_folio() != null)
                        out.println(matrimonioBEAN.getrc_folio());
                  %>"/>
                </p>
                <p>
                  <label for="lugar">Lugar: </label>
                  <input name="rc_lugar" type="text" class="txt" id="rc_lugar" value="<%
                    if(matrimonioBEAN.getrc_lugar_inscripcion() != null)
                        out.println(matrimonioBEAN.getrc_lugar_inscripcion());
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
                if(matrimonioBEAN.getObservacion() != null)
                    out.println(matrimonioBEAN.getObservacion());
              %>"></textarea>
                </p>
            </fieldset>
            <br>
        </div>
        <br>
        <br>
        <input type="submit" name="Submit" value="Modificar">
        &nbsp;&nbsp;&nbsp;
        <input name="btn_cancelar" type="button" id="btn_cancelar" value="Cancelar" onClick="javascript:window.location.href='matrimonio.jsp?id=1';">
      </form>

<%
	} else
      	response.sendRedirect("matrimonio.jsp?id=1");
    } else if ((id != null) && (id.compareTo("4") == 0)) {    
%><br>
    <table width="200" border="0">
      <tr>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td width="64"><div align="center"><img src="../../../imagenes/dialog-information.png" width="48" height="48"></div></td>
        <td width="126"><div align="left">Se ha modificado el Acta de Matrimonio con &eacute;xito.</div></td>
      </tr>
      <tr>
        <td colspan="2"><div align="center"><br>
          <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='matrimonio.jsp?id=1';">
        </div></td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
      </tr>
    </table>
<%
    } else if ((id != null) && (id.compareTo("5") == 0)) {
%><br>
    <table width="200" border="0">
    <tr>
     <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
     <td width="64"><div align="center"><img src="../../../imagenes/dialog-error.png" width="48" height="48"></div></td>
     <td width="126"><div align="left">Lo siento pero no se ha modificado el Acta de Matrimonio con &eacute;xito.</div></td>
    </tr>
    <tr>
     <td colspan="2"><div align="center"><br>
         <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='matrimonio.jsp?id=1';">
</div></td>
    </tr>
    <tr>
     <td colspan="2">&nbsp;</td>
    </tr>
    </table>
<%
    } else
        response.sendRedirect("matrimonio.jsp?id=1");
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

<%
    } else
        response.sendRedirect("matrimonio.jsp?id=1");
%>