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

function validar(F){
	if((vacio(F.num_sacramento.value) == false)){
		alert("Debe ingresar el numero de Matrimonio")
		return false
	}
	if((vacio(F.anio_libro.value) == false)){
		alert("Debe ingresar el anio del Registro del Matrimonio")
		return false
	}
	if((vacio(F.num_libro.value) == false)){
		alert("Debe ingresar el numero del libro del Matrimonio")
		return false
	}
	if((vacio(F.folio_libro.value) == false)){
		alert("Debe ingresar el numero de folio")
		return false
	}
	if((vacio(F.esposo_nombre.value) == false)){
		alert("Debe ingresar el nombre del esposo")
		return false
	}
	if((vacio(F.esposo_apellido.value) == false)){
		alert("Debe ingresar el apellido del esposo")
		return false
	}
	if((vacio(F.esposa_nombre.value) == false)){
		alert("Debe ingresar el nombre de la esposa")
		return false
	}
	if((vacio(F.esposa_apellido.value) == false)){
		alert("Debe ingresar el apellido de la esposa")
		return false
	}
	if((vacio(F.esposo_padre_nombre.value) == false)){
		alert("Debe ingresar el nombre del padre del esposo")
		return false
	}
	if((vacio(F.esposo_padre_apellido.value) == false)){
		alert("Debe ingresar el apellido del padre del esposo")
		return false
	}
	if((vacio(F.esposo_madre_nombre.value) == false)){
		alert("Debe ingresar el nombre de la madre del esposo")
		return false
	}
	if((vacio(F.esposo_madre_apellido.value) == false)){
		alert("Debe ingresar el apellido de la madre del esposo")
		return false
	}
	if((vacio(F.esposa_padre_nombre.value) == false)){
		alert("Debe ingresar el nombre del padre de la esposa")
		return false
	}
	if((vacio(F.esposa_padre_apellido.value) == false)){
		alert("Debe ingresar el apellido del padre de la esposa")
		return false
	}
	if((vacio(F.esposa_madre_nombre.value) == false)){
		alert("Debe ingresar el nombre de la madre de la esposa")
		return false
	}
	if((vacio(F.esposa_madre_apellido.value) == false)){
		alert("Debe ingresar el apellido de la madre de la esposa")
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
	if((vacio(F.madrina_nombre.value) == false)){
		alert("Debe ingresar el apellido de la madrina")
		return false
	}
	if((vacio(F.acta.value) == false)){
		alert("Debe ingresar el numero del acta")
		return false
	}
	if((vacio(F.anio.value) == false)){
		alert("Debe ingresar el anio del acta")
		return false
	}
	 if((vacio(F.tomo.value) == false)){
		alert("Debe ingresar el tomo del acta")
		return false
	}
	if((vacio(F.folio.value) == false)){
		alert("Debe ingresar el folio del acta")
		return false
	}
	if((vacio(F.rc_lugar.value) == false)){
		alert("Debe ingresar el lugar de inscripción del acta")
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