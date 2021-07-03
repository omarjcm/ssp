function pageFocus() {
    document.Usuario.user.focus();
}

function presentarMensaje(mensaje) {
   alert( mensaje );
}

function mostrarPrincipal()
{
	window.location.href="../index.jsp";
}

function submit_login() {
   if (document.Usuario.user.value == "") {
       alert( "Debe ingresar el usuario." );
       document.Usuario.user.focus();
   } else if(document.Usuario.password.value == "" ) {
       alert( "Debe ingresar la contraseña." );
       document.Usuario.password.focus();
   } else {
       document.Usuario.submit();
   }
}

var IE4 = document.all;
var NS4 = document.layers;

function enter_key_trap( e ) {
   var keyPressed;
   if ( NS4 )
       keyPressed = String.fromCharCode( e.which );
   else if ( IE4 )
       keyPressed = String.fromCharCode( window.event.keyCode );

   if ( keyPressed == "\r" || keyPressed == "\n" ) {
       submit_login();
   }
}

// Setup the enter keytrap code
if (window.document.captureEvents != null) {
   window.document.captureEvents(Event.KEYPRESS);
   window.document.onkeypress = enter_key_trap;
}