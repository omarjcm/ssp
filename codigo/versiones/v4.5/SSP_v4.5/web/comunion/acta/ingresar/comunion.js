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

function validar(F){
	if((vacio(F.num_sacramento.value) == false)){
		alert("Debe ingresar el número del Acta de la Primera Comunión")
		return false
	}
	if((vacio(F.anio_libro.value) == false)){
		alert("Debe ingresar el anio del libro de la Primera Comunión")
		return false
	}
	if((vacio(F.num_libro.value) == false)){
		alert("Debe ingresar el número del libro de la Primera Comunión")
		return false
	}
	if((vacio(F.folio_libro.value) == false)){
		alert("Debe ingresar el número de folio de la Primera Comunión")
		return false
	}
	if((vacio(F.comulgado_nombre.value) == false)){
		alert("Debe ingresar el nombre del Solicitante")
		return false
	}
	if((vacio(F.comulgado_apellido.value) == false)){
		alert("Debe ingresar el apellido del Solicitante")
		return false
	}
	if((vacio(F.fecha_nacimiento.value) == false)){
		alert("Debe ingresar el lugar de nacimiento")
		return false
	}
	if((vacio(F.edad.value) == false)){
		alert("Debe ingresar la edad del solicitante")
		return false
	}
	if((vacio(F.grado.value) == false)){
		alert("Debe ingresar el grado del solicitante")
		return false
	}
	if((vacio(F.nombre_institucion.value) == false)){
		alert("Debe ingresar el nombre de la institución educativa")
		return false
	}
	if((vacio(F.direccion.value) == false)){
		alert("Debe ingresar la dirección domiciliaria")
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
	obj = document.forms[0];
	obj.submit();
}