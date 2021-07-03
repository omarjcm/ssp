/*
 * Archivo:	formulario.js
 * Autor:	CoDeSoftware 
 * Licencia:	GNU/GPL
 * Fecha de Creación: 01/06/2007
 *
 * ==============================================================
 * Historial de Modificaciones:
 *
 * Versión | Responsable       | Fecha    | Cambio                           | Razón de Cambio
 * ---------------------------------------------------------------------------------------------------------------------------
 *   1.0   | CoDeSOFTWARE      | 05/06/07 |                                  | 
 *   4.7   | Guillermo Pizarro | 03/09/07 | habilitarContCapa(indice, valor) | Para una mejor presentacion de los datos antes de ingresar los datos.
 * ==============================================================
 */

var centinela = 0;

var mensaje_01 = "¿Está seguro de volver a iniciar el ingreso del Acta de Bautizo?";
var mensaje_02 = "¿Está seguro de cancelar el ingreso del Acta de Bautizo?";

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

function setObjects(  ){
    var parroquia = document.getElementById("parroquia");
    parroquia.style.visibility = "visible";

    document.Bautizo.id_ministro.focus();
	
	var mydate = new Date();
	var year = mydate.getYear();
	if (year < 1000) year+=1900;
	
	document.Bautizo.anio_libro.value = year;
	document.Bautizo.anio.value = year;
}

function vacio(q){
	for ( i = 0; i < q.length; i++ ){
		if ( q.charAt(i) != " " ){
			return true
		}
	}
	return false
}

function esDigito(caracter) {
	return (caracter >= "0"  && caracter <= "9");
}

function esCaracterEspecial(caracter) {
	return (caracter == "."  || caracter == "," || caracter == "/" || caracter == "<" || caracter == ">" || caracter == "~" || 
			caracter == "?"  || caracter == ";" || caracter == ":" || caracter == "'" || caracter == "\"" || caracter == "¿" ||
			caracter == "="  || caracter == "+" || caracter == "_" || caracter == "!" || caracter == "¡" || 
			caracter == "@"  || caracter == "#" || caracter == "$" || caracter == "%" || caracter == "^" || caracter == "`" || 
			caracter == "&" || caracter == "*" || caracter == "{" || caracter == "´" ||
			caracter == "}"  || caracter == "[" || caracter == "]" || caracter == "|" || caracter == "\\" );
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

function habilitarCapa(indice, valor)
{
	centinela = 1;
	
    var parroquia = document.getElementById("parroquia");
    var solicitante = document.getElementById("solicitante");
    var padres = document.getElementById("padres");
    var padrinos = document.getElementById("padrinos");
    var reg_eclesiastico = document.getElementById("reg_eclesiastico");
    var reg_civil = document.getElementById("reg_civil");
    var observacion = document.getElementById("txt_observacion");

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

function mostrarParroquia(){
    habilitarCapa(1, true);
}

function mostrarSolicitante(){
	var fecha_bautizo = document.Bautizo.fecha_bautizo.value;
	
	if(!vacio(fecha_bautizo)){
		alert("Debe ingresar LA FECHA DE BAUTIZO.");
		document.Bautizo.fecha_bautizo.focus();
		return false;
	}
	if(!esFechaCorrecta(fecha_bautizo)){
		alert("LA FECHA DE BAUTIZO no está correcta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27");
		document.Bautizo.fecha_bautizo.focus();
		return false;
	}
	if (!validarFecha(fecha_bautizo, "Bautizo")) {
		document.Bautizo.fecha_bautizo.focus();
		return false;
	}
	else {
		document.Bautizo.bautizado_nombre.focus();
		habilitarCapa(2, true);
	}
}

function mostrarPadres(){
	var bautizado_nombre = document.Bautizo.bautizado_nombre.value;
	var bautizado_apellido = document.Bautizo.bautizado_apellido.value;
	var fecha_nacimiento = document.Bautizo.fecha_nacimiento.value;
	
	if((vacio(bautizado_nombre) == false)){
		alert("Debe ingresar EL NOMBRE del bautizado.")
		document.Bautizo.bautizado_nombre.focus();
		return false
	}
	if((vacio(bautizado_apellido) == false)){
		alert("Debe ingresar EL APELLIDO del bautizado.")
		document.Bautizo.bautizado_apellido.focus();
		return false
	}	
	if(!vacio(fecha_nacimiento)){
		alert("Debe ingresar LA FECHA DE NACIMIENTO del bautizado.")
		document.Bautizo.fecha_nacimiento.focus();
		return false
	}
	if(!esFechaCorrecta(fecha_nacimiento)){
		alert("LA FECHA DE NACIMIENTO del bautizado no está correcta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27")
		document.Bautizo.fecha_nacimiento.focus();
		return false
	}
	if (!validarFecha(fecha_nacimiento, "Nacimiento")) {
		document.Bautizo.fecha_nacimiento.focus();
		return false;
	}
	if(!comprobarFechas(fecha_nacimiento, document.Bautizo.fecha_bautizo.value)){
		alert("No puede ser LA FECHA DE NACIMIENTO mayor a LA FECHA DEL BAUTIZO.")
		document.Bautizo.fecha_nacimiento.focus();
		return false
	}
	else {
		var apellidos = bautizado_apellido.split(' ');
		document.Bautizo.padre_apellido.value = apellidos[0];
		if (apellidos[1] != null) document.Bautizo.madre_apellido.value = apellidos[1];
		
		document.Bautizo.padre_nombre.focus();
		habilitarCapa(3, true);
	}
}

function mostrarPadrinos(){
	document.Bautizo.padrino_nombre.focus();
    habilitarCapa(4, true);
}

function mostrarRegistroEclesiastico(){	
	if( (!vacio(document.Bautizo.padrino_nombre.value) && !vacio(document.Bautizo.padrino_nombre.value)) && 
		(!vacio(document.Bautizo.madrina_nombre.value) && !vacio(document.Bautizo.madrina_nombre.value)) ){
		alert("Debe ingresar al menos UN PADRINO del bautizado.")
		document.Bautizo.padrino_nombre.focus();
		return false
	}
	else {
		document.Bautizo.anio_libro.focus();
		habilitarCapa(5, true);
	}
}

function mostrarRegistroCivil(){
	var mydate = new Date();
	var year = mydate.getYear();
	if (year < 1000) year+=1900;
	var anio_libro = document.Bautizo.anio_libro.value;
	
	if (anio_libro > year) {
		alert("EL AÑO DEL LIBRO de Bautizos debe ser menor o igual al año actual.")
		document.Bautizo.anio_libro.focus();
		return false
	}
	if(!vacio(document.Bautizo.anio_libro.value)){
		alert("Debe ingresar EL AÑO DEL LIBRO de Bautizos.")
		document.Bautizo.anio_libro.focus();
		return false
	}
	if(!vacio(document.Bautizo.num_sacramento.value)){
		alert("Debe ingresar NÚMERO DEL ACTA de Bautizos.")
		document.Bautizo.num_sacramento.focus();
		return false
	}
	if(!vacio(document.Bautizo.num_libro.value)){
		alert("Debe ingresar EL NÚMERO DEL LIBRO de Bautizos.")
		document.Bautizo.num_libro.focus();
		return false
	}
	if(!vacio(document.Bautizo.folio_libro.value)){
		alert("Debe ingresar EL FOLIO DEL LIBRO de Bautizos.")
		document.Bautizo.folio_libro.focus();
		return false
	}
	else {
		document.Bautizo.anio.focus();
		habilitarCapa(6, true);
	}
}

function mostrarObservacion(){
	var mydate = new Date();
	var year = mydate.getYear();
	if (year < 1000) year+=1900;
	var anio = document.Bautizo.anio.value;
	
	if (anio > year) {
		alert("EL AÑO DEL LIBRO del Registro Civil debe ser menor o igual al año actual.")
		document.Bautizo.anio.focus();
		return false
	}
	else {
		document.Bautizo.observacion.focus();
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

function setup( ) {
	mostrar(0);
}

function validarIngreso()
{
	centinela = 0;
	
	if(!vacio(document.bautismo.padre_nombre.value))
		document.bautismo.padre_nombre.value = " ";
	if(!vacio(document.bautismo.padre_apellido.value))
		document.bautismo.padre_apellido.value = " ";
	if(!vacio(document.bautismo.madre_nombre.value))
		document.bautismo.madre_nombre.value = " ";
	if(!vacio(document.bautismo.madre_apellido.value))
		document.bautismo.madre_apellido.value = " ";
	
	if(!vacio(document.bautismo.padrino_nombre.value))
		document.bautismo.padrino_nombre.value = " ";
	if(!vacio(document.bautismo.padrino_apellido.value))
		document.bautismo.padrino_apellido.value = " ";
	if(!vacio(document.bautismo.madrina_nombre.value))
		document.bautismo.madrina_nombre.value = " ";
	if(!vacio(document.bautismo.madrina_apellido.value))
		document.bautismo.madrina_apellido.value = " ";
		
	if(!vacio(document.bautismo.acta.value))
		document.bautismo.acta.value = " ";
	if(!vacio(document.bautismo.anio.value))
		document.bautismo.tomo.value = " ";
	if(!vacio(document.bautismo.tomo.value))
		document.bautismo.tomo.value = " ";
	if(!vacio(document.bautismo.folio.value))
		document.bautismo.folio.value = " ";
	if(!vacio(document.bautismo.rc_lugar.value))
		document.bautismo.rc_lugar.value = " ";
		
	if(!vacio(document.bautismo.observacion.value))
		document.bautismo.observacion.value = " ";
	
    document.bautismo.submit();
}