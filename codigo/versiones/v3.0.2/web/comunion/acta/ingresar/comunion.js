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
            alert("Debe ingresar el numero de la Comunión")
            return false
	}
        if((vacio(F.anio_libro.value) == false)){
            alert("Debe ingresar el anio del Registro de la Comunión")
            return false
	}
        if((vacio(F.num_libro.value) == false)){
            alert("Debe ingresar el numero del libro de la Comunión")
            return false
	}
        if((vacio(F.folio_libro.value) == false)){
            alert("Debe ingresar el numero de folio")
            return false
	}
        if((vacio(F.comulgado_nombre.value) == false)){
            alert("Debe ingresar el nombre del Comulgado")
            return false
	}
        if((vacio(F.comulgado_apellido.value) == false)){
            alert("Debe ingresar el apellido del Comulgado")
            return false
	}
        if((vacio(F.lugar_nacimiento.value) == false)){
            alert("Debe ingresar el lugar de nacimiento")
            return false
	}
        if((vacio(F.comulgado_edad.value) == false)){
            alert("Debe ingresar la edad del comulgado")
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
        if((vacio(F.padre_nombre.value) == false)){
            alert("Debe ingresar el nombre del padre")
            return false
	}
        if((vacio(F.padre_apellido.value) == false)){
            alert("Debe ingresar el apellido del padre")
            return false
	}
        if((vacio(F.madre_nombre.value) == false)){
            alert("Debe ingresar el nombre de la madre")
            return false
	}
        if((vacio(F.madre_apellido.value) == false)){
            alert("Debe ingresar el apellido de la madre")
            return false
	}
        if((vacio(F.estado_civil_padres.value) == false)){
            alert("Debe ingresar el estado civil de los padres")
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