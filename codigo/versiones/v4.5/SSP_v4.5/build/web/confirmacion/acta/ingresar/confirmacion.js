window.onload = setObjects;

function setObjects(  ){
	document.Confirmacion.num_sacramento.focus();
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
		alert("Debe ingresar el numero del Acta de Confirmación")
		return false
	}
	if((vacio(F.anio_libro.value) == false)){
		alert("Debe ingresar el anio del Registro del Acta de Confirmación")
		return false
	}
	if((vacio(F.num_libro.value) == false)){
		alert("Debe ingresar el numero del libro del Acta de Confirmación")
		return false
	}
	if((vacio(F.folio_libro.value) == false)){
		alert("Debe ingresar el numero de folio del Acta de Confirmación")
		return false
	}
	if((vacio(F.confirmado_nombre.value) == false)){
		alert("Debe ingresar el nombre del Confirmado")
		return false
	}
	if((vacio(F.confirmado_apellido.value) == false)){
		alert("Debe ingresar el apellido del Confirmado")
		return false
	}
	if((vacio(F.lugar_confirmacion.value) == false)){
		alert("Debe ingresar el lugar de nacimiento")
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
	else{
		ok()
		return false
	}
}

function ok(){
	obj=document.forms[0];
	obj.submit();
}	