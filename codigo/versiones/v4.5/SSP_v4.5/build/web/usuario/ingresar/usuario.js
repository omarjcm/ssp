window.onload = setObjects;

function setObjects(  ){
	document.Usuario.usuario.focus();
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
        if((vacio(F.usuario.value) == false)){
            alert("Debe ingresar el usuario")
            return false
	}
        if((vacio(F.contrasenia.value) == false)){
            alert("Debe ingresar el password")
            return false
	}
        if((vacio(F.usuario_nombre.value) == false)){
            alert("Debe ingresar el nombre del Usuario")
            return false
	}
        if((vacio(F.usuario_apellido.value) == false)){
            alert("Debe ingresar el apellido del Usuario")
            return false
	}
        if((vacio(F.lugar_nacimiento.value) == false)){
            alert("Debe ingresar el lugar de nacimiento")
            return false
	}
        if((vacio(F.telefono1.value) == false)){
            alert("Debe ingresar aunque sea un telefono")
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