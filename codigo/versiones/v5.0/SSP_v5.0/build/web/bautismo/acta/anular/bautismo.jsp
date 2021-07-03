<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="mensaje_error.jsp" session="true"%>
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
	
    if (id != null) {
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SSP - Anular Acta de Bautizo</title>
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
    if( uBEAN!=null && (uBEAN.esAdministrador()==true) || (uBEAN.esSecretario()==true) ) {
%>		
    <table width="770" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td height="152" colspan="4"><img src="../../../imagenes/banner.png" width="805" height="150"></td>
      </tr>
      <tr>
        <td width="200" height="449" rowspan="3" valign="top">
<%
	if( (uBEAN.esAdministrador()==true) || (uBEAN.esSecretario()==true) ) {
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
    if(uBEAN.esAdministrador() || uBEAN.esSecretario()) {
%>				
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a 
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../ingresar/bautismo.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../ingresar/bautismo.jsp?id=1', mensaje_02)\"");
                %> >Ingresar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../buscar/bautismo.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../buscar/bautismo.jsp?id=1', mensaje_02)\"");
                %> >Buscar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%
		if (uBEAN.esAdministrador()==true) {
%>
                <img src="../../../imagenes/add.png" width="8" height="7"> <a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../modificar/bautismo.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../modificar/bautismo.jsp?id=1', mensaje_02)\"");
                %> >Modificar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="8" height="7"> <a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"bautismo.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('bautismo.jsp?id=1', mensaje_01)\"");
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
	} if (uBEAN.esAdministrador()==true) {
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
                        out.println("href=\"#\" onClick=\"cambiar('../../../usuario/modificar/usuario.jsp?id=1', mensaje_02)\"");
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
        Anular Acta de Bautizo</span></td>
        <td width="36" rowspan="2" align="left" valign="middle">
		<form action="../../../inicio/cerrarSesion.jsp" method="post">
			<img src="../../../imagenes/gnome-shutdown.png" width="36,727" height="35,196" border="0" style="cursor:pointer;" onClick="cerrarSesion()" title="Haga click para salir.">
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
                        out.println("href=\"bautismo.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('bautismo.jsp?id=1', mensaje_01)\"");
                %> class="active">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bautizo&nbsp;&nbsp;</a></li>
                <li><a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../../../comunion/acta/anular/comunion.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../../../comunion/acta/anular/comunion.jsp?id=1', mensaje_02)\"");
                %> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Primera Comuni&oacute;n&nbsp;&nbsp;</a></li>
                <li><a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../../../confirmacion/acta/anular/confirmacion.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../../../confirmacion/acta/anular/confirmacion.jsp?id=1', mensaje_02)\"");
                %> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirmaci&oacute;n&nbsp;&nbsp;</a></li>
                <li><a
                <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../../../matrimonio/acta/anular/matrimonio.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../../../matrimonio/acta/anular/matrimonio.jsp?id=1', mensaje_02)\"");
                %> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Matrimonio&nbsp;&nbsp;</a></li>
            </ul>
      <div id="container">
<%
    if (id.compareTo("1") == 0) {
%>
        <form name="ninguno">
            <div id="titulo">ANULAR ACTA DE BAUTIZO</div></a><br>
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
                        <legend>B&uacute;squeda por nombre(s) y apellido(s)</legend><br>
						<table width="330" border="0" align="center">
                          <tr>
                            <td width="117" align="right"><label for="bautizado_nombre">Nombre(s): </label></td>
                            <td width="203"><input type="text" name="bautizado_nombre" id="bautizado_nombre" onKeyPress="return onlyChars(this)" class="txt"/></td>
                          </tr>
                          <tr>
                            <td align="right"><label for="bautizado_apellido">Apellido(s): </label></td>
                            <td><input type="text" name="bautizado_apellido" id="bautizado_apellido" onKeyPress="return onlyChars(this)" class="txt"/></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td height="30" valign="bottom"><input name="btn_buscar_porNombreApellido" type="submit" id="btn_buscar_porNombreApellido" value="Buscar"></td>
                          </tr>
                        </table>
						</fieldset>					</td>
                    </tr>
                </table>
            </div>
        </form>
        <form name="PorFecha" method="post" action="bautismo_02BEAN.jsp" onSubmit="buscarPorFecha(); return false;">        
        <div id="buscar_por_fecha">
            <table width="519" border="0">
              <!--DWLayoutTable-->
              <tr>
                <td width="455">
                <fieldset>
                  <legend>B&uacute;squeda por fecha</legend><br>
					<table width="330" border="0" align="center">
                      <tr>
                        <td width="117" align="right"><label for="fecha_bautizo">Fecha de Bautizo: </label></td>
                        <td width="166"><input name="fecha_bautizo" type="text" class="txt" id="fecha_bautizo"  value="aaaa-mm-dd" maxlength="10"/></td>
                        <td width="33"><button type="button" name="btn_fecha_bautizo" id="btn_fecha_bautizo" onClick="cal.select(document.PorFecha.fecha_bautizo,'btn_fecha_bautizo','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la fecha de Bautizo."><img src="../../../imagenes/Calendar.gif" border="0"/></button></td>
                      </tr>
                      <tr>
                        <td align="right">&nbsp;</td>
                        <td height="30" colspan="2" valign="bottom"><input name="btn_buscar_porFecha" type="button" id="btn_buscar_porFecha" value="Buscar" onClick="buscarPorFecha();"></td>
                        </tr>
                    </table>
                </fieldset>                </td>
              </tr>
            </table>
        </div>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      </form>
<%
    } else if ((id != null && tipo != null) && (id.compareTo("2") == 0 && tipo.compareTo("1") == 0)) {
%>
      <form name="Consultar">
          <div id="titulo">ANULAR ACTA DE BAUTIZO</div>
          <br>
          <br>
        <br>
          <table width="300" border="0" class="datatable">
              <tr>
                  <td class="informe_02">
                      <span id="titulo"><strong>Nombres y Apellidos</strong></span>
                  </td>
              </tr>
          <%
              solicitanteBEAN.setTipo("bautizado");
              SSP.Solicitante solicitante;
              LinkedList solicitanteList = solicitanteBEAN.listaDeSolicitantes();
              for (int i = 0; i < solicitanteList.size(); i++)
              {
                  solicitante = (SSP.Solicitante) solicitanteList.get(i);
                  out.println("<tr><td> "+String.valueOf(i+1)+". ");
          %>
                  <a href="bautismo.jsp?id=3&tipo=1&id_bautizado=<%=String.valueOf(solicitante.getIdSolicitante())%>">
                      <%out.print(solicitante.getNombre()+" "+solicitante.getApellido());%></a>
          <%
                  out.println("</td></tr>");
              }
          %>
          </table>
          <br>
          <p>
            <input type="button" name="Button" value="Ir al inicio" onClick="javascript:window.location.href='bautismo.jsp?id=1';">
          </p>
      </form>
<%
    } else if ((id != null && tipo != null) && (id.compareTo("2") == 0 && tipo.compareTo("2") == 0)) {
%>
      <form name="Consultar">
          <div id="titulo">ANULAR ACTA DE BAUTIZO</div>
          </span><br>
          <br>
        <br>
          <table width="300" border="0" class="datatable">
              <tr>
                  <td class="informe_02">
                  <span id="titulo"><strong>Nombres y Apellidos</strong></span>
              </td>
              </tr>
              <%
              SSP.Solicitante bautizado;
              LinkedList bautizos = bautizoBEAN.generarBautizoFecha(bautizoBEAN.getfecha_bautizo(),"bautizo");
              for (int i = 0; i < bautizos.size(); i++)
              {
                  bautizado = (SSP.Solicitante) bautizos.get(i);		
                              out.println("<tr><td> "+String.valueOf(i+1)+". ");
                  %>
                  <a href="bautismo.jsp?id=3&tipo=1&id_bautizado=<%=String.valueOf(bautizado.getIdSolicitante())%>">
                  <%out.println(bautizado.getNombre() + " " + bautizado.getApellido());%></a>
                  <%
                    out.println("</td></tr>");
              }
              %>
          </table>
          <br>
          <p>
            <input type="button" name="Button2" value="Ir al inicio" onClick="javascript:window.location.href='bautismo.jsp?id=1';">
          </p>
  </form>
<%
    } else if ((id != null) && (id.compareTo("3") == 0)) {
        String id_bautizado = request.getParameter("id_bautizado");
        if (id_bautizado != null) {
            if (tipo != null)
                bautizoBEAN.bautizado.setIdSolici(id_bautizado);
            bautizoBEAN.consultarDatosBautizo(id_bautizado);
%>
      <form name="Anular" method="post" action="bautismoAnularBEAN.jsp">
        <span><strong>ANULACI&Oacute;N DE ACTA DE BAUTIZO</strong></span><br>
        <br>
        <fieldset>
            <legend>Datos Personales del Solicitante</legend>
            <p>
                <label>Nombre(s):</label>
                <label><%out.println(bautizoBEAN.getbautizado_nombre());%></label>
            </p>
            <p>
                <label>Apellido(s):</label>
                <label><%out.println(bautizoBEAN.getbautizado_apellido());%></label>
            </p>
            <p>
                <label>Fecha de Bautizo:</label>
                <label><%out.println(bautizoBEAN.getfecha_bautizo());%></label>
            </p>
            <p>
                <label>Estado del Acta:</label>
                <label><% if(bautizoBEAN.getEstado()) out.println("Habilitada"); else out.println("Inhabilitada");%></label>
            </p>
        </fieldset>
        <br>
        <br>
        <p>
          <input name="btn_ok" type="button" id="btn_ok" onclick="anularActa(Anular)" value="Anular">&nbsp;&nbsp;&nbsp;
          <input name="btn_cancelar" type="button" id="btn_cancelar" value="Cancelar" onClick="javascript:window.location.href='bautismo.jsp?id=1';">
        </p>
  </form>
<%
	} else
            response.sendRedirect("bautismo.jsp?id=1");
    } else if ((id != null) && (id.compareTo("4") == 0)) {
%><br>
    <table width="200" border="0">
    <tr>
    <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
    <td width="64"><div align="center"><img src="../../../imagenes/dialog-information.png" width="48" height="48"></div></td>
    <td width="126"><div align="left">Se ha anulado el Acta de Bautizo con &eacute;xito.</div></td>
    </tr>
    <tr>
    <td colspan="2"><div align="center"><br>
      <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='bautismo.jsp?id=1';">
    </div></td>
    </tr>
    <tr>
    <td colspan="2">&nbsp;</td>
    </tr>
    </table>
<%
    } else if (id.compareTo("5") == 0) {
%><br>
    <table width="200" border="0">
    <tr>
    <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
    <td width="64"><div align="center"><img src="../../../imagenes/dialog-error.png" width="48" height="48"></div></td>
    <td width="126"><div align="left">Lo siento pero el Acta seleccionada se encuentra anulada.</div></td>
    </tr>
    <tr>
    <td colspan="2"><div align="center"><br>
        <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='bautismo.jsp?id=1';">
</div></td>
    </tr>
    <tr>
    <td colspan="2">&nbsp;</td>
    </tr>
    </table>
<%
    } else
        response.sendRedirect("bautismo.jsp?id=1");
%>
      </div>
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

<%
    } else
        response.sendRedirect("bautismo.jsp?id=1");
%>