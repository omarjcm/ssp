function vacio(q){
	for ( i = 0; i < q.length; i++ ){
		if ( q.charAt(i) != " " ){
			return true
		}
	}
	return false
}
function valida(F){
   if((vacio(F.nombre.value) == false) && (vacio(F.apellido.value) == false)){
    alert("Debe ingresar nombre y apellido a consultar")
    return false
	}
	else{
		if(vacio(F.nombre.value) == false){
			alert("Debe ingresar el nombre")
			return false
		}
		else
		{
			if(vacio(F.apellido.value) == false){
				alert("Debe ingresar el apellido")
				return false
			}
			else{
				ok()
				return false
			} 
		}
	}
         
}
function ok(){

	obj=document.forms[0];
    	obj.submit();
       // alert("Pasando los datos")
}
