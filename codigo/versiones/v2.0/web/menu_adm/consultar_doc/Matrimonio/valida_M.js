function vacio(q){
	for ( i = 0; i < q.length; i++ ){
		if ( q.charAt(i) != " " ){
			return true
		}
	}
	return false
}
function valida(F){
    if((vacio(F.esposo_nombre.value) == false) && (vacio(F.esposo_apellido.value) == false) && (vacio(F.esposa_nombre.value) == false) && (vacio(F.esposa_apellido.value) == false)){
    alert("Debe ingresar Nombres y Apellidos de los Esposos")
    return false
	}
	else{
		if(vacio(F.esposo_nombre.value) == false){
			alert("Debe ingresar el nombre del esposo")
			return false
		}
		else
		{
			if(vacio(F.esposo_apellido.value) == false){
				alert("Debe ingresar el apellido del esposo")
				return false
			}
			else{
				if(vacio(F.esposa_nombre.value) == false){
                                alert("Debe ingresar el nombre de la esposa")
                                return false
                                }
                                else
                                {
                                    if(vacio(F.esposa_apellido.value) == false){
                                    alert("Debe ingresar el apellido de la esposa")
                                    return false
                                        }
                                    else{
                                        ok()
                                        return false
                                     } 
                                 }
                            } 
                    }
                
	}      
	
   }
function ok(){

	obj=document.forms[0];
    	obj.submit();
       // alert("Pasando los datos")
}
