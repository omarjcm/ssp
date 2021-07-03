<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="mensaje_error.jsp" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="SSP.*"%>
<%@ page import="java.util.LinkedList"%>

<jsp:useBean id = "ministroBEAN" class = "SSP.Ministro" scope="page"/>
<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>
<jsp:useBean id = "confirmacionBEAN" class = "SSP.Confirmar" scope="session"/>
<jsp:useBean id = "solicitanteBEAN" class = "SSP.Solicitante" scope = "session"/>

<%
    String id = request.getParameter("id");
    String tipo = request.getParameter("tipo");
	
    if (id != null) {
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SSP - Buscar Acta de Confirmaci&oacute;n</title>
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
        <td width="200" height="449" rowspan="3" valign="top">
<%
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
    if( uBEAN.esAdministrador() || uBEAN.esSecretario() )
    {
%>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../ingresar/confirmacion.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../ingresar/confirmacion.jsp?id=1', mensaje_02)\"");
                %> >Ingresar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"confirmacion.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('confirmacion.jsp?id=1', mensaje_01)\"");
                %> >Buscar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%
		if (uBEAN.esAdministrador()) {
%>
                <img src="../../../imagenes/add.png" width="8" height="7"> <a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../modificar/confirmacion.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../modificar/confirmacion.jsp?id=1', mensaje_02)\"");
                %> >Modificar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="8" height="7"> <a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../anular/confirmacion.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../anular/confirmacion.jsp?id=1', mensaje_02)\"");
                %> >Anular Acta</a>
                <br>
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
              %> >Ingresar Usuario</a> <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="2" width="8" height="7"> <a
              <%
                if (id.compareTo("1") == 0)
                    out.println("href=\"../../../usuario/modificar/usuario.jsp?id=1\"");
                else
                    out.println("href=\"#\" onClick=\"cambiar('../../../usuario/ingresar/usuario.jsp?id=1', mensaje_02)\"");
              %> >Modificar Usuario</a> <br>
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
              %> >Generar Reportes</a>
              <br>
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
        Buscar Acta de Confirmaci&oacute;n</span></td>
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
                        out.println("href=\"../../../bautismo/acta/buscar/bautismo.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../../../bautismo/acta/buscar/bautismo.jsp?id=1', mensaje_02)\"");
                %> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bautizo&nbsp;&nbsp;</a></li>
                <li><a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../../../comunion/acta/buscar/comunion.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../../../comunion/acta/buscar/comunion.jsp?id=1', mensaje_02)\"");
                %> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Primera Comuni&oacute;n&nbsp;&nbsp;</a></li>
                <li><a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"confirmacion.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('confirmacion.jsp?id=1', mensaje_01)\"");
                %> class="active">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirmaci&oacute;n&nbsp;&nbsp;</a></li>
                <li><a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../../../matrimonio/acta/buscar/matrimonio.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../../../matrimonio/acta/buscar/matrimonio.jsp?id=1', mensaje_02)\"");
                %> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Matrimonio&nbsp;&nbsp;</a></li>
            </ul>
      <div id="container">
<%
    if (id.compareTo("1") == 0) {
%>	  
        <form name="ninguno">
            <div id="titulo">BUSCAR  ACTA DE CONFIRMACI&Oacute;N </div><br>
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
        <form name="PorNombreApellido" method="post" action="confirmacion_01BEAN.jsp">
            <div id="buscar_por_nombre_apellido">
                <table width="519" border="0">
                  <!--DWLayoutTable-->
                    <tr>
                    <td width="455">
                    <fieldset>
                        <legend>B&uacute;squeda por nombre(s) y apellido(s)</legend>
                        <p>
                            <label for="confirmado_nombre">Nombre(s): </label>
                            <input type="text" name="confirmado_nombre" id="confirmado_nombre" onKeyPress="return onlyChars(this)" class="txt"/>
                        </p>
                        <p>
                            <label for="confirmado_apellido">Apellido(s): </label>
                            <input type="text" name="confirmado_apellido" id="confirmado_apellido" onKeyPress="return onlyChars(this)" class="txt"/>
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
        <form name="PorFecha" method="post" action="confirmacion_02BEAN.jsp" onSubmit="buscarPorFecha(); return false;">        
        <div id="buscar_por_fecha">
            <table width="501" border="0">
              <!--DWLayoutTable-->
              <tr>
                <td width="455">
                <fieldset>
                  <legend>B&uacute;squeda por fecha</legend>
                    <p>
                        <label for="fecha_confirmacion">Fecha de Confirmaci&oacute;n: </label>
                        <input name="fecha_confirmacion" type="text" class="txt" id="fecha_confirmacion"  value="aaaa-mm-dd" maxlength="10"/>
                        <button type="button" name="btn_fecha_confirmacion" id="btn_fecha_confirmacion" onclick="cal.select(document.PorFecha.fecha_confirmacion,'btn_fecha_confirmacion','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la fecha de la Confirmaci&oacute;n."><img src="../../../imagenes/Calendar.gif" border="0"/></button>
                    </p>
					<br><br>
<div align="center">
                  <input name="btn_buscar_porFecha" type="button" id="btn_buscar_porFecha" value="Buscar" onClick="buscarPorFecha();">
                </div>                </fieldset>                </td>
              </tr>
              <tr>
                <td height="42"></td>
              </tr>
            </table>
        </div>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>     
      </form>
<%
    } else if ((id != null && tipo != null) && (id.compareTo("2") == 0 && tipo.compareTo("1") == 0)) {
%>
      <form name="Consultar">
        <div id="titulo">BUSCAR ACTA DE CONFIRMACI&Oacute;N</div><br><br>
        <br>
          <table width="300" border="0" class="datatable">
              <tr>
                  <td class="informe_02">
                  <span id="titulo"><strong>Nombres y Apellidos</strong></span>
                  </td>
              </tr>
              <%
              solicitanteBEAN.setTipo("confirmado");
              SSP.Solicitante solicitante;
              LinkedList solicitanteList = solicitanteBEAN.listaDeSolicitantes();
              for (int i = 0; i < solicitanteList.size(); i++)
              {
              solicitante = (SSP.Solicitante) solicitanteList.get(i);
              out.println("<tr><td> "+String.valueOf(i+1)+". ");
              %>
              <a href="confirmacion_imprimir.jsp?tipo=1&id=<%=String.valueOf(solicitante.getIdSolicitante())%>" target="popup" onClick="window.open(this.href, this.target, 'left=200, top=50,width=650,height=550,scrollbars=YES,menubar=yes'); return false;">
                  <%out.print(solicitante.getNombre()+" "+solicitante.getApellido());%>
              </a>
              <%
              out.println("</td></tr>");
              }
              %>
          </table>
          <br>
          <p>
            <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='confirmacion.jsp?id=1';">
          </p>
      </form>
<%
    } else if ((id != null && tipo != null) && (id.compareTo("2") == 0 && tipo.compareTo("2") == 0)) {
%>
      <form name="Consultar">
        <div id="titulo">BUSCAR ACTA DE CONFIRMACI&Oacute;N</div><br><br>
        <br>
          <table width="300" border="0" class="datatable">
              <tr>
                  <td class="informe_02">
                      <span id="titulo"><strong>Nombres y Apellidos</strong></span>
                  </td>
              </tr>
                  <%
                  SSP.Solicitante confirmado;
                  LinkedList confirmaciones = confirmacionBEAN.generarConfirmacionFecha(confirmacionBEAN.getfecha_confirmacion(),"confirmar");
                  for (int i = 0; i < confirmaciones.size(); i++)
                  {
                      confirmado = (SSP.Solicitante) confirmaciones.get(i);	
                                  out.println("<tr><td> "+String.valueOf(i+1)+". ");
                      %>
                      <a href="confirmacion_imprimir.jsp?id=<%=String.valueOf(confirmado.getIdSolicitante())%>" target="popup" onClick="window.open(this.href, this.target, 'left=200, top=50,width=650,height=550,scrollbars=YES,menubar=yes'); return false;">
                      <%out.println(confirmado.getNombre() + " " + confirmado.getApellido());%></a>
                      <%
                      out.println("</td></tr>");
                  }
                  %>
          </table>
          <br>
          <p>
            <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='confirmacion.jsp?id=1';">
          </p>
  </form>
<%
    } else
        response.sendRedirect("confirmacion.jsp?id=1");
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
        response.sendRedirect("confirmacion.jsp?id=1");
%>