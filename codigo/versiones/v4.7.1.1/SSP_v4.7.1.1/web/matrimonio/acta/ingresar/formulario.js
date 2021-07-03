var centinela = 0;

var mensaje_01 = "¿Está seguro de volver a iniciar el ingreso del Acta de Matrimonio?";
var mensaje_02 = "¿Está seguro de cancelar el ingreso del Acta de Matrimonio?";

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
	
	var mydate = new Date();
	var year = mydate.getYear();
	if (year < 1000) year+=1900;
	
	document.Matrimonio.anio_libro.value = year;
	document.Matrimonio.anio.value = year;
		
	document.Matrimonio.id_ministro.focus();
}

function esCaracterEspecial(caracter) {
	return (caracter == "."  || caracter == "," || caracter == "/" || caracter == "<" || caracter == ">" || caracter == "~" || 
			caracter == "?"  || caracter == ";" || caracter == ":" || caracter == "'" || caracter == "\"" || caracter == "¿" ||
			caracter == "="  || caracter == "+" || caracter == "_" || caracter == "!" || caracter == "¡" || 
			caracter == "@"  || caracter == "#" || caracter == "$" || caracter == "%" || caracter == "^" || caracter == "`" || 
			caracter == "&" || caracter == "*" || caracter == "{" || caracter == "´" ||
			caracter == "}"  || caracter == "[" || caracter == "]" || caracter == "|" || caracter == "\\" );
}

function setup(  ) {
   document.getElementById('Parroquia').style.display='block';
   document.getElementById('Solicitante').style.display='none';
   document.getElementById('Padres_Esposo').style.display='none';
   document.getElementById('Padres_Esposa').style.display='none';
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

function vacio(q){
	for ( i = 0; i < q.length; i++ ){
		if ( q.charAt(i) != " " ){
			return true
		}
	}
	return false
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

function habilitarCapa(indice, valor)
{
	centinela = 1;
	
	var parroquia = document.getElementById("parroquia");
	var solicitante = document.getElementById("solicitante");
	var padres_esposo = document.getElementById("padres_esposo");
        var padres_esposa = document.getElementById("padres_esposa");
	var padrinos = document.getElementById("padrinos");
	var reg_eclesiastico = document.getElementById("reg_eclesiastico");
	var reg_civil = document.getElementById("reg_civil");
	var observacion = document.getElementById("txt_observacion");
	var vista_previa = document.getElementById("vista_previa");
	
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
	if (indice == 9 && valor)
		vista_previa.style.visibility = "visible";
	else
		vista_previa.style.visibility = "hidden";
}

function mostrarParroquia(){
	habilitarCapa(1, true);
}

function mostrarSolicitante(){
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
		document.Matrimonio.esposo_nombre.focus();
		habilitarCapa(2, true);
	}
}

function mostrarPadresEsposo(){
	var esposo_nombre = document.Matrimonio.esposo_nombre.value;
	var esposo_apellido = document.Matrimonio.esposo_apellido.value;
	var esposa_nombre = document.Matrimonio.esposa_nombre.value;
	var esposa_apellido = document.Matrimonio.esposa_apellido.value;
	
	if(!vacio(esposo_nombre)){
		alert("Debe ingresar EL NOMBRE del esposo.")
		document.Matrimonio.esposo_nombre.focus();
		return false
	}
	if(!vacio(esposo_apellido)){
		alert("Debe ingresar EL APELLIDO del esposo.")
		document.Matrimonio.esposo_apellido.focus();
		return false
	}
	if(!vacio(esposa_nombre)){
		alert("Debe ingresar EL NOMBRE de la esposa.")
		document.Matrimonio.esposa_nombre.focus();
		return false
	}
	if(!vacio(esposa_apellido)){
		alert("Debe ingresar EL APELLIDO de la esposa.")
		document.Matrimonio.esposa_apellido.focus();
		return false
	}
	else {
		var apellidos_esposo = document.Matrimonio.esposo_apellido.value.split(' ');
		var apellidos_esposa = document.Matrimonio.esposa_apellido.value.split(' ');
		document.Matrimonio.pa_esposo_apellido.value = apellidos_esposo[0];
		if (apellidos_esposo[1] != null) document.Matrimonio.ma_esposo_apellido.value = apellidos_esposo[1];
		document.Matrimonio.pa_esposa_apellido.value = apellidos_esposa[0];
		if (apellidos_esposa[1] != null) document.Matrimonio.ma_esposa_apellido.value = apellidos_esposa[1];
		
		document.Matrimonio.pa_esposo_nombre.focus();
		habilitarCapa(3, true);
	}
}

function mostrarPadresEsposa(){
	document.Matrimonio.pa_esposa_nombre.focus();
	habilitarCapa(4, true);
}

function mostrarPadrinos(){
	document.Matrimonio.padrino_nombre.focus();
	habilitarCapa(5, true);
}

function mostrarRegistroEclesiastico(){
	if( (!vacio(document.Matrimonio.padrino_nombre.value) && !vacio(document.Matrimonio.padrino_nombre.value)) && 
		(!vacio(document.Matrimonio.madrina_nombre.value) && !vacio(document.Matrimonio.madrina_nombre.value)) ){
		alert("Debe ingresar al menos UN PADRINO de los casados.")
		document.Matrimonio.padrino_nombre.focus();
		return false;
	}
	else {
		document.Matrimonio.anio_libro.focus();
		habilitarCapa(6, true);
	}
}

function mostrarRegistroCivil(){
	var mydate = new Date();
	var year = mydate.getYear();
	if (year < 1000) year+=1900;
	var anio_libro = document.Matrimonio.anio_libro.value;
	
	if (anio_libro > year) {
		alert("EL AÑO DEL LIBRO de Matrimonio debe ser menor o igual al año actual.");
		document.Matrimonio.anio_libro.focus();
		return false;
	}
	if(!vacio(document.Matrimonio.anio_libro.value)){
		alert("Debe ingresar EL AÑO DEL LIBRO de Matrimonio.");
		document.Matrimonio.anio_libro.focus();
		return false;
	}
	if(!vacio(document.Matrimonio.num_sacramento.value)){
		alert("Debe ingresar NÚMERO DEL ACTA de Matrimonio.");
		document.Matrimonio.num_sacramento.focus();
		return false;
	}
	if(!vacio(document.Matrimonio.num_libro.value)){
		alert("Debe ingresar EL NÚMERO DEL LIBRO de Matrimonio.");
		document.Matrimonio.num_libro.focus();
		return false;
	}
	if(!vacio(document.Matrimonio.folio_libro.value)){
		alert("Debe ingresar EL FOLIO DEL LIBRO de Matrimonio.");
		document.Matrimonio.folio_libro.focus();
		return false;
	}
	else {
		document.Matrimonio.rc_fecha_inscripcion.focus();
		habilitarCapa(7, true);
	}
}

function mostrarObservacion(){
	var mydate = new Date();
	var year = mydate.getYear();
	if (year < 1000) year+=1900;
	var anio = document.Matrimonio.anio.value;
	var rc_fecha_inscripcion = document.Matrimonio.rc_fecha_inscripcion.value;

	if(!vacio(rc_fecha_inscripcion)){
		alert("Debe ingresar LA FECHA DE MATRIMONIO.");
		document.Matrimonio.rc_fecha_inscripcion.focus();
		return false;
	}
	if(!esFechaCorrecta(rc_fecha_inscripcion)){
		alert("LA FECHA DE MATRIMONIO no está correcta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27");
		document.Matrimonio.rc_fecha_inscripcion.focus();
		return false;
	}
	if (!validarFecha(rc_fecha_inscripcion, "Inscripción")) {
		document.Matrimonio.rc_fecha_inscripcion.focus();
		return false;
	}
	if (anio > year) {
		alert("EL AÑO DEL LIBRO del Registro Civil debe ser menor o igual al año actual.");
		document.Matrimonio.anio.focus();
		return false;
	}
	else {
		document.Matrimonio.observacion.focus();
		habilitarCapa(8, true);
	}
}

function mostrarVistaPrevia(){
	habilitarCapa(9, true);
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
	
	if(!vacio(document.casar.pa_esposo_nombre.value))
		document.casar.pa_esposo_nombre.value = " ";
	if(!vacio(document.casar.pa_esposo_apellido.value))
		document.casar.pa_esposo_apellido.value = " ";
	if(!vacio(document.casar.ma_esposo_nombre.value))
		document.casar.ma_esposo_nombre.value = " ";
	if(!vacio(document.casar.ma_esposo_apellido.value))
		document.casar.ma_esposo_apellido.value = " ";
	
	if(!vacio(document.casar.pa_esposa_nombre.value))
		document.casar.pa_esposa_nombre.value = " ";
	if(!vacio(document.casar.pa_esposa_apellido.value))
		document.casar.pa_esposa_apellido.value = " ";
	if(!vacio(document.casar.ma_esposa_nombre.value))
		document.casar.ma_esposa_nombre.value = " ";
	if(!vacio(document.casar.ma_esposa_apellido.value))
		document.casar.ma_esposa_apellido.value = " ";
	
	if(!vacio(document.casar.padrino_nombre.value))
		document.casar.padrino_nombre.value = " ";
	if(!vacio(document.casar.padrino_apellido.value))
		document.casar.padrino_apellido.value = " ";
	if(!vacio(document.casar.madrina_nombre.value))
		document.casar.madrina_nombre.value = " ";
	if(!vacio(document.casar.madrina_apellido.value))
		document.casar.madrina_apellido.value = " ";

	if(!vacio(document.casar.acta.value))
		document.casar.acta.value = " ";
	if(!vacio(document.casar.anio.value))
		document.casar.tomo.value = " ";
	if(!vacio(document.casar.tomo.value))
		document.casar.tomo.value = " ";
	if(!vacio(document.casar.folio.value))
		document.casar.folio.value = " ";
	if(!vacio(document.casar.rc_lugar.value))
		document.casar.rc_lugar.value = " ";

	if(!vacio(document.casar.observacion.value))
		document.casar.observacion.value = " ";	
	
	document.casar.submit();
}