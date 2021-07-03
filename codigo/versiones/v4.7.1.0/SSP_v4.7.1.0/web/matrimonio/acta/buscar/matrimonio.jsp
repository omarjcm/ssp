<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="SSP.*"%>
<%@ page import="java.util.LinkedList"%>

<jsp:useBean id = "ministroBEAN" class = "SSP.Ministro" scope="page"/>
<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>
<jsp:useBean id = "matrimonioBEAN" class = "SSP.Casar" scope="session"/>
<jsp:useBean id = "esposoBEAN" class = "SSP.Solicitante" scope = "session"/>
<jsp:useBean id = "esposaBEAN" class = "SSP.Solicitante" scope = "session"/>

<%
    String id = request.getParameter("id");
    String tipo = request.getParameter("tipo");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SSP - Buscar Acta de Matrimonio</title>
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
          <table width="187" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="187" height="45" background="../../../imagenes/documentacion.png">&nbsp;</td>
          </tr>
          <tr>
            <td  height="79" valign="top"background="../../../imagenes/contenido.png">
                <br>
                <%
    if( (uBEAN.esAdministrador()==true) || (uBEAN.esSecretario()==true) )
    {
%>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a href="../ingresar/matrimonio.jsp">Ingresar Acta</a><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="7" height="7"> <a href="matrimonio.jsp">Buscar Acta</a>			<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <%
		if (uBEAN.esAdministrador()==true)
		{
%>
                <img src="../../../imagenes/add.png" width="8" height="7"> <a href="../modificar/matrimonio.jsp">Modificar Acta</a>			<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../../../imagenes/add.png" width="8" height="7"> <a href="../anular/matrimonio.jsp">Anular Acta</a>			<br>
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
	if (uBEAN.esAdministrador()==true)
	{
%>
		  <br>
          <table width="187" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="187" height="45" background="../../../imagenes/administracion.png">&nbsp;</td>
            </tr>
            <tr>
              <td  height="64" valign="top"background="../../../imagenes/contenido.png"><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="4" width="8" height="7"> <a href="../../../usuario/ingresar/usuario.jsp">Ingresar Usuario</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="2" width="8" height="7"> <a href="../../../inicio/index_temporal.jsp">Modificar Usuario</a> <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../../imagenes/add.png" alt="1" width="8" height="7"> <a href="../../../inicio/index_temporal.jsp">Eliminar Usuario</a> <br>              </td>
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
        <td width="512" height="40" valign="middle"><a href="../../../inicio/index.jsp">Inicio</a> &gt; Buscar Acta de Matrimonio</td>
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
                <li><a href="../../../bautismo/acta/buscar/bautismo.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bautizo&nbsp;&nbsp;</a></li>
                <li><a href="../../../comunion/acta/buscar/comunion.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Primera Comuni&oacute;n&nbsp;&nbsp;</a></li>
                <li><a href="../../../confirmacion/acta/buscar/confirmacion.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirmaci&oacute;n&nbsp;&nbsp;</a></li>
                <li><a href="matrimonio.jsp" class="active">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Matrimonio&nbsp;&nbsp;</a></li>
            </ul>
      <div id="container">
<%
    if (id != null && id.compareTo("1") == 0) {
%>
    <form name="ninguno">
        <div id="titulo">BUSCAR  ACTA DE MATRIMONIO </div><br>
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
    <form name="PorNombreApellido" method="post" action="matrimonio_01BEAN.jsp">
        <div id="buscar_por_nombre_apellido">
            <table width="519" border="0">
              <!--DWLayoutTable-->
                <tr>
                <td width="455">
                <fieldset>
                    <legend>B&uacute;squeda por nombre(s) y apellido(s)</legend>
                    <p>
                      <label for="esposo_nombre">Nombre(s) del esposo: </label>
                      <input type="text" name="esposo_nombre" id="esposo_nombre" class="txt"/>
                    </p>
                    <p>
                      <label for="esposo_apellido">Apellido(s) del esposo: </label>
                      <input type="text" name="esposo_apellido" id="esposo_apellido" class="txt"/>
                    </p>
                    <p>
                      <label for="esposa_nombre">Nombre(s) de la esposa: </label>
                      <input type="text" name="esposa_nombre" id="esposa_nombre" class="txt"/>
                    </p>
                    <p>
                      <label for="esposa_apellido">Apellido(s) de la esposa: </label>
                      <input type="text" name="esposa_apellido" id="esposa_apellido" class="txt"/>
                    </p>
                </fieldset>
                                    </td>
                </tr>
                <tr>
                  <td height="44"><div align="center">
                    <input name="btn_buscar_porNombreApellido" type="submit" id="btn_buscar_porNombreApellido" value="Buscar">
                  </div></td>
                </tr>
            </table>
        </div>
    </form>
    <form name="PorFecha" method="post" action="matrimonio_02BEAN.jsp">        
    <div id="buscar_por_fecha">
        <table width="501" border="0">
          <!--DWLayoutTable-->
          <tr>
            <td width="455">
            <fieldset>
              <legend>B&uacute;squeda por fecha</legend>
                <p>
                <label for="fecha_matrimonio">Fecha de Matrimonio: </label>
                <input name="fecha_matrimonio" type="text" class="txt" id="fecha_matrimonio"  value="aaaa-mm-dd" maxlength="10"/>
                <button type="button" name="btn_fecha_matrimonio" id="btn_fecha_matrimonio" onclick="cal.select(document.PorFecha.fecha_matrimonio,'btn_fecha_matrimonio','yyyy-MM-dd'); return false;" title="cal.select(document.PorFecha.fecha_matrimonio,'btn_fecha_matrimonio','yyyy-MM-dd'); return false;"><img src="../../../imagenes/Calendar.gif" border="0"/></button>
                </p>
            </fieldset>                </td>
          </tr>
          <tr>
            <td height="42"><div align="center">
              <input name="btn_buscar_porFecha" type="submit" id="btn_buscar_porFecha" value="Buscar">
            </div></td>
          </tr>
        </table>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>     
  </form>
<%
    } else if ((id != null && tipo != null) && (id.compareTo("2") == 0 && tipo.compareTo("1") == 0)) {
%>
    <form name="Consultar" >
      <div id="titulo">BUSCAR ACTA DE MATRIMONIO</div><br><br>
      <table width="450" border="0" align="center">
          <tr>
              <td>
                  <span id="titulo"><strong>Nombres y Apellidos de los esposos</strong></span>
              </td>
          </tr>
              <%
              esposoBEAN.setTipo("esposo");
              esposaBEAN.setTipo("esposa");
              SSP.Solicitante esposo;
              SSP.Solicitante esposa;
              LinkedList esposoList = esposoBEAN.listaDeSolicitantes();
              LinkedList esposaList = esposaBEAN.listaDeSolicitantes();
              for (int i = 0; i < esposoList.size(); i++)
              {
                  esposo = (SSP.Solicitante) esposoList.get(i);
                  esposa = (SSP.Solicitante) esposaList.get(i);
                  out.println("<tr><td>");
                  %>
                  <a href="matrimonio_imprimir.jsp?nom01=<%=String.valueOf(esposo.getNombre())%>&ape01=<%=String.valueOf(esposo.getApellido())%>&nom02=<%=String.valueOf(esposa.getNombre())%>&ape02=<%=String.valueOf(esposa.getApellido())%>" target="popup" onClick="window.open(this.href, this.target, 'width=650,height=550'); return false;">
                    <%out.println(esposo.getNombre() + " " + esposo.getApellido() + " y " + esposa.getNombre() + " " + esposa.getApellido());%>
                  </a>
                  <%
                  out.println("</td></tr>");
              }
              %>
      </table>
      <br>
      <p>
          <input name="btn_ok" type="button" id="btn_ok" onclick="irInicio()" value="   Ok   ">
      </p>
    </form>
<%
    } else if ((id != null && tipo != null) && (id.compareTo("2") == 0 && tipo.compareTo("2") == 0)) {
%>
    <form name="Consultar" >
      <div id="titulo">BUSCAR ACTA DE MATRIMONIO</div><br><br>
      <table width="450" border="0" align="center">
          <tr>
              <td>
                  <span id="titulo"><strong>Nombres y Apellidos de los esposos</strong></span>
              </td>
          </tr>
        <%
            SSP.Casar matrimonio;
            LinkedList matrimonios = matrimonioBEAN.generarMatrimonioFecha(matrimonioBEAN.getfecha_matrimonio(),"matrimonio");
            for (int i = 0; i < matrimonios.size(); i++)
            {
                matrimonio = (SSP.Casar) matrimonios.get(i); 
                out.println("<tr><td>");%>
                <a href="matrimonio_imprimir.jsp?nom01=<%=matrimonio.esposo.getNombre()%>&ape01=<%=matrimonio.esposo.getApellido()%>&nom02=<%=matrimonio.esposa.getNombre()%>&ape02=<%=matrimonio.esposa.getApellido()%>" target="popup" onClick="window.open(this.href, this.target, 'width=650,height=550'); return false;">
                <%out.println(matrimonio.esposo.getNombre() + " " + matrimonio.esposo.getApellido() + " y " + matrimonio.esposa.getNombre() + " " + matrimonio.esposa.getApellido());%></a>
                <%out.println("</td></tr>");
            }
        %>
      </table>
      <br>
      <p>
          <input name="btn_ok" type="button" id="btn_ok" onclick="irInicio()" value="   Ok   ">
      </p>
    </form>
<%
    } else
        response.sendRedirect("matrimonio.jsp?id=1");
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