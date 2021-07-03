window.onload = setObjects;

function setObjects(  ){
	var reg_eclesiastico = document.getElementById("reg_eclesiastico");
	reg_eclesiastico.style.visibility = "visible";
	
	document.Bautizo.num_sacramento.focus();
}



function mostrarRegistroEclesiastico(Bautizo)
{	
	var reg_eclesiastico = document.getElementById("reg_eclesiastico");
	var parroquia = document.getElementById("parroquia");
	var solicitante = document.getElementById("solicitante");
	var padres = document.getElementById("padres");
	var padrinos = document.getElementById("padrinos");
	var reg_civil = document.getElementById("reg_civil");
	var observacion = document.getElementById("txt_observacion");
	
	reg_eclesiastico.style.visibility = "visible";
	parroquia.style.visibility = "hidden";
	solicitante.style.visibility = "hidden";
	padres.style.visibility = "hidden";
	padrinos.style.visibility = "hidden";
	reg_civil.style.visibility = "hidden";
	observacion.style.visibility = "hidden";
}

function mostrarParroquia()
{
	var reg_eclesiastico = document.getElementById("reg_eclesiastico");
	var parroquia = document.getElementById("parroquia");
	var solicitante = document.getElementById("solicitante");
	var padres = document.getElementById("padres");
	var padrinos = document.getElementById("padrinos");
	var reg_civil = document.getElementById("reg_civil");
	var observacion = document.getElementById("txt_observacion");
	
	reg_eclesiastico.style.visibility = "hidden";
	parroquia.style.visibility = "visible";
	solicitante.style.visibility = "hidden";
	padres.style.visibility = "hidden";
	padrinos.style.visibility = "hidden";
	reg_civil.style.visibility = "hidden";
	observacion.style.visibility = "hidden";
}

function mostrarSolicitante()
{
	var reg_eclesiastico = document.getElementById("reg_eclesiastico");
	var parroquia = document.getElementById("parroquia");
	var solicitante = document.getElementById("solicitante");
	var padres = document.getElementById("padres");
	var padrinos = document.getElementById("padrinos");
	var reg_civil = document.getElementById("reg_civil");
	var observacion = document.getElementById("txt_observacion");
	
	reg_eclesiastico.style.visibility = "hidden";
	parroquia.style.visibility = "hidden";
	solicitante.style.visibility = "visible";
	padres.style.visibility = "hidden";
	padrinos.style.visibility = "hidden";
	reg_civil.style.visibility = "hidden";
	observacion.style.visibility = "hidden";
}

function mostrarPadres()
{
	var reg_eclesiastico = document.getElementById("reg_eclesiastico");
	var parroquia = document.getElementById("parroquia");
	var solicitante = document.getElementById("solicitante");
	var padres = document.getElementById("padres");
	var padrinos = document.getElementById("padrinos");
	var reg_civil = document.getElementById("reg_civil");
	var observacion = document.getElementById("txt_observacion");
	
	reg_eclesiastico.style.visibility = "hidden";
	parroquia.style.visibility = "hidden";
	solicitante.style.visibility = "hidden";
	padres.style.visibility = "visible";
	padrinos.style.visibility = "hidden";
	reg_civil.style.visibility = "hidden";
	observacion.style.visibility = "hidden";
}

function mostrarPadrinos()
{
	var reg_eclesiastico = document.getElementById("reg_eclesiastico");
	var parroquia = document.getElementById("parroquia");
	var solicitante = document.getElementById("solicitante");
	var padres = document.getElementById("padres");
	var padrinos = document.getElementById("padrinos");
	var reg_civil = document.getElementById("reg_civil");
	var observacion = document.getElementById("txt_observacion");
	
	reg_eclesiastico.style.visibility = "hidden";
	parroquia.style.visibility = "hidden";
	solicitante.style.visibility = "hidden";
	padres.style.visibility = "hidden";
	padrinos.style.visibility = "visible";
	reg_civil.style.visibility = "hidden";
	observacion.style.visibility = "hidden";
}

function mostrarRegistroCivil()
{
	var reg_eclesiastico = document.getElementById("reg_eclesiastico");
	var parroquia = document.getElementById("parroquia");
	var solicitante = document.getElementById("solicitante");
	var padres = document.getElementById("padres");
	var padrinos = document.getElementById("padrinos");
	var reg_civil = document.getElementById("reg_civil");
	var observacion = document.getElementById("txt_observacion");
	
	reg_eclesiastico.style.visibility = "hidden";
	parroquia.style.visibility = "hidden";
	solicitante.style.visibility = "hidden";
	padres.style.visibility = "hidden";
	padrinos.style.visibility = "hidden";
	reg_civil.style.visibility = "visible";
	observacion.style.visibility = "hidden";
}

function mostrarObservacion()
{
	var reg_eclesiastico = document.getElementById("reg_eclesiastico");
	var parroquia = document.getElementById("parroquia");
	var solicitante = document.getElementById("solicitante");
	var padres = document.getElementById("padres");
	var padrinos = document.getElementById("padrinos");
	var reg_civil = document.getElementById("reg_civil");
	var observacion = document.getElementById("txt_observacion");
	
	reg_eclesiastico.style.visibility = "hidden";
	parroquia.style.visibility = "hidden";
	solicitante.style.visibility = "hidden";
	padres.style.visibility = "hidden";
	padrinos.style.visibility = "hidden";
	reg_civil.style.visibility = "hidden";
	observacion.style.visibility = "visible";
}