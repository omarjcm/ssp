<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="mensaje_error.jsp" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="SSP.*"%>
<%@ page import="java.util.LinkedList"%>

<jsp:useBean id = "ministroBEAN" class = "SSP.Ministro" scope="page"/>
<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>
<jsp:useBean id = "bautizoBEAN" class = "SSP.Bautizar" scope="session"/>

<%
String id = request.getParameter("id");

if (id != null) {
%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SSP - Ingreso de Acta de Bautizo</title>
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
    if (id.compareTo("1") == 0) { 
%>
        window.onload = setObjects;
<%
    } else if (id.compareTo("2") == 0) {
%>
        window.onload = setup;
<%
    }
%>
    </script>
    <script type="text/javascript">
        var cal_anio_01a = new CalendarPopup();
        cal_anio_01a.setDisplayType("year");
        cal_anio_01a.setReturnYearFunction("yearReturnPrimerPaso_RE");
        cal_anio_01a.showYearNavigation();
        function yearReturnPrimerPaso_RE(y) {
                 document.Bautizo.anio_libro.value=y;
        }

        var cal_anio_01b = new CalendarPopup();
        cal_anio_01b.setDisplayType("year");
        cal_anio_01b.setReturnYearFunction("yearReturnSegundoPaso_RE");
        cal_anio_01b.showYearNavigation();
        function yearReturnSegundoPaso_RE(y) {
                 document.bautismo.anio_libro.value=y;
        }

        var cal_anio_02a = new CalendarPopup();
        cal_anio_02a.setDisplayType("year");
        cal_anio_02a.setReturnYearFunction("yearReturnPrimerPaso_RC");
        cal_anio_02a.showYearNavigation();
        function yearReturnPrimerPaso_RC(y) {
                 document.Bautizo.anio.value=y;
        }

        var cal_anio_02b = new CalendarPopup();
        cal_anio_02b.setDisplayType("year");
        cal_anio_02b.setReturnYearFunction("yearReturnSegundoPaso_RC");
        cal_anio_02b.showYearNavigation();
        function yearReturnSegundoPaso_RC(y) {
                 document.bautismo.anio.value=y;
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
                if( (uBEAN.esAdministrador()==true) || (uBEAN.esSecretario()==true) ) {
                %>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a href="#" 
                                                                              <%
                                                                              if (id.compareTo("1") == 0)
                                                                                  out.println("onClick=\"cambiar_tarea('bautismo.jsp?id=1', mensaje_01)\"");
                                                                              else
                                                                                  out.println("onClick=\"cambiar('bautismo.jsp?id=1', mensaje_01)\"");
                                                                              %> >Ingresar Acta</a><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a href="#"
                                                                              <%
                                                                              if (id.compareTo("1") == 0)
                                                                                  out.println("onClick=\"cambiar_tarea('../buscar/bautismo.jsp?id=1', mensaje_02)\"");
                                                                              else
                                                                                  out.println("onClick=\"cambiar('../buscar/bautismo.jsp?id=1', mensaje_02)\"");
                                                                              %> >Buscar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <%
                if (uBEAN.esAdministrador()==true) {
                %>
                <img src="../../../imagenes/add.png" width="8" height="7"> <a href="#" 
                                                                              <%
                                                                              if (id.compareTo("1") == 0)
                                                                                  out.println("onClick=\"cambiar_tarea('../modificar/bautismo.jsp?id=1', mensaje_02)\"");
                                                                              else
                                                                                  out.println("onClick=\"cambiar('../modificar/bautismo.jsp?id=1', mensaje_02)\"");
                                                                              %> >Modificar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="8" height="7"> <a href="#" 
                                                                              <%
                                                                              if (id.compareTo("1") == 0)
                                                                                  out.println("onClick=\"cambiar_tarea('../anular/bautismo.jsp?id=1', mensaje_02)\"");
                                                                              else
                                                                                  out.println("onClick=\"cambiar('../anular/bautismo.jsp?id=1', mensaje_02)\"");
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="4" width="8" height="7"> <a href="#" 
                                                                                                                     <%
                                                                                                                     if (id.compareTo("1") == 0)
                                                                                                                         out.println("onClick=\"cambiar_tarea('../../../usuario/ingresar/usuario.jsp?id=1', mensaje_02)\"");
                                                                                                                     else
                                                                                                                         out.println("onClick=\"cambiar('../../../usuario/ingresar/usuario.jsp?id=1', mensaje_02)\"");
                                                                                                                     %> >Ingresar Usuario</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="2" width="8" height="7"> <a href="#" 
                                                                                                                     <%
                                                                                                                     if (id.compareTo("1") == 0)
                                                                                                                         out.println("onClick=\"cambiar_tarea('../../../usuario/modificar/usuario.jsp?id=1', mensaje_02)\"");
                                                                                                                     else
                                                                                                                         out.println("onClick=\"cambiar('../../../usuario/modificar/usuario.jsp?id=1', mensaje_02)\"");
                                                                                                                     %> >Modificar Usuario</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="1" width="8" height="7"> <a href="#" 
                                                                                                                     <%
                                                                                                                     if (id.compareTo("1") == 0)
                                                                                                                         out.println("onClick=\"cambiar_tarea('../../../usuario/eliminar/usuario.jsp?id=1', mensaje_02)\"");
                                                                                                                     else
                                                                                                                         out.println("onClick=\"cambiar('../../../usuario/eliminar/usuario.jsp?id=1', mensaje_02)\"");
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="4" width="8" height="7"> <a href="#" 
                                                                                                                     <%
                                                                                                                     if (id.compareTo("1") == 0)
                                                                                                                         out.println("onClick=\"cambiar_tarea('../../../contabilidad/ingresar/contabilidad.jsp?id=1', mensaje_02)\"");
                                                                                                                     else
                                                                                                                         out.println("onClick=\"cambiar('../../../contabilidad/ingresar/contabilidad.jsp?id=1', mensaje_02)\"");
                                                                                                                     %> >Ingresar Registro</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="2" width="8" height="7"> <a href="#" 
                                                                                                                     <%
                                                                                                                     if (id.compareTo("1") == 0)
                                                                                                                         out.println("onClick=\"cambiar_tarea('../../../contabilidad/generar/contabilidad.jsp?id=1', mensaje_02)\"");
                                                                                                                     else
                                                                                                                         out.println("onClick=\"cambiar('../../../contabilidad/generar/contabilidad.jsp?id=1', mensaje_02)\"");
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
<td width="512" height="40" valign="middle"><a href="#" 
                                                   <%
                                                   if (id.compareTo("1") == 0)
                                                       out.println("onClick=\"cambiar_tarea('../../../inicio/index.jsp', mensaje_02)\"");
                                                   else
                                                       out.println("onClick=\"cambiar('../../../inicio/index.jsp', mensaje_02)\"");
                                                   %> >Inicio</a> &gt;
    <%
    if (uBEAN.esAdministrador())
        out.println("<span id=\"pista_administrador\">");
    else if (uBEAN.esSecretario())
        out.println("<span id=\"pista_secretario\">");
%> Ingreso de Acta de Bautizo</span> </td>
<td width="36" rowspan="2" align="left" valign="middle">
    <form action="../../../inicio/cerrarSesion.jsp" method="post">
        <img src="../../../imagenes/gnome-shutdown.png" width="36,727" height="35,196" border="0" style="cursor:pointer;" onclick="cerrarSesion()" title="Haga click para salir.">
    </form>
</td>
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
                        <li><a href="#" class="active" 
                                   <%  if (id.compareTo("1") == 0)
                                       out.println("onClick=\"cambiar_tarea('bautismo.jsp?id=1', mensaje_01)\"");
                                   else
                                       out.println("onClick=\"cambiar('bautismo.jsp?id=1', mensaje_01)\""); 
                               %> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bautizo&nbsp;&nbsp;</a></li>
                        <li><a href="#"
                                   <%  if (id.compareTo("1") == 0)
                                       out.println("onClick=\"cambiar_tarea('../../../comunion/acta/ingresar/comunion.jsp?id=1', mensaje_02)\"");
                                   else
                                       out.println("onClick=\"cambiar('../../../comunion/acta/ingresar/comunion.jsp?id=1', mensaje_02)\"");
                               %> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Primera Comuni&oacute;n&nbsp;&nbsp;</a></li>
                        <li><a href="#"
                                   <%  if (id.compareTo("1") == 0)
                                       out.println("onClick=\"cambiar_tarea('../../../confirmacion/acta/ingresar/confirmacion.jsp?id=1', mensaje_02)\"");
                                   else
                                       out.println("onClick=\"cambiar('../../../confirmacion/acta/ingresar/confirmacion.jsp?id=1', mensaje_02)\"");
                               %> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirmaci&oacute;n&nbsp;&nbsp;</a></li>
                        <li><a href="#" 
                                   <%  if (id.compareTo("1") == 0)
                                       out.println("onClick=\"cambiar_tarea('../../../matrimonio/acta/ingresar/matrimonio.jsp?id=1', mensaje_02)\"");
                                   else
                                       out.println("onClick=\"cambiar('../../../matrimonio/acta/ingresar/matrimonio.jsp?id=1', mensaje_02)\"");
                               %> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Matrimonio&nbsp;&nbsp;</a></li>
                    </ul>
                    <div id="container">
                        <%
                        if (id.compareTo("1") == 0) {
                        %>
                        <form name="Bautizo" method="post" action="bautismoBEAN.jsp">
                            <div id="titulo">INGRESO DE ACTA DE BAUTIZO</div><br><br><br>
                            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
                                                        for (int i = 0; i < ministroList.size(); i++) {
                                                            ministro = (SSP.Ministro) ministroList.get(i);
                                                            out.println("<option value="+String.valueOf(ministro.getId_ministro())+">"
                                                                    +ministro.getDignidad()+" "+ministro.getNombre()+" "
                                                                    +ministro.getApellido()+"</option>");
                                                        }
                                                        %>
                                                    </select>
                                                    <input name="btn_ministro" type="button" id="btn_ministro" value="Nuevo" onClick="mostrarMinistro()">
                                                </p>
                                                <p>
                                                    <label for="lugar_bautizo">Lugar de Bautizo: </label>
                                                    <input name="lugar_bautizo" type="text" class="txt" id="lugar_bautizo" value="Parroquia Cristo Rey" title="Editar Lugar de Bautizo" onKeyUp="onlyChars(this);"/>
                                                </p>
                                                <p>
                                                    <label for="fecha_bautizo">Fecha de Bautizo: </label>
                                                    <input name="fecha_bautizo" type="text" class="txt" id="fecha_bautizo"  value="aaaa-mm-dd" maxlength="10"  title="Editar Fecha de Bautizo"/>
                                                    <button type="button" name="btn_fecha_bautizo" id="btn_fecha_bautizo" onclick="cal.select(document.Bautizo.fecha_bautizo,'btn_fecha_bautizo','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la Fecha de Bautizo."><img src="../../../imagenes/Calendar.gif" border="0"/></button>
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
                                                    <input type="text" name="bautizado_nombre" id="bautizado_nombre" onKeyUp="return onlyChars(this)" class="txt"/>
                                                </p>
                                                <p>
                                                    <label for="bautizado_apellido">Apellido(s): </label>
                                                    <input type="text" name="bautizado_apellido" id="bautizado_apellido" onKeyUp="return onlyChars(this)" class="txt"/>
                                                </p>
                                                <p>
                                                    <label for="id_sexo">Sexo: </label>
                                                    <input name="id_sexo" type="radio" value="0" checked> Femenino</input>
                                                    <input name="id_sexo" type="radio" value="1"> Masculino</input>
                                                </p>
                                                <p>
                                                    <label for="lugar_nacimiento">Lugar de Nacimiento: </label>
                                                    <input name="lugar_nacimiento" type="text" class="txt" id="lugar_nacimiento" value="Guayaquil - Guayas" title="Editar Lugar de Nacimiento" onKeyUp="return onlyChars(this)"/>
                                                </p>
                                                <p>
                                                    <label for="fecha_nacimiento">Fecha de Nacimiento: </label>
                                                    <input name="fecha_nacimiento" type="text" class="txt" id="fecha_nacimiento" value="aaaa-mm-dd"  title="Editar Fecha de Nacimiento"/>
                                                    <button type="button" name="btn_fecha_nacimiento" id="btn_fecha_nacimiento" onclick="cal.select(document.Bautizo.fecha_nacimiento,'btn_fecha_nacimiento','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la Fecha de Nacimiento."><img src="../../../imagenes/Calendar.gif" border="0"/></button>
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
                                                    <input type="text" name="padre_nombre" id="padre_nombre" onKeyUp="return onlyChars(this)" class="txt"/>
                                                </p>
                                                <p>
                                                    <label for="padre_apellido">Apellido(s) del padre: </label>
                                                    <input type="text" name="padre_apellido" id="padre_apellido" onKeyUp="return onlyChars(this)" class="txt" title="Editar Apellido(s) del padre"/>
                                                </p>
                                                <p>
                                                    <label for="madre_nombre">Nombre(s) de la madre: </label>
                                                    <input type="text" name="madre_nombre" id="madre_nombre" onKeyUp="return onlyChars(this)" class="txt"/>
                                                </p>
                                                <p>
                                                    <label for="madre_apellido">Apellido(s) de la madre: </label>
                                                    <input type="text" name="madre_apellido" id="madre_apellido" onKeyUp="return onlyChars(this)" class="txt" title="Editar Apellido(s) de la madre"/>
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
                                                    <input type="text" name="padrino_nombre" id="padrino_nombre" onKeyUp="return onlyChars(this)" class="txt"/>
                                                </p>
                                                <p>
                                                    <label for="padrino_apellido">Apellido(s) del padrino: </label>
                                                    <input type="text" name="padrino_apellido" id="padrino_apellido" onKeyUp="return onlyChars(this)" class="txt"/>
                                                </p>
                                                <p>
                                                    <label for="madrina_nombre">Nombre(s) de la madrina: </label>
                                                    <input type="text" name="madrina_nombre" id="madrina_nombre" onKeyUp="return onlyChars(this)" class="txt"/>
                                                </p>
                                                <p>
                                                    <label for="madrina_apellido">Apellido(s) de la madrina: </label>
                                                    <input type="text" name="madrina_apellido" id="madrina_apellido" onKeyUp="return onlyChars(this)" class="txt"/>
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
                                                    <label for="anio_libro">A&ntilde;o: </label>
                                                    <input type="text" name="anio_libro" id="anio_libro" class="txt" onKeyUp="onlyNumbers(this);" maxlength="4" title="Editar A&ntilde;o"/>
                                                    <button type="button" name="btn_anio_libro" id="btn_anio_libro" onclick="cal_anio_01a.showCalendar('btn_anio_libro'); return false;" title="Haga click aqu&iacute; para ingresar el a&ntilde;o del Libro de Bautizo."><img src="../../../imagenes/Calendar.gif" border="0"/></button>
                                                </p>
                                                <p>
                                                    <label for="num_sacramento">No: </label>
                                                    <input type="text" name="num_sacramento" id="num_sacramento" class="txt"/>
                                                </p>
                                                <p>
                                                    <label for="num_libro">Libro: </label>
                                                    <input type="text" name="num_libro" id="num_libro" class="txt"/>
                                                </p>
                                                <p>
                                                    <label for="folio_libro">Folio: </label>
                                                    <input type="text" name="folio_libro" id="folio_libro" class="txt" onKeyUp="onlyNumbers(this);"/>
                                                </p>	
                                            </fieldset>
                                        </td>
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
                                                    <label for="anio">A&ntilde;o: </label>
                                                    <input type="text" name="anio" id="anio" class="txt" onKeyUp="onlyNumbers(this);" maxlength="4" title="Editar A&ntilde;o"/>
                                                    <button type="button" name="btn_anio" id="btn_anio" onclick="cal_anio_02a.showCalendar('btn_anio'); return false;" title="Haga click aqu&iacute; para ingresar el a&ntilde;o del Libro del Registro Civil."><img src="../../../imagenes/Calendar.gif" border="0"/></button>
                                                </p>
                                                <p>
                                                    <label for="acta">Acta: </label>
                                                    <input type="text" name="acta" id="acta" class="txt"/>
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
                                            </fieldset>
                                        </td>
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
                                                    <textarea name="observacion" cols="40" rows="5" class="txt" id="observacion"></textarea>
                                                </p>
                                            </fieldset>
                                        </td>
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
                                            <input name="btn_guardar" type="button" id="btn_guardar" onClick="javascript:document.Bautizo.submit();" value="Guardar">
                                            &nbsp;&nbsp;&nbsp;
                                            <input name="btn_cancelar" type="button" id="btn_cancelar" onClick="javascript:window.location.href='bautismo.jsp?id=1';" value="Cancelar">
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </form>
                        <%
                        } else if (id.compareTo("2") == 0) {
                        %>
                        <form name="bautismo" method="post" action="bautismoIngresarBEAN.jsp">
                            <div id="titulo">VERIFIQUE LOS DATOS A INGRESAR</div>
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
                                        <td width="67"><button type="button" name="btn_fecha_bautizo" id="btn_fecha_bautizo" onclick="cal.select(document.bautismo.fecha_bautizo,'btn_fecha_bautizo','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la Fecha de Bautizo."><img src="../../../imagenes/Calendar.gif" border="0"/></button></td>
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
                                        <td colspan="2"><input type="text" name="bautizado_nombre" id="bautizado_nombre" onKeyUp="return onlyChars(this)" class="preview" value="<%
                                                                   if(bautizoBEAN.getbautizado_nombre() != null)
                                                                       out.println(bautizoBEAN.getbautizado_nombre());
                                                               %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3"><label for="label" class="preview">Apellido(s): </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td colspan="2"><input type="text" name="bautizado_apellido" id="bautizado_apellido" onKeyUp="return onlyChars(this)" class="preview" value="<%
                                                                   if(bautizoBEAN.getbautizado_apellido() != null)
                                                                       out.println(bautizoBEAN.getbautizado_apellido());
                                                               %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3"><label for="id_sexo" class="preview">Sexo: </label></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td colspan="2"><input name="id_sexo" type="radio" value="0" <%if (bautizoBEAN.getbautizado_sexo().compareTo("0") == 0) out.println("checked");%>> Femenino</input>
                                        <input name="id_sexo" type="radio" value="1" <%if (bautizoBEAN.getbautizado_sexo().compareTo("1") == 0) out.println("checked");%>>  Masculino</input></td>
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
                                        <td width="42"><button type="button" name="btn_fecha_nacimiento" id="btn_fecha_nacimiento" onclick="cal.select(document.bautismo.fecha_nacimiento,'btn_fecha_nacimiento','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la Fecha de Nacimiento."><img src="../../../imagenes/Calendar.gif" border="0"/></button></td>
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
                            <input name="btn_guardar" type="button" id="btn_guardar" value="Guardar" onClick="validarIngreso();">
                            &nbsp;&nbsp;&nbsp;
                            <input name="btn_cancelar" type="button" id="btn_cancelar" value="Cancelar" onClick="cambiar_tarea('bautismo.jsp?id=1')">
                        </form>
                        <%
                        } else if (id.compareTo("3") == 0) {
                        %><br>
                        <table width="200" border="0">
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width="64"><div align="center"><img src="../../../imagenes/dialog-information.png" width="48" height="48"></div></td>
                                <td width="126"><div align="left">Se ha ingresado el Acta de Bautizo con &eacute;xito.  </div></td>
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
                        <br>
                        <%
                        } else if (id.compareTo("4") == 0) {
                        %><br>
                        <table width="200" border="0">
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width="64"><div align="center"><img src="../../../imagenes/dialog-error.png" width="48" height="48"></div></td>
                                <td width="126"><div align="left">Lo siento pero no se ha ingresado el Acta de Bautizo con &eacute;xito. </div></td>
                            </tr>
                            <tr>
                                <td colspan="2"><div align="center"><br>
                                        <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='bautismo.jsp?id=1';">
                                </div></td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                        </table><br>
                        
                        <%
                        } else
                            response.sendRedirect("bautismo.jsp?id=1");
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
                                                <input type="text" name="ministro_nombre" id="ministro_nombre" onKeyPress="return onlyChars(this)" class="txt"/>
                                            </p>
                                            <p>
                                                <label for="ministro_apellido">Apellido(s): </label>
                                                <input type="text" name="ministro_apellido" id="ministro_apellido" onKeyPress="return onlyChars(this)" class="txt"/>
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

<%
} else
    response.sendRedirect("bautismo.jsp?id=1");
%>