<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="mensaje_error.jsp" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="SSP.*"%>
<%@ page import="java.util.LinkedList"%>

<jsp:useBean id = "ministroBEAN" class = "SSP.Ministro" scope="page"/>
<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>
<jsp:useBean id = "matrimonioBEAN" class = "SSP.Casar" scope="session"/>

<%
String id = request.getParameter("id");

if (id != null) {
%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SSP - Ingreso de Acta de Matrimonio</title>
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
        var cal_anio_01b = new CalendarPopup();
        cal_anio_01b.setDisplayType("year");
        cal_anio_01b.setReturnYearFunction("yearReturnSegundoPaso_RE");
        cal_anio_01b.showYearNavigation();
        function yearReturnSegundoPaso_RE(y) {
                 document.casar.anio_libro.value=y;
        }
        
        var cal_anio_02b = new CalendarPopup();
        cal_anio_02b.setDisplayType("year");
        cal_anio_02b.setReturnYearFunction("yearReturnSegundoPaso_RC");
        cal_anio_02b.showYearNavigation();
        function yearReturnSegundoPaso_RC(y) {
                 document.casar.anio.value=y;
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
                <img src="../../../imagenes/add.png" width="7" height="7"> <a href="#"
                                                                              <%
                                                                              if (id.compareTo("1") == 0)
                                                                                  out.println("onClick=\"cambiar_tarea('matrimonio.jsp?id=1', mensaje_01)\"");
                                                                              else
                                                                                  out.println("onClick=\"cambiar('matrimonio.jsp?id=1', mensaje_01)\"");
                                                                              %> >Ingresar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a href="#" 
                                                                              <%
                                                                              if (id.compareTo("1") == 0)
                                                                                  out.println("onClick=\"cambiar_tarea('../buscar/matrimonio.jsp?id=1', mensaje_02)\"");
                                                                              else
                                                                                  out.println("onClick=\"cambiar('../buscar/matrimonio.jsp?id=1', mensaje_02)\"");
                                                                              %> >Buscar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <%
                if (uBEAN.esAdministrador()) {
                %>
                <img src="../../../imagenes/add.png" width="8" height="7"> <a href="#" 
                                                                              <%
                                                                              if (id.compareTo("1") == 0)
                                                                                  out.println("onClick=\"cambiar_tarea('../modificar/matrimonio.jsp?id=1', mensaje_02)\"");
                                                                              else
                                                                                  out.println("onClick=\"cambiar('../modificar/matrimonio.jsp?id=1', mensaje_02)\"");
                                                                              %> >Modificar Acta</a>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="8" height="7"> <a href="#" 
                                                                              <%
                                                                              if (id.compareTo("1") == 0)
                                                                                  out.println("onClick=\"cambiar_tarea('../anular/matrimonio.jsp?id=1', mensaje_02)\"");
                                                                              else
                                                                                  out.println("onClick=\"cambiar('../anular/matrimonio.jsp?id=1', mensaje_02)\"");
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
    }
    if (uBEAN.esAdministrador() || uBEAN.esContador()) {
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
    %>
</td>
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
    %>
Ingreso de Acta de Matrimonio</span></td>
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
                        <li><a href="#" onClick="cambiar_tarea('../../../bautismo/acta/ingresar/bautismo.jsp?id=1', mensaje_02)"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bautizo&nbsp;&nbsp;</span></a></li>
                        <li><a href="#" onClick="cambiar_tarea('../../../comunion/acta/ingresar/comunion.jsp?id=1', mensaje_02)"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Primera Comuni&oacute;n&nbsp;&nbsp;</span></a></li>
                        <li><a href="#" onClick="cambiar_tarea('../../../confirmacion/acta/ingresar/confirmacion.jsp?id=1', mensaje_02)"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirmaci&oacute;n&nbsp;&nbsp;</span></a></li>
                        <li><a href="#" class="active" onClick="cambiar_tarea('matrimonio.jsp?id=1', mensaje_01)"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Matrimonio&nbsp;&nbsp;</span></a></li>
                    </ul>
                    <div id="container">
                        <%
                        if (id.compareTo("1") == 0) {
                        %>
                        <form name="Matrimonio" method="post" action="matrimonioBEAN.jsp">
                            <div id="titulo">INGRESO DE ACTA DE MATRIMONIO</div><br>
                            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                            <div id="parroquia">
                                <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td height="251" colspan="6" valign="top">
                                            <div id="titulo_paso">Paso 1 de 8</div>
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
                                                    <label for="fecha_matrimonio">Fecha de Matrimonio: </label>
                                                    <input name="fecha_matrimonio" type="text" class="txt" id="fecha_matrimonio"  value="aaaa-mm-dd" maxlength="10"/>
                                                    <button type="button" name="btn_fecha_matrimonio" id="btn_fecha_matrimonio" onclick="cal.select(document.Matrimonio.fecha_matrimonio,'btn_fecha_matrimonio','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la fecha del Matrimonio."><img src="../../../imagenes/Calendar.gif" border="0"/></button>
                                                </p>
                                            </fieldset>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="10%" align="center">&nbsp;</td>
                                        <td width="10%" align="center">&nbsp;</td>
                                        <td width="30%">&nbsp;</td>
                                        <td width="30%">&nbsp;</td>
                                        <td width="10%" align="center"><a onclick="mostrarSolicitante()" style="cursor:pointer;"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
                                        <td width="10%" align="center" valign="middle"><div align="left">Siguiente</div></td>
                                    </tr>
                                </table>
                            </div>
                            
                            <div id="solicitante">
                                <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td height="251" colspan="6" valign="top">
                                            <div id="titulo_paso">Paso 2 de 8</div>
                                            <fieldset>
                                                <legend>Datos de los Esposos</legend>
                                                <p>
                                                    <label for="esposo_nombre">Nombre(s) del esposo: </label>
                                                    <input type="text" name="esposo_nombre" id="esposo_nombre" onKeyUp="return onlyChars(this)" class="txt"/>
                                                </p>
                                                <p>
                                                    <label for="esposo_apellido">Apellido(s) del esposo: </label>
                                                    <input type="text" name="esposo_apellido" id="esposo_apellido" onKeyUp="return onlyChars(this)" class="txt"/>
                                                </p>
                                                <p>
                                                    <label for="esposa_nombre">Nombre(s) de la esposa: </label>
                                                    <input type="text" name="esposa_nombre" id="esposa_nombre" onKeyUp="return onlyChars(this)" class="txt"/>
                                                </p>
                                                <p>
                                                    <label for="esposa_apellido">Apellido(s) de la esposa: </label>
                                                    <input type="text" name="esposa_apellido" id="esposa_apellido" onKeyUp="return onlyChars(this)" class="txt"/>
                                                </p>
                                            </fieldset>                
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="10%" align="center" valign="middle"><div align="right">Anterior</div></td>
                                        <td width="10%" align="center"><a onclick="mostrarParroquia()" style="cursor:pointer;"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
                                        <td width="30%">&nbsp;</td>
                                        <td width="30%">&nbsp;</td>
                                        <td width="10%" align="center"><a onclick="mostrarPadresEsposo()" style="cursor:pointer;"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
                                        <td width="10%" align="center" valign="middle"><div align="left">Siguiente</div></td>
                                    </tr>
                                </table>
                            </div>
                            
                            <div id="padres_esposo">
                                <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td height="251" colspan="6" valign="top">
                                            <div id="titulo_paso">Paso 3 de 8</div>
                                            <fieldset>
                                                <legend>Datos de los Padres del Esposo</legend>
                                                <p>
                                                    <label for="pa_esposo_nombre">Nombre(s) del padre: </label>
                                                    <input type="text" name="pa_esposo_nombre" id="pa_esposo_nombre" onKeyUp="return onlyChars(this)" class="txt"/>
                                                </p>
                                                <p>
                                                    <label for="pa_esposo_apellido">Apellido(s) del padre: </label>
                                                    <input type="text" name="pa_esposo_apellido" id="pa_esposo_apellido" onKeyUp="return onlyChars(this)" class="txt"/>
                                                </p>
                                                <p>
                                                    <label for="ma_esposo_nombre">Nombre(s) de la madre: </label>
                                                    <input type="text" name="ma_esposo_nombre" id="ma_esposo_nombre" onKeyUp="return onlyChars(this)" class="txt"/>
                                                </p>
                                                <p>
                                                    <label for="ma_esposo_apellido">Apellido(s) de la madre: </label>
                                                    <input type="text" name="ma_esposo_apellido" id="ma_esposo_apellido" onKeyUp="return onlyChars(this)" class="txt"/>
                                                </p>
                                            </fieldset>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="10%" align="center" valign="middle"><div align="right">Anterior</div></td>
                                        <td width="10%" align="center"><a onclick="mostrarSolicitante()" style="cursor:pointer;"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
                                        <td width="30%">&nbsp;</td>
                                        <td width="30%">&nbsp;</td>
                                        <td width="10%" align="center"><a onclick="mostrarPadresEsposa()" style="cursor:pointer;"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
                                        <td width="10%" align="center" valign="middle"><div align="left">Siguiente</div></td>
                                    </tr>
                                </table>
                            </div>
                            
                            <div id="padres_esposa">
                                <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td height="251" colspan="6" valign="top">
                                            <div id="titulo_paso">Paso 4 de 8</div>
                                            <fieldset>
                                                <legend>Datos de los Padres de la Esposa</legend>
                                                <p>
                                                    <label for="pa_esposa_nombre">Nombre(s) del padre: </label>
                                                    <input type="text" name="pa_esposa_nombre" id="pa_esposa_nombre" onKeyUp="return onlyChars(this)" class="txt"/>
                                                </p>
                                                <p>
                                                    <label for="pa_esposa_apellido">Apellido(s) del padre: </label>
                                                    <input type="text" name="pa_esposa_apellido" id="pa_esposa_apellido" onKeyUp="return onlyChars(this)" class="txt"/>
                                                </p>
                                                <p>
                                                    <label for="ma_esposa_nombre">Nombre(s) de la madre: </label>
                                                    <input type="text" name="ma_esposa_nombre" id="ma_esposa_nombre" onKeyUp="return onlyChars(this)" class="txt"/>
                                                </p>
                                                <p>
                                                    <label for="ma_esposa_apellido">Apellido(s) de la madre: </label>
                                                    <input type="text" name="ma_esposa_apellido" id="ma_esposa_apellido" onKeyUp="return onlyChars(this)" class="txt"/>
                                                </p>
                                            </fieldset>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="10%" align="center" valign="middle"><div align="right">Anterior</div></td>
                                        <td width="10%" align="center"><a onclick="mostrarPadresEsposo()" style="cursor:pointer;"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
                                        <td width="30%">&nbsp;</td>
                                        <td width="30%">&nbsp;</td>
                                        <td width="10%" align="center"><a onclick="mostrarPadrinos()" style="cursor:pointer;"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
                                        <td width="10%" align="center" valign="middle"><div align="left">Siguiente</div></td>
                                    </tr>
                                </table>
                            </div>
                            
                            <div id="padrinos">
                                <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td height="251" colspan="6" valign="top">
                                            <div id="titulo_paso">Paso 5 de 8</div>
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
                                            </fieldset>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="10%" align="center" valign="middle"><div align="right">Anterior</div></td>
                                        <td width="10%" align="center"><a onclick="mostrarPadresEsposa()" style="cursor:pointer;"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
                                        <td width="30%">&nbsp;</td>
                                        <td width="30%">&nbsp;</td>
                                        <td width="10%" align="center"><a onclick="mostrarRegistroEclesiastico()" style="cursor:pointer;"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
                                        <td width="10%" align="center" valign="middle"><div align="left">Siguiente</div></td>
                                    </tr>
                                </table>
                            </div>
                            
                            <div id="reg_eclesiastico">
                                <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td height="251" colspan="6" valign="top">
                                            <div id="titulo_paso">Paso 6 de 8</div>
                                            <fieldset>
                                                <legend>Registro Eclesi&aacute;stico</legend>
                                                <p>
                                                    <label for="anio_libro">A&ntilde;o: </label>
                                                    <input type="text" name="anio_libro" id="anio_libro" class="txt" onKeyUp="onlyNumbers(this);" maxlength="4"/>
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
                                        <td width="10%" align="center" valign="middle"><div align="right">Anterior</div></td>
                                        <td width="10%" align="center"><a onclick="mostrarPadrinos()" style="cursor:pointer;"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
                                        <td width="30%">&nbsp;</td>
                                        <td width="30%">&nbsp;</td>
                                        <td width="10%" align="center"><a onclick="mostrarRegistroCivil()" style="cursor:pointer;"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
                                        <td width="10%" align="center" valign="middle"><div align="left">Siguiente</div></td>
                                    </tr>
                                </table>
                            </div>
                            
                            <div id="reg_civil">
                                <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td height="251" colspan="6" valign="top">
                                            <div id="titulo_paso">Paso 7 de 8</div>
                                            <fieldset>
                                                <legend>Datos del Registro Civil</legend>
                                                <p>
                                                    <label for="rc_fecha_inscripcion">Fecha de Inscripci&oacute;n: </label>
                                                    <input name="rc_fecha_inscripcion" type="text" class="txt" id="rc_fecha_inscripcion"  value="aaaa-mm-dd" maxlength="10"/>
                                                    <button type="button" name="btn_fecha_inscripcion" id="btn_fecha_inscripcion" onclick="cal.select(document.Matrimonio.rc_fecha_inscripcion,'btn_fecha_inscripcion','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la fecha de la Inscripci&oacute;n del Matrimonio Civil."><img src="../../../imagenes/Calendar.gif" border="0"/></button>
                                                </p>
                                                <p>
                                                    <label for="anio">A&ntilde;o: </label>
                                                    <input type="text" name="anio" id="anio" class="txt" onKeyUp="onlyNumbers(this);" maxlength="4"/>
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
                                                    <label for="lugar_inscripcion">Lugar Inscripci&oacute;n: </label>
                                                    <input name="rc_lugar_inscripcion" type="text" class="txt" id="rc_lugar_inscripcion" value="Guayaquil - Guayas"/>
                                                </p>
                                            </fieldset>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="10%" align="center" valign="middle"><div align="right">Anterior</div></td>
                                        <td width="10%" align="center"><a onclick="mostrarRegistroEclesiastico()" style="cursor:pointer;"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
                                        <td width="30%">&nbsp;</td>
                                        <td width="30%">&nbsp;</td>
                                        <td width="10%" align="center"><a onclick="mostrarObservacion()" style="cursor:pointer;"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
                                        <td width="10%" align="center" valign="middle"><div align="left">Siguiente</div></td>
                                    </tr>
                                </table>
                            </div>
                            
                            <div id="txt_observacion">
                                <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td height="251" colspan="6" valign="top">
                                            <div id="titulo_paso">Paso 8 de 8</div>
                                            <fieldset>
                                                <legend>Observaci&oacute;n</legend>
                                                <p align="center">
                                                    <textarea name="observacion" cols="40" rows="4" class="txt" id="observacion"></textarea>
                                                </p>
                                            </fieldset>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="10%" align="center" valign="middle"><div align="right">Anterior</div></td>
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
                                            <input name="btn_guardar" type="button" id="btn_guardar" onClick="javascript:document.Matrimonio.submit();" value="Guardar">
                                            &nbsp;&nbsp;&nbsp;
                                        <input name="btn_cancelar" type="button" id="btn_cancelar" value="Cancelar" onClick="javascript:window.location.href='matrimonio.jsp?id=1';">                </td>
                                    </tr>
                                </table>
                            </div>
                            
                        </form>
                        <%
                        } else if (id != null && id.compareTo("2") == 0) {
                        %>
                        <form name="casar" method="post" action="matrimonioIngresarBEAN.jsp">
                            <div id="titulo">VERIFIQUE LOS DATOS A INGRESAR</div>
                            <br>
                            <br>
                            <br>
                            <div id="menu_navegacion">
                                <ul id="menu_lista">
                                    <li><a href="#" onClick="mostrar(0); return false;">Datos de la Parroquia</a></li>
                                    <li><a href="#" onClick="mostrar(1); return false;">Datos de los Esposos </a></li>
                                    <li><a href="#" onClick="mostrar(2); return false;">Datos de los Padres (I)</a></li>
                                    <li><a href="#" onClick="mostrar(3); return false;">Datos de los Padres (II)</a></li>
                                    <li><a href="#" onClick="mostrar(4); return false;">Datos de los Padrinos</a></li>
                                    <li><a href="#" onClick="mostrar(5); return false;">Registro Eclesi&aacute;stico</a></li>
                                    <li><a href="#" onClick="mostrar(6); return false;">Registro Civil</a></li>
                                    <li><a href="#" onClick="mostrar(7); return false;">Observaci&oacute;n</a></li>
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
                                        </select></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3"><label for="fecha_matrimonio" class="preview">Fecha de Matrimonio: </label></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td width="165"><input name="fecha_matrimonio" type="text" id="fecha_matrimonio" class="txt" value="<%
                                                                   if(matrimonioBEAN.getfecha_matrimonio()!=null)out.println(matrimonioBEAN.getfecha_matrimonio());
                                                               %>"/></td>
                                        <td width="67"><button type="button" name="btn_fecha_matrimonio" id="btn_fecha_matrimonio" onclick="cal.select(document.casar.fecha_matrimonio,'btn_fecha_matrimonio','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la fecha del Matrimonio."><img src="../../../imagenes/Calendar.gif" border="0"/></button></td>
                                    </tr>
                                </table>
                            </div>
                            <div id="cont_solicitante">
                                <br><span id="cont_titulo"> Datos de los Esposos</span>
                                <br><br><br>
                                <table width="230" border="0">
                                    <tr>
                                        <td colspan="2"><label for="esposo_nombre" class="preview">Nombre(s) del esposo: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="esposo_nombre" id="esposo_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(matrimonioBEAN.getesposo_nombre()!= null)
                                                           out.println(matrimonioBEAN.getesposo_nombre());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="esposo_apellido" class="preview">Apellido(s) del esposo: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="esposo_apellido" id="esposo_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(matrimonioBEAN.getesposo_apellido()!= null)
                                                           out.println(matrimonioBEAN.getesposo_apellido());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="esposa_nombre" class="preview">Nombre(s) del esposa: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="esposa_nombre" id="esposa_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(matrimonioBEAN.getesposa_nombre()!= null)
                                                           out.println(matrimonioBEAN.getesposa_nombre());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="esposa_apellido" class="preview">Apellido(s) del esposa: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="esposa_apellido" id="esposa_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(matrimonioBEAN.getesposa_apellido()!= null)
                                                           out.println(matrimonioBEAN.getesposa_apellido());
                                                   %>"/></td>
                                    </tr>
                                </table>
                            </div>
                            <div id="cont_padres_esposo">
                                <br><span id="cont_titulo"> Datos de los Padres del Esposo</span>
                                <br><br><br>
                                <table width="230" border="0">
                                    <tr>
                                        <td colspan="2"><label for="pa_esposo_nombre" class="preview">Nombre(s) del padre: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="pa_esposo_nombre" id="pa_esposo_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(matrimonioBEAN.getpa_esposo_nombre()!= null)
                                                           out.println(matrimonioBEAN.getpa_esposo_nombre());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="pa_esposo_apellido" class="preview">Apellido(s) del padre: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="pa_esposo_apellido" id="pa_esposo_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(matrimonioBEAN.getpa_esposo_apellido() != null)
                                                           out.println(matrimonioBEAN.getpa_esposo_apellido());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="ma_esposo_nombre" class="preview">Nombre(s) de la madre: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="ma_esposo_nombre" id="ma_esposo_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(matrimonioBEAN.getma_esposo_nombre()!= null)
                                                           out.println(matrimonioBEAN.getma_esposo_nombre());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="ma_esposo_apellido" class="preview">Apellido(s) de la madre: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="ma_esposo_apellido" id="ma_esposo_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(matrimonioBEAN.getma_esposo_apellido() != null)
                                                           out.println(matrimonioBEAN.getma_esposo_apellido());
                                                   %>"/></td>
                                    </tr>
                                </table>
                            </div>
                            <div id="cont_padres_esposa">
                                <br><span id="cont_titulo"> Datos de los Padres de la Esposa</span>
                                <br><br><br>
                                <table width="230" border="0">
                                    <tr>
                                        <td colspan="2"><label for="pa_esposa_nombre" class="preview">Nombre(s) del padre: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="pa_esposa_nombre" id="pa_esposa_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(matrimonioBEAN.getpa_esposa_nombre() != null)
                                                           out.println(matrimonioBEAN.getpa_esposa_nombre());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="pa_esposa_apellido" class="preview">Apellido(s) del padre: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="pa_esposa_apellido" id="pa_esposa_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(matrimonioBEAN.getpa_esposa_apellido() != null)
                                                           out.println(matrimonioBEAN.getpa_esposa_apellido());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="ma_esposa_nombre" class="preview">Nombre(s) de la madre: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="ma_esposa_nombre" id="ma_esposa_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(matrimonioBEAN.getma_esposa_nombre() != null)
                                                           out.println(matrimonioBEAN.getma_esposa_nombre());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="ma_esposa_apellido" class="preview">Apellido(s) de la madre: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="ma_esposa_apellido" id="ma_esposa_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(matrimonioBEAN.getma_esposa_apellido() != null)
                                                           out.println(matrimonioBEAN.getma_esposa_apellido());
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
                                                       if(matrimonioBEAN.getpadrino_nombre() != null)
                                                           out.println(matrimonioBEAN.getpadrino_nombre());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="padrino_apellido" class="preview">Apellido(s) del padrino: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="padrino_apellido" id="padrino_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(matrimonioBEAN.getpadrino_apellido() != null)
                                                           out.println(matrimonioBEAN.getpadrino_apellido());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="madrina_nombre" class="preview">Nombre(s) de la madrina: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="madrina_nombre" id="madrina_nombre" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(matrimonioBEAN.getmadrina_nombre() != null)
                                                           out.println(matrimonioBEAN.getmadrina_nombre());
                                                   %>"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><label for="madrina_apellido" class="preview">Apellido(s) de la madrina: </label></td>
                                    </tr>
                                    <tr>
                                        <td width="40">&nbsp;</td>
                                        <td><input type="text" name="madrina_apellido" id="madrina_apellido" onKeyPress="return onlyChars(this)" class="txt" value="<%
                                                       if(matrimonioBEAN.getmadrina_apellido() != null)
                                                           out.println(matrimonioBEAN.getmadrina_apellido());
                                                   %>"/></td>
                                    </tr>
                                </table>
                            </div>
                            <div id="cont_reg_eclesiastico">
                                <br><span id="cont_titulo"> Datos del Registro Eclesi&aacute;stico</span>
                                <br><br><br>
                                <table width="230" border="0">
                                    <tr>
                                      <td width="61" height="29"><label for="anio_libro" class="preview">A&ntilde;o: </label></td>
                                        <td width="112"><input name="anio_libro" type="text" id="anio_libro" onKeyUp="onlyNumbers(this);" maxlength="4" class="preview_dato" value="<%
                                                                   if(matrimonioBEAN.getre_anio_libro() != null)
                                                                       out.println(matrimonioBEAN.getre_anio_libro());
                                                               %>"/></td>
                                        <td width="43"><button type="button" name="btn_anio_libro" id="btn_anio_libro" onclick="cal_anio_01b.showCalendar('btn_anio_libro'); return false;" title="Haga click aqu&iacute; para ingresar el a&ntilde;o del Libro de Matrimonio."><img src="../../../imagenes/Calendar.gif" border="0"/></button></td>
                                    </tr>
                                    <tr>
                                        <td height="29"><label for="num_sacramento" class="preview">No: </label></td>
                                        <td><input type="text" name="num_sacramento" id="num_sacramento" class="preview_dato" value="<%
                                                       if(matrimonioBEAN.getre_num_sacramento() != null)
                                                           out.println(matrimonioBEAN.getre_num_sacramento());
                                                   %>"/></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td height="29"><label for="num_libro" class="preview">Libro: </label></td>
                                        <td><input type="text" name="num_libro" id="num_libro" class="preview_dato" value="<%
                                                       if(matrimonioBEAN.getre_num_libro() != null)
                                                           out.println(matrimonioBEAN.getre_num_libro());
                                                   %>"/></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td height="29"><label for="folio_libro" class="preview">Folio: </label></td>
                                        <td><input name="folio_libro" type="text" id="folio_libro" onKeyUp="onlyNumbers(this);" class="preview_dato" value="<%
                                                       if(matrimonioBEAN.getre_folio_libro() != null)
                                                           out.println(matrimonioBEAN.getre_folio_libro());
                                                   %>"/></td>
                                        <td></td>
                                    </tr>
                                </table>
                            </div>
                            <div id="cont_reg_civil">
                                <br><span id="cont_titulo"> Datos del Registro Civil</span>
                                <br><br><br>
                                <table width="230" border="0">
                                    <tr>
                                      <td width="61" height="29"><label for="rc_fecha_inscripcion" class="preview">Fecha de Inscripci&oacute;n: </label></td>
                                        <td width="112"><input name="rc_fecha_inscripcion" type="text" class="preview_dato" id="rc_fecha_inscripcion"  value="<%
                                                                   if(matrimonioBEAN.getfecha_inscripcion()!=null)
                                                                       out.println(matrimonioBEAN.getfecha_inscripcion());
                                                               %>" maxlength="10"/></td>
                                        <td width="43"><button type="button" name="btn_fecha_inscripcion" id="btn_fecha_inscripcion" onclick="cal.select(document.casar.rc_fecha_inscripcion,'btn_fecha_inscripcion','yyyy-MM-dd'); return false;" title="Haga click aqu&iacute; para ingresar la fecha de la inscripci&oacute;n del Matrimonio Civil."><img src="../../../imagenes/Calendar.gif" border="0"/></button></td>
                                    </tr>
                                    <tr>
                                        <td height="29"><label for="anio" class="preview">A&ntilde;o: </label></td>
                                        <td><input type="text" name="anio" id="anio" onKeyUp="onlyNumbers(this);" class="preview_dato" value="<%
                                                       if(matrimonioBEAN.getrc_anio() != null)
                                                           out.println(matrimonioBEAN.getrc_anio());
                                                   %>"/></td>
                                        <td><button type="button" name="btn_anio" id="btn_anio" onclick="cal_anio_02b.showCalendar('btn_anio'); return false;" title="Haga click aqu&iacute; para ingresar el a&ntilde;o del Libro del Registro Civil."><img src="../../../imagenes/Calendar.gif" border="0" class="preview"/></button></td>
                                    </tr>
                                    <tr>
                                        <td height="29"><label for="acta" class="preview">Acta: </label></td>
                                        <td><input type="text" name="acta" id="acta" class="preview_dato" value="<%
                                                       if(matrimonioBEAN.getrc_acta() != null)
                                                           out.println(matrimonioBEAN.getrc_acta());
                                                   %>"/></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td height="29"><label for="tomo" class="preview">Tomo: </label></td>
                                        <td><input type="text" name="tomo" id="tomo" class="preview_dato" value="<%
                                                       if(matrimonioBEAN.getrc_tomo() != null)
                                                           out.println(matrimonioBEAN.getrc_tomo());
                                                   %>"/></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td height="29"><label for="folio" class="preview">Folio: </label></td>
                                        <td><input type="text" name="folio" id="folio" onKeyUp="onlyNumbers(this);" class="preview_dato" value="<%
                                                       if(matrimonioBEAN.getrc_folio() != null)
                                                           out.println(matrimonioBEAN.getrc_folio());
                                                   %>"/></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td height="29"><label for="lugar" class="preview">Lugar: </label></td>
                                        <td colspan="2"><input name="rc_lugar" type="text" class="preview" id="rc_lugar" value="<%
                                                                   if(matrimonioBEAN.getrc_lugar_inscripcion() != null)
                                                                       out.println(matrimonioBEAN.getrc_lugar_inscripcion());
                                                                   else
                                                                       out.println("Guayaquil - Guayas");
                                                               %>"/></td>
                                    </tr>
                                </table>
                            </div>
                            <div id="cont_observacion">
                                <br><span id="cont_titulo"> Observaci&oacute;n</span>
                                <br><br><br>
        <p align="center">
            <textarea name="observacion" cols="30" rows="5" id="observacion" class="txt"><%
                if(matrimonioBEAN.getObservacion() != null)
                    out.println(matrimonioBEAN.getObservacion());
            %></textarea>
        </p>                                
                            </div>
                            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                            <input name="btn_guardar" type="button" id="btn_guardar"  onClick="validarIngreso();" value="Guardar">
                            &nbsp;&nbsp;&nbsp;
                            <input name="btn_cancelar" type="button" id="btn_cancelar" value="Cancelar" onClick="javascript:window.location.href='matrimonio.jsp?id=1';">
                        </form>
                        <%
                        } else if (id != null && id.compareTo("3") == 0) {
                        %><br>
                        <table width="200" border="0">
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width="64"><div align="center"><img src="../../../imagenes/dialog-information.png" width="48" height="48"></div></td>
                                <td width="126"><div align="left">Se ha ingresado el Acta de Matrimonio con &eacute;xito. </div></td>
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
                        } else if (id != null && id.compareTo("4") == 0) {
                        %>
                        <table width="200" border="0">
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width="64"><div align="center"><img src="../../../imagenes/dialog-error.png" width="48" height="48"></div></td>
                                <td width="126"><div align="left">Lo siento pero no se ha ingresado el Acta de Matrimonio con &eacute;xito.</div></td>
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
                                                    <input type="button" name="btn_ingresar_ministro" value="Cancelar" onClick="ocultarMinistro()">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
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
response.sendRedirect("matrimonio.jsp?id=1");
%>