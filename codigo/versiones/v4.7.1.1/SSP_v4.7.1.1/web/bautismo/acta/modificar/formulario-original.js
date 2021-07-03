window.onload=setup;

var mensaje_01 = "¿Está seguro de volver a iniciar la modificación del Acta de Bautizo?";
var mensaje_02 = "¿Está seguro de cancelar la modificación del Acta de Bautizo?";

function cambiar(url, mensaje)
{
	var valor = confirm( mensaje );
	if (valor)
		window.location.href = url;
}

function setup( ) {
   document.getElementById('Parroquia').style.display='block';
   document.getElementById('Solicitante').style.display='none';
   document.getElementById('Padres').style.display='none';
   document.getElementById('Padrinos').style.display='none';
   document.getElementById('Registro_eclesiastico').style.display='none';   
   document.getElementById('Registro_civil').style.display='none';   
   document.getElementById('Observacion').style.display='none';
}

function show(newItem) {
   var item = document.getElementById(newItem);
   if (item.style.display=='none') {
       item.style.display='block';
   } else {
       item.style.display='none';
   }
}

function mostrarBusquedaPorNombreYApellido()
{
    var nombre_apellido = document.getElementById("buscar_por_nombre_apellido");    
    var fecha = document.getElementById("buscar_por_fecha");
	
    nombre_apellido.style.visibility = "visible";
    fecha.style.visibility = "hidden";
	
	document.PorNombreApellido.bautizado_nombre.focus();
}

function mostrarBusquedaPorFecha()
{
    var nombre_apellido = document.getElementById("buscar_por_nombre_apellido");    
    var fecha = document.getElementById("buscar_por_fecha");
	
    nombre_apellido.style.visibility = "hidden";
    fecha.style.visibility = "visible";
	
	document.PorFecha.fecha_bautizo.focus();
}

function esCaracterEspecial(caracter) {
	return (caracter == "."  || caracter == "," || caracter == "/" || caracter == "<" || caracter == ">" || caracter == "~" || 
			caracter == "?"  || caracter == ";" || caracter == ":" || caracter == "'" || caracter == "\"" || caracter == "¿" ||
			caracter == "="  || caracter == "+" || caracter == "-" || caracter == "_" || caracter == "!" || caracter == "¡" || 
			caracter == "@"  || caracter == "#" || caracter == "$" || caracter == "%" || caracter == "^" || caracter == "`" || 
			caracter == "("  || caracter == "&" || caracter == "*" || caracter == ")" || caracter == "{" || caracter == "´" ||
			caracter == "}"  || caracter == "[" || caracter == "]" || caracter == "|" || caracter == "\\" );
}

function esDigito(caracter) {
		return (caracter >= "0"  && caracter <= "9");
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

function habilitarContCapa(indice, valor)
{
    var parroquia = document.getElementById("cont_parroquia");
    var solicitante = document.getElementById("cont_solicitante");
    var padres = document.getElementById("cont_padres");
    var padrinos = document.getElementById("cont_padrinos");
    var reg_eclesiastico = document.getElementById("cont_reg_eclesiastico");
    var reg_civil = document.getElementById("cont_reg_civil");
    var observacion = document.getElementById("cont_observacion");
	
    if (indice == 1 && valor)
        parroquia.style.visibility = "visible";
    else
        parroquia.style.visibility = "hidden";
    if (indice == 2 && valor)
        solicitante.style.visibility = "visible";
    else
        solicitante.style.visibility = "hidden";
    if (indice == 3 && valor)
        padres.style.visibility = "visible";
    else
        padres.style.visibility = "hidden";		
    if (indice == 4 && valor)
        padrinos.style.visibility = "visible";
    else
        padrinos.style.visibility = "hidden";		
    if (indice == 5 && valor) 
        reg_eclesiastico.style.visibility = "visible";
    else 
        reg_eclesiastico.style.visibility = "hidden";
    if (indice == 6 && valor)
        reg_civil.style.visibility = "visible";
    else
        reg_civil.style.visibility = "hidden";		
    if (indice == 7 && valor)
        observacion.style.visibility = "visible";
    else
        observacion.style.visibility = "hidden";
}

function mostrar(id)
{
	var menu_lista = document.getElementById("menu_lista");
	var enlaces = menu_lista.getElementsByTagName("a");

	for (var i=0; i< enlaces.length; i++) {
		if (i == id) {
			enlaces[i].setAttribute("class","active");
			habilitarContCapa(i+1, true);
		} else
			enlaces[i].setAttribute("class","");
	}
}