window.onload=setup;

var mensaje_01 = "?Est? seguro de volver a iniciar la modificaci?n del Acta de Primera Comuni?n?";
var mensaje_02 = "?Est? seguro de cancelar la modificaci?n del Acta de Primera Comuni?n?";

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
	
	document.PorNombreApellido.comulgado_nombre.focus();
}

function mostrarBusquedaPorFecha()
{
    var nombre_apellido = document.getElementById("buscar_por_nombre_apellido");    
    var fecha = document.getElementById("buscar_por_fecha");
	
    nombre_apellido.style.visibility = "hidden";
    fecha.style.visibility = "visible";
	
	document.PorFecha.fecha_comunion.focus();
}

function buscarPorFecha() {
	var fecha = document.PorFecha.fecha_comunion.value;
	
	if (!vacio(fecha)) {
		alert("No ha ingresado la fecha.");
		document.PorFecha.fecha_comunion.focus();
	} else if (!esFechaCorrecta(fecha)) {
		alert("LA FECHA DE LA PRIMERA COMUNI?N no est? correcta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27");
		document.PorFecha.fecha_comunion.focus();
	} else if (!validarFecha(fecha, "Primera Comuni?n")) {
		document.PorFecha.fecha_comunion.focus();
	} else {
		document.PorFecha.submit();
	}
}

function esCaracterEspecial(caracter) {
	return (caracter == "."  || caracter == "," || caracter == "/" || caracter == "<" || caracter == ">" || caracter == "~" || 
			caracter == "?"  || caracter == ";" || caracter == ":" || caracter == "'" || caracter == "\"" || caracter == "?" ||
			caracter == "="  || caracter == "+" || caracter == "-" || caracter == "_" || caracter == "!" || caracter == "?" || 
			caracter == "@"  || caracter == "#" || caracter == "$" || caracter == "%" || caracter == "^" || caracter == "`" || 
			caracter == "("  || caracter == "&" || caracter == "*" || caracter == ")" || caracter == "{" || caracter == "?" ||
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
		alert("El d?a ingresado en la Fecha de " + mensaje + " se encuentra incorrecto.");
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