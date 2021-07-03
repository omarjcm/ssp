function irInicio()
{
	window.location.ref = "bautismo.jsp";
}

function anularActa(Anular)
{
	var valor = confirm("Se encuentra seguro de anular el Acta de Bautismo?");
	if (valor) {
		Anular.submit();
	}
}

function mostrarBusquedaPorNombreYApellido()
{
    var nombre_apellido = document.getElementById("buscar_por_nombre_apellido");    
    var fecha = document.getElementById("buscar_por_fecha");
	
    nombre_apellido.style.visibility = "visible";
    fecha.style.visibility = "hidden";
	
	document.PorNombreApellido.bautizado_nombre.focus();
}

function mostrarBusquedaPorFecha()
{
    var nombre_apellido = document.getElementById("buscar_por_nombre_apellido");    
    var fecha = document.getElementById("buscar_por_fecha");
    
    nombre_apellido.style.visibility = "hidden";
    fecha.style.visibility = "visible";
	
	document.PorFecha.fecha_bautizo.focus();
}