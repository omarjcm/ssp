<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>
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
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SSP - Anular Acta de Confirmaci&oacute;n </title>
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
                <div align="justify"><br>
                  <%
    if( (uBEAN.esAdministrador()==true) || (uBEAN.esSecretario()==true) )
    {
%>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a href="../ingresar/confirmacion.jsp">Ingresar Acta</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a href="../buscar/confirmacion.jsp">Buscar Acta</a>			<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%
		if (uBEAN.esAdministrador()==true)
		{
%>
                <img src="../../../imagenes/add.png" width="8" height="7"> <a href="../modificar/confirmacion.jsp">Modificar Acta</a>			<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="8" height="7"> <a href="confirmacion.jsp">Anular Acta</a>			<br>
<%
		}
	}
%>							
                </div></td>
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
        <td width="512" height="40" valign="middle"><a href="../../../inicio/index.jsp">Inicio</a> &gt; Anular Acta de Confirmaci&oacute;n </td>
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
                <li><a href="../../../bautismo/acta/anular/bautismo.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bautizo&nbsp;&nbsp;</a></li>
                <li><a href="../../../comunion/acta/anular/comunion.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Primera Comuni&oacute;n&nbsp;&nbsp;</a></li>
                <li><a href="confirmacion.jsp" class="active">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirmaci&oacute;n&nbsp;&nbsp;</a></li>
                <li><a href="../../../matrimonio/acta/anular/matrimonio.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Matrimonio&nbsp;&nbsp;</a></li>
            </ul>
      <div id="container">
<%
    if (id != null && id.compareTo("1") == 0)
    {
%>
        <form name="ninguno">
            <div id="titulo">ANULAR ACTA DE CONFIRMACI&Oacute;N </div></a><br>
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
                            <input type="text" name="confirmado_nombre" id="confirmado_nombre" class="txt"/>
                        </p>
                        <p>
                            <label for="confirmado_apellido">Apellido(s): </label>
                            <input type="text" name="confirmado_apellido" id="confirmado_apellido" class="txt"/>
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
        <form name="PorFecha" method="post" action="confirmacion_02BEAN.jsp">        
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
                        <button type="button" name="btn_fecha_confirmacion" id="btn_fecha_confirmacion" onclick="cal.select(document.PorFecha.fecha_confirmacion,'btn_fecha_confirmacion','yyyy-MM-dd'); return false;" title="cal.select(document.PorFecha.fecha_confirmacion,'btn_fecha_confirmacion','yyyy-MM-dd'); return false;"><img src="../../../imagenes/Calendar.gif" border="0"/></button>
                    </p>
                </fieldset>
                </td>
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
    } else if ((id != null && tipo != null) && (id.compareTo("2") == 0 && tipo.compareTo("1") == 0)) {
%>
      <form name="Consultar">
        <div id="titulo">ANULAR ACTA DE CONFIRMACI&Oacute;N</div><br><br>
        <br>
          <table width="300" border="0">
              <tr>
                  <td>
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
              out.println("<tr><td>");
              %>
              <a href="confirmacion.jsp?id=3&id_confirmado=<%=String.valueOf(solicitante.getIdSolicitante())%>">
                  <%out.print(solicitante.getNombre()+" "+solicitante.getApellido());%>
              </a>
              <%
              out.println("</td></tr>");
              }
              %>
          </table>
          <br>
          <p><a href="confirmacion.jsp?id=1">OK</a></p>
      </form>
<%
    } else if ((id != null && tipo != null) && (id.compareTo("2") == 0 && tipo.compareTo("2") == 0)) {
%>
      <form name="Consultar">
        <div id="titulo">ANULAR ACTA DE CONFIRMACI&Oacute;N</div><br><br>
        <br>
          <table width="300" border="0">
              <tr>
                  <td>
                      <span id="titulo"><strong>Nombres y Apellidos</strong></span>
                  </td>
              </tr>
                  <%
                  SSP.Solicitante confirmado;
                  LinkedList confirmaciones = confirmacionBEAN.generarConfirmacionFecha(confirmacionBEAN.getfecha_confirmacion(),"confirmar");
                  for (int i = 0; i < confirmaciones.size(); i++)
                  {
                      confirmado = (SSP.Solicitante) confirmaciones.get(i);	
                                  out.println("<tr><td>");
                      %>
                      <a href="confirmacion.jsp?id=3&id_confirmado=<%=String.valueOf(confirmado.getIdSolicitante())%>">
                      <%out.println(confirmado.getNombre() + " " + confirmado.getApellido());%></a>
                      <%
                      out.println("</td></tr>");
                  }
                  %>
          </table>
          <br>
          <p><a href="confirmacion.jsp?id=1">OK</a></p>
  </form>
<%
    } else if ((id != null) && (id.compareTo("3") == 0)) {
        String id_confirmado = request.getParameter("id_confirmado");
        if (id_confirmado != null) {
            confirmacionBEAN.confirmado.setIdSolici(id_confirmado);
            confirmacionBEAN.consultarConfirmacion(Long.parseLong(id_confirmado));    
%>
      <form name="confirmacionAnular" method="post" action="confirmacionAnularBEAN.jsp">
        <span><strong>ANULACI&Oacute;N DE ACTA DE CONFIRMAC&Oacute;N</strong></span><br>
        <br>
        <fieldset>
            <legend>Datos Personales del Solicitante</legend>
            <p>
                <label>Nombre(s):</label>
                <label><%out.println(confirmacionBEAN.getconfirmado_nombre());%></label>
            </p>
            <p>
                <label>Apellido(s):</label>
                <label><%out.println(confirmacionBEAN.getconfirmado_apellido());%></label>
            </p>
            <p>
                <label>Fecha de Confirmaci&oacute;n:</label>
                <label><%out.println(confirmacionBEAN.getfecha_confirmacion());%></label>
            </p>
            <p>
                <label>Estado del Acta:</label>
                <label><% if(confirmacionBEAN.getEstado()) out.println("Habilitada"); else out.println("Inhabilitada");%></label>
            </p>
        </fieldset>
        <br>
        <br>
        <p>
          <input name="btn_ok" type="button" id="btn_ok" onClick="anularActa()" value="Anular">
          &nbsp;&nbsp;&nbsp;
          <input name="btn_cancelar" type="button" id="btn_cancelar" value="Cancelar">
        </p>
  </form>
<%
        }
    } else if ((id != null) && (id.compareTo("4") == 0)) {
%>
<table width="200" border="0">
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td width="64"><div align="center"><img src="../../../imagenes/dialog-information.png" width="48" height="48"></div></td>
    <td width="126"><div align="left">Se ha anulado el Acta de Confirmaci&oacute;n con &eacute;xito.</div></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center"><a href="confirmacion.jsp?id=1">OK</a></div></td>
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
     <td width="126"><div align="left">Lo siento pero el Acta de Confirmaci&oacute;n seleccionada se encuentra anulada.</div></td>
   </tr>
   <tr>
     <td colspan="2"><div align="center"><a href="confirmacion.jsp?id=1">OK</a></div></td>
   </tr>
   <tr>
     <td colspan="2">&nbsp;</td>
   </tr>
 </table>
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