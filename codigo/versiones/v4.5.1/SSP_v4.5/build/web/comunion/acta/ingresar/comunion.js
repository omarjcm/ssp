window.onload = setObjects;

function setObjects(  ){
	document.Comunion.num_sacramento.focus();
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

function esAnio(anio){
        if(anio.length == 4) return true;
        else return false;
}

function validar(F){
	/*
	 * Validaciones del Registro Eclesiástico 
	 */
	if(!vacio(F.num_sacramento.value)){
		alert("Debe ingresar el NÚMERO DEL ACTA de la Primera Comunión.")
		return false
	}
	if(!vacio(F.anio_libro.value)){
		alert("Debe ingresar el A\ÑO DEL LIBRO del Acta de Primera Comunión.")
		return false
	}
	if(!esNumero(F.anio_libro.value)){
		alert("El A\ÑO DEL LIBRO es un número.")
		return false
	}
	if(!esAnio(F.anio_libro.value)){
		alert("El A\ÑO DEL LIBRO no está correcto, por favor revise.")
		return false
	}
	if(!vacio(F.num_libro.value)){
		alert("Debe ingresar el NÚMERO DEL LIBRO del Acta de Primera Comunión")
		return false
	}
	if(!vacio(F.folio_libro.value)){
		alert("Debe ingresar el NÚMERO DEL FOLIO del Acta de Primera Comunión")
		return false
	}
	if(!esNumero(F.folio_libro.value)){
		alert("El FOLIO DEL LIBRO es un número.")
		return false
	}
	
	/*
	 * Validaciones de los Datos de la Parroquia
	 */	
	if(!vacio(F.fecha_comunion.value)){
		alert("Debe ingresar LA FECHA DE LA PRIMERA COMUNIÓN.")
		return false
	}
	if(!esFechaCorrecta(F.fecha_comunion.value)){
		alert("LA FECHA DE LA PRIMERA COMUNIÓN no está correcta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27")
		return false
	}
	
	/*
	 * Validaciones de los Datos del Solicitante
	 */	
	if(!vacio(F.comulgado_nombre.value)){
		alert("Debe ingresar EL NOMBRE DEL SOLICITANTE.")
		return false
	}
	if(!vacio(F.comulgado_apellido.value)){
		alert("Debe ingresar EL APELLIDO DEL SOLICITANTE.")
		return false
	}
	if(!vacio(F.fecha_nacimiento.value)){
		alert("Debe ingresar LA FECHA DE NACIMIENTO del Solicitante.")
		return false
	}
	if(!esFechaCorrecta(F.fecha_nacimiento.value)){
		alert("LA FECHA DE NACIMIENTO del Solicitante no está correcta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27")
		return false
	}
	if(!comprobarFechas(F.fecha_nacimiento.value, F.fecha_comunion.value)){
		alert("No puede ser la FECHA DE NACIMIENTO mayor a la FECHA DE LA PRIMERA COMUNIÓN.")
		return false
	}	
	if(!vacio(F.edad.value)){
		alert("Debe ingresar LA EDAD DEL SOLICITANTE.")
		return false
	}
	if(esNumero(F.edad.value) == false){
		alert("LA EDAD DEL SOLICITANTE es un dato numérico.")
		return false
	}
	if(!vacio(F.grado.value)){
		alert("Debe ingresar EL GRADO Ó CURSO DEL SOLICITANTE.")
		return false
	}
	if(!vacio(F.nombre_institucion.value)){
		alert("Debe ingresar EL NOMBRE DE LA INSTITUCIÓN EDUCATIVA.")
		return false
	}
	if(!vacio(F.direccion.value)){
		alert("Debe ingresar LA DIRECCIÓN DOMICILIARIA.")
		return false
	}
	
	/*
	 * Validaciones de los Datos de los Padres
	 */	
	if(!vacio(F.padre_nombre.value)){
			alert("Debe ingresar EL NOMBRE DEL PADRE del Solicitante")
		return false
	}
	if(!vacio(F.padre_apellido.value)){
		alert("Debe ingresar EL APELLIDO DEL PADRE del Solicitante")
		return false
	}
	if(!vacio(F.madre_nombre.value)){
		alert("Debe ingresar EL NOMBRE DE LA MADRE del Solicitante")
		return false
	}
	if(!vacio(F.madre_apellido.value)){
		alert("Debe ingresar EL APELLIDO DE LA MADRE del Solicitante")
		return false
	}
	if(!vacio(F.estado_civil_padres.value)){
		alert("Debe ingresar EL ESTADO CIVIL de los padres del Solicitante")
		return false
	}
	
	/*
	 * Validaciones de los Datos de los Padrinos
	 */	
	if(!vacio(F.padrino_nombre.value)){
		alert("Debe ingresar el NOMBRE DEL PADRINO.")
		return false
	}
	if(!vacio(F.padrino_apellido.value)){
		alert("Debe ingresar el APELLIDO DEL PADRINO.")
		return false
	}
	if(!vacio(F.madrina_nombre.value)){
		alert("Debe ingresar el NOMBRE DE LA MADRINA.")
		return false
	}
	 if(!vacio(F.madrina_apellido.value)){
		alert("Debe ingresar el APELLIDO DE LA MADRINA.")
		return false
	}
	else{
		  ok()
		  return false
	}
}

function ok(){
	obj = document.forms[0];
	obj.submit();
}