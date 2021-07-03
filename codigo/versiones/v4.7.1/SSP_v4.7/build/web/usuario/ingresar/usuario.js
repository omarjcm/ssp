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

function cumpleMinimo(numero){
        if(numero.length >= 5) return true;
        else return false;
}

function validar(F){
	if(!vacio(F.usuario.value)){
		alert("Debe ingresar el usuario")
		return false
	}
	if(!cumpleMinimo(F.usuario.value)){
		alert("Debe ingresar un usuario con un mínimo de 5 caracteres.")
		return false
	}
	if(!vacio(F.contrasenia.value)){
		alert("Debe ingresar el password")
		return false
	}
	if(!cumpleMinimo(F.contrasenia.value)){
		alert("Debe ingresar un password con un mínimo de 5 caracteres.")
		return false
	}
	if(!vacio(F.usuario_nombre.value)){
		alert("Debe ingresar el nombre del Usuario")
		return false
	}
	if(!vacio(F.usuario_apellido.value)){
		alert("Debe ingresar el apellido del Usuario")
		return false
	}
	if(!vacio(F.lugar_nacimiento.value)){
		alert("Debe ingresar el lugar de nacimiento")
		return false
	}
	if(!vacio(F.telefono1.value)){
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