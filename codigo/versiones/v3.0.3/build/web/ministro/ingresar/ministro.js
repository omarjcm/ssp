function vacio(q){
	for ( i = 0; i < q.length; i++ ){
		if ( q.charAt(i) != " " ){
			return true
		}
	}
	return false
}
function validar(F){
        if((vacio(F.ministro_nombre.value) == false) && (vacio(F.ministro_apellido.value) == false)){
            alert("Debe ingresar el nombre y al apellido")
            return false
	}
        if((vacio(F.ministro_nombre.value) == false)){
            alert("Debe ingresar el nombre del ministro")
            return false
	}
        if((vacio(F.ministro_apellido.value) == false)){
            alert("Debe ingresar el apellido del ministro")
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


			
		