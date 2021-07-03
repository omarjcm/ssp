<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="mensaje_error.jsp" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="SSP.*"%>
<%@ page import="java.util.LinkedList"%>

<jsp:useBean id = "ministroBEAN" class = "SSP.Ministro" scope="page"/>
<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>
<jsp:useBean id = "comunionBEAN" class = "SSP.ComulgarPorPrimeraVez" scope="session"/>
<jsp:useBean id = "solicitanteBEAN" class = "SSP.Solicitante" scope = "session"/>

<%
String id = request.getParameter("id");
String tipo = request.getParameter("tipo");

if (id != null) {
%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SSP - Modificar Acta de Primera Comuni&oacute;n</title>
    <link href="../../../estilos/tabs.css" type="text/css" rel=STYLESHEET>
    <link href="../../../estilos/my_style.css" type="text/css" rel=STYLESHEET>
    <link href="../../../estilos/tab_navigation.css" type="text/css" rel=STYLESHEET>
    <link href="../../../estilos/formularios.css" type="text/css" rel=STYLESHEET>
    
    <script language="JavaScript" type="text/javascript" src="../../../calendario/CalendarPopup.js"></script>
    <script language="JavaScript" type="text/javascript" src="../../../calendario/common.js"></script>		
    <script language="JavaScript" type="text/javascript" src="../../../inicio/cerrarSesion.js"></script>
    <script language="JavaScript" type="text/javascript" src="formulario.js"></script>
    <script type="text/javascript">
<%
    if (id.compareTo("3") == 0) {
%>
        window.onload = setup;
<%
    }
%>
            var cal_anio_01b = new CalendarPopup();
            cal_anio_01b.setDisplayType("year");
            cal_anio_01b.setReturnYearFunction("yearReturnSegundoPaso_RE");
            cal_anio_01b.showYearNavigation();
            function yearReturnSegundoPaso_RE(y) {
                     document.comunion.anio_libro.value=y;
            }
        
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
                if( uBEAN.esAdministrador() || uBEAN.esSecretario() ) {
                %>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a
                    <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../ingresar/comunion.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../ingresar/comunion.jsp?id=1', mensaje_02)\"");
                    %> >Ingresar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a
                    <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../buscar/comunion.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../buscar/comunion.jsp?id=1', mensaje_02)\"");
                    %> >Buscar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <%
                if (uBEAN.esAdministrador()) {
                %>
                <img src="../../../imagenes/add.png" width="8" height="7"> <a
                    <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"comunion.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('comunion.jsp?id=1', mensaje_01)\"");
                    %> >Modificar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="8" height="7"> <a
                    <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../anular/comunion.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../anular/comunion.jsp?id=1', mensaje_02)\"");
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
                    %> >Ingresar Registro</a>
                <br>
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
Modificar Acta de Primera Comuni&oacute;n</span> </td>
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
                                    out.println("href=\"comunion.jsp?id=1\"");
                                else
                                    out.println("href=\"#\" onClick=\"cambiar('comunion.jsp?id=1', mensaje_01)\"");
                            %> class="active">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Primera Comuni&oacute;n&nbsp;&nbsp;</a></li>
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
                                    out.println("href=\"../../../matrimonio/acta/modificar/matrimonio.jsp?id=1\"");
                                else
                                    out.println("href=\"#\" onClick=\"cambiar('../../../matrimonio/acta/modificar/matrimonio.jsp?id=1', mensaje_02)\"");
                            %> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Matrimonio&nbsp;&nbsp;</a></li>
                    </ul>
                    <div id="container">
                        <%
                        if ((id != null) && (id.compareTo("1") == 0)) {
                        %>
                        <form name="ninguno">
                            <div id="titulo">MODIFICAR ACTA DE PRIMERA COMUNI&Oacute;N </div><br>
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
                        <form name="PorNombreApellido" method="post" action="comunion_01BEAN.jsp">
                            <div id="buscar_por_nombre_apellido">
                                <table width="519" border="0">
                                    <!--DWLayoutTable-->
                                    <tr>
                                        <td width="455">
                                            <fieldset>
                                                <legend>B&uacute;squeda por nombre(s) y apellido(s)</legend>
                                                <p>
                                                    <label for="comulgado_nombre">Nombre(s): </label>
                                                    <input type="text" name="comulgado_nombre" id="comulgado_nombre" onKeyPress="return onlyChars(this)" class="txt"/>
                                                </p>
                                                <p>
                                                    <label for="comulgado_apellido">Apellido(s): </label>
                                                    <input type="text" name="comulgado_apellido" id="comulgado_apellido" onKeyPress="return onlyChars(this)" class="txt"/>
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
                        <form name="PorFecha" method="post" action="comunion_02BEAN.jsp" onSubmit="buscarPorFecha(); return false;">        
                            <div id="buscar_por_fecha">
                                <table width="501" border="0">
                                    <!--DWLayoutTable-->
                                    <tr>
                                        <td width="455">
                                            <fieldset>
                                                <legend>B&uacute;squeda por fecha</legend>
                                                <p>
                                                    <label for="fecha_comunion">Fecha de Primera Comuni&oacute;n: </label>
                                                    <input name="fecha_comunion" type="text" class="txt" id="fecha_comunion"  value="aaaa-mm-dd" maxlength="10"/>
                                                    <button type="button" name="btn_fecha_comunion" id="btn_fecha_comunion" onclick="cal.select(document.PorFecha.fecha_comunion,'btn_fecha_comunion','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la fecha de la Primera Comuni&oacute;n."><img src="../../../imagenes/Calendar.gif" border="0"/></button>
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
                        } else if (((id != null) && (tipo != null)) && (id.compareTo("2") == 0) && (tipo.compareTo("1") == 0)) {
                        %>
                        <form name="Consultar">
                            <div id="titulo">MODIFICAR ACTA DE PRIMERA COMUNI&Oacute;N</div><br><br>
                            <br>
                            <table width="300" border="0" class="datatable">
                                <tr>
                                    <td class="informe_02">
                                    <span id="titulo"><strong>Nombres y Apellidos</strong></span>                  </td>
                                </tr>
                                <%
                                solicitanteBEAN.setTipo("comulgado");
                                SSP.Solicitante solicitante;
                                LinkedList solicitanteList = solicitanteBEAN.listaDeSolicitantes();
                                for (int i = 0; i < solicitanteList.size(); i++) {
                                    solicitante = (SSP.Solicitante) solicitanteList.get(i);
                                    out.println("<tr><td> "+String.valueOf(i+1)+". ");
                                %>
                                <a href="comunion.jsp?id=3&tipo=1&id_comulgado=<%=String.valueOf(solicitante.getIdSolicitante()+"&tipo=1")%>">
                                    <%out.print(solicitante.getNombre()+" "+solicitante.getApellido());%>
                                </a>
                                <%
                                out.println("</td></tr>");
                                }
                                %>
                            </table>
                            <br>
                            <p>
                                <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='comunion.jsp?id=1';">
                            </p>
                        </form>
                        <%
                        } else if (((id != null) && (tipo != null)) && (id.compareTo("2") == 0) && (tipo.compareTo("2") == 0)) {
                        %>
                        <form name="Consultar">
                            <div id="titulo">MODIFICAR ACTA DE PRIMERA COMUNI&Oacute;N</div><br><br>
                            <br>
                            <table width="300" border="0" class="datatable">
                                <tr>
                                    <td class="informe_02">
                                    <span id="titulo"><strong>Nombres y Apellidos</strong></span>                  </td>
                                </tr>
                                <%
                                SSP.Solicitante comulgado;
                                LinkedList comuniones = comunionBEAN.generarComunionFecha(comunionBEAN.getfecha_comunion(),"comunion");
                                for (int i = 0; i < comuniones.size(); i++) {
                                    comulgado = (SSP.Solicitante) comuniones.get(i);
                                    out.println("<tr><td> "+String.valueOf(i+1)+". ");
                                %>
                                <a href="comunion.jsp?id=3&tipo=1&id_comulgado=<%=String.valueOf(comulgado.getIdSolicitante())%>">
                                <%out.println(comulgado.getNombre() + " " + comulgado.getApellido());%></a>
                                <%
                                out.println("</td></tr>");
                                }
                                %>
                            </table>
                            <br>
                            <p>
                                <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='comunion.jsp?id=1';">
                            </p>
                        </form>
                        <%
                        } else if ((id != null) && (id.compareTo("3") == 0)) {
        String id_comulgado = request.getParameter("id_comulgado");
        if (id_comulgado != null) {
            if (tipo != null)
                comunionBEAN.comulgado.setIdSolici(id_comulgado);
            comunionBEAN.consultarDatosComunion(id_comulgado);
                        %>
                        <form name="comunion" method="post" action="comunionModificarBEAN.jsp">
                            <div id="titulo">MODIFICAR ACTA DE PRIMERA COMUNI&Oacute;N</div>
                            <br>
                            <br>
                            <br>
                            <div id="menu_navegacion">
                                <ul id="menu_lista">
                                    <li><a href="#" onClick="mostrar(0); return false;">Datos de la Parroquia</a></li>
                                    <li><a href="#" onClick="mostrar(1); return false;">Datos del Solicitante (I) </a></li>
                                    <li><a href="#" onClick="mostrar(2); return false;">Datos del Solicitante (II) </a></li>
                                    <li><a href="#" onClick="mostrar(3); return false;">Datos de los Padres</a></li>
                                    <li><a href="#" onClick="mostrar(4); return false;">Datos de los Padrinos</a></li>
                                    <li><a href="#" onClick="mostrar(5); return false;">Registro Eclesi&aacute;stico</a></li>
                                    <li><a href="#" onClick="mostrar(6); return false;">Observaci&oacute;n</a></li>
                                </ul>
                            </div>
                            <div id="cont_parroquia">
                                <br><span id="cont_titulo"> Datos de la Parroquia</span>
                                <br><br><br>
                                <table width="286" border="0">
                                    <tr>
                                        <td colspan="3"><label for="id_ministro" class="preview">Ministro: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td colspan="2"><select name="id_ministro" id="id_ministro">
                                                <%
                                                SSP.Ministro ministro;
                                                LinkedList ministroList = ministroBEAN.listaDeMinistros();
                                                for (int i = 0; i < ministroList.size(); i++) {
                                                    ministro = (SSP.Ministro) ministroList.get(i);
                                                    if (comunionBEAN.getid_ministro().compareTo(String.valueOf(ministro.getId_ministro()))==0)
                                                        out.println("<option selected value="+String.valueOf(ministro.getId_ministro())+">"
                                                                +ministro.getDignidad()+" "+ministro.getNombre()+" "
                                                                +ministro.getApellido()+"</option>");
                                                    else
                                                        out.println("<option value="+String.valueOf(ministro.getId_ministro())+">"
                                                                +ministro.getDignidad()+" "+ministro.getNombre()+" "
                                                                +ministro.getApellido()+"</option>");
                                                }
                                                %>
                                        </select></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3"><label for="lugar_comunion" class="preview">Lugar de Comuni&oacute;n: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td colspan="2"><input name="lugar_comunion" type="text" id="lugar_comunion" class="txt" value="<%
                                                                   if(comunionBEAN.getlugar_comunion()==null)
                                                                       out.println("Parroquia Cristo Rey");
                                                                   else
                                                                       out.println(comunionBEAN.getlugar_comunion());
                                                               %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3"><label for="fecha_comunion" class="preview">Fecha de Comuni&oacute;n: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td width="165"><input name="fecha_comunion" type="text" class="txt" id="fecha_comunion"  value="<%
                                                                   if(comunionBEAN.getfecha_comunion()!=null)out.println(comunionBEAN.getfecha_comunion());
                                                               %>" maxlength="10"/></td>
                                        <td width="67"><button type="button" name="btn_fecha_comunion" id="btn_fecha_comunion" onclick="cal.select(document.comunion.fecha_comunion,'btn_fecha_comunion','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la fecha de la Primera Comuni&oacute;n."><img src="../../../imagenes/Calendar.gif" border="0"/></button></td>
                                    </tr>
                                </table>
                            </div>
                            <div id="cont_solicitante_01">
                                <br><span id="cont_titulo"> Datos del Solicitante (I)</span>
                                <br><br><br>
                                <table width="238" border="0">
                                    <tr>
                                        <td colspan="3"><label for="comulgado_nombre" class="preview">Nombre(s): </label></td>
                                    </tr>
                                    <tr>
                                        <td width="18">&nbsp;</td>
                                        <td colspan="2"><input type="text" name="comulgado_nombre" id="comulgado_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                                   if(comunionBEAN.getcomulgado_nombre() != null)
                                                                       out.println(comunionBEAN.getcomulgado_nombre());
                                                               %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3"><label for="comulgado_apellido" class="preview">Apellido(s): </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td colspan="2"><input type="text" name="comulgado_apellido" id="comulgado_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                                   if(comunionBEAN.getcomulgado_apellido() != null)
                                                                       out.println(comunionBEAN.getcomulgado_apellido());
                                                               %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3"><label for="id_sexo" class="preview">Sexo: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td colspan="2"><label><input name="id_sexo" type="radio" value="0" <%if (!comunionBEAN.comulgado.getSexo()) out.println("checked");%>> Femenino</input></label>
                                        <label><input name="id_sexo" type="radio" value="1" <%if (comunionBEAN.comulgado.getSexo()) out.println("checked");%>> Masculino</input></label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3"><label for="fecha_nacimiento" class="preview">Fecha de Nacimiento: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td width="164"><input name="fecha_nacimiento" type="text" class="txt" id="fecha_nacimiento" value="<%
                                                                   if(comunionBEAN.getfecha_nacimiento() != null)
                                                                       out.println(comunionBEAN.getfecha_nacimiento());
                                                                   else
                                                                       out.println("aaaa-mm-dd");
                                                               %>"/></td>
                                        <td width="42"><button type="button" name="btn_fecha_nacimiento" id="btn_fecha_nacimiento" onclick="cal.select(document.comunion.fecha_nacimiento,'btn_fecha_nacimiento','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la fecha de nacimiento."><img src="../../../imagenes/Calendar.gif" border="0"/></button></td>
                                    </tr>
                                </table>
                            </div>
                            <div id="cont_solicitante_02">
                                <br><span id="cont_titulo"> Datos del Solicitante (II)</span>
                                <br><br><br>
                                <table width="230" border="0">
                                    <tr>
                                        <td colspan="3"><label for="edad" class="preview">Edad: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td colspan="2"><input type="text" name="edad" id="edad" class="preview" onKeyUp="onlyNumbers(this);" value="<%
                                                                   if(comunionBEAN.getcomulgado_edad() != null)
                                                                       out.println(comunionBEAN.getcomulgado_edad());
                                                               %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3"><label for="nivel" class="preview">Nivel de Estudio: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td colspan="2"><input type="text" name="nivel" id="nivel" class="preview" value="<%
                                                                   if(comunionBEAN.getcomulgado_grado() != null)
                                                                       out.println(comunionBEAN.getcomulgado_grado());
                                                               %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3"><label for="nombre_institucion" class="preview">Institucion Educativa: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td colspan="2"><input type="text" name="nombre_institucion" id="nombre_institucion" class="preview" value="<%
                                                                   if(comunionBEAN.getNombreInstitucion() != null)
                                                                       out.println(comunionBEAN.getNombreInstitucion());
                                                               %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3"><label for="direccion" class="preview">Direcci&oacute;n: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="18">&nbsp;</td>
                                        <td colspan="2"><input type="text" name="direccion" id="direccion" class="preview" value="<%
                                                                   if(comunionBEAN.getcomulgado_direccion() != null)
                                                                       out.println(comunionBEAN.getcomulgado_direccion());
                                                               %>"/></td>
                                    </tr>
                                </table>
                            </div>
                            <div id="cont_padres">
                                <br><span id="cont_titulo"> Datos de los Padres</span>
                                <br><br><br>
                                <table width="230" border="0">
                                    <tr>
                                        <td colspan="2"><label for="padre_nombre" class="preview">Nombre(s) del padre: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="padre_nombre" id="padre_nombre" onKeyPress="return onlyChars(this)" class="preview" value="<%
                                                       if(comunionBEAN.getpadre_nombre() != null)
                                                           out.println(comunionBEAN.getpadre_nombre());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="padre_apellido" class="preview">Apellido(s) del padre: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td><input type="text" name="padre_apellido" id="padre_apellido" onKeyPress="return onlyChars(this)" class="preview" value="<%
                                                       if(comunionBEAN.getpadre_apellido() != null)
                                                           out.println(comunionBEAN.getpadre_apellido());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="madre_nombre" class="preview">Nombre(s) de la madre: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td><input type="text" name="madre_nombre" id="madre_nombre" onKeyPress="return onlyChars(this)" class="preview" value="<%
                                                       if(comunionBEAN.getmadre_nombre() != null)
                                                           out.println(comunionBEAN.getmadre_nombre());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="madre_apellido" class="preview">Apellido(s) de la madre: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td><input type="text" name="madre_apellido" id="madre_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(comunionBEAN.getmadre_apellido() != null)
                                                           out.println(comunionBEAN.getmadre_apellido());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="estado_civil_padres" class="preview">Estado civil: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td><input type="text" name="estado_civil_padres" id="estado_civil_padres" class="txt" value="<%
                                                       if(comunionBEAN.getEstadoCivilPadres() != null)
                                                           out.println(comunionBEAN.getEstadoCivilPadres());
                                                   %>"/></td>
                                    </tr>
                                </table>
                            </div>
                            <div id="cont_padrinos">
                                <br><span id="cont_titulo"> Datos de los Padrinos</span>
                                <br><br><br>
                                <table width="230" border="0">
                                    <tr>
                                        <td colspan="2"><label for="padrino_nombre" class="preview">Nombre(s) del padrino: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="padrino_nombre" id="padrino_nombre" onKeyPress="return onlyChars(this)" class="preview" value="<%
                                                       if(comunionBEAN.getpadrino_nombre() != null)
                                                           out.println(comunionBEAN.getpadrino_nombre());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="padrino_apellido" class="preview">Apellido(s) del padrino: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="padrino_apellido" id="padrino_apellido" onKeyPress="return onlyChars(this)" class="preview" value="<%
                                                       if(comunionBEAN.getpadrino_apellido() != null)
                                                           out.println(comunionBEAN.getpadrino_apellido());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="madrina_nombre" class="preview">Nombre(s) de la madrina: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="madrina_nombre" id="madrina_nombre" onKeyPress="return onlyChars(this)" class="preview" value="<%
                                                       if(comunionBEAN.getmadrina_nombre() != null)
                                                           out.println(comunionBEAN.getmadrina_nombre());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="madrina_apellido" class="preview">Apellido(s) de la madrina: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="madrina_apellido" id="madrina_apellido" onKeyPress="return onlyChars(this)" class="preview" value="<%
                                                       if(comunionBEAN.getmadrina_apellido() != null)
                                                           out.println(comunionBEAN.getmadrina_apellido());
                                                   %>"/></td>
                                    </tr>
                                </table>
                            </div>
                            <div id="cont_reg_eclesiastico">
                                <br><span id="cont_titulo"> Registro Eclesi&aacute;stico</span>
                                <br><br><br>
                                <table width="230" border="0">
                                    <tr>
                                        <td width="40" height="29"><label for="anio_libro" class="preview">A&ntilde;o: </label></td>
                                        <td width="126"><input name="anio_libro" type="text" id="anio_libro" onKeyUp="onlyNumbers(this);" maxlength="4" class="preview_dato" value="<%					if(comunionBEAN.getanio_libro() != null)
                                            out.println(comunionBEAN.getanio_libro());
                                                               %>"/></td>
                                        <td width="64"><button type="button" name="btn_anio_libro" id="btn_anio_libro" onclick="cal_anio_01b.showCalendar('btn_anio_libro'); return false;" title="Haga click aqu&iacute; para ingresar el a&ntilde;o del Libro de Primera Comuni&oacute;n."><img src="../../../imagenes/Calendar.gif" border="0"/></button></td>
                                    </tr>
                                    <tr>
                                        <td height="29"><label for="num_sacramento" class="preview">No: </label></td>
                                        <td><input type="text" name="num_sacramento" id="num_sacramento" class="preview_dato" value="<%
                                                       if(comunionBEAN.getnum_sacramento() != null)
                                                           out.println(comunionBEAN.getnum_sacramento());
                                                   %>"/></td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td height="29"><label for="num_libro" class="preview">Libro: </label></td>
                                        <td><input type="text" name="num_libro" id="num_libro" class="preview_dato" value="<%
                                                       if(comunionBEAN.getnum_libro() != null)
                                                           out.println(comunionBEAN.getnum_libro());
                                                   %>"/></td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td height="29"><label for="folio_libro" class="preview">Folio: </label></td>
                                        <td><input name="folio_libro" type="text" id="folio_libro" onKeyUp="onlyNumbers(this);" class="preview_dato" value="<%
                                                       if(comunionBEAN.getfolio_libro() != null)
                                                       out.println(comunionBEAN.getfolio_libro());
                                                   %>"/></td>
                                        <td></td>
                                    </tr>
                                </table>
                            </div>
                            <div id="cont_observacion">
                                <br><span id="cont_titulo"> Observaci&oacute;n</span>
                                <br><br><br>
                                <p align="center">
                                    <textarea name="observacion" cols="30" rows="5" id="observacion" class="txt"><%
                                        if(comunionBEAN.getObservacion() != null)
                                        out.println(comunionBEAN.getObservacion());
                                    %></textarea>
                                </p>
                            </div>
                            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                            <input name="btn_modificar" type="submit" id="btn_modificar" value="Modificar">
                            &nbsp;&nbsp;&nbsp;
                            <input name="btn_cancelar" type="button" id="btn_cancelar" value="Cancelar" onClick="javascript:window.location.href='comunion.jsp?id=1';">
                        </form>
                        <%
                        } else
                        response.sendRedirect("comunion.jsp?id=1");
                        } else if ((id != null) && (id.compareTo("4") == 0)) {
                        %><br>
                        <table width="200" border="0">
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width="64"><div align="center"><img src="../../../imagenes/dialog-information.png" width="48" height="48"></div></td>
                                <td width="126"><div align="left">Se ha modificado el Acta de Primera Comuni&oacute;n con &eacute;xito.</div></td>
                            </tr>
                            <tr>
                                <td colspan="2"><div align="center"><br>
                                        <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='comunion.jsp?id=1';">
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
                                <td width="126"><div align="left">Lo siento pero no se ha modificado el Acta de Primera Comuni&oacute;n con &eacute;xito.</div></td>
                            </tr>
                            <tr>
                                <td colspan="2"><div align="center"><br>
                                        <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='comunion.jsp?id=1';">
                                </div></td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                        </table>
                        <%
                        } else
                        response.sendRedirect("comunion.jsp?id=1");
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
response.sendRedirect("comunion.jsp?id=1");
%>