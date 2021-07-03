<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Ingreso de descripci&oacute;n</title>
        <link href="../../estilos/formularios.css" rel="stylesheet" type="text/css">
        <link href="../../estilos/my_style.css" rel="stylesheet" type="text/css">
        <script language="javascript" type="text/javascript" >            
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

    function generar_descripciones(valor)
    {
		xmlHttp= createXMLHttpRequest();
		xmlHttp.open("GET", "../../Controlador?letra="+valor.value,true);
        xmlHttp.onreadystatechange = function() {
            manejador(valor.value);
        }
        xmlHttp.send(null);
    }
    
    function manejador(valor)
    {  
        if(xmlHttp.readyState == 4 )
        {    
            if(xmlHttp.status == 200)
            {   
                var response=xmlHttp.responseXML;
                var descripcion=response.getElementsByTagName("descripcion");
                var cantidad_descrip=descripcion.length;
                var i, nombre,numero;
                var lista=document.getElementById("lista");
                limpiar(lista);
                var arreglo_empleados;
                 
                for(i=0; i < cantidad_descrip; i++)
                    {
                        nombre= descripcion[i].getElementsByTagName("nombre")[0].firstChild.nodeValue;
                        var lis=document.createElement("li");
                        var enlace = document.createElement("a");
                        var texto=document.createTextNode(nombre);
                        enlace.setAttribute('id',"lis");
                        enlace.setAttribute('href',"#");
                        enlace.setAttribute('onclick',"Enviar_Datos(this)");
                        enlace.appendChild(texto);
                        lis.appendChild(enlace);
                        lista.appendChild(lis);
                    }
             }
        }
    }
    
    function Enviar_Datos(elemento){
        var texto= elemento.firstChild.nodeValue;
        opener.document.Registro.descripcion.value=texto;
        window.close();
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
        </script>
    </head>
    <body>
        <table width="328" border="0" align="center" >
            <tr>
                <td width="322" height="87">
                    <form name="form" id="form" action="contabilidad.jsp">
                        <fieldset>
                            <legend>Ingrese la descripci&oacute;n</legend>
                            <p>
                                <label>Buscar:</label>
                                <input name="letra" type="text" class="txt" id="letra" onkeyup="generar_descripciones(this)"/>
                            </p><br />
                        </fieldset><br />
						<fieldset>
							<ul id="lista" class="info">
							</ul>
						</fieldset>
                </form>	</td>
            </tr>
        </table>
    </body>
</html>
