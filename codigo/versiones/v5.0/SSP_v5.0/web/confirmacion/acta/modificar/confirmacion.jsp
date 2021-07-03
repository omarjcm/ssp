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
    <title>SSP - Modificar Acta de Confirmaci&oacute;n</title>
    <link href="../../../estilos/tabs.css" type="text/css" rel=STYLESHEET>
    <link href="../../../estilos/my_style.css" type="text/css" rel=STYLESHEET>
    <link href="../../../estilos/tab_navigation.css" type="text/css" rel=STYLESHEET>
    <link href="../../../estilos/formularios.css" type="text/css" rel=STYLESHEET>
    
    <script language="JavaScript" type="text/javascript" src="../../../calendario/CalendarPopup.js"></script>
    <script language="JavaScript" type="text/javascript" src="../../../calendario/common.js"></script>		
    <script language="JavaScript" type="text/javascript" src="../../../inicio/cerrarSesion.js"></script>
    <script language="JavaScript" type="text/javascript" src="formulario.js"></script>
    <script type="text/javascript">
        var cal_anio_01b = new CalendarPopup();
        cal_anio_01b.setDisplayType("year");
        cal_anio_01b.setReturnYearFunction("yearReturnSegundoPaso_RE");
        cal_anio_01b.showYearNavigation();
        function yearReturnSegundoPaso_RE(y) {
                 document.Confirmacion.anio_libro.value=y;
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
                        out.println("href=\"../ingresar/confirmacion.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../ingresar/confirmacion.jsp?id=1', mensaje_02)\"");
                    %> >Ingresar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a
                    <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../buscar/confirmacion.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../buscar/confirmacion.jsp?id=1', mensaje_02)\"");
                    %> >Buscar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <%
                if (uBEAN.esAdministrador()==true) {
                %>
                <img src="../../../imagenes/add.png" width="8" height="7"> <a
                    <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"confirmacion.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('confirmacion.jsp?id=1', mensaje_01)\"");
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
                    %> >Eliminar Usuario</a>
                <br>
            </td>
        </tr>
        <tr>
            <td width="189" height="8" background="../../../imagenes/abajo.png"></td>
        </tr>
    </table>
    <%
    }
    if (uBEAN.esAdministrador()==true || uBEAN.esContador()) {
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
    %>
</td>
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
Modificar Acta de Confirmaci&oacute;n</span></td>
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
                                    out.println("href=\"confirmacion.jsp?id=1\"");
                                else
                                    out.println("href=\"#\" onClick=\"cambiar('confirmacion.jsp?id=1', mensaje_01)\"");
                            %> class="active">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirmaci&oacute;n&nbsp;&nbsp;</a></li>
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
                        if (id.compareTo("1") == 0) {
                        %>	  
                        <form name="ninguno">
                            <div id="titulo">MODIFICAR ACTA DE CONFIRMACI&Oacute;N </div><br>
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
                            <div id="titulo">MODIFICAR ACTA DE CONFIRMACI&Oacute;N</div><br><br>
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
                                for (int i = 0; i < solicitanteList.size(); i++) {
                                    solicitante = (SSP.Solicitante) solicitanteList.get(i);
                                    out.println("<tr><td> "+String.valueOf(i+1)+". ");
                                %>
                                <a href="confirmacion.jsp?id=3&tipo=1&id_confirmado=<%=String.valueOf(solicitante.getIdSolicitante())%>">
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
                            <div id="titulo">MODIFICAR ACTA DE CONFIRMACI&Oacute;N</div><br><br>
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
                                for (int i = 0; i < confirmaciones.size(); i++) {
                                    confirmado = (SSP.Solicitante) confirmaciones.get(i);
                                    out.println("<tr><td> "+String.valueOf(i+1)+". "); %>
                                <a href="confirmacion.jsp?id=3&tipo=1&id_confirmado=<%=String.valueOf(confirmado.getIdSolicitante())%>">
                                <%out.println(confirmado.getNombre() + " " + confirmado.getApellido());%></a>
                                <%out.println("</td></tr>");
                                }
                                %>
                            </table>
                            <br>
                            <p>
                                <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='confirmacion.jsp?id=1';">
                            </p>
                        </form>
                        <%
                        } else if ((id != null) && (id.compareTo("3") == 0)) {
                            String id_confirmado = request.getParameter("id_confirmado");
                            if (id_confirmado != null) {
                                if (tipo != null)
                                    confirmacionBEAN.confirmado.setIdSolici(id_confirmado);
                                confirmacionBEAN.consultarConfirmacion(Long.parseLong(id_confirmado));
                        %>
                        <form name="Confirmacion" method="post" action="confirmacionModificarBEAN.jsp">
                            <div id="titulo">MODIFICAR DE ACTA DE CONFIRMACI&Oacute;N </div>
                            <br>
                            <br>
                            <br>
                            <div id="menu_navegacion">
                                <ul id="menu_lista">
                                    <li><a href="#" onClick="mostrar(0); return false;">Datos de la Parroquia</a></li>
                                    <li><a href="#" onClick="mostrar(1); return false;">Datos del Confirmado</a></li>
                                    <li><a href="#" onClick="mostrar(2); return false;">Datos de los Padres</a></li>
                                    <li><a href="#" onClick="mostrar(3); return false;">Datos de los Padrinos</a></li>
                                    <li><a href="#" onClick="mostrar(4); return false;">Registro Eclesi&aacute;stico</a></li>
                                    <li><a href="#" onClick="mostrar(5); return false;">Observaci&oacute;n</a></li>
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
                                                    if (confirmacionBEAN.getid_ministro().compareTo(String.valueOf(ministro.getId_ministro()))==0)
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
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3"><label for="lugar_confirmacion" class="preview">Lugar de Confirmaci&oacute;n: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td colspan="2"><input name="lugar_confirmacion" type="text" class="txt" id="lugar_confirmacion" value="<%
                                                                   if(confirmacionBEAN.getlugar_confirmacion()==null)
                                                                       out.println("Parroquia Cristo Rey");
                                                                   else
                                                                       out.println(confirmacionBEAN.getlugar_confirmacion());
                                                               %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3"><label for="fecha_confirmacion" class="preview">Fecha de Confirmaci&oacute;n: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td width="165"><input name="fecha_confirmacion" type="text" class="txt" id="fecha_confirmacion" value="<%
                                                                   if(confirmacionBEAN.getfecha_confirmacion()!=null)
                                                                       out.println(confirmacionBEAN.getfecha_confirmacion());
                                                               %>" maxlength="10"/></td>
                                        <td width="67"><button type="button" name="btn_fecha_confirmacion" id="btn_fecha_confirmacion" onclick="cal.select(document.Confirmacion.fecha_confirmacion,'btn_fecha_confirmacion','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la fecha de la Confirmaci&oacute;n."><img src="../../../imagenes/Calendar.gif" border="0"/></button></td>
                                    </tr>
                                </table>
                            </div>
                            <div id="cont_solicitante">
                                <br><span id="cont_titulo"> Datos del Confirmado</span>
                                <br><br><br>
                                <table width="286" border="0">
                                    <tr>
                                        <td colspan="3"><label for="confirmado_nombre" class="preview">Nombre(s): </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td colspan="2"><input type="text" name="confirmado_nombre" id="confirmado_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                                   if(confirmacionBEAN.getconfirmado_nombre() != null)
                                                                       out.println(confirmacionBEAN.getconfirmado_nombre());
                                                               %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3"><label for="confirmado_apellido" class="preview">Apellido(s): </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td colspan="2"><input type="text" name="confirmado_apellido" id="confirmado_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                                   if(confirmacionBEAN.getconfirmado_apellido() != null)
                                                                       out.println(confirmacionBEAN.getconfirmado_apellido());
                                                               %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3"><label for="id_sexo" class="preview">Sexo: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td colspan="2">
                                            <label><input name="id_sexo" type="radio" value="0" <%if (!confirmacionBEAN.confirmado.getSexo()) out.println("checked");%>> Femenino</input></label>
                                            <label><input name="id_sexo" type="radio" value="1" <%if (confirmacionBEAN.confirmado.getSexo()) out.println("checked");%>> Masculino</input></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3"><label for="fecha_nacimiento" class="preview">Fecha de Nacimiento: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td width="165"><input name="fecha_nacimiento" type="text" class="txt" id="fecha_nacimiento" value="<%
                                                                   if(confirmacionBEAN.getfecha_nacimiento() != null)
                                                                       out.println(confirmacionBEAN.getfecha_nacimiento());
                                                                   else
                                                                       out.println("aaaa-mm-dd");
                                                               %>"/></td>
                                        <td width="67"><button type="button" name="btn_fecha_nacimiento" id="btn_fecha_nacimiento" onclick="cal.select(document.Confirmacion.fecha_nacimiento,'btn_fecha_nacimiento','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la fecha de nacimiento."><img src="../../../imagenes/Calendar.gif" border="0"/></button></td>
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
                                        <td><input type="text" name="padre_nombre" id="padre_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(confirmacionBEAN.getpadre_nombre() != null)
                                                           out.println(confirmacionBEAN.getpadre_nombre());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="padre_apellido" class="preview">Apellido(s) del padre: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td><input type="text" name="padre_apellido" id="padre_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(confirmacionBEAN.getpadre_apellido() != null)
                                                           out.println(confirmacionBEAN.getpadre_apellido());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="madre_nombre" class="preview">Nombre(s) de la madre: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td><input type="text" name="madre_nombre" id="madre_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(confirmacionBEAN.getmadre_nombre() != null)
                                                           out.println(confirmacionBEAN.getmadre_nombre());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="madre_apellido" class="preview">Apellido(s) de la madre: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td><input type="text" name="madre_apellido" id="madre_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(confirmacionBEAN.getmadre_apellido() != null)
                                                           out.println(confirmacionBEAN.getmadre_apellido());
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
                                        <td><input type="text" name="padrino_nombre" id="padrino_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(confirmacionBEAN.getpadrino_nombre() != null)
                                                           out.println(confirmacionBEAN.getpadrino_nombre());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="padrino_apellido" class="preview">Apellido(s) del padrino: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td><input type="text" name="padrino_apellido" id="padrino_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(confirmacionBEAN.getpadrino_apellido() != null)
                                                           out.println(confirmacionBEAN.getpadrino_apellido());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="madrina_nombre" class="preview">Nombre(s) de la madrina: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td><input type="text" name="madrina_nombre" id="madrina_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(confirmacionBEAN.getmadrina_nombre() != null)
                                                           out.println(confirmacionBEAN.getmadrina_nombre());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="madrina_apellido" class="preview">Apellido(s) de la madrina: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td><input type="text" name="madrina_apellido" id="madrina_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(confirmacionBEAN.getmadrina_apellido() != null)
                                                           out.println(confirmacionBEAN.getmadrina_apellido());
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
                                        <td width="126"><input type="text" name="anio_libro" id="anio_libro" class="preview_dato" onKeyUp="onlyNumbers(this);" maxlength="4" value="<%
                                                                   if(confirmacionBEAN.getanio_libro() != null)
                                                                       out.println(confirmacionBEAN.getanio_libro());
                                                               %>"/></td>
                                        <td width="64"><button type="button" name="btn_anio_libro" id="btn_anio_libro" onclick="cal_anio_01b.showCalendar('btn_anio_libro'); return false;" title="Haga click aqu&iacute; para ingresar el a&ntilde;o del Libro de Confirmaci&oacute;n."><img src="../../../imagenes/Calendar.gif" border="0"/></button></td>
                                    </tr>
                                    <tr>
                                        <td height="29"><label for="num_sacramento" class="preview">No: </label></td>
                                        <td><input type="text" name="num_sacramento" id="num_sacramento" class="preview_dato" value="<%
                                                       if(confirmacionBEAN.getnum_sacramento() != null)
                                                       out.println(confirmacionBEAN.getnum_sacramento());
                                                   %>"/></td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td height="29"><label for="num_libro" class="preview">Libro: </label></td>
                                        <td><input type="text" name="num_libro" id="num_libro" class="preview_dato" value="<%
                                                       if(confirmacionBEAN.getnum_libro() != null)
                                                       out.println(confirmacionBEAN.getnum_libro());
                                                   %>"/></td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td height="29"><label for="folio_libro" class="preview">Folio: </label></td>
                                        <td><input type="text" name="folio_libro" id="folio_libro" class="preview_dato" onKeyUp="onlyNumbers(this);" value="<%
                                                       if(confirmacionBEAN.getfolio_libro() != null)
                                                       out.println(confirmacionBEAN.getfolio_libro());
                                                   %>"/></td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </div>
                            <div id="cont_observacion">
                                <br><span id="cont_titulo"> Observaci&oacute;n</span>
                                <br><br><br>
                                <p align="center">
                                    <textarea name="observacion" cols="30" rows="5" id="observacion" class="txt"><%
                                        if(confirmacionBEAN.getObservacion() != null)
                                        out.println(confirmacionBEAN.getObservacion());
                                    %></textarea>
                                </p>
                            </div>
                            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                            <input type="submit" name="Submit" value="Modificar">
                            &nbsp;&nbsp;&nbsp;
                            <input name="btn_cancelar" type="button" id="btn_cancelar" value="Cancelar" onClick="javascript:window.location.href='confirmacion.jsp?id=1';">
                        </form>
                        <%
                        }
                        } else if ((id != null) && (id.compareTo("4") == 0)) {
                        %><br>
                        <table width="200" border="0">
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width="64"><div align="center"><img src="../../../imagenes/dialog-information.png" width="48" height="48"></div></td>
                                <td width="126"><div align="left">Se ha modificado el Acta de Confirmaci&oacute;n con &eacute;xito.</div></td>
                            </tr>
                            <tr>
                                <td colspan="2"><div align="center"><br>
                                        <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='confirmacion.jsp?id=1';">
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
                                <td width="126"><div align="left">Lo siento pero no se ha modificado el Acta de Confirmaci&oacute;n con &eacute;xito.</div></td>
                            </tr>
                            <tr>
                                <td colspan="2"><div align="center"><br>
                                        <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='confirmacion.jsp?id=1';">
                                </div></td>
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

<%
} else
response.sendRedirect("confirmacion.jsp?id=1");
%>