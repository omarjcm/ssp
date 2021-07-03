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
    <title>SSP - Modificar Acta de Bautizo</title>
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
        window.onload = setObjects;
<%
    }
%>
        var cal_anio_01b = new CalendarPopup();
        cal_anio_01b.setDisplayType("year");
        cal_anio_01b.setReturnYearFunction("yearReturnSegundoPaso_RE");
        cal_anio_01b.showYearNavigation();
        function yearReturnSegundoPaso_RE(y) {
                 document.Bautizo.anio_libro.value=y;
        }

        var cal_anio_02b = new CalendarPopup();
        cal_anio_02b.setDisplayType("year");
        cal_anio_02b.setReturnYearFunction("yearReturnSegundoPaso_RC");
        cal_anio_02b.showYearNavigation();
        function yearReturnSegundoPaso_RC(y) {
                 document.Bautizo.anio.value=y;
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
if( uBEAN!=null && uBEAN.esAdministrador() || uBEAN.esSecretario()) {
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
                if (uBEAN.esAdministrador()) {
                %>
                <img src="../../../imagenes/add.png" width="8" height="7"> <a
                    <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"bautismo.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('bautismo.jsp?id=1', mensaje_01)\"");
                    %> >Modificar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="8" height="7"> <a
                    <%
                    if (id.compareTo("1") == 0)
                        out.println("href=\"../anular/bautismo.jsp?id=1\"");
                    else
                        out.println("href=\"#\" onClick=\"cambiar('../anular/bautismo.jsp?id=1', mensaje_02)\"");
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
    }
    if (uBEAN.esAdministrador()) {
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
                        out.println("href=\"#\" onClick=\"cambiar('../../../usuario/modificar/usuario.jsp?id=1', mensaje_01)\"");
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
    }
    if (uBEAN.esAdministrador() || uBEAN.esContador()) {
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
Modificar Acta de Bautizo</span> </td>
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
                out.println("href=\"bautismo.jsp?id=1\"");
            else
                out.println("href=\"#\" onClick=\"cambiar('bautismo.jsp?id=1', mensaje_01)\"");
        %> class="active">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bautizo&nbsp;&nbsp;</a></li>
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
    <div id="titulo">MODIFICAR ACTA DE BAUTIZO</div>
    <br>
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
                            <input type="text" name="bautizado_nombre" id="bautizado_nombre" onKeyPress="return onlyChars(this)" class="txt"/>
                        </p>
                        <p>
                            <label for="bautizado_apellido">Apellido(s): </label>
                            <input type="text" name="bautizado_apellido" id="bautizado_apellido" onKeyPress="return onlyChars(this)" class="txt"/>
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
<form name="PorFecha" method="post" action="bautismo_02BEAN.jsp" onSubmit="buscarPorFecha(); return false;">        
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
                            <button type="button" name="btn_fecha_bautizo" id="btn_fecha_bautizo" onclick="cal.select(document.PorFecha.fecha_bautizo,'btn_fecha_bautizo','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la fecha del Bautizo."><img src="../../../imagenes/Calendar.gif" border="0"/></button>
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
    <div id="titulo">MODIFICAR ACTA DE BAUTIZO</div>
    <br>
    <br>
    <br>
    <table width="300" border="0" class="datatable">
        <tr>
            <td class="informe_02">
            <span id="titulo"><strong>Nombres y Apellidos</strong></span>                                  </td>
        </tr>
        <%
        solicitanteBEAN.setTipo("bautizado");
        SSP.Solicitante solicitante;
        LinkedList solicitanteList = solicitanteBEAN.listaDeSolicitantes();
        for (int i = 0; i < solicitanteList.size(); i++) {
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
        <input name="btn_inicio" type="button" id="btn_inicio" onClick="javascript:window.location.href='bautismo.jsp?id=1';" value="Ir al inicio">
    </p>
</form>
<%
} else if ((id != null && tipo != null) && (id.compareTo("2") == 0 && tipo.compareTo("2") == 0)) {
%>
<form name="Consultar">
    <div id="titulo">MODIFICAR ACTA DE BAUTIZO</div>
    </span><br>
    <br>
    <br>
    <table width="300" border="0" class="datatable">
        <tr>
            <td class="informe_02">
            <span id="titulo"><strong>Nombres y Apellidos</strong></span>                                  </td>
        </tr>
        <%
        SSP.Solicitante bautizado;
        LinkedList bautizos = bautizoBEAN.generarBautizoFecha(bautizoBEAN.getfecha_bautizo(),"bautizo");
        for (int i = 0; i < bautizos.size(); i++) {
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
        <input name="btn_inicio" type="button" id="btn_inicio" onClick="javascript:window.location.href='bautismo.jsp?id=1';" value="Ir al inicio">
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
<form name="Bautizo" method="post" action="bautismoModificarBEAN.jsp">
    <div id="titulo">MODIFICAR ACTA DE BAUTIZO</div>
    <br>
    <br>
    <br>
    <div id="menu_navegacion">
        <ul id="menu_lista">
            <li><a href="#" onClick="mostrar(0); return false;">&nbsp;&nbsp;&nbsp;&nbsp;Datos de la Parroquia</a></li>
            <li><a href="#" onClick="mostrar(1); return false;">&nbsp;&nbsp;&nbsp;&nbsp;Datos del Bautizado</a></li>
            <li><a href="#" onClick="mostrar(2); return false;">&nbsp;&nbsp;&nbsp;&nbsp;Datos de los Padres</a></li>
            <li><a href="#" onClick="mostrar(3); return false;">&nbsp;&nbsp;&nbsp;&nbsp;Datos de los Padrinos</a></li>
            <li><a href="#" onClick="mostrar(4); return false;">&nbsp;&nbsp;&nbsp;&nbsp;Registro Eclesi&aacute;stico</a></li>
            <li><a href="#" onClick="mostrar(5); return false;">&nbsp;&nbsp;&nbsp;&nbsp;Registro Civil</a></li>
            <li><a href="#" onClick="mostrar(6); return false;">&nbsp;&nbsp;&nbsp;&nbsp;Observaci&oacute;n</a></li>
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
                <td width="40"></td>
                <td colspan="2"><select name="id_ministro" id="id_ministro">
                        <%
                        SSP.Ministro ministro;
                        LinkedList ministroList = ministroBEAN.listaDeMinistros();
                        for (int i = 0; i < ministroList.size(); i++) {
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
                </select></td>
            </tr>
            <tr>
                <td colspan="3"><label for="lugar_bautizo" class="preview">Lugar de Bautizo: </label></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2"><input name="lugar_bautizo" type="text" id="lugar_bautizo" class="preview" value="<%
                                           if(bautizoBEAN.getlugar_bautizo()==null)
                                               out.println("Parroquia Cristo Rey");
                                           else
                                               out.println(bautizoBEAN.getlugar_bautizo());
                                       %>"/></td>
            </tr>
            <tr>
                <td colspan="3"><label for="fecha_bautizo" class="preview">Fecha de Bautizo: </label></td>
            </tr>
            <tr>
                <td></td>
                <td width="165"><input name="fecha_bautizo" type="text" id="fecha_bautizo" class="preview" value="<%
                                           if(bautizoBEAN.getfecha_bautizo() != null)
                                               out.println(bautizoBEAN.getfecha_bautizo());
                                       %>"/></td>
                <td width="67"><button type="button" name="btn_fecha_bautizo" id="btn_fecha_bautizo" onclick="cal.select(document.Bautizo.fecha_bautizo,'btn_fecha_bautizo','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la Fecha de Bautizo."><img src="../../../imagenes/Calendar.gif" border="0"/></button></td>
            </tr>
        </table>
    </div>
    <div id="cont_solicitante">
        <br><span id="cont_titulo">Datos del Bautizado</span>
        <br><br><br>
        <table width="238" border="0">
            <tr>
                <td colspan="3"><label for="label" class="preview">Nombre(s): </label></td>
            </tr>
            <tr>
                <td width="18">&nbsp;</td>
                <td colspan="2"><input type="text" name="bautizado_nombre" id="bautizado_nombre" onKeyUp="onlyChars(this)" class="preview" value="<%
                                           if(bautizoBEAN.getbautizado_nombre() != null)
                                               out.println(bautizoBEAN.getbautizado_nombre());
                                       %>"/></td>
            </tr>
            <tr>
                <td colspan="3"><label for="label" class="preview">Apellido(s): </label></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="2"><input type="text" name="bautizado_apellido" id="bautizado_apellido" onKeyUp="onlyChars(this)" class="preview" value="<%
                                           if(bautizoBEAN.getbautizado_apellido() != null)
                                               out.println(bautizoBEAN.getbautizado_apellido());
                                       %>"/></td>
            </tr>
            <tr>
                <td colspan="3"><label for="id_sexo" class="preview">Sexo: </label></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                <input name="id_sexo" type="radio" value="0" <%if (!bautizoBEAN.bautizado.getSexo()) out.println("checked");%>> Femenino</input>
                <input name="id_sexo" type="radio" value="1" <%if (bautizoBEAN.bautizado.getSexo()) out.println("checked");%>>  Masculino</input></td>
            </tr>
            <tr>
                <td colspan="3"><label for="lugar_nacimiento" class="preview">Lugar de Nacimiento: </label></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="2"><input name="lugar_nacimiento" type="text" class="preview" id="lugar_nacimiento" value="<%
                                           if(bautizoBEAN.getlugar_nacimiento() != null)
                                               out.println(bautizoBEAN.getlugar_nacimiento());
                                           else
                                               out.println("Guayaquil - Guayas");
                                       %>"/></td>
            </tr>
            <tr>
                <td colspan="3"><label for="fecha_nacimiento" class="preview">Fecha de Nacimiento: </label></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td width="164"><input name="fecha_nacimiento" type="text" class="preview" id="fecha_nacimiento" value="<%
                                           if(bautizoBEAN.getfecha_nacimiento()!=null) out.println(bautizoBEAN.getfecha_nacimiento());
                                       %>"/></td>
                <td width="42"><button type="button" name="btn_fecha_nacimiento" id="btn_fecha_nacimiento" onclick="cal.select(document.Bautizo.fecha_nacimiento,'btn_fecha_nacimiento','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la Fecha de Nacimiento."><img src="../../../imagenes/Calendar.gif" border="0"/></button></td>
            </tr>
        </table>
    </div>
    <div id="cont_padres">
        <br><span id="cont_titulo">Datos de los Padres</span>
        <br><br><br>
        <table width="230" border="0">
            <tr>
                <td colspan="2"><label for="padre_nombre" class="preview">Nombre(s) del padre: </label></td>
            </tr>
            <tr>
                <td width="40">&nbsp;</td>
                <td><input type="text" name="padre_nombre" id="padre_nombre" onKeyUp="return onlyChars(this)" class="preview" value="<%
                               if(bautizoBEAN.getpadre_nombre() != null)
                                   out.println(bautizoBEAN.getpadre_nombre());
                           %>"/></td>
            </tr>
            <tr>
                <td colspan="2"><label for="padre_apellido" class="preview">Apellido(s) del padre: </label></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><input type="text" name="padre_apellido" id="padre_apellido" onKeyUp="return onlyChars(this)" class="preview" value="<%
                               if(bautizoBEAN.getpadre_apellido() != null)
                                   out.println(bautizoBEAN.getpadre_apellido());
                           %>"/></td>
            </tr>
            <tr>
                <td colspan="2"><label for="madre_nombre" class="preview">Nombre(s) de la madre: </label></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><input type="text" name="madre_nombre" id="madre_nombre" onKeyUp="return onlyChars(this)" class="preview" value="<%
                               if(bautizoBEAN.getmadre_nombre() != null)
                                   out.println(bautizoBEAN.getmadre_nombre());
                           %>"/></td>
            </tr>
            <tr>
                <td colspan="2"><label for="madre_apellido" class="preview">Apellido(s) de la madre: </label></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><input type="text" name="madre_apellido" id="madre_apellido" onKeyUp="return onlyChars(this)" class="preview" value="<%
                               if(bautizoBEAN.getmadre_apellido() != null)
                                   out.println(bautizoBEAN.getmadre_apellido());
                           %>"/></td>
            </tr>
        </table>
    </div>
    <div id="cont_padrinos">
        <br><span id="cont_titulo">Datos de los Padrinos</span>
        <br><br><br>
        <table width="230" border="0">
            <tr>
                <td colspan="2"><label for="padrino_nombre" class="preview">Nombre(s) del padrino: </label></td>
            </tr>
            <tr>
                <td width="40">&nbsp;</td>
                <td><input type="text" name="padrino_nombre" id="padrino_nombre" onKeyUp="return onlyChars(this)" class="preview" value="<%
                               if(bautizoBEAN.getpadrino_nombre() != null)
                                   out.println(bautizoBEAN.getpadrino_nombre());
                           %>"/></td>
            </tr>
            <tr>
                <td colspan="2"><label for="padrino_apellido" class="preview">Apellido(s) del padrino: </label></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><input type="text" name="padrino_apellido" id="padrino_apellido" onKeyUp="return onlyChars(this)" class="preview" value="<%
                               if(bautizoBEAN.getpadrino_apellido() != null)
                                   out.println(bautizoBEAN.getpadrino_apellido());
                           %>"/></td>
            </tr>
            <tr>
                <td colspan="2"><label for="madrina_nombre" class="preview">Nombre(s) de la madrina: </label></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><input type="text" name="madrina_nombre" id="madrina_nombre" onKeyUp="return onlyChars(this)" class="preview" value="<%
                               if(bautizoBEAN.getmadrina_nombre() != null)
                                   out.println(bautizoBEAN.getmadrina_nombre());
                           %>"/></td>
            </tr>
            <tr>
                <td colspan="2"><label for="madrina_apellido" class="preview">Apellido(s) de la madrina: </label></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><input type="text" name="madrina_apellido" id="madrina_apellido" onKeyUp="return onlyChars(this)" class="preview" value="<%
                               if(bautizoBEAN.getmadrina_apellido() != null)
                                   out.println(bautizoBEAN.getmadrina_apellido());
                           %>"/></td>
            </tr>
        </table>
    </div>
    <div id="cont_reg_eclesiastico">
        <br><span id="cont_titulo">Registro Eclesi&aacute;stico</span>
        <br><br><br>
        <table width="230" border="0">
            <tr>
                <td width="40" height="29"><label for="anio_libro" class="preview">A&ntilde;o: </label></td>
                <td width="126"><input name="anio_libro" type="text" id="anio_libro" onKeyUp="onlyNumbers(this);" maxlength="4" class="preview_dato" value="<%
                                           if(bautizoBEAN.getre_anio_libro() != null)
                                               out.println(bautizoBEAN.getre_anio_libro());
                                       %>"/></td>
                <td width="64"><button type="button" name="btn_anio_libro" id="btn_anio_libro" onclick="cal_anio_01b.showCalendar('btn_anio_libro'); return false;" title="Haga click aqu&iacute; para ingresar el a&ntilde;o del Libro de Bautizo."><img src="../../../imagenes/Calendar.gif" border="0"/></button></td>
            </tr>
            <tr>
                <td height="29"><label for="num_sacramento" class="preview">No: </label></td>
                <td><input type="text" name="num_sacramento" id="num_sacramento" class="preview_dato" value="<%
                               if(bautizoBEAN.getre_num_sacramento() != null)
                                   out.println(bautizoBEAN.getre_num_sacramento());
                           %>"/></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="29"><label for="num_libro" class="preview">Libro: </label></td>
                <td><input type="text" name="num_libro" id="num_libro" class="preview_dato" value="<%
                               if(bautizoBEAN.getre_num_libro() != null)
                                   out.println(bautizoBEAN.getre_num_libro());
                           %>"/></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="29"><label for="folio_libro" class="preview">Folio: </label></td>
                <td><input name="folio_libro" type="text" id="folio_libro" onKeyUp="onlyNumbers(this);" class="preview_dato" value="<%
                               if(bautizoBEAN.getre_folio_libro() != null)
                                   out.println(bautizoBEAN.getre_folio_libro());
                           %>"/></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    <div id="cont_reg_civil">
        <br><span id="cont_titulo">Registro Civil</span>
        <br><br><br>
        <table width="230" border="0">
            <tr>
                <td height="29" width="40"><label for="anio" class="preview">A&ntilde;o: </label></td>
                <td width="126"><input type="text" name="anio" id="anio" class="preview_dato" value="<%
                                           if(bautizoBEAN.getrc_anio() != null)
                                               out.println(bautizoBEAN.getrc_anio());
                                       %>" onKeyUp="onlyNumbers(this);" maxlength="4" /></td>
                <td width="64"><button type="button" name="btn_anio" id="btn_anio" onclick="cal_anio_02b.showCalendar('btn_anio'); return false;" title="Haga click aqu&iacute; para ingresar el a&ntilde;o del Libro del Registro Civil."><img src="../../../imagenes/Calendar.gif" border="0" class="preview"/></button></td>
            </tr>
            <tr>
                <td height="29"><label for="acta" class="preview">Acta: </label></td>
                <td><input type="text" name="acta" id="acta" class="preview_dato" value="<%
                               if(bautizoBEAN.getrc_acta() != null)
                                   out.println(bautizoBEAN.getrc_acta());
                           %>"/></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="29"><label for="tomo" class="preview">Tomo: </label></td>
                <td><input type="text" name="tomo" id="tomo" class="preview_dato" value="<%
                               if(bautizoBEAN.getrc_tomo() != null)
                                   out.println(bautizoBEAN.getrc_tomo());
                           %>"/></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="29"><label for="folio" class="preview">Folio: </label></td>
                <td><input type="text" name="folio" id="folio" class="preview_dato" value="<%
                               if(bautizoBEAN.getrc_folio() != null)
                                   out.println(bautizoBEAN.getrc_folio());
                           %>"/></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="29"><label for="rc_lugar" class="preview">Lugar: </label></td>
                <td colspan="2"><input name="rc_lugar" type="text" class="txt" id="rc_lugar" value="<%
                                           if(bautizoBEAN.getrc_lugar() != null)
                                               out.println(bautizoBEAN.getrc_lugar());
                                           else
                                               out.println("Guayaquil - Guayas");
                                       %>"/>                                        </td>
            </tr>
        </table>
    </div>
    <div id="cont_observacion">
        <br><span id="cont_titulo">Observaci&oacute;n</span>
        <br><br><br>
        <p align="center">
            <textarea name="observacion" cols="30" rows="5" id="observacion" class="preview_dato"><%
                if(bautizoBEAN.getObservacion() != null)out.println(bautizoBEAN.getObservacion());
            %></textarea>
        </p>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <br>
    <input name="btn_modificar" type="submit" id="btn_modificar" value="Modificar">
    &nbsp;&nbsp;&nbsp;
    <input name="btn_cancelar" type="button" id="btn_cancelar" value="Cancelar" onClick="javascript:window.location.href='bautismo.jsp?id=1'">
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
        <td width="126"><div align="left">Se ha modificado el Acta de Bautizo con &eacute;xito.</div></td>
    </tr>
    <tr>
        <td colspan="2"><div align="center"><br>
                <input name="btn_inicio" type="button" id="btn_inicio" onClick="javascript:window.location.href='bautismo.jsp?id=1';" value="Ir al inicio">
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
        <td width="126"><div align="left">Lo siento pero no se ha modificado el Acta de Bautizo con &eacute;xito.</div></td>
    </tr>
    <tr>
        <td colspan="2"><div align="center"><br>
                <input name="btn_inicio" type="button" id="btn_inicio" onClick="javascript:window.location.href='bautismo.jsp?id=1';" value="Ir al inicio">
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
    response.sendRedirect("bautismo.jsp?id=1");
%>