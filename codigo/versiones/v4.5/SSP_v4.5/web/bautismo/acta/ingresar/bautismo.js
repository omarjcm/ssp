window.onload = setObjects;

function setObjects(  ){
	document.Bautizo.num_sacramento.focus();
}

function vacio(q){
	for ( i = 0; i < q.length; i++ ){
		if ( q.charAt(i) != " " ){
			return true
		}
	}
	return false
}

function validar(F){
	if((vacio(F.num_sacramento.value) == false)){
		alert("Debe ingresar el numero del Acta de Bautizo")
		return false
	}
	if((vacio(F.anio_libro.value) == false)){
		alert("Debe ingresar el anio del Registro del Acta de Bautizo")
		return false
	}
	if((vacio(F.num_libro.value) == false)){
		alert("Debe ingresar el numero del libro del Acta de Bautizo")
		return false
	}
	if((vacio(F.folio_libro.value) == false)){
		alert("Debe ingresar el numero de folio del Acta de Bautizo")
		return false
	}
	if((vacio(F.bautizado_nombre.value) == false)){
		alert("Debe ingresar el nombre del bautizado")
		return false
	}
	if((vacio(F.bautizado_apellido.value) == false)){
		alert("Debe ingresar el apellido del bautizado")
		return false
	}
	if((vacio(F.lugar_nacimiento.value) == false)){
		alert("Debe ingresar el lugar de nacimiento del bautizado")
		return false
	}
	if((vacio(F.padrino_nombre.value) == false)){
		alert("Debe ingresar el nombre del padrino")
		return false
	}
	if((vacio(F.padrino_apellido.value) == false)){
		alert("Debe ingresar el apellido del padrino")
		return false
	}
	if((vacio(F.madrina_nombre.value) == false)){
		alert("Debe ingresar el nombre de la madrina")
		return false
	}
	 if((vacio(F.madrina_apellido.value) == false)){
		alert("Debe ingresar el apellido de la madrina")
		return false
	}
	if((vacio(F.acta.value) == false)){
		alert("Debe ingresar el numero del Acta del Registro Civil")
		return false
	}
	if((vacio(F.anio.value) == false)){
		alert("Debe ingresar el anio del Acta del Registro Civil")
		return false
	}
	 if((vacio(F.tomo.value) == false)){
		alert("Debe ingresar el tomo del Acta del Registro Civil")
		return false
	}
	if((vacio(F.folio.value) == false)){
		alert("Debe ingresar el folio del Acta del Registro Civil")
		return false
	}
	if((vacio(F.rc_lugar.value) == false)){
		alert("Debe ingresar el lugar de inscripción del Acta del Registro Civil")
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