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
        <title>SSP - Eliminar Usuario</title>
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
                <td width="191" height="449" rowspan="3" valign="top"><%
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
                            %> >Ingresar Usuario</a>
                            <br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="2" width="8" height="7"> <a
                            <%
                                if (id.compareTo("1") == 0)
                                    out.println("href=\"../modificar/usuario.jsp?id=1\"");
                                else
                                    out.println("href=\"#\" onClick=\"cambiar('../modificar/usuario.jsp?id=1', mensaje_02)\"");
                            %> >Modificar Usuario</a>
                            <br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="1" width="8" height="7"> <a
                            <%
                                if (id.compareTo("1") == 0)
                                    out.println("href=\"usuario.jsp?id=1\"");
                                else
                                    out.println("href=\"#\" onClick=\"cambiar('usuario.jsp?id=1', mensaje_01)\"");
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
                                    out.println("href=\"../../contabilidad/generar/contabilidad.jsp?id=1\"");
                                else
                                    out.println("href=\"#\" onClick=\"cambiar('../../contabilidad/generar/contabilidad.jsp?id=1', mensaje_02)\"");
                          %> >Generar Reportes</a><br>
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
                Eliminar Usuario</span></td>
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
                    <form name="PorNombreApellido" method="post" action="usuario_01BEAN.jsp">
                        <div id="titulo">ELIMINAR USUARIO </div>
                        <br>
                        <table width="519" border="0">
                          <!--DWLayoutTable-->
                          <tr>
                            <td width="455"><fieldset><br>
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
                      <div id="titulo">ELIMINAR USUARIO </div>
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
								//if (tipo != null)
									//uBEAN.bautizado.setIdSolici(id_usuario);
								usuarioBEAN.consultarUsuario(id_long);
                        %>
                    <form name="Anular" method="post" action="usuarioAnularBEAN.jsp">
                      <div id="titulo">ELIMINAR USUARIO</div>
                      <br>
                      <br>
                      <fieldset>
                      <legend>Datos Personales del Usuario </legend>
                        <p>
                        <label>Nombre(s):</label>
                        <label>
                          <%out.println(usuarioBEAN.getNombre());%>
                          </label>
                      </p>
                        <p>
                        <label>Apellido(s):</label>
                        <label>
                          <%out.println(usuarioBEAN.getApellido());%>
                          </label>
                      </p>
                        <p>
                        <label>Cargo:</label>
                        <label>
                          <%out.println(usuarioBEAN.getCargo());%>
                          </label>
                      </p>
                        <p>
                        <label>Estado del Usuario:</label>
                        <label>
                          <% if(usuarioBEAN.getEstado()) out.println("Habilitado"); else out.println("Inhabilitado");%>
                          </label>
                      </p>
                      </fieldset>
                      <br>
                      <br>
                      <p>
                        <input name="btn_ok" type="button" id="btn_ok" onclick="anularActa(Anular)" value="Eliminar">
                        &nbsp;&nbsp;&nbsp;
                        <input name="btn_cancelar" type="button" id="btn_cancelar" value="Cancelar" onClick="javascript:window.location.href='usuario.jsp?id=1';">
                      </p>
                    </form>
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
                        <td width="126"><div align="left">Se ha eliminado el Usuario con &eacute;xito. </div></td>
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
                        <td width="126"><div align="left">Lo siento pero no se ha eliminado el Usuario con &eacute;xito. </div></td>
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