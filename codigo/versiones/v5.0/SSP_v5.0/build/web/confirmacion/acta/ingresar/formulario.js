var centinela = 0;

var mensaje_01 = "¿Está seguro de volver a iniciar el ingreso del Acta de Confirmación?";
var mensaje_02 = "¿Está seguro de cancelar el ingreso del Acta de Confirmación?";

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
	
	document.Confirmacion.id_ministro.focus();
	
	var mydate = new Date();
	var year = mydate.getYear();
	if (year < 1000) year+=1900;
	
	document.Confirmacion.anio_libro.value = year;	
}

function setup( ) {
	mostrar(0);
}

function habilitarContCapa(indice, valor)
{
    var parroquia = document.getElementById("cont_parroquia");
    var solicitante = document.getElementById("cont_solicitante");
    var padres = document.getElementById("cont_padres");
    var padrinos = document.getElementById("cont_padrinos");
    var reg_eclesiastico = document.getElementById("cont_reg_eclesiastico");
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
		alert("El mes ingresado de la fecha "+mensaje+" se encuentra incorrecto.");
		return false;
	}
	if (dia < 1 || dia > 31) {
		alert("El día ingresado de la fecha "+mensaje+" se encuentra incorrecto.");
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

function habilitarCapa(indice, valor)
{
	centinela = 1;
	
	var parroquia = document.getElementById("parroquia");
	var solicitante = document.getElementById("solicitante");
	var padres = document.getElementById("padres");
	var padrinos = document.getElementById("padrinos");
	var reg_eclesiastico = document.getElementById("reg_eclesiastico");
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
		observacion.style.visibility = "visible";
	else
		observacion.style.visibility = "hidden";
}

function mostrarParroquia(){
	habilitarCapa(1, true);
}

function mostrarSolicitante(){
	if(!vacio(document.Confirmacion.fecha_confirmacion.value)){
		alert("Debe ingresar LA FECHA DE CONFIRMACIÓN.");
		document.Comunion.fecha_comunion.focus();
		return false;
	}
	if(!esFechaCorrecta(document.Confirmacion.fecha_confirmacion.value)){
		alert("LA FECHA DE CONFIRMACIÓN no está correcta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27");
		document.Comunion.fecha_comunion.focus();
		return false;
	}
	if (!validarFecha(document.Confirmacion.fecha_confirmacion.value, "de la Confirmación")) {
		document.Comunion.fecha_comunion.focus();
		return false
	}
	else {
		document.Confirmacion.confirmado_nombre.focus();
		habilitarCapa(2, true);
	}
}

function mostrarPadres(){
	if((vacio(document.Confirmacion.confirmado_nombre.value) == false)){
		alert("Debe ingresar EL NOMBRE del confirmado.")
		document.Confirmacion.confirmado_nombre.focus();
		return false
	}
	if((vacio(document.Confirmacion.confirmado_apellido.value) == false)){
		alert("Debe ingresar EL APELLIDO del confirmado.")
		document.Confirmacion.confirmado_apellido.focus();
		return false
	}	
	if(!vacio(document.Confirmacion.fecha_nacimiento.value)){
		alert("Debe ingresar LA FECHA DE NACIMIENTO del confirmado.")
		document.Confirmacion.fecha_nacimiento.focus();
		return false
	}
	if(!esFechaCorrecta(document.Confirmacion.fecha_nacimiento.value)){
		alert("LA FECHA DE NACIMIENTO del confirmado no está correcta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27")
		document.Confirmacion.fecha_nacimiento.focus();
		return false
	}
	if(!comprobarFechas(document.Confirmacion.fecha_nacimiento.value, document.Confirmacion.fecha_confirmacion.value)){
		alert("No puede ser LA FECHA DE NACIMIENTO mayor a LA FECHA DE LA CONFIRMACIÓN.")
		document.Confirmacion.fecha_nacimiento.focus();
		return false
	}
	if (!validarFecha(document.Confirmacion.fecha_nacimiento.value, "de nacimiento")) {
		document.Confirmacion.fecha_nacimiento.focus();
		return false
	}	
	else {
		var apellidos = document.Confirmacion.confirmado_apellido.value.split(' ');
		document.Confirmacion.padre_apellido.value = apellidos[0];
		if (apellidos[1] != null) document.Confirmacion.madre_apellido.value = apellidos[1];
		document.Confirmacion.padre_nombre.focus();
		habilitarCapa(3, true);
	}
}

function mostrarPadrinos(){
	document.Confirmacion.padrino_nombre.focus();
	habilitarCapa(4, true);
}

function mostrarRegistroEclesiastico(){
	if( (!vacio(document.Confirmacion.padrino_nombre.value) && !vacio(document.Confirmacion.padrino_nombre.value)) && 
		(!vacio(document.Confirmacion.madrina_nombre.value) && !vacio(document.Confirmacion.madrina_nombre.value)) ){
		alert("Debe ingresar al menos UN PADRINO del confirmado.")
		document.Confirmacion.padrino_nombre.focus();
		return false
	} else {
		document.Confirmacion.anio_libro.focus();
		habilitarCapa(5, true);
	}
}

function mostrarObservacion(){
	var mydate = new Date();
	var year = mydate.getYear();
	if (year < 1000) year+=1900;
	var anio_libro = document.Confirmacion.anio_libro.value;
	
	if (anio_libro > year) {
		alert("EL AÑO DEL LIBRO de Confirmación debe ser menor o igual al año actual.")
		document.Confirmacion.anio_libro.focus();
		return false
	}
	if(!vacio(document.Confirmacion.anio_libro.value)){
		alert("Debe ingresar EL AÑO DEL LIBRO de Confirmación.")
		document.Confirmacion.anio_libro.focus();
		return false
	}
	if(!vacio(document.Confirmacion.num_sacramento.value)){
		alert("Debe ingresar NÚMERO DEL ACTA de Confirmación.")
		document.Confirmacion.num_sacramento.focus();
		return false
	}
	if(!vacio(document.Confirmacion.num_libro.value)){
		alert("Debe ingresar EL NÚMERO DEL LIBRO de Confirmación.")
		document.Confirmacion.num_libro.focus();
		return false
	}
	if(!vacio(document.Confirmacion.folio_libro.value)){
		alert("Debe ingresar EL FOLIO DEL LIBRO de Confirmación.")
		document.Confirmacion.folio_libro.focus();
		return false
	}
	else {
		document.Confirmacion.observacion.focus();
		habilitarCapa(6, true);
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
	centinela == 0;
	
	if(!vacio(document.confirmar.padre_nombre.value))
		document.confirmar.padre_nombre.value = " ";
	if(!vacio(document.confirmar.padre_apellido.value))
		document.confirmar.padre_apellido.value = " ";
	if(!vacio(document.confirmar.madre_nombre.value))
		document.confirmar.madre_nombre.value = " ";
	if(!vacio(document.confirmar.madre_apellido.value))
		document.confirmar.madre_apellido.value = " ";
	
	if(!vacio(document.confirmar.padrino_nombre.value))
		document.confirmar.padrino_nombre.value = " ";
	if(!vacio(document.confirmar.padrino_apellido.value))
		document.confirmar.padrino_apellido.value = " ";
	if(!vacio(document.confirmar.madrina_nombre.value))
		document.confirmar.madrina_nombre.value = " ";
	if(!vacio(document.confirmar.madrina_apellido.value))
		document.confirmar.madrina_apellido.value = " ";
	
	document.confirmar.submit();
}