var mensaje_01 = "¿Está seguro de volver a iniciar la eliminación del Usuario?";
var mensaje_02 = "¿Está seguro de cancelar la eliminación del Usuario?";

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

function anularActa(Anular)
{
	var valor = confirm("¿Se encuentra seguro de eliminar el Usuario?");
	if (valor) {
		Anular.submit();
	}
}

function mostrarBusquedaPorNombreYApellido()
{
    var nombre_apellido = document.getElementById("buscar_por_nombre_apellido");    
    //var fecha = document.getElementById("buscar_por_fecha");
	
    nombre_apellido.style.visibility = "visible";
    fecha.style.visibility = "hidden";
	
	document.PorNombreApellido.usuario_nombre.focus();
}

/*function mostrarBusquedaPorFecha()
{
    var nombre_apellido = document.getElementById("buscar_por_nombre_apellido");    
    var fecha = document.getElementById("buscar_por_fecha");
    
    nombre_apellido.style.visibility = "hidden";
    fecha.style.visibility = "visible";
	
	document.PorFecha.fecha_bautizo.focus();
}*/