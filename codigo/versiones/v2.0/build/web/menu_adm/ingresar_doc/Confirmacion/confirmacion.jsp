<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="pkgSSP.*"%>
<%@ page import="java.util.LinkedList"%>

<jsp:useBean id = "ministroBEAN" class = "pkgSSP.Usuario" scope="page"/>
<jsp:useBean id="provinciaBEAN" class="pkgSSP.Provincia" scope="session"/>
<jsp:useBean id="ciudadBEAN" class="pkgSSP.Ciudad" scope="session"/>
<jsp:useBean id="confirmaBEAN" class="pkgSSP.Confirmar" scope="session"/>

<%
    provinciaBEAN.id = request.getParameter("id_provincia");
    confirmaBEAN.id_confirmacion = request.getParameter("id_confirmacion");
%>

<html>
<head>

<script language="JavaScript" type="text/javascript" src="confirmacionVALIDAR.js"></script>

<script>
    function refreshProv(newProv)
     {
        newPage = newProv.options[newProv.selectedIndex].value
        
        if (newPage != '')
        {
            window.location.href = "confirmacion.jsp?id_provincia="+newPage
        }
     }
</script>

<title>Certificado de Confirmaci&oacute;n</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../css/my_style.css" rel="stylesheet" type="text/css">
<link href="../../css/my_style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style3 {color: #FFFFFF}
.style4 {color: #000000}
-->
</style>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>
<link href="../../../css/my_style.css" rel="stylesheet" type="text/css">
</head>

<body>

<br>
<table width="614" border="0" align="left" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="614" height="300" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="68" height="22">&nbsp;</td>
          <td width="457" valign="top"><div align="center">
              <h1><span class="style3"><span class="style4">CERTIFICADO DE CONFIRMACI&Oacute;N</span></span></h1>
          </div></td>
        <td width="89">&nbsp;</td>
        </tr>
        <tr>
          <td height="1063">&nbsp;</td>
          <td valign="top"><form name="Confirmacion" method="post" action="confirmacionBEAN.jsp">
              <h2><br>
              Registro del acta</h2>
              <table width="83%"  border="0" align="center">
                <tr>
                  <th width="28%" scope="col"><div align="right">No:</div></th>
                  <th width="72%" scope="col"><div align="left">
                    <input name="id_confirmacion"  id="id_confirmacion" type="text" size="30">
                  </div></th>
                </tr>
                <tr>
                  <th scope="row"><div align="right">A&ntilde;o:</div></th>
                  <td><input name="reg_acta_anio"  id="reg_acta_anio" type="text" size="30"></td>
                </tr>
                <tr>
                  <th scope="row"><div align="right">Libro:</div></th>
                  <td><input name="reg_acta_libro" id="reg_acta_libro" type="text" size="30"></td>
                </tr>
                <tr>
                  <th scope="row"><div align="right">Folio:</div></th>
                  <td><input name="reg_acta_folio" id="reg_acta_folio" type="text" size="30"></td>
                </tr>
              </table>
              <h2>Datos de la Parroquia </h2>
              <table width="83%"  border="0" align="center">
                <tr>
                  <th width="28%" scope="col"><div align="right">Ministro:</div></th>
                  <th width="72%" scope="col"><div align="left">
                    <select name="id_ministro" id="id_ministro">
<%
                           pkgSSP.Usuario usuario;
                           LinkedList ministroList = ministroBEAN.ListaDeMinistros();
                           for (int i = 0; i < ministroList.size(); i++)
                           {
                               usuario = new Usuario();
                               usuario = (Usuario) ministroList.get(i);
                               out.println("<option value="+String.valueOf(usuario.getId_usuario())+">"
                                       +usuario.getCargo()+" "+usuario.getNombre()+" "
                                       +usuario.getApellido()+"</option>");
                           }
                        %>                    </select>
  </div></th>
                </tr>
                <tr>
                  <th scope="row"><div align="right">Fecha de la Confirmaci&oacute;n:</div></th>
                  <td><table width="82%"  border="0" align="left">
                    <tr>
                      <th scope="col"><div align="right">Mes:</div></th>
                      <th scope="col"><div align="left">
                        <select name="mes_fecha_sacramento" id="mes_fecha_sacramento">
                            <option value="1">Enero</option>
                            <option value="2">Febrero</option>
                            <option value="3">Marzo</option>
                            <option value="4">Abril</option>
                            <option value="5">Mayo</option>
                            <option value="6">Junio</option>
                            <option value="7">Julio</option>
                            <option value="8">Agosto</option>
                            <option value="9">Septiembre</option>
                            <option value="10">Octubre</option>
                            <option value="11">Noviembre</option>
                            <option value="12">Diciembre</option>
                        </select>
                      </div></th>
                    </tr>
                    <tr>
                      <th scope="row"><div align="right">D&iacute;a:</div></th>
                      <td><div align="left">
                        <select name="dia_fecha_sacramento" id="dia_fecha_sacramento">
                            <option value="01">1</option>
                            <option value="02">2</option>
                            <option value="03">3</option>
                            <option value="04">4</option>
                            <option value="05">5</option>
                            <option value="06">6</option>
                            <option value="07">7</option>
                            <option value="08">8</option>
                            <option value="09">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                            <option value="23">23</option>
                            <option value="24">24</option>
                            <option value="25">25</option>
                            <option value="26">26</option>
                            <option value="27">27</option>
                            <option value="28">28</option>
                            <option value="29">29</option>
                            <option value="30">30</option>
                            <option value="31">31</option>                            
                        </select>
                      </div></td>
                    </tr>
                    <tr>
                      <th scope="row"><div align="right">A&ntilde;o:</div></th>
                      <td><div align="left">
                        <input name="anio_fecha_sacramento" type="text" id="anio_fecha_sacramento" size="9" maxlength="4">
                      </div></td>
                    </tr>
                  </table></td>
                </tr>
              </table>
              <h2><strong>Datos del Confirmado </strong> </h2>
              <table width="83%"  border="0" align="center">
                <tr>
                  <th width="28%" scope="col"><div align="right">Confirmado:</div></th>
                  <th width="72%" scope="col"><div align="left">
                    <table width="97%"  border="0" align="left">
                      <tr>
                        <th scope="col"><div align="right">Nombres:</div></th>
                        <th scope="col"><div align="left">
                            <input name="solicitante_nombre" id="solicitante_nombre" type="text" size="30">
                        </div></th>
                      </tr>
                      <tr>
                        <th scope="row"><div align="right">Apellidos:</div></th>
                        <td><div align="left">
                            <input name="solicitante_apellido" id="solicitante_apellido" type="text" size="30">
                        </div></td>
                      </tr>
                    </table>
</div></th>
                </tr>
                <tr>
                  <th scope="row"><div align="right">Provincia:</div></th>
                  <td><select name="id_provincia" id="id_provincia" onchange="refreshProv(this.form.id_provincia)">
                      <%
                           pkgSSP.Provincia provincia;
                           LinkedList provinciaList = provinciaBEAN.ListaDeProvincias();
                           for (int i = 0; i < provinciaList.size(); i++)
                           {
                               provincia = new Provincia();
                               provincia = (Provincia) provinciaList.get(i);
                               out.println("<option value="+ String.valueOf(provincia.getId_provincia())+">"+provincia.getNombre()+"</option>");
                           }
                        %> </select></td>
                </tr>
                <tr>
                  <th scope="row"><div align="right">Ciudad:</div></th>
                  <td><select name="id_ciudad" id="id_ciudad">
                        <%
                           if (provinciaBEAN.getId() != null)
                           {
                               pkgSSP.Ciudad ciudad;
                               LinkedList ciudadList = ciudadBEAN.ListaDeCiudades( provinciaBEAN.getId() );
                               for (int i = 0; i < ciudadList.size(); i++)
                               {
                                   ciudad = new Ciudad();
                                   ciudad = (Ciudad) ciudadList.get(i);
                                   out.println("<option value="+String.valueOf(ciudad.getId_ciudad())+">"+ciudad.getNombre()+"</option>");
                               }
                           }
                           else{
                               out.println("Fue null");
                           }
                       %>
                  </select></td>
                </tr>
                  <tr>
                    <th scope="col"><div align="right">Ciudad Bautizo:</div></th>
                    <th scope="col"><div align="left">
                      <input name="ciudad_bautizo" id="ciudad_bautizo" type="text" size="30">
                    </div></th>
                  </tr>
                  <tr>
                    <th scope="col"><div align="right">Iglesia Bautizo:</div></th>
                    <th scope="col"><div align="left">
                      <input name="iglesia_bautizo" id="iglesia_bautizo" type="text" size="30">
                    </div></th>
                  </tr>
                <tr>
                  <th scope="row"><div align="right">Sexo:</div></th>
                  <td><select name="solicitante_sexo" id="solicitante_sexo">
                    <option value="0">Femenino</option>
                    <option value="1">Masculino</option>
                                                </select></td>
                </tr>
                <tr>
                  <th scope="row"><div align="right">Fecha de nacimiento:</div></th>
                  <td><table width="80%"  border="0" align="left">
                    <tr>
                      <th scope="col"><div align="right">Mes:</div></th>
                      <th scope="col"><div align="left">
                          <select name="mes_fecha_nacimiento" id="mes_fecha_nacimiento">
                            <option value="1">Enero</option>
                            <option value="2">Febrero</option>
                            <option value="3">Marzo</option>
                            <option value="4">Abril</option>
                            <option value="5">Mayo</option>
                            <option value="6">Junio</option>
                            <option value="7">Julio</option>
                            <option value="8">Agosto</option>
                            <option value="9">Septiembre</option>
                            <option value="10">Octubre</option>
                            <option value="11">Noviembre</option>
                            <option value="12">Diciembre</option>
                          </select>
                      </div></th>
                    </tr>
                    <tr>
                      <th scope="row"><div align="right">D&iacute;a:</div></th>
                      <td><div align="left">
                          <select name="dia_fecha_nacimiento" id="dia_fecha_nacimiento">
                            <option value="01">1</option>
                            <option value="02">2</option>
                            <option value="03">3</option>
                            <option value="04">4</option>
                            <option value="05">5</option>
                            <option value="06">6</option>
                            <option value="07">7</option>
                            <option value="08">8</option>
                            <option value="09">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                            <option value="23">23</option>
                            <option value="24">24</option>
                            <option value="25">25</option>
                            <option value="26">26</option>
                            <option value="27">27</option>
                            <option value="28">28</option>
                            <option value="29">29</option>
                            <option value="30">30</option>
                            <option value="31">31</option>                              
                            </select>
                      </div></td>
                    </tr>
                    <tr>
                      <th scope="row"><div align="right">A&ntilde;o:</div></th>
                      <td><div align="left">
                          <input name="anio_fecha_nacimiento" type="text" id="anio_fecha_nacimiento" size="9" maxlength="4">
                      </div></td>
                    </tr>
                  </table></td>
                </tr>
              </table>
              <h2><strong>Datos de los Padres</strong></h2>
              <table width="83%"  border="0" align="center">
                <tr>
                  <th width="28%" scope="col"><div align="right">Padre:</div></th>
                  <th width="72%" scope="col"><div align="left">
                    <table width="97%"  border="0" align="left">
                      <tr>
                        <th scope="col"><div align="right">Nombres:</div></th>
                        <th scope="col"><div align="left">
                          <input name="padre_nombre" id="padre_nombre" type="text" size="30">
                        </div></th>
                      </tr>
                      <tr>
                        <th scope="row"><div align="right">Apellidos:</div></th>
                        <td><div align="left">
                          <input name="padre_apellido" id="padre_apellido" type="text" size="30">
                        </div></td>
                      </tr>
                    </table>
  </div></th>
                </tr>
                <tr>
                  <th scope="row"><div align="right">Madre:</div></th>
                  <td><table width="97%"  border="0" align="left">
                    <tr>
                      <th scope="col"><div align="right">Nombres:</div></th>
                      <th scope="col"><div align="left">
                          <input name="madre_nombre" id="madre_nombre" type="text" size="30">
                      </div></th>
                    </tr>
                    <tr>
                      <th scope="row"><div align="right">Apellidos:</div></th>
                      <td><div align="left">
                          <input name="madre_apellido" id="madre_apellido" type="text" size="30">
                      </div></td>
                    </tr>
                  </table></td>
                </tr>
              </table>
              <h2><strong>Datos de los Padrinos </strong></h2>
              <table width="83%"  border="0" align="center">
                <tr>
                  <th width="28%" scope="col"><div align="right">Padrino:</div></th>
                  <th width="72%" scope="col"><div align="left">
                      <table width="97%"  border="0" align="left">
                        <tr>
                          <th scope="col"><div align="right">Nombres:</div></th>
                          <th scope="col"><div align="left">
                              <input name="padrino_nombre" id="padrino_nombre" type="text" size="30">
                          </div></th>
                        </tr>
                        <tr>
                          <th scope="row"><div align="right">Apellidos:</div></th>
                          <td><div align="left">
                              <input name="padrino_apellido" id="padrino_apellido" type="text" size="30">
                          </div></td>
                        </tr>
                      </table>
                  </div></th>
                </tr>
                <tr>
                  <th scope="row"><div align="right">Madrina:</div></th>
                  <td><table width="97%"  border="0" align="left">
                    <tr>
                      <th scope="col"><div align="right">Nombres:</div></th>
                      <th scope="col"><div align="left">
                          <input name="madrina_nombre" id="madrina_nombre" type="text" size="30">
                      </div></th>
                    </tr>
                    <tr>
                      <th scope="row"><div align="right">Apellidos:</div></th>
                      <td><div align="left">
                          <input name="madrina_apellido" id="madrina_apellido" type="text" size="30">
                      </div></td>
                    </tr>
                  </table></td>
                </tr>
              </table>
              <h2>&nbsp;</h2>
              <table width="83%"  border="0" align="center">
                <tr>
                  <th width="28%" scope="row"><div align="right">Observaci&oacute;n:</div></th>
                  <td width="72%"><textarea name="observacion" id="observacion"></textarea></td>
                </tr>
              </table>
              <h2 align="center"><a onclick="validarConfirmacion(Confirmacion)"style="cursor:pointer; font-weight: bold; color: #0000FF;">Aceptar</a></h2>
          </form></td>
          <td>&nbsp;</td>
        </tr>
        <!--DWLayoutTable-->
    </table></td>
  </tr>
  <tr>
    <td height="30" valign="top"background="../../../images/spacer_down.gif"><div align="center"><br>
        Proyecto de Bases de Datos &quot;Sistemas de Servicios Parroquiales&quot; (SSP)<br>
    </div></td>
  </tr>
</table>
</body>
</html>
