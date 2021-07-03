function vacio(q){
	for ( i = 0; i < q.length; i++ ){
		if ( q.charAt(i) != " " ){
			return true
		}
	}
	return false
}
function validarProvincia(F){
        if((vacio(F.provincia_nombre.value) == false)){
            alert("Debe ingresar el nombre de la Provincia")
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


			
		