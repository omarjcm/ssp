window.onload = setObjects;

function setObjects(  ) {
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

function validarUsuario(F){
	if((vacio(F.usuario.value) == false) && (vacio(F.contrasenia.value) == false)){
		alert("Debe ingresar el usuario y la clave.")
		return false
	}
	else{
		if(vacio(F.usuario.value) == false){
			alert("Debe ingresar el usuario.")
			return false
		}
		else
		{
			if(vacio(F.contrasenia.value) == false){
				alert("Debe ingresar la clave.")
				return false
			}
			else{
				ok()
				return false
			} 
		}
	}
}

function ok(){
	obj=document.forms[0];
    	obj.submit();
}