window.onload = setObjects;

var mensaje_01 = "¿Está seguro de volver a iniciar la modificación del Usuario?";
var mensaje_02 = "¿Está seguro de cancelar la modificación del Usuario?";

function cambiar(url, mensaje)
{
	var valor = confirm( mensaje );
	if (valor)
		window.location.href = url;
}

function irInicio()
{
	window.location.ref = "usuario.jsp";
}

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

function mostrarBusquedaPorNombreYApellido()
{
    var nombre_apellido = document.getElementById("buscar_por_nombre_apellido");    
    //var fecha = document.getElementById("buscar_por_fecha");
	
    nombre_apellido.style.visibility = "visible";
    fecha.style.visibility = "hidden";
	
	document.PorNombreApellido.usuario_nombre.focus();
}

function cumpleMinimo(numero){
        if(numero.length >= 5) return true;
        else return false;
}

function validar(){
	if(!vacio(document.Usuario.usuario.value)){
		alert("Debe ingresar el usuario")
		return false
	}
	if(!cumpleMinimo(document.Usuario.usuario.value)){
		alert("Debe ingresar un usuario con un mínimo de 5 caracteres.")
		return false
	}
	if(!vacio(document.Usuario.contrasenia.value)){
		alert("Debe ingresar el password")
		return false
	}
	if(!cumpleMinimo(document.Usuario.contrasenia.value)){
		alert("Debe ingresar un password con un mínimo de 5 caracteres.")
		return false
	}
	if(!vacio(document.Usuario.usuario_nombre.value)){
		alert("Debe ingresar el nombre del Usuario")
		return false
	}
	if(!vacio(document.Usuario.usuario_apellido.value)){
		alert("Debe ingresar el apellido del Usuario")
		return false
	}
	if(!vacio(document.Usuario.telefono1.value)){
		alert("Debe ingresar aunque sea un telefono")
		return false
	}
	else
		  document.Usuario.submit()
}