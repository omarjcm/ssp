window.onload=setup;

var mensaje_01 = "¿Está seguro de volver a iniciar la modificación del Acta de Matrimonio?";
var mensaje_02 = "¿Está seguro de cancelar la modificación del Acta de Matrimonio?";

function cambiar(url, mensaje)
{
	var valor = confirm( mensaje );
	if (valor)
		window.location.href = url;
}

function setup( ) {
	mostrar(0);	
}

function habilitarContCapa(indice, valor)
{
    var parroquia = document.getElementById("cont_parroquia");
    var solicitante = document.getElementById("cont_solicitante");
    var padres_esposo = document.getElementById("cont_padres_esposo");
    var padres_esposa = document.getElementById("cont_padres_esposa");
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
		padres_esposo.style.visibility = "visible";
	else
		padres_esposo.style.visibility = "hidden";		
	if (indice == 4 && valor)
		padres_esposa.style.visibility = "visible";
	else
		padres_esposa.style.visibility = "hidden";		
	if (indice == 5 && valor)
		padrinos.style.visibility = "visible";
	else
		padrinos.style.visibility = "hidden";		
	if (indice == 6 && valor) 
		reg_eclesiastico.style.visibility = "visible";
	else 
		reg_eclesiastico.style.visibility = "hidden";
	if (indice == 7 && valor) 
		reg_civil.style.visibility = "visible";
	else 
		reg_civil.style.visibility = "hidden";
	if (indice == 8 && valor)
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

function mostrarBusquedaPorNombreYApellido()
{
    var nombre_apellido = document.getElementById("buscar_por_nombre_apellido");    
    var fecha = document.getElementById("buscar_por_fecha");
	
    nombre_apellido.style.visibility = "visible";
    fecha.style.visibility = "hidden";
	
	document.PorNombreApellido.esposo_nombre.focus();
}

function mostrarBusquedaPorFecha()
{
    var nombre_apellido = document.getElementById("buscar_por_nombre_apellido");    
    var fecha = document.getElementById("buscar_por_fecha");
	
    nombre_apellido.style.visibility = "hidden";
    fecha.style.visibility = "visible";
	
	document.PorFecha.fecha_matrimonio.focus();
}

function buscarPorFecha() {
	var fecha = document.PorFecha.fecha_matrimonio.value;
	
	if (!vacio(fecha)) {
		alert("No ha ingresado la fecha.");
		document.PorFecha.fecha_matrimonio.focus();
	} else if (!esFechaCorrecta(fecha)) {
		alert("LA FECHA DE MATRIMONIO no está correcta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27");
		document.PorFecha.fecha_matrimonio.focus();
	} else if (!validarFecha(fecha, "Matrimonio")) {
		document.PorFecha.fecha_matrimonio.focus();
	} else {
		document.PorFecha.submit();
	}
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

function vacio(q){
	for ( i = 0; i < q.length; i++ ){
		if ( q.charAt(i) != " " ){
			return true
		}
	}
	return false
}

function validarFecha(fecha, mensaje)
{
	var anio = fecha.substring(0, 4);
	var mes = fecha.substring(5, 7);
	var dia = fecha.substring(8, 10);
	
	if (mes < 1 || mes > 12) {
		alert("El mes ingresado en la Fecha de " + mensaje + " se encuentra incorrecto.");
		return false;
	}
	if (dia < 1 || dia > 31) {
		alert("El día ingresado en la Fecha de " + mensaje + " se encuentra incorrecto.");
		return false;
	}
	return true;
}

function esFechaCorrecta(fecha)
{
    if(fecha.length != 10) return false;

	for ( i = 0; i < fecha.length; i++ ){
		if (i >= 0 && i <= 3) {
			if ( !esDigito(fecha.charAt(i)) ) return false;
		}
		else if (i == 4) {
			if (fecha.charAt(i) != '-') return false;
		}
		else if (i == 5 || i == 6) {
			if ( !esDigito(fecha.charAt(i)) ) return false;
		}
		else if (i == 7) {
			if (fecha.charAt(i) != '-') return false;
		}
		else if (i == 8 || i == 9) {
			if ( !esDigito(fecha.charAt(i)) ) return false;
		}
	}
	
	return true;
}

function modificarMatrimonio() {
	var fecha_matrimonio = document.Matrimonio.fecha_matrimonio.value;
	
	if(!vacio(fecha_matrimonio)){
		alert("Debe ingresar LA FECHA DE MATRIMONIO.");
		document.Matrimonio.fecha_matrimonio.focus();
		return false;
	}
	if(!esFechaCorrecta(fecha_matrimonio)){
		alert("LA FECHA DE MATRIMONIO no está correcta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27");
		document.Matrimonio.fecha_matrimonio.focus();
		return false;
	}
	if (!validarFecha(fecha_matrimonio, "Matrimonio")) {
		document.Matrimonio.fecha_matrimonio.focus();
		return false;
	}
	else {
		document.Matrimonio.submit();
	}
}