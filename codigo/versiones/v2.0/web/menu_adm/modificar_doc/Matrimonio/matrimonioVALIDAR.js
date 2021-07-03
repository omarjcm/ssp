function vacio(q){
	for ( i = 0; i < q.length; i++ ){
		if ( q.charAt(i) != " " ){
			return true
		}
	}
	return false
}
function validarMatrimonio(F){
        if((vacio(F.id_matrimonio.value) == false)){
            alert("Debe ingresar el numero de Matrimonio")
            return false
	}
        if((vacio(F.reg_acta_anio.value) == false)){
            alert("Debe ingresar el anio del Registro del Matrimonio")
            return false
	}
        if((vacio(F.reg_acta_libro.value) == false)){
            alert("Debe ingresar el numero del libro del Matrimonio")
            return false
	}
        if((vacio(F.reg_acta_folio.value) == false)){
            alert("Debe ingresar el numero de folio")
            return false
	}
        if((vacio(F.anio_fecha_sacramento.value) == false)){
            alert("Debe ingresar el anio del sacramento")
            return false
	}
        if((vacio(F.novio_nombre.value) == false)){
            alert("Debe ingresar el nombre del novio")
            return false
	}
        if((vacio(F.novio_apellido.value) == false)){
            alert("Debe ingresar el apellido del novio")
            return false
	}
        if((vacio(F.novia_nombre.value) == false)){
            alert("Debe ingresar el nombre del novia")
            return false
	}
        if((vacio(F.novia_apellido.value) == false)){
            alert("Debe ingresar el apellido del novia")
            return false
	}
        if((vacio(F.padre_esposo_nombre.value) == false)){
            alert("Debe ingresar el nombre del padre del novio")
            return false
	}
        if((vacio(F.padre_esposo_apellido.value) == false)){
            alert("Debe ingresar el apellido del padre del novio")
            return false
	}
        if((vacio(F.madre_esposo_nombre.value) == false)){
            alert("Debe ingresar el nombre de la madre del novio")
            return false
	}
        if((vacio(F.madre_esposo_apellido.value) == false)){
            alert("Debe ingresar el apellido de la madre del novio")
            return false
	}
        if((vacio(F.padre_esposa_nombre.value) == false)){
            alert("Debe ingresar el nombre del padre de la novia")
            return false
	}
        if((vacio(F.padre_esposa_apellido.value) == false)){
            alert("Debe ingresar el apellido del padre de la novia")
            return false
	}
        if((vacio(F.madre_esposa_nombre.value) == false)){
            alert("Debe ingresar el nombre de la madre de la novia")
            return false
	}
        if((vacio(F.madre_esposa_apellido.value) == false)){
            alert("Debe ingresar el apellido de la madre de la novia")
            return false
	}
        if((vacio(F.padrino_nombre.value) == false)){
            alert("Debe ingresar el nombre del padrino")
            return false
	}
        if((vacio(F.padrino_apellido.value) == false)){
            alert("Debe ingresar el apellido del padrino")
            return false
	}
        if((vacio(F.madrina_nombre.value) == false)){
            alert("Debe ingresar el nombre de la madrina")
            return false
	}
         if((vacio(F.madrina_apellido.value) == false)){
            alert("Debe ingresar el apellido de la madrina")
            return false
	}
        if((vacio(F.rc_acta_no.value) == false)){
            alert("Debe ingresar el numero del acta")
            return false
	}
        if((vacio(F.rc_acta_anio.value) == false)){
            alert("Debe ingresar el anio del acta")
            return false
	}
         if((vacio(F.rc_acta_tomo.value) == false)){
            alert("Debe ingresar el tomo del acta")
            return false
	}
        if((vacio(F.rc_acta_folio.value) == false)){
            alert("Debe ingresar el folio del acta")
            return false
	}
        if((vacio(F.rc_acta_lugar.value) == false)){
            alert("Debe ingresar el lugar")
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


			
		