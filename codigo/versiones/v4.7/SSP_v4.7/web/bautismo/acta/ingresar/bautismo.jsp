<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="SSP.*"%>
<%@ page import="java.util.LinkedList"%>

<jsp:useBean id = "ministroBEAN" class = "SSP.Ministro" scope="page"/>
<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>

<jsp:useBean id = "bautizoBEAN" class = "SSP.Bautizar" scope="session"/>

<%
    String paso = request.getParameter("paso");
    out.println(bautizoBEAN.getlugar_bautizo());
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SSP - Ingreso de Acta de Bautizo</title>
        <link href="../../../estilos/formularios_02.css" rel="stylesheet" type="text/css">
        <link href="../../../estilos/my_style.css" rel="stylesheet" type="text/css">
        <link href="../../../estilos/menu_formulario.css" rel="stylesheet" type="text/css">
        <link href="../../../estilos/tabs.css" rel="stylesheet" type="text/css">
        <link href="../../../calendario/calendar.css" type="text/css" rel=STYLESHEET>
        
        <script language="JavaScript" type="text/javascript" src="../../../menu/cerrarSesion.js"></script>
        <script language="JavaScript" type="text/javascript" src="validar.js"></script>
        <SCRIPT language=JavaScript1.2 src="../../../calendario/calendar.js" type="text/javascript"></SCRIPT>
        <SCRIPT language=JavaScript1.2 src="../../../calendario/calendario.js" type="text/javascript"></SCRIPT>
        <SCRIPT language=JavaScript1.2 src="../../../calendario/calendar-es.js" type="text/javascript"></SCRIPT>
        <SCRIPT language=JavaScript1.2 src="../../../calendario/calendar-setup.js" type="text/javascript"></SCRIPT>
        <script type="text/javascript">
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
    <table width="770" border="0" align="left">
      <tr>
        <td height="152" colspan="4"><img src="../../../imagenes/banner.png" width="805" height="150"></td>
      </tr>
      <tr>
        <td width="191" height="449" rowspan="3" valign="top"><br><table width="188" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="188" height="45" background="../../../imagenes/documentacion.png">&nbsp;</td>
          </tr>
          <tr>
            <td  height="79" valign="top"background="../../../imagenes/contenido.png">
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a href="bautismo.jsp?paso=1">Ingresar Acta</a><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a href="../../../menu/index_temporal.jsp">Buscar Acta</a>			<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="8" height="7"> <a href="../../../menu/index_temporal.jsp">Modificar Acta</a>			<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="8" height="7"> <a href="../../../menu/index_temporal.jsp">Anular Acta</a>			<br>			</td>
          </tr>
          <tr>
            <td width="188" height="8" background="../../../imagenes/abajo.png"></td>
          </tr>
        </table>
		<br>
          <table width="189" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="189" height="45" background="../../../imagenes/administracion.png">&nbsp;</td>
            </tr>
            <tr>
              <td  height="64" valign="top"background="../../../imagenes/contenido.png"><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="4" width="8" height="7"> <a href="../../../menu/index_temporal.jsp">Ingresar Usuario</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="2" width="8" height="7"> <a href="../../../menu/index_temporal.jsp">Modificar Usuario</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="1" width="8" height="7"> <a href="../../../menu/index_temporal.jsp">Eliminar Usuario</a> <br>              </td>
            </tr>
            <tr>
              <td width="189" height="8" background="../../../imagenes/abajo.png"></td>
            </tr>
          </table>
		  <br>
          <table width="188" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="188" height="45" background="../../../imagenes/ministro.png">&nbsp;</td>
            </tr>
            <tr>
              <td  height="42" valign="top"background="../../../imagenes/contenido.png"><br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="4" width="8" height="7"> <a href="../../../menu/index_temporal.jsp">Ingresar Ministro</a></td>
            </tr>
            <tr>
              <td width="188" height="8" background="../../../imagenes/abajo.png"></td>
            </tr>
          </table>
          <p>&nbsp;</p>
        <p>&nbsp;</p></td>
        <td width="489" height="10" valign="middle">&nbsp;</td>
        <td width="36" rowspan="2" align="left" valign="middle">
		<form action="../../../menu/cerrarSesion.jsp" method="post">
			<img src="../../../imagenes/gnome-shutdown.png" width="36,727" height="35,196" border="0" style="cursor:pointer;" onclick="cerrarSesion()">
		</form>		</td>
        <td width="31" rowspan="2" align="left" valign="middle">Salir</td>
      </tr>
      <tr>
        <td height="10" valign="middle"><a href="../../../menu/index.jsp">Inicio</a> &gt; <span id="titulo">Ingreso de Acta de Bautizo</span> </td>
      </tr>
      <tr>
        <td height="391" colspan="3" align="center" valign="top">
        <div id="tabsB">
            <ul>
                <li id="current"><a href="bautismo.jsp?paso=1"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bautizo&nbsp;&nbsp;</span></a></li>
                <li><a href="../../../comunion/acta/ingresar/comunion.jsp?paso=1"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Primera Comuni&oacute;n&nbsp;&nbsp;</span></a></li>
                <li><a href="../../../confirmacion/acta/ingresar/confirmacion.jsp?paso=1"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirmaci&oacute;n&nbsp;&nbsp;</span></a></li>
                <li><a href="../../../matrimonio/acta/ingresar/matrimonio.jsp?paso=1"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Matrimonio&nbsp;&nbsp;</span></a></li>
            </ul>
        </div>
<br>
<br>
<br>
<br>
<table width="570" border="0">
  <tr>
    <td height="14" valign="top" align="center"><span id="titulo"><strong>ACTA DE BAUTIZO</strong></span></td>
  </tr>
  <tr>
    <td width="434" height="356" valign="top">
<%
    if (paso.compareTo("1") == 0)
    {
%>
        <form name="Bautizo" method="post" action="paso_01.jsp">
        <table width="549" height="278" border="0">
            <tr>
            <td height="251" colspan="6" valign="top">
                  <br>
                  <span id="titulo">Paso 1 de 7</span><br>
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
                </p>
                      <p>
                  <label for="lugar_bautizo">Lugar de Bautizo: </label>
                  <input name="lugar_bautizo" type="text" class="txt" id="lugar_bautizo" value="<%if(bautizoBEAN != null)out.println("Parroquia Cristo Rey"); else out.println(bautizoBEAN.getlugar_bautizo());%>"/>
                </p>
                      <p>
                  <label for="fecha_bautizo">Fecha de Bautizo: </label>
                  <input name="fecha_bautizo" type="text" class="txt" id="fecha_bautizo" onKeyUp="formatoCalendario(this);" value="<%if(bautizoBEAN != null)out.println("aaaa-mm-dd"); else out.println(bautizoBEAN.getfecha_bautizo());%>"/>
                  <button type="button" name="btn_fecha_bautizo" id="btn_fecha_bautizo" onMouseOver="mostrarCalendarioBautizo()"><img src="../../../imagenes/Calendar.gif" border="0"/></button>
                </p>
                  </fieldset>
              </td>
            </tr>
            <tr>
            <td width="10%" align="center">&nbsp;</td>
            <td width="10%" align="center">&nbsp;</td>
            <td width="30%">&nbsp;</td>
            <td width="30%">&nbsp;</td>
            <td width="10%" align="center"><a href="bautismo.jsp?paso=2" onclick="paso_02(Bautizo)"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
            <td width="10%" align="center" valign="middle"><div align="left">Siguiente</div></td>
          </tr>
        </table>
        </form>
<%
    } else if (paso.compareTo("2") == 0)
    {
%>
        <form method="post" action="paso_02.jsp">
        <table width="549" height="278" border="0">
  <tr>
    <td height="251" colspan="6" valign="top">
                <br>
                <span id="titulo">Paso 2 de 7</span><br>
                <fieldset>
                        <legend>Datos del Bautizado</legend>
        <p>
          <label for="bautizado_nombre">Nombre(s): </label>
          <input type="text" name="bautizado_nombre" id="bautizado_nombre" class="txt"/>
        </p>
        <p>
          <label for="bautizado_apellido">Apellido(s): </label>
          <input type="text" name="bautizado_apellido" id="bautizado_apellido" class="txt"/>
        </p>
        <p>
          <label for="id_sexo">Sexo: </label>
          <select name="id_sexo" id="id_sexo">
            <option value="0">Femenino</option>
            <option value="1">Masculino</option>
          </select>
        </p>
        <p>
          <label for="lugar_nacimiento">Lugar de Nacimiento: </label>
          <input name="lugar_nacimiento" type="text" class="txt" id="lugar_nacimiento" value="Guayaquil - Guayas"/>
        </p>
        <p>
          <label for="fecha_nacimiento">Fecha de Nacimiento: </label>
          <input name="fecha_nacimiento" type="text" class="txt" id="fecha_nacimiento" value="aaaa-mm-dd"/>
                          <button type="button" name="btn_fecha_nacimiento" id="btn_fecha_nacimiento" onMouseOver="mostrarCalendarioNacimiento()"><img src="../../../imagenes/Calendar.gif" border="0"/></button>
        </p>
                </fieldset>
                </td>
  </tr>
  <tr>
    <td width="10%" align="center" valign="middle"><div align="right">Anterior</div></td>
    <td width="10%" align="center"><a href="bautismo.jsp?paso=1" onclick="paso_02()"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
    <td width="30%">&nbsp;</td>
    <td width="30%">&nbsp;</td>
    <td width="10%" align="center"><a href="bautismo.jsp?paso=3" onclick="paso_02()"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
    <td width="10%" align="center" valign="middle"><div align="left">Siguiente</div></td>
  </tr>
</table>
        </form>
<%
    } else if (paso.compareTo("3") == 0)
    {
%>
        <form method="post" action="paso_03.jsp">
<table width="549" height="278" border="0">
  <tr>
    <td height="251" colspan="6" valign="top">		
                <br>
                <span id="titulo">Paso 3 de 7</span><br>
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
                </fieldset>		
                </td>
  </tr>
  <tr>
    <td width="10%" align="center" valign="middle"><div align="right">Anterior</div></td>
    <td width="10%" align="center"><a href="bautismo.jsp?paso=2"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
    <td width="30%">&nbsp;</td>
    <td width="30%">&nbsp;</td>
    <td width="10%" align="center"><a href="bautismo.jsp?paso=4"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
    <td width="10%" align="center" valign="middle"><div align="left">Siguiente</div></td>
  </tr>
</table>
        </form>
<%
    } else if (paso.compareTo("4") == 0)
    {
%>
        <form method="post" action="paso_04.jsp">
        <table width="549" height="278" border="0">
  <tr>
    <td height="251" colspan="6" valign="top">		
                <br>
                <span id="titulo">Paso 4 de 7</span><br>
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
    <td width="10%" align="center"><a href="bautismo.jsp?paso=3"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
    <td width="30%">&nbsp;</td>
    <td width="30%">&nbsp;</td>
    <td width="10%" align="center"><a href="bautismo.jsp?paso=5"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
    <td width="10%" align="center" valign="middle"><div align="left">Siguiente</div></td>
  </tr>
</table>
        </form>
<%
    } else if (paso.compareTo("5") == 0)
    {
%>
        <form method="post" action="paso_05.jsp">
        <table width="549" height="278" border="0">
  <tr>
    <td height="251" colspan="6" valign="top">
                <br>
                <span id="titulo">Paso 5 de 7</span><br>
                <fieldset>
                        <legend>Registro Eclesi&aacute;stico</legend>
                        <p>
                          <label for="num_sacramento">No: </label>
                          <input type="text" name="num_sacramento" id="num_sacramento" class="txt"/>
                        </p>
                        <p>
                          <label for="anio_libro">A&ntilde;o: </label>
                          <input name="anio_libro" type="text" class="txt" id="anio_libro" onKeyUp="onlyNumbers(this);" maxlength="4"/>
                        </p>
                        <p>
                          <label for="num_libro">Libro: </label>
                          <input type="text" name="num_libro" id="num_libro" class="txt"/>
                        </p>
                        <p>
                          <label for="folio_libro">P&aacute;gina: </label>
                          <input name="folio_libro" type="text" class="txt" id="folio_libro" onKeyUp="onlyNumbers(this);"/>
                        </p>
                </fieldset>
                </td>
  </tr>
  <tr>
    <td width="10%" align="center" valign="middle"><div align="right">Anterior</div></td>
    <td width="10%" align="center"><a href="bautismo.jsp?paso=4"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
    <td width="30%">&nbsp;</td>
    <td width="30%">&nbsp;</td>
    <td width="10%" align="center"><a href="bautismo.jsp?paso=6"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
    <td width="10%" align="center" valign="middle"><div align="left">Siguiente</div></td>
  </tr>
</table>
        </form>
<%
    } else if (paso.compareTo("6") == 0)
    {
%>
        <form method="post" action="paso_06.jsp">
        <table width="549" height="278" border="0">
  <tr>
    <td height="251" colspan="6" valign="top">
                <br><span id="titulo">Paso 6 de 7</span><br>
                <fieldset>
                <legend>Datos del Registro Civil</legend>
        <p>
          <label for="acta">Acta: </label>
          <input type="text" name="acta" id="acta" class="txt"/>
        </p>
        <p>
          <label for="anio">A&ntilde;o: </label>
          <input type="text" name="anio" id="anio" class="txt"/>
        </p>
        <p>
          <label for="tomo">Tomo: </label>
          <input type="text" name="tomo" id="tomo" class="txt"/>
        </p>
        <p>
          <label for="folio">Folio: </label>
          <input type="text" name="folio" id="folio" class="txt"/>
        </p>
        <p>
          <label for="lugar">Lugar: </label>
          <input name="rc_lugar" type="text" class="txt" id="rc_lugar" value="Guayaquil - Guayas"/>
        </p>
                </fieldset>			</td>
  </tr>
  <tr>
    <td width="10%" align="center" valign="middle"><div align="right">Anterior</div></td>
    <td width="10%" align="center"><a href="bautismo.jsp?paso=5"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
    <td width="30%">&nbsp;</td>
    <td width="30%">&nbsp;</td>
    <td width="10%" align="center"><a href="bautismo.jsp?paso=7"><img src="../../../imagenes/next.png" width="40" height="37" border="0"></a></td>
    <td width="10%" align="center" valign="middle"><div align="left">Finalizar</div></td>
  </tr>
</table>
        </form>
<%
    } else if (paso.compareTo("7") == 0)
    {
%>
        <form method="post" action="paso_07.jsp">
        <table width="549" height="278" border="0">
  <tr>
    <td height="251" colspan="6" valign="top">
                <br><span id="titulo">Paso 7 de 7</span><br>
                <fieldset>
                <legend>Observaci&oacute;n</legend>
        <p align="center">
          <textarea name="observacion" cols="40" rows="4" class="txt" id="observacion"></textarea>
        </p>
                </fieldset>			</td>
  </tr>
  <tr>
    <td width="10%" align="center" valign="middle"><div align="right">Anterior</div></td>
    <td width="10%" align="center"><a href="bautismo.jsp?paso=6"><img src="../../../imagenes/forward.png" width="40" height="37" border="0"></a></td>
    <td width="30%">&nbsp;</td>
    <td width="30%">&nbsp;</td>
    <td width="10%" align="center">&nbsp;</td>
    <td width="10%" align="center">&nbsp;</td>
  </tr>
</table>
        <table width="288" border="0" align="center">
  <tr>
    <td width="40%">
      <div align="right">
        <input name="guardar_btn" type="button" id="guardar_btn" onclick="vistaPrevia()" value="Guardar">			
      </div></td>
    <td width="20%" align="center">&nbsp;</td>
    <td width="40%"><input name="cancelar_btn" type="reset" id="cancelar_btn" value="Cancelar"></td>
  </tr>
</table>
        </form>
<%
    }
%>
    </td>
  </tr>
</table>		</td>
      </tr>
      <tr>
        <td height="14" colspan="4">&nbsp;</td>
      </tr>
    </table>
   </body>
</html>