window.onload = setObject;

function setObject() {
	mostrarMensual();
}

function mostrarReporte()
{
 	if (document.Reporte.radio_reporte[0].checked) {
		var fecha = document.Reporte.fecha.value;
		
		if (!vacio(fecha)) {
			alert("El campo de la Fecha está vacía.");
			document.Reporte.fecha.focus();
		} else if (!esFechaCorrectaPorMes(fecha)) {
			alert("La Fecha está incorrecta.\n El formato de fecha es aaaa-mm\n Por ejemplo, 2007-6");
			document.Reporte.fecha.focus();
		} else if (!validarFechaPorMes(fecha)) {
			document.Reporte.fecha.focus();
		} else {
			var direccion = "reporte_mensual.jsp?fecha=" + fecha + "-01";
			window.open(direccion, "Reporte Mensual", 'left=600, top=400, width=800, height=600,scrollbars=YES,menubar=yes');
		}
	} else if (document.Reporte.radio_reporte[1].checked) {
		var fecha_inicio = document.Reporte.fecha_inicio.value;
		var fecha_fin = document.Reporte.fecha_fin.value;
		
		if (!vacio(fecha_inicio)) {
			alert("El campo de la Fecha Inicio está vacía.");
			document.Reporte.fecha_inicio.focus();
		} else if (!vacio(fecha_fin)) {
			alert("El campo de la Fecha Fin está vacía.");
			document.Reporte.fecha_fin.focus();
		} else if (!esFechaCorrecta(fecha_inicio)) {
			alert("La Fecha Inicio está incorrecta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27");
			document.Reporte.fecha_inicio.focus();
		} else if (!esFechaCorrecta(fecha_fin)) {
			alert("La Fecha Fin está incorrecta.\n El formato de fecha es aaaa-mm-dd\n Por ejemplo, 2007-06-27");
			document.Reporte.fecha_fin.focus();
		} else if (!validarFecha(fecha_inicio, "Inicio")) {
			document.Reporte.fecha_inicio.focus();
		} else if (!validarFecha(fecha_fin, "Fin")) {
			document.Reporte.fecha_fin.focus();
		} else if (fecha_inicio == fecha_fin) {
			alert("Las fechas no pueden ser iguales.");
			document.Reporte.fecha_fin.focus();
		} else if (!comprobarFechas(fecha_inicio, fecha_fin)) {
			alert("La Fecha Inicio no puede ser mayor que la Fecha Fin.");
			document.Reporte.fecha_inicio.focus();
		} else if (!validarIntervaloFecha(fecha_inicio, fecha_fin)) {
			alert("El intervalo entre las fechas no es el adecuado, debe ser mayor ó igual a 9 meses.");
			document.Reporte.fecha_inicio.focus();
		} else {
			var direccion = "reporte_anual.jsp?fecha_inicio=" + fecha_inicio + "&fecha_fin=" + fecha_fin;
			window.open(direccion, "Reporte Anual", 'left=600, top=400, width=800, height=600, scrollbars=YES, menubar=yes');
		}
	}
}

function mostrarAnual()
{
	var anual = document.getElementById("anual");
	var mensual = document.getElementById("mensual");
	
	anual.style.visibility = "visible";
	mensual.style.visibility = "hidden";
	
	document.Reporte.fecha_inicio.focus();	
}

function mostrarMensual()
{
	var anual = document.getElementById("anual");
	var mensual = document.getElementById("mensual");
	
	anual.style.visibility = "hidden";
	mensual.style.visibility = "visible";
	
	document.Reporte.fecha.focus();
}

function esDigito(caracter) {
	return (caracter >= "0"  && caracter <= "9");
}

function vacio(q){
	for ( i = 0; i < q.length; i++ ){
		if ( q.charAt(i) != " " ){
			return true
		}
	}
	return false
}

function validarFechaPorMes(fecha)
{
	var anio = fecha.substring(0, 4);
	var mes = fecha.substring(5, 7);
	
	if (mes < 1 || mes > 12) {
		alert("El mes ingresado en la Fecha se encuentra incorrecto.");
		return false;
	}
	return true;
}

function validarFecha(fecha, mensaje)
{
	var anio = fecha.substring(0, 4);
	var mes = fecha.substring(5, 7);
	var dia = fecha.substring(8, 10);
	
	if (mes < 1 || mes > 12) {
		alert("El mes ingresado en la Fecha "+mensaje+" se encuentra incorrecto.");
		return false;
	}
	if (dia < 1 || dia > 31) {
		alert("El día ingresado en la Fecha "+mensaje+" se encuentra incorrecto.");
		return false;
	}
	return true;
}

function validarIntervaloFecha(fecha1, fecha2)
{
	var anio1 = fecha1.substring(0, 4);
	var mes1 = fecha1.substring(5, 7);
	
	var anio2 = fecha2.substring(0, 4);
	var mes2 = fecha2.substring(5, 7);
	var intervalo;
	
	if (anio1 == anio2) {
		intervalo = mes2-mes1;
		if (intervalo < 8)
			return false;
	} else {
		var primer_intervalo = 12 - mes1;
		intervalo = primer_intervalo + mes2;
		if (intervalo < 8)
			return false;
	}
	
	return true;
}

function esFechaCorrectaPorMes(fecha)
{
    if(fecha.length != 6 && fecha.length != 7) return false;

	for ( i = 0; i < fecha.length; i++ ){
		if (i >= 0 && i <= 3) {
			if ( !esDigito(fecha.charAt(i)) ) return false;
		}
		else if (i == 4) {
			if (fecha.charAt(i) != '-') return false;
		}
		else if (i == 5 || i == 6) {
			if ( !esDigito(fecha.charAt(i)) ) return false;
		}
	}
	return true;
}

function esFechaCorrecta(fecha)
{
    if(fecha.length != 10) return false;

	for ( i = 0; i < fecha.length; i++ ){
		if (i >= 0 && i <= 3) {
			if ( !esDigito(fecha.charAt(i)) ) return false;
		}
		else if (i == 4) {
			if (fecha.charAt(i) != '-') return false;
		}
		else if (i == 5 || i == 6) {
			if ( !esDigito(fecha.charAt(i)) ) return false;
		}
		else if (i == 7) {
			if (fecha.charAt(i) != '-') return false;
		}
		else if (i == 8 || i == 9) {
			if ( !esDigito(fecha.charAt(i)) ) return false;
		}
	}
	return true;
}

function comprobarFechas(fecha_inicio, fecha_fin){
	var array_fecha_inicio = fecha_inicio.split('-');
	var array_fecha_fin = fecha_fin.split('-');
	
	if (array_fecha_inicio[0] > array_fecha_fin[0])
		return false;
	if (array_fecha_inicio[0] == array_fecha_fin[0]){
		if (array_fecha_inicio[1] > array_fecha_fin[1])
			return false;
		if (array_fecha_inicio[1] == array_fecha_fin[1]){
			if (array_fecha_inicio[2] > array_fecha_fin[2])
				return false;
		}
	}
	return true;
}