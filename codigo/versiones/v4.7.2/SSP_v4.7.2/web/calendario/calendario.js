// JavaScript Document

function mostrarCalendarioBautizo()
{
	Calendar.setup(
		{
			inputField	: "fecha_bautizo",
			ifFormat	: "%Y-%m-%d",
			dateFormat	: "%Y-%m-%d",
			weekNumbers	: false,
			align		: "Bl",
			button		: "btn_fecha_bautizo"
		}
	);       
}
       
function mostrarCalendarioNacimiento()
{
	Calendar.setup(
		{
			inputField  : "fecha_nacimiento",
			ifFormat    : "%Y-%m-%d",
			dateFormat  : "%Y-%m-%d",
			weekNumbers : false,
			align       : "Bl",
			button      : "btn_fecha_nacimiento"
		}
	);
}
