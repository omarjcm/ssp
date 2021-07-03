/*
 * Archivo:	formulario.js
 * Autor:	CoDeSoftware 
 * Licencia:	GNU/GPL
 * Fecha de Creación: 01/06/2007
 *
 * ==============================================================
 * Historial de Modificaciones:
 *
 * Versión   | Responsable       | Fecha    | Cambio                           | Razón de Cambio
 * ---------------------------------------------------------------------------------------------------------------------------
 *   4.7.1.1 | CoDeSOFTWARE      | 08/09/07 |                                  | 
 *   4.7.1.1 | Guillermo Pizarro | 03/09/07 | habilitarContCapa(indice, valor) | Para una mejor presentacion de los datos antes de ingresar los datos.
 * ==============================================================
 */
 
var centinela = 0;

var mensaje_01 = "¿Está seguro de volver a iniciar el ingreso del Acta de Primera Comunión?";
var mensaje_02 = "¿Está seguro de cancelar el ingreso del Acta de Primera Comunión?";

function setObjects(  ){
	var parroquia = document.getElementById("parroquia");
	parroquia.style.visibility = "visible";
	
	document.Comunion.id_ministro.focus();
	
	var mydate = new Date();
	var year = mydate.getYear();
	if (year < 1000) year+=1900;
	
	document.Comunion.anio_libro.value = year;
}

function setup( ) {
	mostrar(0);
}

function cambiar_tarea(url, mensaje)
{
	if (centinela == 0)
		window.location.href = url;
	else {
		var valor = confirm( mensaje );
		if (valor) {
			window.location.href = url;
			cenrinela = 0;
		}
	}
}

function cambiar(url, mensaje)
{
	var valor = confirm( mensaje );
	if (valor)
		window.location.href = url;
}

function vacio(q){
	for ( i = 0; i < q.length; i++ ){
		if ( q.charAt(i) != " " ){
			return true
		}
	}
	return false
}

function esCaracterEspecial(caracter) {
	return (caracter == "."  || caracter == "," || caracter == "/" || caracter == "<" || caracter == ">" || caracter == "~" || 
			caracter == "?"  || caracter == ";" || caracter == ":" || caracter == "'" || caracter == "\"" || caracter == "¿" ||
			caracter == "="  || caracter == "+" || caracter == "_" || caracter == "!" || caracter == "¡" || 
			caracter == "@"  || caracter == "#" || caracter == "$" || caracter == "%" || caracter == "^" || caracter == "`" || 
			caracter == "&" || caracter == "*" || caracter == "{" || caracter == "´" ||
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

function comprobarFechas(fecha_nacimiento, fecha_sacramento){
	var array_fecha_nacimiento = fecha_nacimiento.split('-');
	var array_fecha_sacramento = fecha_sacramento.split('-');
	
	if (array_fecha_nacimiento[0] > array_fecha_sacramento[0])
		return false;
	if (array_fecha_nacimiento[0] == array_fecha_sacramento[0]){
		if (array_fecha_nacimiento[1] > array_fecha_sacramento[1])
			return false;
		if (array_fecha_nacimiento[1] == array_fecha_sacramento[1]){
			if (array_fecha_nacimiento[2] > array_fecha_sacramento[2])
				return false;
		}
	}
	return true;
}

function habilitarContCapa(indice, valor)
{
    var parroquia = document.getElementById("cont_parroquia");
    var solicitante_01 = document.getElementById("cont_solicitante_01");
    var solicitante_02 = document.getElementById("cont_solicitante_02");
    var padres = document.getElementById("cont_padres");
    var padrinos = document.getElementById("cont_padrinos");
    var reg_eclesiastico = document.getElementById("cont_reg_eclesiastico");
    var observacion = document.getElementById("cont_observacion");
	
	if (indice == 1 && valor)
		parroquia.style.visibility = "visible";
	else
		parroquia.style.visibility = "hidden";
	if (indice == 2 && valor)
		solicitante_01.style.visibility = "visible";
	else
		solicitante_01.style.visibility = "hidden";
	if (indice == 3 && valor)
		solicitante_02.style.visibility = "visible";
	else
		solicitante_02.style.visibility = "hidden";
	if (indice == 4 && valor)
		padres.style.visibility = "visible";
	else
		padres.style.visibility = "hidden";		
	if (indice == 5 && valor)
		padrinos.style.visibility = "visible";
	else
		padrinos.style.visibility = "hidden";		
	if (indice == 6 && valor) 
		reg_eclesiastico.style.visibility = "visible";
	else 
		reg_eclesiastico.style.visibility = "hidden";
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

function habilitarCapa(indice, valor)
{
	centinela = 1;
	
	var parroquia = document.getElementById("parroquia");
	var solicitante_01 = document.getElementById("solicitante_01");
	var solicitante_02 = document.getElementById("solicitante_02");
	var padres = document.getElementById("padres");
	var padrinos = document.getElementById("padrinos");
	var reg_eclesiastico = document.getElementById("reg_eclesiastico");
	var observacion = document.getElementById("txt_observacion");
	
	if (indice == 1 && valor)
		parroquia.style.visibility = "visible";
	else
		parroquia.style.visibility = "hidden";
	if (indice == 2 && valor)
		solicitante_01.style.visibility = "visible";
	else
		solicitante_01.style.visibility = "hidden";
	if (indice == 3 && valor)
		solicitante_02.style.visibility = "visible";
	else
		solicitante_02.style.visibility = "hidden";
	if (indice == 4 && valor)
		padres.style.visibility = "visible";
	else
		padres.style.visibility = "hidden";		
	if (indice == 5 && valor)
		padrinos.style.visibility = "visible";
	else
		padrinos.style.visibility = "hidden";		
	if (indice == 6 && valor) 
		reg_eclesiastico.style.visibility = "visible";
	else 
		reg_eclesiastico.style.visibility = "hidden";
	if (indice == 7 && valor)
		observacion.style.visibility = "visible";
	else
		observacion.style.visibility = "hidden";
}

function mostrarParroquia(){
	habilitarCapa(1, true);
}

function mostrarSolicitante_01(){
	var fecha_comunion = document.Comunion.fecha_comunion.value;
	
	if(!vacio(fecha_comunion)){
		alert("Debe ingresar LA FECHA DE COMUNIÓN.");
		document.Comunion.fecha_comunion.focus();
		return false;
	}
	if(!esFechaCorrecta(fecha_comunion)){
		alert("LA FECHA DE COMUNIÓN no está correcta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27");
		document.Comunion.fecha_comunion.focus();
		return false;
	}
	if (!validarFecha(fecha_comunion, "la Primera Comunión")) {
		document.Comunion.fecha_comunion.focus();
		return false
	}
	else {
		document.Comunion.comulgado_nombre.focus();
		habilitarCapa(2, true);
	}
}

function mostrarSolicitante_02(){
	var comulgado_nombre = document.Comunion.comulgado_nombre.value;
	var comulgado_apellido = document.Comunion.comulgado_apellido.value;
	var fecha_nacimiento = document.Comunion.fecha_nacimiento.value;
	
	if(!vacio(comulgado_nombre)){
		alert("Debe ingresar EL NOMBRE del solicitante.");
		document.Comunion.comulgado_nombre.focus();
		return false;
	}
	if(!vacio(comulgado_apellido)){
		alert("Debe ingresar EL APELLIDO del solicitante.");
		document.Comunion.comulgado_apellido.focus();
		return false;
	}
	if(!vacio(fecha_nacimiento)){
		alert("Debe ingresar LA FECHA DE NACIMIENTO del solicitante.");
		document.Comunion.fecha_nacimiento.focus();
		return false;
	}
	if(!esFechaCorrecta(fecha_nacimiento)){
		alert("LA FECHA DE NACIMIENTO del solicitante no está correcta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27");
		document.Comunion.fecha_nacimiento.focus();		
		return false;
	}
	if (!validarFecha(fecha_nacimiento, "de Nacimiento")) {
		document.Comunion.fecha_nacimiento.focus();
		return false;
	}
	if(!comprobarFechas(fecha_nacimiento, document.Comunion.fecha_comunion.value)){
		alert("No puede ser LA FECHA DE NACIMIENTO mayor a LA FECHA DE LA PRIMERA COMUNIÓN.");
		document.Comunion.fecha_nacimiento.focus();
		return false;
	}
	else {
		var apellidos = document.Comunion.comulgado_apellido.value.split(' ');
		document.Comunion.padre_apellido.value = apellidos[0];
		if (apellidos[1] != null) document.Comunion.madre_apellido.value = apellidos[1];
		
		document.Comunion.edad.focus();
		habilitarCapa(3, true);
	}
}

function mostrarPadres(){
	if(!vacio(document.Comunion.edad.value))
		document.Comunion.edad.value = "0";
	
	document.Comunion.padre_nombre.focus();
	habilitarCapa(4, true);
}

function mostrarPadrinos(){
	document.Comunion.padrino_nombre.focus();
	habilitarCapa(5, true);
}

function mostrarRegistroEclesiastico(){
	if( (!vacio(document.Comunion.padrino_nombre.value) && !vacio(document.Comunion.padrino_nombre.value)) && 
		(!vacio(document.Comunion.madrina_nombre.value) && !vacio(document.Comunion.madrina_nombre.value)) ){
		alert("Debe ingresar al menos UN PADRINO del solicitante.")
		document.Comunion.padrino_nombre.focus();
		return false;
	}
	else {
		document.Comunion.anio_libro.focus();
		habilitarCapa(6, true);
	}
}

function mostrarObservacion(){
	var mydate = new Date();
	var year = mydate.getYear();
	if (year < 1000) year+=1900;
	var anio_libro = document.Comunion.anio_libro.value;
	
	if(!vacio(document.Comunion.anio_libro.value)){
		alert("Debe ingresar EL AÑO DEL LIBRO de Primera Comunión.");
		document.Comunion.anio_libro.focus();
		return false;
	}
	if (anio_libro > year) {
		alert("EL AÑO DEL LIBRO de Primera Comunión debe ser menor o igual al año actual.")
		document.Comunion.anio_libro.focus();
		return false
	}
	if(!vacio(document.Comunion.num_sacramento.value)){
		alert("Debe ingresar NÚMERO DEL ACTA de Primera Comunión.");
		document.Comunion.num_sacramento.focus();
		return false;
	}
	if(!vacio(document.Comunion.num_libro.value)){
		alert("Debe ingresar EL NÚMERO DEL LIBRO de Primera Comunión.");
		document.Comunion.num_libro.focus();
		return false;
	}
	if(!vacio(document.Comunion.folio_libro.value)){
		alert("Debe ingresar EL FOLIO DEL LIBRO de Primera Comunión.");
		document.Comunion.folio_libro.focus();
		return false;
	}
	else {
		document.Comunion.observacion.focus();
		habilitarCapa(7, true);
	}
}

function mostrarMinistro()
{
    var ministro = document.getElementById("ministro");    
    ministro.style.visibility = "visible";
}

function ocultarMinistro()
{
    var ministro = document.getElementById("ministro");
    ministro.style.visibility = "hidden";
}

function ingresarMinistro()
{
    obj = document.Ministro;
    obj.submit();
}

function validarIngreso()
{
	centinela = 0;
	
	if(!vacio(document.comunion.edad.value))
		document.comunion.edad.value = "0";
	if(!vacio(document.comunion.nivel.value))
		document.comunion.nivel.value = " ";
	if(!vacio(document.comunion.nombre_institucion.value))
		document.comunion.nombre_institucion.value = " ";
	if(!vacio(document.comunion.direccion.value))
		document.comunion.direccion.value = " ";
	
	if(!vacio(document.comunion.padre_nombre.value))
		document.comunion.padre_nombre.value = " ";
	if(!vacio(document.comunion.padre_apellido.value))
		document.comunion.padre_apellido.value = " ";
	if(!vacio(document.comunion.madre_nombre.value))
		document.comunion.madre_nombre.value = " ";
	if(!vacio(document.comunion.madre_apellido.value))
		document.comunion.madre_apellido.value = " ";
	
	if(!vacio(document.comunion.padrino_nombre.value))
		document.comunion.padrino_nombre.value = " ";
	if(!vacio(document.comunion.padrino_apellido.value))
		document.comunion.padrino_apellido.value = " ";
	if(!vacio(document.comunion.madrina_nombre.value))
		document.comunion.madrina_nombre.value = " ";
	if(!vacio(document.comunion.madrina_apellido.value))
		document.comunion.madrina_apellido.value = " ";
		
	if(!vacio(document.comunion.observacion.value))
		document.comunion.observacion.value = " ";	
	
    document.comunion.submit();
}