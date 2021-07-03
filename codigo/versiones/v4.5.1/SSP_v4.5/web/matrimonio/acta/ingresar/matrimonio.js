window.onload = setObjects;

function setObjects(  ){
	document.Matrimonio.num_sacramento.focus();
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
		alert("Debe ingresar el NÚMERO DEL ACTA de Matrimonio.")
		return false
	}
	if(!vacio(F.anio_libro.value)){
		alert("Debe ingresar el A\ÑO DEL LIBRO del Acta de Matrimonio.")
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
		alert("Debe ingresar el NÚMERO DEL LIBRO del Acta de Matrimonio.")
		return false
	}
	if(!vacio(F.folio_libro.value)){
		alert("Debe ingresar el NÚMERO DEL FOLIO del Acta de Matrimonio.")
		return false
	}
	if(!esNumero(F.folio_libro.value)){
		alert("El FOLIO DEL LIBRO es un número.")
		return false
	}

	/*
	 * Validaciones de los Datos de la Parroquia
	 */	
	if(!vacio(F.fecha_matrimonio.value)){
		alert("Debe ingresar LA FECHA DEL MATRIMONIO.")
		return false
	}
	if(!esFechaCorrecta(F.fecha_matrimonio.value)){
		alert("LA FECHA DEL MATRIMONIO no está correcta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27")
		return false
	}

	/*
	 * Validaciones de los Datos de los Esposos
	 */	
	if((vacio(F.esposo_nombre.value) == false)){
		alert("Debe ingresar EL NOMBRE DEL ESPOSO.")
		return false
	}
	if((vacio(F.esposo_apellido.value) == false)){
		alert("Debe ingresar EL APELLIDO DEL ESPOSO.")
		return false
	}
	if((vacio(F.esposa_nombre.value) == false)){
		alert("Debe ingresar EL NOMBRE DE LA ESPOSA.")
		return false
	}
	if((vacio(F.esposa_apellido.value) == false)){
		alert("Debe ingresar EL APELLIDO DE LA ESPOSA.")
		return false
	}
	
	/*
	 * Validaciones de los Datos de los Padres del esposo
	 */	
	if((vacio(F.esposo_padre_nombre.value) == false)){
		alert("Debe ingresar EL NOMBRE DEL PADRE DEL ESPOSO.")
		return false
	}
	if((vacio(F.esposo_padre_apellido.value) == false)){
		alert("Debe ingresar EL APELLIDO DEL PADRE DEL ESPOSO.")
		return false
	}
	if((vacio(F.esposo_madre_nombre.value) == false)){
		alert("Debe ingresar EL NOMBRE DE LA MADRE DEL ESPOSO.")
		return false
	}
	if((vacio(F.esposo_madre_apellido.value) == false)){
		alert("Debe ingresar EL APELLIDO DE LA MADRE DEL ESPOSO.")
		return false
	}
	
	/*
	 * Validaciones de los Datos de los Padres de la esposa
	 */	
	if((vacio(F.esposa_padre_nombre.value) == false)){
		alert("Debe ingresar EL NOMBRE DEL PADRE DE LA ESPOSA.")
		return false
	}
	if((vacio(F.esposa_padre_apellido.value) == false)){
		alert("Debe ingresar EL APELLIDO DEL PADRE DE LA ESPOSA.")
		return false
	}
	if((vacio(F.esposa_madre_nombre.value) == false)){
		alert("Debe ingresar EL NOMBRE DE LA MADRE DE LA ESPOSA.")
		return false
	}
	if((vacio(F.esposa_madre_apellido.value) == false)){
		alert("Debe ingresar EL APELLIDO DE LA MADRE DE LA ESPOSA.")
		return false
	}
	
	/*
	 * Validaciones de los Datos de los Padrinos
	 */	
	if((vacio(F.padrino_nombre.value) == false)){
		alert("Debe ingresar EL NOMBRE DEL PADRINO.")
		return false
	}
	if((vacio(F.padrino_apellido.value) == false)){
		alert("Debe ingresar EL APELLIDO DEL PADRINO.")
		return false
	}
	if((vacio(F.madrina_nombre.value) == false)){
		alert("Debe ingresar EL NOMBRE DE LA MADRINA.")
		return false
	}
	if((vacio(F.madrina_nombre.value) == false)){
		alert("Debe ingresar EL APELLIDO DE LA MADRINA.")
		return false
	}
	
	/*
	 * Validaciones de los Datos del Registro Civil
	 */
	if((vacio(F.acta.value) == false)){
		alert("Debe ingresar EL NÚMERO DEL ACTA del Registro Civil.")
		return false
	}
	if((vacio(F.anio.value) == false)){
		alert("Debe ingresar EL A\ÑO DEL ACTA del Registro Civil.")
		return false
	}
	if(!esNumero(F.anio.value)){
		alert("El A\ÑO DEL ACTA del Registro Civil es un número.")
		return false
	}
	if(!esAnio(F.anio.value)){
		alert("El A\ÑO DEL ACTA del Registro Civil no está correcto, por favor revise.")
		return false
	}
	if((vacio(F.tomo.value) == false)){
		alert("Debe ingresar EL TOMO DEL ACTA del Registro Civil.")
		return false
	}
	if((vacio(F.folio.value) == false)){
		alert("Debe ingresar EL FOLIO DEL ACTA del Registro Civil.")
		return false
	}
	if((vacio(F.rc_lugar.value) == false)){
		alert("Debe ingresar EL LUGAR DE INSCRIPCIÓN DEL ACTA del Registro Civil.")
		return false
	}
	else{
		  ok()
		  return false
	}
}

function ok(){
	obj=document.forms[0];
	obj.submit();
}