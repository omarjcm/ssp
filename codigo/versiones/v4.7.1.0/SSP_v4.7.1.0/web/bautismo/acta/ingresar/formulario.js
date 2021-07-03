function setObjects(  ){
    var parroquia = document.getElementById("parroquia");
    parroquia.style.visibility = "visible";

    document.Confirmacion.id_ministro.focus();
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
    var solicitante = document.getElementById("solicitante");
    var padres = document.getElementById("padres");
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
    if (indice == 8 && valor)
        vista_previa.style.visibility = "visible";
    else
        vista_previa.style.visibility = "hidden";
}

function mostrarParroquia(){
    habilitarCapa(1, true);
}

function mostrarSolicitante(){
	if(!vacio(document.Bautizo.fecha_bautizo.value)){
		alert("Debe ingresar LA FECHA DE BAUTIZO.");
		document.Bautizo.fecha_bautizo.focus();
		return false
	}
	if(!esFechaCorrecta(document.Bautizo.fecha_bautizo.value)){
		alert("LA FECHA DE BAUTIZO no está correcta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27");
		document.Bautizo.fecha_bautizo.focus();
		return false
	}
	else {
		document.Bautizo.bautizado_nombre.focus();
		habilitarCapa(2, true);
	}
}

function mostrarPadres(){
	if((vacio(document.Bautizo.bautizado_nombre.value) == false)){
		alert("Debe ingresar EL NOMBRE del bautizado.")
		document.Bautizo.bautizado_nombre.focus();
		return false
	}
	if((vacio(document.Bautizo.bautizado_apellido.value) == false)){
		alert("Debe ingresar EL APELLIDO del bautizado.")
		document.Bautizo.bautizado_apellido.focus();
		return false
	}	
	if(!vacio(document.Bautizo.fecha_nacimiento.value)){
		alert("Debe ingresar LA FECHA DE NACIMIENTO del bautizado.")
		document.Bautizo.fecha_nacimiento.focus();
		return false
	}
	if(!esFechaCorrecta(document.Bautizo.fecha_nacimiento.value)){
		alert("LA FECHA DE NACIMIENTO del bautizado no está correcta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27")
		document.Bautizo.fecha_nacimiento.focus();
		return false
	}
	if(!comprobarFechas(document.Bautizo.fecha_nacimiento.value, document.Bautizo.fecha_bautizo.value)){
		alert("No puede ser LA FECHA DE NACIMIENTO mayor a LA FECHA DEL BAUTIZO.")
		document.Bautizo.fecha_nacimiento.focus();
		return false
	}
	else {
		var apellidos = document.Bautizo.bautizado_apellido.value.split(' ');
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
		document.Bautizo.num_sacramento.focus();
		habilitarCapa(5, true);
	}
}

function mostrarRegistroCivil(){
	if(!vacio(document.Bautizo.num_sacramento.value)){
		alert("Debe ingresar NÚMERO DEL ACTA de Bautizos.")
		document.Bautizo.num_sacramento.focus();
		return false
	}
	if(!vacio(document.Bautizo.anio_libro.value)){
		alert("Debe ingresar EL AÑO DEL LIBRO de Bautizos.")
		document.Bautizo.anio_libro.focus();
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
		document.Bautizo.acta.focus();
		habilitarCapa(6, true);
	}
}

function mostrarObservacion(){
	document.Bautizo.observacion.focus();
    habilitarCapa(7, true);
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
    obj = document.Bautizo;
    obj.submit();
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

function validarIngreso()
{
    document.confirmar.submit();
}