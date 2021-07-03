<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="mensaje_error.jsp" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>
<jsp:useBean id = "usuarioBEAN" class = "SSP.Usuario" scope = "session"/>

<%
    String id = request.getParameter("id");

    if (id != null) {
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SSP - Modificar Usuario</title>
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
                                        out.println("href=\"../../bautismo/acta/ingresar/bautismo.jsp?id=1\"");
                                    else
                                        out.println("href=\"#\" onClick=\"cambiar('../../bautismo/acta/ingresar/bautismo.jsp?id=1', mensaje_02)\"");
                                %> >Ingresar Acta</a>
                                <br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <img src="../../imagenes/add.png" width="7" height="7"> <a
                                <%
                                    if (id.compareTo("1") == 0)
                                        out.println("href=\"../../bautismo/acta/buscar/bautismo.jsp?id=1\"");
                                    else
                                        out.println("href=\"#\" onClick=\"cambiar('../../bautismo/acta/buscar/bautismo.jsp?id=1', mensaje_02)\"");
                                %> >Buscar Acta</a>
                                <br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <%
                                if (uBEAN.esAdministrador()) {
                                %>
                                <img src="../../imagenes/add.png" width="8" height="7"> <a
                                <%
                                    if (id.compareTo("1") == 0)
                                        out.println("href=\"../../bautismo/acta/modificar/bautismo.jsp?id=1\"");
                                    else
                                        out.println("href=\"#\" onClick=\"cambiar('../../bautismo/acta/modificar/bautismo.jsp?id=1', mensaje_02)\"");
                                %> >Modificar Acta</a>
                                <br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <img src="../../imagenes/add.png" width="8" height="7"> <a
                                <%
                                    if (id.compareTo("1") == 0)
                                        out.println("href=\"../../bautismo/acta/anular/bautismo.jsp?id=1\"");
                                    else
                                        out.println("href=\"#\" onClick=\"cambiar('../../bautismo/acta/anular/bautismo.jsp?id=1', mensaje_02)\"");
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
                                    out.println("href=\"../ingresar/usuario.jsp?id=1\"");
                                else
                                    out.println("href=\"#\" onClick=\"cambiar('../ingresar/usuario.jsp?id=1', mensaje_02)\"");
                            %> >Ingresar Usuario</a> <br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="2" width="8" height="7"> <a
                            <%
                                if (id.compareTo("1") == 0)
                                    out.println("href=\"usuario.jsp?id=1\"");
                                else
                                    out.println("href=\"#\" onClick=\"cambiar('usuario.jsp?id=1', mensaje_01)\"");
                            %> >Modificar Usuario</a> <br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="1" width="8" height="7"> <a
                            <%
                                if (id.compareTo("1") == 0)
                                    out.println("href=\"../eliminar/usuario.jsp?id=1\"");
                                else
                                    out.println("href=\"#\" onClick=\"cambiar('../eliminar/usuario.jsp?id=1', mensaje_02)\"");
                            %> >Eliminar Usuario</a>
                            <br>
                            </td>
                        </tr>
                        <tr>
                            <td width="189" height="8" background="../../imagenes/abajo.png"></td>
                        </tr>
                    </table>
                    <%
		            }
                    if (uBEAN.esAdministrador() || uBEAN.esContador()) {
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
                                    out.println("href=\"../../contabilidad/ingresar/contabilidad.jsp?id=1\"");
                                else
                                    out.println("href=\"#\" onClick=\"cambiar('../../contabilidad/ingresar/contabilidad.jsp?id=1', mensaje_02)\"");
                          %> >Ingresar Registro</a><br>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="2" width="8" height="7"> <a
                          <%
                                if (id.compareTo("1") == 0)
                                    out.println("href=\"../../contabilidad/ingresar/contabilidad.jsp?id=1\"");
                                else
                                    out.println("href=\"#\" onClick=\"cambiar('../../contabilidad/ingresar/contabilidad.jsp?id=1', mensaje_02)\"");
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
        out.println("href=\"../../inicio/index.jsp\"");
    else
        out.println("href=\"#\" onClick=\"cambiar('../../inicio/index.jsp', mensaje_02)\"");
%> >Inicio</a> &gt; 
<%
    if (uBEAN.esAdministrador())
        out.println("<span id=\"pista_administrador\">");
    else if (uBEAN.esSecretario())
        out.println("<span id=\"pista_secretario\">");
%>
                Modificar Usuario</span></td>
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
                        if (id.compareTo("1") == 0) {
                        %>
                  <form name="PorNombreApellido" method="post" action="usuario_01BEAN.jsp">
                      <div id="titulo">MODIFICAR USUARIO </div>
                      <br>
                      <table width="519" border="0">
                        <!--DWLayoutTable-->
                        <tr>
                          <td width="455" height="132"><fieldset><br>
                            <table width="330" border="0" align="center">
                              <tr>
                                <td width="140" align="right"><label for="usuario_nombre">Nombre(s): </label></td>
                                <td width="180"><input type="text" name="usuario_nombre" id="usuario_nombre" class="txt"/></td>
                              </tr>
                              <tr>
                                <td align="right"><label for="usuario_apellido">Apellido(s): </label></td>
                                <td><input type="text" name="usuario_apellido" id="usuario_apellido" class="txt"/></td>
                              </tr>
                              <tr>
                                <td height="30" align="right">&nbsp;</td>
                                <td valign="bottom"><input name="btn_buscar_porNombreApellido" type="submit" id="btn_buscar_porNombreApellido" value="Buscar"></td>
                              </tr>
                            </table>
                            </fieldset></td>
                        </tr>
                      </table>
                  </form>
                  <%
                        } else if (id != null && id.compareTo("2") == 0) {						
                        %>
                  <form name="Consultar">
                    <div id="titulo">MODIFICAR USUARIO </div>
                    <br>
                    <br>
                    <br>
                    <table width="300" border="0" class="datatable">
                      <tr>
                        <td class="informe_02"><span id="titulo"><strong>Nombres y Apellidos</strong></span> </td>
                      </tr>
                      <%              
              SSP.Usuario usuario;
              LinkedList usuarioList = usuarioBEAN.listaDeUsuario();
			  if(usuarioList.isEmpty())
			  	response.sendRedirect("usuario.jsp?id=6");            
			  for (int i = 0; i < usuarioList.size(); i++)
              {
                  usuario = (SSP.Usuario) usuarioList.get(i);
                  out.println("<tr><td> "+String.valueOf(i+1)+". ");
          %>
                      <a href="usuario.jsp?id=3&id_usuario=<%=String.valueOf(usuario.getIdUsuario())%>">
                      <%out.print(usuario.getNombre()+" "+usuario.getApellido());%>
                      </a>
                      <%
                  out.println("</td></tr>");
              }
          %>
                    </table>
                    <br>
                    <p>
                      <input type="button" name="Button" value="Ir al inicio" onClick="javascript:window.location.href='usuario.jsp?id=1';">
                    </p>
                  </form>
                  <%
                        }else if (id != null && id.compareTo("3") == 0) {
							String id_usuario = request.getParameter("id_usuario");
							long id_long = Long.parseLong(id_usuario);
							if (id_usuario != null) {								
								usuarioBEAN.consultarUsuario(id_long);
                        %>
                  <table width="486" border="0" align="center" cellpadding="0" cellspacing="0">
                    <!--DWLayoutTable-->
                    <tr>
                      <td width="476" height="441" valign="top"><form name="Usuario" method="post" action="usuarioBEAN.jsp">
                          <div id="titulo">
                            <div align="center">MODIFICAR  USUARIO</div>
                          </div>
                        <br><span id="asterisco">* Datos necesarios</span>
                          <fieldset>
                          <legend class="usuario">Registro del usuario y contrase&ntilde;a </legend>
                            <table width="330" border="0" align="center">
                              <tr>
                                <td width="140" align="right"><label for="usuario">Usuario: </label></td>
                                <td width="174"><input name="usuario" type="text" class="txt" id="usuario" maxlength="10" value="<%
													if(usuarioBEAN.getUsuario()==null)
														out.println(usuarioBEAN.getUsuario()); 
													else
														out.println(usuarioBEAN.getUsuario());
													%>"/><span id="asterisco"> *</span></td>
                              </tr>
                              <tr>
                                <td align="right"><label for="contrasenia">Contrase&ntilde;a: </label></td>
                                <td><input name="contrasenia" type="password" class="txt" id="contrasenia" maxlength="10" value="<%
													if(usuarioBEAN.getContrasenia()==null)
														out.println(usuarioBEAN.getContrasenia()); 
													else
														out.println(usuarioBEAN.getContrasenia());
													%>"/><span id="asterisco"> *</span></td>
                              </tr>
                            </table>
                          </fieldset>
                        <fieldset>
                          <legend class="usuario">Datos del Usuario </legend>
                          <table width="330" border="0" align="center">
                            <tr>
                              <td width="140" align="right"><label for="usuario_nombre">Nombre(s): </label></td>
                              <td width="174"><input type="text" name="usuario_nombre2" id="usuario_nombre2" class="txt" value="<%
													if(usuarioBEAN.getNombre()==null)
														out.println(usuarioBEAN.getNombre()); 
													else
														out.println(usuarioBEAN.getNombre());
													%>"/><span id="asterisco"> *</span></td>
                            </tr>
                            <tr>
                              <td align="right"><label for="usuario_apellido">Apellido(s): </label></td>
                              <td><input type="text" name="usuario_apellido2" id="usuario_apellido2" class="txt" value="<%
													if(usuarioBEAN.getApellido()==null)
														out.println(usuarioBEAN.getApellido()); 
													else
														out.println(usuarioBEAN.getApellido());
													%>"/><span id="asterisco"> *</span></td>
                            </tr>
                            <tr>
                              <td align="right"><label for="id_tipo">Tipo de usuario: </label></td>
                              <td><select name="id_tipo" id="id_tipo">
                                <option value="0" <%if (usuarioBEAN.getTipo().compareTo("Administrador") == 0) out.println("selected");%>>Administrador</option>
                                <option value="1" <%if (usuarioBEAN.getTipo().compareTo("Secretario") == 0) out.println("selected");%>>Secretario</option>
                                <option value="2" <%if (usuarioBEAN.getTipo().compareTo("Contador") == 0) out.println("selected");%>>Contador</option>
                              </select><span id="asterisco"> *</span></td>
                            </tr>
                            <tr>
                              <td align="right"><label for="id_cargo">Cargo: </label></td>
                              <td><select name="id_cargo" id="id_cargo">
                                <option value="0" <%if (usuarioBEAN.getCargo().compareTo("Sra.") == 0) out.println("selected");%>>Sra.</option>
                                <option value="1" <%if (usuarioBEAN.getCargo().compareTo("Sr.") == 0) out.println("selected");%>>Sr.</option>
                                <option value="2" <%if (usuarioBEAN.getCargo().compareTo("Hno.") == 0) out.println("selected");%>>Hno.</option>
                                <option value="3" <%if (usuarioBEAN.getCargo().compareTo("Hna.") == 0) out.println("selected");%>>Hna.</option>
                                <option value="4" <%if (usuarioBEAN.getCargo().compareTo("Srta.") == 0) out.println("selected");%>>Srta.</option>
                              </select><span id="asterisco"> *</span></td>
                            </tr>
                            <tr>
                              <td align="right"><label for="telefono1">Tel&eacute;fono: </label></td>
                              <td><input name="telefono1" type="text" class="txt" id="telefono1" value="<%
													if(usuarioBEAN.getTelefono1()==null)
														out.println(usuarioBEAN.getTelefono1()); 
													else
														out.println(usuarioBEAN.getTelefono1());
													%>"/><span id="asterisco"> *</span></td>
                            </tr>
                            <tr>
                              <td align="right"><label for="telefono2">Tel&eacute;fono / Celular: </label></td>
                              <td><input name="telefono2" type="text" class="txt" id="telefono2" value="<%
													if(usuarioBEAN.getTelefono2()==null)
														out.println(usuarioBEAN.getTelefono2()); 
													else
														out.println(usuarioBEAN.getTelefono2());
													%>"/></td>
                            </tr>
                            <tr>
                              <td align="right"><label for="direccion">Direcci&oacute;n de Domicilio: </label></td>
                              <td><input name="direccion" type="text" class="txt" id="direccion" value="<%
													if(usuarioBEAN.getDireccion()==null)
														out.println(usuarioBEAN.getDireccion()); 
													else
														out.println(usuarioBEAN.getDireccion());
													%>"/><span id="asterisco"> *</span></td>
                            </tr>
                          </table>
                        </fieldset>
                        <div align="center"><br>
                              <input name="btn_guardar" type="button" id="btn_guardar" value="Modificar" onclick="validar();">
                          &nbsp;&nbsp;&nbsp;
                          <input name="btn_cancelar" type="reset" id="btn_cancelar" value="Cancelar" onClick="javascript:window.location.href='usuario.jsp?id=1';">
                        </div>
                      </form></td>
                    </tr>
                  </table>
                  <%
						} else
            				response.sendRedirect("usuario.jsp?id=1");
                        } else if (id != null && id.compareTo("4") == 0) {												
                        %>
                  <br>
                  <table width="200" border="0">
                    <tr>
                      <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                      <td width="64"><div align="center"><img src="../../imagenes/dialog-information.png" width="48" height="48"></div></td>
                      <td width="126"><div align="left">Se ha modificado el Usuario con &eacute;xito. </div></td>
                    </tr>
                    <tr>
                      <td colspan="2"><div align="center"><br>
                              <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='usuario.jsp?id=1';">
                      </div></td>
                    </tr>
                    <tr>
                      <td colspan="2">&nbsp;</td>
                    </tr>
                  </table>
                  <br>
                  <%
                        } else if (id != null && id.compareTo("5") == 0) {
                        %>
                  <br>
                  <table width="200" border="0">
                    <tr>
                      <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                      <td width="64"><div align="center"><img src="../../imagenes/dialog-error.png" width="48" height="48"></div></td>
                      <td width="126"><div align="left">Lo siento pero no se ha modificado el Usuario con &eacute;xito. </div></td>
                    </tr>
                    <tr>
                      <td colspan="2"><div align="center"><br>
                              <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='usuario.jsp?id=1';">
                      </div></td>
                    </tr>
                    <tr>
                      <td colspan="2">&nbsp;</td>
                    </tr>
                  </table>
                  <br>
                  <%
                        } else if (id != null && id.compareTo("6") == 0) {
                        %>
                  <br>
                  <table width="200" border="0">
                    <tr>
                      <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                      <td width="64"><div align="center"><img src="../../imagenes/dialog-error.png" width="48" height="48"></div></td>
                      <td width="126"><div align="left">Lo siento pero no se ha encontrado al Usuario. </div></td>
                    </tr>
                    <tr>
                      <td colspan="2"><div align="center"><br>
                              <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='usuario.jsp?id=1';">
                      </div></td>
                    </tr>
                    <tr>
                      <td colspan="2">&nbsp;</td>
                    </tr>
                  </table>
                  <br>
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