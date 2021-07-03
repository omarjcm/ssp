function vacio(q){
	for ( i = 0; i < q.length; i++ ){
		if ( q.charAt(i) != " " ){
			return true
		}
	}
	return false
}
function validarCiudad(F){
        if((vacio(F.nombre_ciudad.value) == false)){
            alert("Debe ingresar el nombre de la ciudad")
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


			
		