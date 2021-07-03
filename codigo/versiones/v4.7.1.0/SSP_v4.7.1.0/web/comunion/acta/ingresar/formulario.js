function setObjects(  ){
	var parroquia = document.getElementById("parroquia");
	parroquia.style.visibility = "visible";
	
	document.Comunion.id_ministro.focus();
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
	var parroquia = document.getElementById("parroquia");
	var solicitante_01 = document.getElementById("solicitante_01");
	var solicitante_02 = document.getElementById("solicitante_02");
	var padres = document.getElementById("padres");
	var padrinos = document.getElementById("padrinos");
	var reg_eclesiastico = document.getElementById("reg_eclesiastico");
	var observacion = document.getElementById("txt_observacion");
	var vista_previa = document.getElementById("vista_previa");
	
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
	if (indice == 8 && valor)
		vista_previa.style.visibility = "visible";
	else
		vista_previa.style.visibility = "hidden";
}

function mostrarParroquia(){
	habilitarCapa(1, true);
}

function mostrarSolicitante_01(){
	if(!vacio(document.Comunion.fecha_comunion.value)){
		alert("Debe ingresar LA FECHA DE COMUNIÓN.")
		return false
	}
	if(!esFechaCorrecta(document.Comunion.fecha_comunion.value)){
		alert("LA FECHA DE COMUNIÓN no está correcta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27")
		return false
	}
	else {
		document.Comunion.comulgado_nombre.focus();
		habilitarCapa(2, true);
	}
}

function mostrarSolicitante_02(){
	if(!vacio(document.Comunion.comulgado_nombre.value)){
		alert("Debe ingresar EL NOMBRE del solicitante.")
		return false
	}
	if(!vacio(document.Comunion.comulgado_apellido.value)){
		alert("Debe ingresar EL APELLIDO del solicitante.")
		return false
	}	
	if(!vacio(document.Comunion.fecha_nacimiento.value)){
		alert("Debe ingresar LA FECHA DE NACIMIENTO del solicitante.")
		return false
	}
	if(!esFechaCorrecta(document.Comunion.fecha_nacimiento.value)){
		alert("LA FECHA DE NACIMIENTO del solicitante no está correcta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27")
		return false
	}
	if(!comprobarFechas(document.Comunion.fecha_nacimiento.value, document.Comunion.fecha_comunion.value)){
		alert("No puede ser LA FECHA DE NACIMIENTO mayor a LA FECHA DE LA PRIMERA COMUNIÓN.")
		return false
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
	if(!vacio(document.Comunion.edad.value)){
		alert("Debe ingresar LA EDAD del solicitante.")
		return false
	}
	else {
		document.Comunion.padre_nombre.focus();
		habilitarCapa(4, true);
	}
}

function mostrarPadrinos(){
	document.Comunion.padrino_nombre.focus();
	habilitarCapa(5, true);
}

function mostrarRegistroEclesiastico(){	
	document.Comunion.num_sacramento.focus();
	habilitarCapa(6, true);
}

function mostrarObservacion(){
	if(!vacio(document.Comunion.num_sacramento.value)){
		alert("Debe ingresar NÚMERO DEL ACTA de Primera Comunión.")
		return false
	}
	if(!vacio(document.Comunion.anio_libro.value)){
		alert("Debe ingresar EL AÑO DEL LIBRO de Primera Comunión.")
		return false
	}
	if(!vacio(document.Comunion.num_libro.value)){
		alert("Debe ingresar EL NÚMERO DEL LIBRO de Primera Comunión.")
		return false
	}
	if(!vacio(document.Comunion.folio_libro.value)){
		alert("Debe ingresar EL FOLIO DEL LIBRO de Primera Comunión.")
		return false
	}
	else {
		document.Comunion.observacion.focus();
		habilitarCapa(7, true);
	}
}

function mostrarVistaPrevia(){
	habilitarCapa(8, true);
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

function vistaPrevia()
{
	obj = document.forms[0];
	obj.submit();
}

function setup( ) {
   document.getElementById('Parroquia').style.display='block';
   document.getElementById('Solicitante').style.display='none';
   document.getElementById('Padres').style.display='none';
   document.getElementById('Padrinos').style.display='none';
   document.getElementById('Registro_eclesiastico').style.display='none';
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

function validarIngreso()
{
    document.Comunion.submit();
}