<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="mensaje_error.jsp" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<%
    String id = request.getParameter("id");

    if (id != null) {
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SSP - Ingresar Usuario</title>
        <link href="../../estilos/formularios.css" rel="stylesheet" type="text/css">
        <link href="../../estilos/my_style.css" rel="stylesheet" type="text/css">
        <link href="../../estilos/tab_navigation.css" type="text/css" rel=STYLESHEET>
        <script language="JavaScript" type="text/javascript" src="../../inicio/cerrarSesion.js"></script>
        <script language="JavaScript" type="text/javascript" src="usuario.js"></script>
    </head>
    <body>
        <%
        if( uBEAN!=null && uBEAN.esAdministrador() || uBEAN.esSecretario() ) {
        %>
        <table width="770" border="0" align="left" cellpadding="0" cellspacing="0">
            <tr>
                <td height="152" colspan="4"><img src="../../imagenes/banner.png" width="805" height="150"></td>
            </tr>
            <tr>
                <td width="191" height="449" rowspan="3" valign="top">
<%
	if( uBEAN.esAdministrador() || uBEAN.esSecretario() ) {
%>
                  <br>
                  <table width="187" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="187" height="45" background="../../imagenes/documentacion.png">&nbsp;</td>
                        </tr>
                        <tr>
                            <td  height="79" valign="top"background="../../imagenes/contenido.png">
                                <br>
                                <%
                                if( uBEAN.esAdministrador() || uBEAN.esSecretario() ) {
                                %>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <img src="../../imagenes/add.png" width="7" height="7"> <a
                                <%
                                    if (id.compareTo("1") == 0)
                                        out.println("href=\"#\" onClick=\"cambiar('../../bautismo/acta/ingresar/bautismo.jsp?id=1', mensaje_02)\"");
                                    else
                                        out.println("href=\"#\" onClick=\"cambiar_tarea('../../bautismo/acta/ingresar/bautismo.jsp?id=1', mensaje_02)\"");
                                %> >Ingresar Acta</a>			<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <img src="../../imagenes/add.png" width="7" height="7"> <a
                                <%
                                    if (id.compareTo("1") == 0)
                                        out.println("href=\"#\" onClick=\"cambiar('../../bautismo/acta/buscar/bautismo.jsp?id=1', mensaje_02)\"");
                                    else
                                        out.println("href=\"#\" onClick=\"cambiar_tarea('../../bautismo/acta/buscar/bautismo.jsp?id=1', mensaje_02)\"");
                                %> >Buscar Acta</a>
                                <br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <%
                                    if (uBEAN.esAdministrador()) {
                                %>
                                <img src="../../imagenes/add.png" width="8" height="7"> <a
                                <%
                                    if (id.compareTo("1") == 0)
                                        out.println("href=\"#\" onClick=\"cambiar('../../bautismo/acta/modificar/bautismo.jsp?id=1', mensaje_02)\"");
                                    else
                                        out.println("href=\"#\" onClick=\"cambiar_tarea('../../bautismo/acta/modificar/bautismo.jsp?id=1', mensaje_02)\"");
                                %> >Modificar Acta</a>
                                <br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <img src="../../imagenes/add.png" width="8" height="7"> <a
                                <%
                                    if (id.compareTo("1") == 0)
                                        out.println("href=\"#\" onClick=\"cambiar('../../bautismo/acta/anular/bautismo.jsp?id=1', mensaje_02)\"");
                                    else
                                        out.println("href=\"#\" onClick=\"cambiar_tarea('../../bautismo/acta/anular/bautismo.jsp?id=1', mensaje_02)\"");
                                %> >Anular Acta</a>
                                <br>
                                <%
                                    }
                                }
                                %>
                            </td>
                        </tr>
                        <tr>
                            <td width="188" height="8" background="../../imagenes/abajo.png"></td>
                        </tr>
                  </table>
                    <%
			} if (uBEAN.esAdministrador()) {
                    %>
                    <table width="187" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="187" height="45" background="../../imagenes/administracion.png">&nbsp;</td>
                        </tr>
                        <tr>
                            <td  height="64" valign="top"background="../../imagenes/contenido.png"><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="4" width="8" height="7"> <a
                            <%
                                if (id.compareTo("1") == 0)
                                    out.println("href=\"#\" onClick=\"cambiar('../ingresar/usuario.jsp?id=1', mensaje_01)\"");
                                else
                                    out.println("href=\"#\" onClick=\"cambiar_tarea('../ingresar/usuario.jsp?id=1', mensaje_01)\"");
                            %> >Ingresar Usuario</a> <br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="2" width="8" height="7"> <a
                            <%
                                if (id.compareTo("1") == 0)
                                    out.println("href=\"#\" onClick=\"cambiar('../modificar/usuario.jsp?id=1', mensaje_02)\"");
                                else
                                    out.println("href=\"#\" onClick=\"cambiar_tarea('../modificar/usuario.jsp?id=1', mensaje_02)\"");
                            %> >Modificar Usuario</a> <br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="1" width="8" height="7"> <a
                            <%
                                if (id.compareTo("1") == 0)
                                    out.println("href=\"#\" onClick=\"cambiar('../eliminar/usuario.jsp?id=1', mensaje_02)\"");
                                else
                                    out.println("href=\"#\" onClick=\"cambiar_tarea('../eliminar/usuario.jsp?id=1', mensaje_02)\"");
                            %> >Eliminar Usuario</a> <br>              </td>
                        </tr>
                        <tr>
                            <td width="189" height="8" background="../../imagenes/abajo.png"></td>
                        </tr>
                    </table>
                    <%
		            }
                    if (uBEAN.esAdministrador()==true || uBEAN.esContador()) {
						if (uBEAN.esContador()) out.println("<br>");
                    %>
                    <table width="187" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="187" height="45" background="../../imagenes/contabilidad.png">&nbsp;</td>
                      </tr>
                      <tr>
                        <td  height="52" valign="top"background="../../imagenes/contenido.png"><br>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="4" width="8" height="7"> <a
                          <%
                                if (id.compareTo("1") == 0)
                                    out.println("href=\"#\" onClick=\"cambiar('../../contabilidad/ingresar/contabilidad.jsp?id=1', mensaje_02)\"");
                                else
                                    out.println("href=\"#\" onClick=\"cambiar_tarea('../../contabilidad/ingresar/contabilidad.jsp?id=1', mensaje_02)\"");
                          %> >Ingresar Registro</a><br>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="2" width="8" height="7"> <a
                          <%
                                if (id.compareTo("1") == 0)
                                    out.println("href=\"#\" onClick=\"cambiar('../../contabilidad/generar/contabilidad.jsp?id=1', mensaje_02)\"");
                                else
                                    out.println("href=\"#\" onClick=\"cambiar_tarea('../../contabilidad/generar/contabilidad.jsp?id=1', mensaje_02)\"");
                          %> >Generar Reportes</a><br>
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
        out.println("href=\"#\" onClick=\"cambiar('../../inicio/index.jsp', mensaje_02)\"");
    else
        out.println("href=\"#\" onClick=\"cambiar_tarea('../../inicio/index.jsp', mensaje_02)\"");
%> >Inicio</a> &gt; <% 
    if (uBEAN.esAdministrador())
        out.println("<span id=\"pista_administrador\">");
    else if (uBEAN.esSecretario())
        out.println("<span id=\"pista_secretario\">");
%>
                Ingreso de Usuario</span></td>
                <td width="36" rowspan="2" align="left" valign="middle">
                    <form action="../../inicio/cerrarSesion.jsp" method="post">
                    <img src="../../imagenes/gnome-shutdown.png" width="36,727" height="35,196" border="0" style="cursor:pointer;" onclick="cerrarSesion()" title="Haga click para salir."></form>
                </td>
                <td width="31" rowspan="2" align="left" valign="middle">Salir</td>
            </tr>
            <tr>
                <td height="12" valign="middle">&nbsp;</td>
            </tr>
            <tr>
                <td height="391" colspan="3" align="center" valign="top">
                    <div id="contenedor">
                        <%
                        if (id != null && id.compareTo("1") == 0) {
                        %>
                        <table width="486" border="0" align="center" cellpadding="0" cellspacing="0">
                            <!--DWLayoutTable-->
                            
                            
                            <tr>
                              <td width="476" height="402" valign="top">
                                    <form name="Usuario" method="post" action="usuarioBEAN.jsp">
										<div id="titulo">
										  <div align="center">INGRESO DE  USUARIO</div>
										</div><br><span id="asterisco">* Datos necesarios</span>
                                        <fieldset>
                                            <legend class="usuario">Registro del usuario y contrase&ntilde;a </legend>
                                            <table width="330" border="0" align="center">
                                              <tr>
                                                <td width="140" align="right"><label for="usuario">Usuario: </label></td>
                                                <td width="180"><input name="usuario" type="text" class="txt" id="usuario" maxlength="10"/>
                                                <span id="asterisco"> *</span></td>
                                              </tr>
                                              <tr>
                                                <td align="right"><label for="contrasenia">Contrase&ntilde;a: </label></td>
                                                <td><input name="contrasenia" type="password" class="txt" id="contrasenia" maxlength="10"/><span id="asterisco"> *</span></td>
                                              </tr>
                                            </table>
                                        </fieldset>
                                        <fieldset>
                                            <legend class="usuario">Datos del Usuario </legend>
                                            <table width="330" border="0" align="center">
                                              <tr>
                                                <td width="140" align="right"><label for="usuario_nombre">Nombre(s): </label></td>
                                                <td width="180"><input type="text" name="usuario_nombre" id="usuario_nombre" class="txt"/><span id="asterisco"> *</span></td>
                                              </tr>
                                              <tr>
                                                <td align="right"><label for="usuario_apellido">Apellido(s): </label></td>
                                                <td><input type="text" name="usuario_apellido" id="usuario_apellido" class="txt"/><span id="asterisco"> *</span></td>
                                              </tr>
                                              <tr>
                                                <td align="right"><label for="id_tipo">Tipo de usuario: </label></td>
                                                <td><select name="id_tipo" id="id_tipo">
                                                  <option value="0">Administrador</option>
                                                  <option value="1" selected>Secretario</option>
                                                  <option value="2">Contador</option>
                                                </select><span id="asterisco"> *</span></td>
                                              </tr>
                                              <tr>
                                                <td align="right"><label for="id_cargo">Cargo: </label></td>
                                                <td><select name="id_cargo" id="id_cargo">
                                                  <option value="0">Sra.</option>
                                                  <option value="1">Sr.</option>
                                                  <option value="2">Hno.</option>
                                                  <option value="3">Hna.</option>
                                                  <option value="4" selected>Srta.</option>
                                                </select><span id="asterisco"> *</span></td>
                                              </tr>
                                              <tr>
                                                <td align="right"><label for="telefono1">Tel&eacute;fono: </label></td>
                                                <td><input name="telefono1" type="text" class="txt" id="telefono1"/><span id="asterisco"> *</span></td>
                                              </tr>
                                              <tr>
                                                <td align="right"><label for="telefono2">Tel&eacute;fono / Celular: </label></td>
                                                <td><input name="telefono2" type="text" class="txt" id="telefono2"/></td>
                                              </tr>
                                              <tr>
                                                <td align="right"><label for="direccion">Direcci&oacute;n de Domicilio: </label></td>
                                                <td><input name="direccion" type="text" class="txt" id="direccion"/><span id="asterisco"> *</span></td>
                                              </tr>
                                            </table>
                                        </fieldset>
                                        <div align="center"><br>
                                            <input name="btn_guardar" type="button" id="btn_guardar" value="Guardar" onclick="validar()">
  &nbsp;&nbsp;&nbsp;
                                          <input name="btn_cancelar" type="reset" id="btn_cancelar" value="Cancelar" onClick="javascript:window.location.href='usuario.jsp?id=1';">
                                        </div>
                                    </form>
							  </td>
                            </tr>
                      </table>
                        <%
                        } else if (id != null && id.compareTo("2") == 0) {
                        %><br>
                        <table width="200" border="0">
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width="64"><div align="center"><img src="../../imagenes/dialog-information.png" width="48" height="48"></div></td>
                                <td width="126"><div align="left">Se ha ingresado el nuevo Usuario con &eacute;xito.  </div></td>
                            </tr>
                            <tr>
                                <td colspan="2"><div align="center"><br>
                                        <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='usuario.jsp?id=1';">
                                </div></td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                        </table><br>
                        <%
                        } else if (id != null && id.compareTo("3") == 0) {
                        %><br>
                        <table width="200" border="0">
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width="64"><div align="center"><img src="../../imagenes/dialog-error.png" width="48" height="48"></div></td>
                                <td width="126"><div align="left">Lo siento pero no se ha ingresado el nuevo Usuario con &eacute;xito. </div></td>
                            </tr>
                            <tr>
                                <td colspan="2"><div align="center"><br>
                                        <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='usuario.jsp?id=1';">
                                </div></td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                        </table><br>
                        <%
                        } else
                        response.sendRedirect("usuario.jsp?id=1");
                        %>
                    </div>
                </td>
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
	response.sendRedirect("usuario.jsp?id=1");
%>