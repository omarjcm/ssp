<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="pkgSSP.*"%>
<%@ page import="java.util.LinkedList"%>


<jsp:useBean id="provinciaBEAN" class="pkgSSP.Provincia" scope="session"/>
<jsp:useBean id="ciudadBEAN" class="pkgSSP.Ciudad" scope="session"/>


<%
   
    provinciaBEAN.id = request.getParameter("id_provincia");
%>

<html>
<head>

<script language="JavaScript" type="text/javascript" src="ValidarUsuario.js"></script>
<script>
    function refreshProv(newProv)
     {
        newPage = newProv.options[newProv.selectedIndex].value
        
        if (newPage != '')
        {
            window.location.href = "ingresa_usuario.jsp?id_provincia="+newPage
        }
     }
</script>

<title>Ingreso de Usuario</title>
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
<style type="text/css">
<!--
.style5 {color: #FF0000}
-->
</style>
</head>

<body>

<br>
<table width="614" height="536" border="0" align="left" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="614" height="504" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="68" height="22">&nbsp;</td>
          <td width="457" valign="top"><div align="center">
              <h1><span class="style3"><span class="style4">INGRESO DE USUARIO</span></span></h1>
          </div></td>
        <td width="89">&nbsp;</td>
        </tr>
        <tr>
          <td height="482">&nbsp;</td>
          <td valign="top"><form name="Usuario" method="post" action="UsuarioBEAN.jsp">
              <h2><br>
              Registro del user y password</h2>
              <table width="83%"  border="0" align="center">
                <tr>
                  <th width="28%" scope="col"><div align="right">user: <span class="style5">*</span></div></th>
                  <th width="72%" scope="col"><div align="left">
                    <input name="user"  id="user" type="text" size="30">
                  </div></th>
                </tr>
                <tr>
                  <th scope="row"><div align="right">password: <span class="style5">*</span></div></th>
                  <td><input name="password_temp"  id="password_temp" type="password" size="30"></td>
                </tr>
              </table>
              <h2><strong>Datos del Usuario</strong> </h2>
              <table width="83%"  border="0" align="center">
                <tr>
                  <th width="28%" scope="col"><div align="right">Usuario:</div></th>
                  <th width="72%" scope="col"><div align="left">
                    <table width="99%"  border="0" align="left">
                      <tr>
                        <th scope="col"><div align="right">Nombres: <span class="style5">*</span></div></th>
                        <th scope="col"><div align="left">
                            <input name="usuario_nombre" id="usuario_nombre" type="text" size="30">
                        </div></th>
                      </tr>
                      <tr>
                        <th scope="row"><div align="right">Apellidos: <span class="style5">*</span></div></th>
                        <td><div align="left">
                            <input name="usuario_apellido" id="usuario_apellido" type="text" size="30">
                        </div></td>
                      </tr>
                    </table>
</div></th>
                </tr>
                <tr>
                  <th scope="row"><div align="right">Provincia: <span class="style5">*</span></div></th>
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
                        %>
                       </select></td>
                </tr>
                <tr>
                
                <th scope="row"><div align="right">Ciudad: <span class="style5">*</span></div></th>
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
                  <th scope="row"><div align="right">Tipo: <span class="style5">*</span></div></th>
                  <td><select name="tipo_usuario" id="tipo_usuario">
                    <option value="0">Administrador</option>
                    <option value="1">Usuario</option>
                  </select></td>
                </tr>
                <tr>
                  <th scope="row"><div align="right">Cargo: <span class="style5">*</span></div></th>
                  <td><select name="id_cargo" id="id_cargo">
                    <option value="0">Sr.</option>
                    <option value="1">Sra.</option>
                    <option value="2">Hno.</option>
                    <option value="3">Hna.</option>
                    <option value="4">Diac.</option>
                    <option value="5">P.</option>
                    <option value="6">Mons.</option>
                    <option value="7">Srta.</option>
                  </select></td>
                </tr>
                <tr>
                  <th scope="row"><div align="right">Tel&eacute;fono: <span class="style5">*</span> </div></th>
                  <td><input name="telefono1"  id="telefono1" type="text" size="30"></td>
                </tr>
                <tr>
                  <th scope="row"><div align="right">Tel&eacute;fono:</div></th>
                  <td><input name="telefono2"  id="telefono2" type="text" size="30"></td>
                </tr>
                <tr>
                  <th scope="row"><div align="right">Direcci&oacute;n: </div></th>
                  <td><input name="direccion"  id="direccion" type="text" size="30"></td>
                </tr>
              </table>
              <p><span class="style5">*</span> Datos necesarios</p>
              <h2 align="center"><a onclick="validar(Usuario)" style="cursor:pointer; font-weight: bold; color: #0000FF;">Aceptar</a></h2>
          </form></td>
          <td>&nbsp;</td>
        </tr>
        <!--DWLayoutTable-->
    </table></td>
  </tr>
  <tr>
    <td height="29" valign="top"background="../../images/spacer_down.gif"><div align="center"><br>      
        Proyecto de Bases de Datos &quot;Sistemas de Servicios Parroquiales&quot; (SSP)<br>
    </div></td>
  </tr>
</table>
</body>
</html>
