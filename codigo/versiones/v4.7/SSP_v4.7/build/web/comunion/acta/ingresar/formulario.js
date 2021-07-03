window.onload = setObjects;

function setObjects(  ){
	var reg_eclesiastico = document.getElementById("reg_eclesiastico");
	reg_eclesiastico.style.visibility = "visible";
	
	document.Bautizo.num_sacramento.focus();
}


function habilitarCapa(indice, valor)
{
	var reg_eclesiastico = document.getElementById("reg_eclesiastico");
	var parroquia = document.getElementById("parroquia");
	var solicitante = document.getElementById("solicitante");
	var padres = document.getElementById("padres");
	var padrinos = document.getElementById("padrinos");
	var reg_civil = document.getElementById("reg_civil");
	var observacion = document.getElementById("txt_observacion");
	var vista_previa = document.getElementById("vista_previa");
	
	if (indice == 1 && valor) 
		reg_eclesiastico.style.visibility = "visible";
	else 
		reg_eclesiastico.style.visibility = "hidden";
	if (indice == 2 && valor)
		parroquia.style.visibility = "visible";
	else
		parroquia.style.visibility = "hidden";
	if (indice == 3 && valor)
		solicitante.style.visibility = "visible";
	else
		solicitante.style.visibility = "hidden";
	if (indice == 4 && valor)
		padres.style.visibility = "visible";
	else
		padres.style.visibility = "hidden";		
	if (indice == 5 && valor)
		padrinos.style.visibility = "visible";
	else
		padrinos.style.visibility = "hidden";		
	if (indice == 6 && valor)
		reg_civil.style.visibility = "visible";
	else
		reg_civil.style.visibility = "hidden";		
	if (indice == 7 && valor)
		observacion.style.visibility = "visible";
	else
		observacion.style.visibility = "hidden";
	if (indice == 8 && valor)
		vista_previa.style.visibility = "visible";
	else
		vista_previa.style.visibility = "hidden";
}

function mostrarRegistroEclesiastico(){	
	habilitarCapa(1, true);
}

function mostrarParroquia(){
	habilitarCapa(2, true);
}

function mostrarSolicitante(){
	habilitarCapa(3, true);
}

function mostrarPadres(){
	habilitarCapa(4, true);
}

function mostrarPadrinos(){
	habilitarCapa(5, true);
}

function mostrarRegistroCivil(){
	habilitarCapa(6, true);
}

function mostrarObservacion(){
	habilitarCapa(7, true);
}

function mostrarVistaPrevia(){
	habilitarCapa(8, true);
}

function vistaPrevia()
{
	obj = document.forms[0];
	obj.submit();
}