<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="SSP.*"%>
<%@ page import="java.util.LinkedList"%>

<jsp:useBean id = "ministroBEAN" class = "SSP.Ministro" scope="page"/>
<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SSP - Ingreso de Acta de Primera Comuni&oacute;n</title>
        <link href="formulario.css" rel="stylesheet" type="text/css">
        <link href="../../../estilos/tabs.css" type="text/css" rel=STYLESHEET>
        <link href="../../../estilos/estilos.css" type="text/css" rel=STYLESHEET>
        <link href="../../../estilos/my_style.css" type="text/css" rel=STYLESHEET>
        <link href="../../../estilos/tab_navigation.css" type="text/css" rel=STYLESHEET>
        <link href="../../../estilos/formularios.css" type="text/css" rel=STYLESHEET>
        
        <script language="JavaScript" type="text/javascript" src="../../../calendario/CalendarPopup.js"></script>
        <script language="JavaScript" type="text/javascript" src="../../../calendario/common.js"></script>		
        <script language="JavaScript" type="text/javascript" src="../../../inicio/cerrarSesion.js"></script>
        <script language="JavaScript" type="text/javascript" src="formulario.js"></script>
        <script type="text/javascript">
            var cal = new CalendarPopup();
            cal.showYearNavigation();
            cal.showYearNavigationInput();

            function onlyNumbers( el )
            {
                    var _number = el.value;
                    el.value = _number.replace(/\D/g,"");
            }

            function esDigito(caracter) {
                    return (caracter >= "0"  && caracter <= "9")
            }

            function esNumero(texto){
                    var i;
                    for ( i = 0; i < texto.length; i++ ){
                            if (!esDigito(texto.charAt(i))){
                                    return false
                            }
                    }
                    return true
            }	

            function formatoCalendario( el )
            {
                    var _anio = el.value.substring(0,4);
                    var _number = el.value;
                    el.value = _number.replace(/\D/g,"");
            }
</script>
    </head>
    <body>
<%
    if( uBEAN!=null && (uBEAN.esAdministrador()==true) || (uBEAN.esSecretario()==true) )
    {
%>	
    <table width="770" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td height="152" colspan="4"><img src="../../../imagenes/banner.png" width="805" height="150"></td>
      </tr>
      <tr>
        <td width="200" height="449" rowspan="3" valign="top"><br>
          <table width="188" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="188" height="45" background="../../../imagenes/documentacion.png">&nbsp;</td>
          </tr>
          <tr>
            <td  height="79" valign="top"background="../../../imagenes/contenido.png">
                <br>
                <%
    if( (uBEAN.esAdministrador()==true) || (uBEAN.esSecretario()==true) )
    {
%>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a href="comunion.jsp">Ingresar Acta</a><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a href="../buscar/comunion.jsp">Buscar Acta</a>			<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <%
		if (uBEAN.esAdministrador()==true)
		{
%>
                <img src="../../../imagenes/add.png" width="8" height="7"> <a href="../modificar/comunion.jsp">Modificar Acta</a>			<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="8" height="7"> <a href="../anular/comunion.jsp">Anular Acta</a>			<br>			<%
		}
	}
%></td>
          </tr>
          <tr>
            <td width="188" height="8" background="../../../imagenes/abajo.png"></td>
          </tr>
        </table>
<%
	if (uBEAN.esAdministrador()==true)
	{
%>
		  <br>
          <table width="189" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="189" height="45" background="../../../imagenes/administracion.png">&nbsp;</td>
            </tr>
            <tr>
              <td  height="64" valign="top"background="../../../imagenes/contenido.png"><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="4" width="8" height="7"> <a href="../../../usuario/ingresar/usuario.jsp">Ingresar Usuario</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="2" width="8" height="7"> <a href="../../../menu/index_temporal.jsp">Modificar Usuario</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="1" width="8" height="7"> <a href="../../../menu/index_temporal.jsp">Eliminar Usuario</a> <br>              </td>
            </tr>
            <tr>
              <td width="189" height="8" background="../../../imagenes/abajo.png"></td>
            </tr>
          </table>
		  <%
	}
%>
		  <br>
		  <p>&nbsp;</p>
        <p>&nbsp;</p></td>
        <td width="512" height="40" valign="middle"><a href="../../../inicio/index.jsp">Inicio</a> &gt; <span id="titulo">Ingreso de Acta de Primera Comuni&oacute;n</span> </td>
        <td width="36" rowspan="2" align="left" valign="middle">
		<form action="../../../inicio/cerrarSesion.jsp" method="post">
			<img src="../../../imagenes/gnome-shutdown.png" width="36,727" height="35,196" border="0" style="cursor:pointer;" onclick="cerrarSesion()">
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
                <li><a href="../../../bautismo/acta/ingresar/bautismo.jsp"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bautizo&nbsp;&nbsp;</span></a></li>
                <li><a href="comunion.jsp" class="active"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Primera Comuni&oacute;n&nbsp;&nbsp;</span></a></li>
                <li><a href="../../../confirmacion/acta/ingresar/confirmacion.jsp"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirmaci&oacute;n&nbsp;&nbsp;</span></a></li>
                <li><a href="../../../matrimonio/acta/ingresar/matrimonio.jsp"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Matrimonio&nbsp;&nbsp;</span></a></li>
            
            </ul>
      <div id="container">
      <form name="Comunion" method="post" action="comunionBEAN.jsp">
        <strong>INGRESO DE ACTA DE PRIMERA COMUNI&Oacute;N</strong></a><br>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <div id="parroquia">
            <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
            <tr>
            <td height="251" colspan="6" valign="top">
            <span id="titulo">Paso 1 de 7</span>
            <fieldset>
                <legend>Datos de la Parroquia</legend>
                    <p>
                        <label for="id_ministro">Ministro: </label>
                        <select name="id_ministro" id="id_ministro">
                        <%
                            SSP.Ministro ministro;
                            LinkedList ministroList = ministroBEAN.listaDeMinistros();
                            for (int i = 0; i < ministroList.size(); i++)
                            {
                            ministro = (SSP.Ministro) ministroList.get(i);
                            out.println("<option value="+String.valueOf(ministro.getId_ministro())+">"
                            +ministro.getDignidad()+" "+ministro.getNombre()+" "
                            +ministro.getApellido()+"</option>");
                            }
                        %>
                        </select>
	                <input name="btn_ministro" type="button" id="btn_ministro" value="Ingresar" onClick="mostrarMinistro()">
                    </p>
                    <p>
                      <label for="lugar_comunion">Lugar de Comuni&oacute;n: </label>
                      <input name="lugar_comunion" type="text" class="txt" id="lugar_comunion" value="Parroquia Cristo Rey"/>
                    </p>
                    <p>
                    <label for="fecha_comunion">Fecha de Comuni&oacute;n: </label>
                    <input name="fecha_comunion" type="text" class="txt" id="fecha_comunion"  value="aaaa-mm-dd" maxlength="10"/>
                    <button type="button" name="btn_fecha_comunion" id="btn_fecha_comunion" onclick="cal.select(document.Comunion.fecha_comunion,'btn_fecha_comunion','yyyy-MM-dd'); return false;" title="cal.select(document.Comunion.fecha_comunion,'btn_fecha_comunion','yyyy-MM-dd'); return false;"><img src="../../../imagenes/Calendar.gif" border="0"/></button>
                </p>
            </fieldset>
            </td>
            </tr>
            <tr>
                <td width="10%" align="center">&nbsp;</td>
                <td width="10%" align="center">&nbsp;</td>
                <td width="30%">&nbsp;</td>
                <td width="30%">&nbsp;</td>
                <td width="10%" align="center"><a onclick="mostrarSolicitante_01()" style="cursor:pointer;"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
                <td width="10%" align="center" valign="middle"><div align="left">Siguiente</div></td>
            </tr>
            </table>
            </div>
            
	<div id="solicitante_01">
            <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
            <tr>
            <td height="251" colspan="6" valign="top">
            <span id="titulo">Paso 2 de 7</span>
                <fieldset>
                  <legend>Datos del Comulgado (I)</legend>
                    <p>
                      <label for="comulgado_nombre">Nombre(s): </label>
                      <input type="text" name="comulgado_nombre" id="comulgado_nombre" class="txt"/>
                    </p>
                    <p>
                      <label for="comulgado_apellido">Apellido(s): </label>
                      <input type="text" name="comulgado_apellido" id="comulgado_apellido" class="txt"/>
                    </p>
                    <p>
                      <label for="id_sexo">Sexo: </label>
                      <select name="id_sexo" id="id_sexo">
                        <option value="0">Femenino</option>
                        <option value="1">Masculino</option>
                      </select>
                    </p>
                    <p>
                      <label for="fecha_nacimiento">Fecha de Nacimiento: </label>
                      <input name="fecha_nacimiento" type="text" class="txt" id="fecha_nacimiento" value="aaaa-mm-dd"/>
                      <button type="button" name="btn_fecha_nacimiento" id="btn_fecha_nacimiento" onclick="cal.select(document.Comunion.fecha_nacimiento,'btn_fecha_nacimiento','yyyy-MM-dd'); return false;" title="cal.select(document.Comunion.fecha_nacimiento,'btn_fecha_nacimiento','yyyy-MM-dd'); return false;"><img src="../../../imagenes/Calendar.gif" border="0"/></button>
                    </p>
                </fieldset>                
            </td>
            </tr>
            <tr>
                <td width="10%" align="center" valign="middle"><div align="right">Anterior</div></td>
                <td width="10%" align="center"><a onclick="mostrarParroquia()" style="cursor:pointer;"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
                <td width="30%">&nbsp;</td>
                <td width="30%">&nbsp;</td>
                <td width="10%" align="center"><a onclick="mostrarSolicitante_02()" style="cursor:pointer;"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
                <td width="10%" align="center" valign="middle"><div align="left">Siguiente</div></td>
            </tr>
            </table>
        </div>

	<div id="solicitante_02">
            <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
            <tr>
            <td height="251" colspan="6" valign="top">
            <span id="titulo">Paso 3 de 7</span>
                <fieldset>
                  <legend>Datos del Comulgado (II)</legend>
                    <p>
                      <label for="edad">Edad: </label>
                      <input type="text" name="edad" id="edad" class="txt" onKeyUp="onlyNumbers(this);"/>
                    </p>
                    <p>
                      <label for="nivel">Nivel de Estudio: </label>
                      <input type="text" name="nivel" id="nivel" class="txt"/>
                    </p>
                    <p>
                      <label for="nombre_institucion">Institucion Educativa: </label>
                      <input type="text" name="nombre_institucion" id="nombre_institucion" class="txt"/>
                    </p>
                    <p>
                      <label for="direccion">Direcci&oacute;n: </label>
                      <input type="text" name="direccion" id="direccion" class="txt"/>
                    </p>
                </fieldset>
            </td>
            </tr>
            <tr>
                <td width="10%" align="center" valign="middle"><div align="right">Anterior</div></td>
                <td width="10%" align="center"><a onclick="mostrarSolicitante_01()" style="cursor:pointer;"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
                <td width="30%">&nbsp;</td>
                <td width="30%">&nbsp;</td>
                <td width="10%" align="center"><a onclick="mostrarPadres()" style="cursor:pointer;"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
                <td width="10%" align="center" valign="middle"><div align="left">Siguiente</div></td>
            </tr>
            </table>
	</div>
            
        <div id="padres">
            <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
            <tr>
            <td height="251" colspan="6" valign="top">
            <span id="titulo">Paso 4 de 7</span>
              <fieldset>
	      <legend>Datos de los Padres</legend>
                <p>
                  <label for="padre_nombre">Nombre(s) del padre: </label>
                  <input type="text" name="padre_nombre" id="padre_nombre" class="txt"/>
                </p>
                <p>
                  <label for="padre_apellido">Apellido(s) del padre: </label>
                  <input type="text" name="padre_apellido" id="padre_apellido" class="txt"/>
                </p>
                <p>
                  <label for="madre_nombre">Nombre(s) de la madre: </label>
                  <input type="text" name="madre_nombre" id="madre_nombre" class="txt"/>
                </p>
                <p>
                  <label for="madre_apellido">Apellido(s) de la madre: </label>
                  <input type="text" name="madre_apellido" id="madre_apellido" class="txt"/>
                </p>
                <p>
                  <label for="estado_civil_padres">Estado civil: </label>
                  <input type="text" name="estado_civil_padres" id="estado_civil_padres" class="txt"/>
                </p>
            </fieldset>
            </td>
            </tr>
            <tr>
                <td width="10%" align="center" valign="middle"><div align="right">Anterior</div></td>
                <td width="10%" align="center"><a onclick="mostrarSolicitante_02()" style="cursor:pointer;"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
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
            <span id="titulo">Paso 5 de 7</span>
		<fieldset>
			<legend>Datos de los Padrinos</legend>
                <p>
                  <label for="padrino_nombre">Nombre(s) del padrino: </label>
                  <input type="text" name="padrino_nombre" id="padrino_nombre" class="txt"/>
                </p>
                <p>
                  <label for="padrino_apellido">Apellido(s) del padrino: </label>
                  <input type="text" name="padrino_apellido" id="padrino_apellido" class="txt"/>
                </p>
                <p>
                  <label for="madrina_nombre">Nombre(s) de la madrina: </label>
                  <input type="text" name="madrina_nombre" id="madrina_nombre" class="txt"/>
                </p>
                <p>
                  <label for="madrina_apellido">Apellido(s) de la madrina: </label>
                  <input type="text" name="madrina_apellido" id="madrina_apellido" class="txt"/>
                </p>
		</fieldset>
            </td>
            </tr>
            <tr>
                <td width="10%" align="center" valign="middle"><div align="right">Anterior</div></td>
                <td width="10%" align="center"><a onclick="mostrarPadres()" style="cursor:pointer;"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
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
            <span id="titulo">Paso 6 de 7</span>
            <fieldset>
            <legend>Registro Eclesi&aacute;stico</legend>
            <p>
              <label for="num_sacramento">No: </label>
              <input type="text" name="num_sacramento" id="num_sacramento" class="txt"/>
            </p>
            <p>
              <label for="anio_libro">A&ntilde;o: </label>
              <input type="text" name="anio_libro" id="anio_libro" class="txt" onKeyUp="onlyNumbers(this);" maxlength="4"/>
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
                <td width="10%" align="center"><a onclick="mostrarObservacion()" style="cursor:pointer;"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
                <td width="10%" align="center" valign="middle"><div align="left">Siguiente</div></td>
            </tr>
          </table>
        </div>
        
	<div id="txt_observacion">
          <table width="449" height="278" border="0" cellpadding="0" cellspacing="0">
            <tr>
            <td height="251" colspan="6" valign="top">
            <span id="titulo">Paso 7 de 7</span>
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
                <td width="10%" align="center"><a onclick="mostrarRegistroEclesiastico()" style="cursor:pointer;"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
                <td width="30%">&nbsp;</td>
                <td width="30%">&nbsp;</td>
                <td width="10%" align="center">&nbsp;</td>
                <td width="10%" align="center" valign="middle">&nbsp;</td>
            </tr>
          </table>
            <table width="500" border="0" align="center">
              <tr>
                <td align="center">
                  <input type="submit" name="Submit" value="Guardar">
				  &nbsp;&nbsp;&nbsp;
                  <input type="reset" name="Reset" value="Cancelar">				  
                </td>
              </tr>
            </table>
          </div>
          
      </form>
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
                    <input type="text" name="ministro_nombre" id="ministro_nombre" class="txt"/>
                </p>
                <p>
                    <label for="ministro_apellido">Apellido(s): </label>
                    <input type="text" name="ministro_apellido" id="ministro_apellido" class="txt"/>
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