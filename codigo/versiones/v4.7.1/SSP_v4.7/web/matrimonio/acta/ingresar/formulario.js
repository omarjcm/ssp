window.onload = setObjects;

function setObjects(  ){
	var parroquia = document.getElementById("parroquia");
	parroquia.style.visibility = "visible";
	
	document.Matrimonio.id_ministro.focus();
}

function habilitarCapa(indice, valor)
{
	var parroquia = document.getElementById("parroquia");
	var solicitante = document.getElementById("solicitante");
	var padres_esposo = document.getElementById("padres_esposo");
        var padres_esposa = document.getElementById("padres_esposa");
	var padrinos = document.getElementById("padrinos");
	var reg_eclesiastico = document.getElementById("reg_eclesiastico");
	var reg_civil = document.getElementById("reg_civil");
	var observacion = document.getElementById("txt_observacion");
	var vista_previa = document.getElementById("vista_previa");
	
	if (indice == 1 && valor)
		parroquia.style.visibility = "visible";
	else
		parroquia.style.visibility = "hidden";
	if (indice == 2 && valor)
		solicitante.style.visibility = "visible";
	else
		solicitante.style.visibility = "hidden";
        if (indice == 3 && valor)
		padres_esposo.style.visibility = "visible";
	else
		padres_esposo.style.visibility = "hidden";
        if (indice == 4 && valor)
		padres_esposa.style.visibility = "visible";
	else
		padres_esposa.style.visibility = "hidden";		
	if (indice == 5 && valor)
		padrinos.style.visibility = "visible";
	else
		padrinos.style.visibility = "hidden";		
	if (indice == 6 && valor) 
		reg_eclesiastico.style.visibility = "visible";
	else 
		reg_eclesiastico.style.visibility = "hidden";
	if (indice == 7 && valor)
		reg_civil.style.visibility = "visible";
	else
		reg_civil.style.visibility = "hidden";		
	if (indice == 8 && valor)
		observacion.style.visibility = "visible";
	else
		observacion.style.visibility = "hidden";
	if (indice == 9 && valor)
		vista_previa.style.visibility = "visible";
	else
		vista_previa.style.visibility = "hidden";
}

function mostrarParroquia(){
	habilitarCapa(1, true);
}

function mostrarSolicitante(){
	habilitarCapa(2, true);
}

function mostrarPadresEsposo(){
	habilitarCapa(3, true);
}

function mostrarPadresEsposa(){
	habilitarCapa(4, true);
}

function mostrarPadrinos(){
	habilitarCapa(5, true);
}

function mostrarRegistroEclesiastico(){	
	habilitarCapa(6, true);
}

function mostrarRegistroCivil(){
	habilitarCapa(7, true);
}

function mostrarObservacion(){
	habilitarCapa(8, true);
}

function mostrarVistaPrevia(){
	habilitarCapa(9, true);
}

function mostrarMinistro()
{
    var ministro = document.getElementById("ministro");    
    ministro.style.visibility = "visible";
}

function ocultarMinistro()
{
    var ministro = document.getElementById("ministro");    
    ministro.style.visibility = "hidden";
}

function ingresarMinistro()
{
    obj = document.Ministro;
    obj.submit();
}

function vistaPrevia()
{
	obj = document.forms[0];
	obj.submit();
}