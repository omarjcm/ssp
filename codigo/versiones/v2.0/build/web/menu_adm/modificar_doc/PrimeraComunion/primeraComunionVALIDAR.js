function vacio(q){
	for ( i = 0; i < q.length; i++ ){
		if ( q.charAt(i) != " " ){
			return true
		}
	}
	return false
}
function validar(F){
        if((vacio(F.id_primeraComunion.value) == false)){
            alert("Debe ingresar el numero de la Primera Comunion")
            return false
	}
        if((vacio(F.reg_acta_anio.value) == false)){
            alert("Debe ingresar el anio del Registro de la Primera Comunion")
            return false
	}
        if((vacio(F.reg_acta_libro.value) == false)){
            alert("Debe ingresar el numero del libro de la Primera Comunion")
            return false
	}
        if((vacio(F.reg_acta_folio.value) == false)){
            alert("Debe ingresar el numero de folio")
            return false
	}
        if((vacio(F.anio_fecha_sacramento.value) == false)){
            alert("Debe ingresar el anio del sacramento")
            return false
	}
        if((vacio(F.solicitante_nombre.value) == false)){
            alert("Debe ingresar el nombre del Comulgado")
            return false
	}
        if((vacio(F.solicitante_apellido.value) == false)){
            alert("Debe ingresar el apellido del Comulgado")
            return false
	}
        if((vacio(F.id_ciudad.value) == false)){
            alert("Debe seleccionar una ciudad")
            return false
	}
        if((vacio(F.edad.value) == false)){
            alert("Debe ingresar la edad del Comulgado")
            return false
	}
        if((vacio(F.grado_curso.value) == false)){
            alert("Debe ingresar el curso del Comulgado")
            return false
	}
        if((vacio(F.nombre_institucion.value) == false)){
            alert("Debe ingresar el nombre de la institucion")
            return false
	}
        if((vacio(F.direccion.value) == false)){
            alert("Debe ingresar la direccion del Comulgado")
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


			
		