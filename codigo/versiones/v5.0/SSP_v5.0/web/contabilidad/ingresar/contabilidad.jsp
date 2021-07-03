<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id = "uBEAN" class = "SSP.Usuario" scope = "session"/>
<jsp:useBean id = "registroBEAN" class="SSP.Registro" scope="session" />

<%
    String id = request.getParameter("id");
	
	if (id != null) {
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SSP - Registro de Contabilidad</title>
        <link href="../../estilos/formularios.css" rel="stylesheet" type="text/css">
        <link href="../../estilos/my_style.css" rel="stylesheet" type="text/css">
        <link href="../../estilos/tab_navigation.css" type="text/css" rel=STYLESHEET>
		
        <script language="JavaScript" type="text/javascript" src="../../calendario/CalendarPopup.js"></script>
        <script language="JavaScript" type="text/javascript" src="../../calendario/common.js"></script>		
        <script language="JavaScript" type="text/javascript" src="../../inicio/cerrarSesion.js"></script>
        <script language="JavaScript" type="text/javascript" src="contabilidad.js"></script>
        <script type="text/javascript" language="javascript">
        var cal = new CalendarPopup();
        cal.showYearNavigation();
        cal.showYearNavigationInput();

        var xmlHttp;

        function createXMLHttpRequest() 
        {
            var req;
            if (window.ActiveXObject) {
                    req = new ActiveXObject("Microsoft.XMLHTTP");
            }
            else if (window.XMLHttpRequest) {
                    req = new XMLHttpRequest();
            }
            return req;
        }

        function generar_elementos()
        {
            var fecha= document.getElementById("fecha").value;
			var descrip= document.getElementById("descripcion").value;
			var valor= document.getElementById("valor").value;
			
			if (!vacio(fecha)) {
				alert("El campo de la fecha se encuentra vacio.");
				document.form.fecha.focus();
			} else if (!esFechaCorrecta(fecha)) {
				alert("La fecha es incorrecta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27");
				document.form.fecha.focus();
			} else if (!validarFecha(fecha)) {
				document.form.fecha.focus();
			} else if (!vacio(descrip)) {
				alert("Se encuentra vacio el campo de descripcion.");
				document.form.descripcion.focus();
			} else if (!vacio(valor)) {
				alert("Se ecnuentra vacio el campo del valor.");
				document.form.valor.focus();
			} else {
				var tipo;
				var radio1= document.getElementById("radio1");
				var radio2= document.getElementById("radio2");
				var radio3= document.getElementById("radio3");
				if(radio1.checked ){
				   tipo="Ingreso";
				}
				else if(radio2.checked ){
					tipo= "Egreso Interno";
				}
				else{
					tipo= "Egreso Externo";
				}
				
				xmlHttp= createXMLHttpRequest();
				xmlHttp.open("GET", "../../Controlador?tipo=" +tipo+ "&" +"descripcion=" +descrip+ "&" +"fecha=" +fecha+ "&" +"valor="+ valor ,true);
				xmlHttp.onreadystatechange= function(){
				   agregar_elementos(tipo, fecha, descrip, valor);
				}
				xmlHttp.send(null);
			}
        }
        
        function Guardar_Elemento(){
            xmlHttp= createXMLHttpRequest();
            xmlHttp.open("GET", "../../Controlador?accion=guardar",true);
            xmlHttp.onreadystatechange= function(){
               limpiar_pagina();
            }
            xmlHttp.send(null);
			window.location.href="contabilidad.jsp?id=2";
        }
        
        function limpiar_pagina()
        {
            var fecha= document.getElementById("fecha");
            var descrip= document.getElementById("descripcion");
            var valor= document.getElementById("valor");
            fecha.value="";
            descrip.value="";
            valor.value="";
            var nodo= document.getElementById("tabla");
            var fi= nodo.getElementsByTagName("tr");
            for(var i=0; i < fi.length; i++){
                var tds= fi[i].getElementsByTagName("td");
                for(var k=0; k < tds.length; k++){
                    nodo.removeChild(fi[i]);
                }
            }
        }
        
        function agregar_elementos(tipo, fecha, descrip, valor)
        {
            if(xmlHttp.readyState == 4 )
            {   
                if(xmlHttp.status == 200)
                {   
                    var response=xmlHttp.responseXML;
                    var registros=response.getElementsByTagName("item");
                    var cantidad_reg=registros.length;
                    var xmltipo, xmlfecha, xmldescrip, xmlvalor;
                    
                    for(i=0; i < cantidad_reg; i++)
                    {
                        xmltipo= registros[i].getElementsByTagName("tipo")[0].firstChild.nodeValue;
                        xmlfecha = registros[i].getElementsByTagName("fecha")[0].firstChild.nodeValue;
                        xmldescrip = registros[i].getElementsByTagName("descripcion")[0].firstChild.nodeValue;
                        xmlvalor = registros[i].getElementsByTagName("valor")[0].firstChild.nodeValue;
                    }
                    var nodo=document.getElementById("tabla");
                    var cont = 0;
                    var fila = nodo.getElementsByTagName("tr");
                    var total= fila.length+1;
                    var newTr = document.createElement("tr");
                    newTr.setAttribute("id",fila.length);
                    var impar=1;
                    var seleccion = document.createElement("td");
                    var check= document.createElement("input");
                    check.setAttribute("type","checkbox");
                    check.setAttribute("id",fila.length);
                    seleccion.appendChild(check);
                    var numero = document.createElement("td");
                    numero.setAttribute("id","numero");
                    var txt_num= document.createTextNode(total);
                    numero.appendChild(txt_num);
                    var descripcion = document.createElement("td");
                    descripcion.setAttribute("id","des_resgistro");
                    var txt_descrip= document.createTextNode(descrip);
                    descripcion.appendChild(txt_descrip);
                    var fecha_registro = document.createElement("td");
                    fecha_registro.setAttribute("id","fe_registro");
                    var txt_fecha= document.createTextNode(fecha);
                    fecha_registro.appendChild(txt_fecha);
                    var tipo_registro = document.createElement("td");
                    tipo_registro.setAttribute("id","ti_registro");
                    var txt_tipo= document.createTextNode(tipo);
                    tipo_registro.appendChild(txt_tipo);
                    var valor_registro = document.createElement("td");
                    valor_registro.setAttribute("id","va_registro");
                    var txt_valor= document.createTextNode(valor);
                    valor_registro.appendChild(txt_valor);
                    newTr.appendChild(seleccion);
                    newTr.appendChild(numero);
                    newTr.appendChild(descripcion);
                    newTr.appendChild(fecha_registro);
                    newTr.appendChild(tipo_registro);
                    newTr.appendChild(valor_registro);
                    nodo.appendChild(newTr); 
                 }
             }
       }

       function borrar_elementos(numero)
        {  
            xmlHttp= createXMLHttpRequest();
            xmlHttp.open("GET", "../../Controlador?numero=" +numero ,true);
            xmlHttp.onreadystatechange= function(){
            }
            xmlHttp.send(null);
        }
        
       function eliminar_elementos(){
            var nodo= document.getElementById("tabla");
            var fi= nodo.getElementsByTagName("tr");
            for(var i=0; i < fi.length; i++){
                var tds= fi[i].getElementsByTagName("td");
                for(var k=0; k < tds.length; k++){
                    var check= tds[k].firstChild;
                    if(check.checked){
                        nodo.removeChild(fi[i]);
                        borrar_elementos(tds[1].firstChild.nodeValue);
                    }
                }
            }
            reformar_numero();
       }
       
       function reformar_numero(){
            var nodo= document.getElementById("tabla");
            var fi= nodo.getElementsByTagName("tr");
            for(var i=0; i < fi.length; i++){
                var tds= fi[i].getElementsByTagName("td");
                    var num= tds[1].firstChild;
                    tds[1].removeChild(num);
                        var nodo_text= document.createTextNode(i+1);
                        tds[1].appendChild(nodo_text);
                    
                }
            eliminar_elementos();
       }
       
        function limpiar(nodo){
            var cont = 0;
            var flag = 1;
            while(flag==1){
                if(nodo.hasChildNodes()){
                    nodo.removeChild(nodo.firstChild);
                }
                else{
                   flag =0;
                  }
                }
            }
			
			function onlyChars( el )
			{
				var _character = el.value;
				var char = _character.charAt(_character.length-1);
				if (esCaracterEspecial(char) || esDigito(char))
					el.value = _character.substring(0, _character.length-1);
			}
			
			function onlyLong( el )
			{
				var _numero = el.value;
				var char = _numero.charAt(_numero.length-1);
				if (!esDigito(char) && char != ".")
					el.value = _numero.substring(0, _numero.length-1);
			}
        </script>		
    </head>
    <body>
        <%
        if( uBEAN!=null && uBEAN.esAdministrador() || uBEAN.esSecretario() || uBEAN.esContador() ) {
        %>
        <table width="770" border="0" align="left" cellpadding="0" cellspacing="0">
            <tr>
                <td height="152" colspan="4"><img src="../../imagenes/banner.png" width="805" height="150"></td>
            </tr>
            <tr>
                <td width="191" height="449" rowspan="3" valign="top"><%
	if( (uBEAN.esAdministrador()==true) || (uBEAN.esSecretario()==true) ) {
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
                                if( (uBEAN.esAdministrador()==true) || (uBEAN.esSecretario()==true) ) {
                                %>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <img src="../../imagenes/add.png" width="7" height="7"> <a href="../../bautismo/acta/ingresar/bautismo.jsp?id=1">Ingresar Acta</a>			<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <img src="../../imagenes/add.png" width="7" height="7"> <a href="../../bautismo/acta/buscar/bautismo.jsp?id=1">Buscar Acta</a>			<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <%
                                if (uBEAN.esAdministrador()==true) {
                                %>
                                <img src="../../imagenes/add.png" width="8" height="7"> <a href="../../bautismo/acta/modificar/bautismo.jsp?id=1">Modificar Acta</a>			<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <img src="../../imagenes/add.png" width="8" height="7"> <a href="../../bautismo/acta/anular/bautismo.jsp?id=1">Anular Acta</a>			<br>			
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
                    } if (uBEAN.esAdministrador()==true) {
                    %>
                    <table width="187" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="187" height="45" background="../../imagenes/administracion.png">&nbsp;</td>
                        </tr>
                        <tr>
                            <td  height="64" valign="top"background="../../imagenes/contenido.png"><br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="4" width="8" height="7"> <a href="../../usuario/ingresar/usuario.jsp?id=1">Ingresar Usuario</a> <br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="2" width="8" height="7"> <a href="../../usuario/modificar/usuario.jsp?id=1">Modificar Usuario</a> <br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="1" width="8" height="7"> <a href="../../usuario/eliminar/usuario.jsp?id=1">Eliminar Usuario</a> <br>              </td>
                        </tr>
                        <tr>
                            <td width="189" height="8" background="../../imagenes/abajo.png"></td>
                        </tr>
                    </table>
                    <%
		            } if (uBEAN.esAdministrador()==true || uBEAN.esContador()) {
						if (uBEAN.esContador()) out.println("<br>");
                    %>
                    <table width="187" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="187" height="45" background="../../imagenes/contabilidad.png">&nbsp;</td>
                      </tr>
                      <tr>
                        <td  height="52" valign="top"background="../../imagenes/contenido.png"><br>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="4" width="8" height="7"> <a href="contabilidad.jsp?id=1">Ingresar Registro</a> <br>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../../imagenes/add.png" alt="2" width="8" height="7"> <a href="../generar/contabilidad.jsp?id=1">Generar Reportes</a> <br>
                        </td>
                      </tr>
                      <tr>
                        <td width="189" height="8" background="../../imagenes/abajo.png"></td>
                      </tr>
                    </table>
              <% } %></td>
                <td width="512" height="40" valign="middle"><a href="../../inicio/index.jsp">Inicio</a> &gt; <% 
    if (uBEAN.esAdministrador())
        out.println("<span id=\"pista_administrador\">");
    else if (uBEAN.esSecretario())
        out.println("<span id=\"pista_secretario\">");
    else if (uBEAN.esContador())
        out.println("<span id=\"pista_contador\">");
%>
                Ingreso de Registro de Contablidad</span></td>
                <td width="36" rowspan="2" align="left" valign="middle">
                    <form action="../../inicio/cerrarSesion.jsp" method="post">
                    <img src="../../imagenes/gnome-shutdown.png" width="36,727" height="35,196" border="0" style="cursor:pointer;" onclick="cerrarSesion()"></form>
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
                        <table width="486" height="456" border="0" align="center">
                            <!--DWLayoutTable-->
                            <tr>
                                <td width="476" height="441" valign="top">
                                    <form name="Registro" id="Registro" method="post" action="../../Controlador">
                                        <div id="titulo">
                                            <div align="center">INGRESO DE REGISTRO DE CONTABILIDAD</div>
                                        </div>
                                        <br>
                                            <form name="form" action="Controlador?accion=guardar">
                                        <fieldset>
                                            <legend class="usuario">Datos del Registro</legend>
											<br>
												<table width="396" border="0" align="center">
                                                  <tr>
                                                    <td width="74" height="29"><label for="fecha">Fecha: </label></td>
                                                    <td width="164"><input name="fecha" type="text" class="txt" id="fecha" maxlength="10"/></td>
                                                    <td width="144"><button type="button" name="btn_fecha" id="btn_fecha" onclick="cal.select(document.Registro.fecha,'btn_fecha','yyyy-MM-dd'); return false;" title="cal.select(document.Registro.fecha,'btn_fecha','yyyy-MM-dd'); return false;"><img src="../../imagenes/Calendar.gif" border="0"/></button></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="29"><label for="descripcion">Descripci&oacute;n: </label></td>
                                                    <td><input name="descripcion" type="text" class="txt" id="descripcion" onKeyUp="onlyChars(this);"/></td>
                                                    <td><input name="btn_ingresar_descripcion" type="button" id="btn_ingresar_descripcion" value="Nuevo" onClick="ingresarDescripcion()"></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="29"><label for="valor">Valor: </label></td>
                                                    <td><input name="valor" type="text" class="txt" id="valor" onKeyUp="onlyLong(this);"/></td>
                                                    <td>&nbsp;</td>
                                                  </tr>
                                                  <tr>
                                                    <td height="29"><label>Tipo: </label></td>
                                                    <td colspan="2"><label><input name="radio" id="radio1" type="radio" value="0" checked> Ingreso</input></label>
                                                    <label><input name="radio" id="radio2" type="radio" value="1"> Egreso interno</input></label>
                                                    <label><input name="radio" id="radio3" type="radio" value="2"> Egreso externo</input></label></td>
                                                  </tr>
                                                </table>
												<br>
											  </fieldset>
                                            </form>
											<br>
                                        <table width="174" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="32" height="32" align="left" valign="middle"><a href="#" onclick="generar_elementos()"><img src="../../imagenes/edit_add.png" width="32" height="32" border="0"></a></td>
                                                <td width="80" align="left" valign="middle">A&ntilde;adir</td>
                                                <td width="32" height="32"><a href="#" onclick="eliminar_elementos()"><img src="../../imagenes/editdelete.png" width="32" height="32" border="0"></a></td>
                                                <td width="80">Eliminar</td>
                                            </tr>
                                  </table>
                                        <br>
                                        <table  width="500" border="2" cellpadding="1" class="datatable">
                                            <tr  id="fila">
                                                <td width="51" class="informe_02">Selecci&oacute;n</td>
                                                <td width="21" class="informe_02">No</td>      
                                                <td width="216" class="informe_02">Descripci&oacute;n</td>
                                                <td width="59" class="informe_02">Fecha</td>
                                                <td width="55" class="informe_02">Tipo</td>
                                                <td width="56" class="informe_02">Valor</td>
                                            </tr>
                                            <tbody id="tabla"></tbody>
                                            
                                        </table><br><br>
                                        <div align="right"><br>
                                            <input name="btn_guardar" type="button" id="btn_guardar" value="Guardar" onclick="Guardar_Elemento()" >
                                            &nbsp;&nbsp;&nbsp;
                                            <input name="btn_cancelar" type="submit" id="btn_cancelar" value="Cancelar" onClick="javascript:window.location.href='contabilidad.jsp?id=1';">
                                        </div>
                                </form></td>
                            </tr>
                      </table>
                        <%
                        } else if (id != null && id.compareTo("2") == 0) {
                        %>
                        <br>
                        <table width="200" border="0">
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width="64"><div align="center"><img src="../../imagenes/dialog-information.png" width="48" height="48"></div></td>
                                <td width="126"><div align="left">Se ha ingresado el Registro de Contabilidad con &eacute;xito.  </div></td>
                            </tr>
                            <tr>
                                <td colspan="2"><div align="center"><br>
                                        <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='contabilidad.jsp?id=1';">
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
                                <td width="126"><div align="left">Lo siento pero no se ha ingresado el Registro de Contabilidad con &eacute;xito. </div></td>
                            </tr>
                            <tr>
                                <td colspan="2"><div align="center"><br>
                                        <input name="btn_inicio" type="button" id="btn_inicio" value="Ir al inicio" onClick="javascript:window.location.href='contabilidad.jsp?id=1';">
                                </div></td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                        </table><br>
                        <%
                        } else
                        	response.sendRedirect("contabilidad.jsp?id=1");
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
		response.sendRedirect("contabilidad.jsp?id=1");		
%>