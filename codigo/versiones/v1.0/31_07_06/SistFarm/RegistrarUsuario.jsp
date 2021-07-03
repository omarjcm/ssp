<%@page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="Sistfarm.*"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.util.*"%>
<html>
<head>
<title>Registrar Usuario</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="javascript">
	//valida que los datos ingresados sean los correctos
	function validarDatos(form){		
		//valida que los campos estén llenos
		if (form.txt_user.value==""){ 
			alert("Ingrese el user");
			form.txt_user.focus();
			return false;
		}if (form.txt_contrasenia.value==""){ 
			alert("Ingrese el password");
			form.txt_contrasenia.focus();
			return false;
		}if (form.txt_cedula.value==""){ 
			alert("Ingrese el número de cédula");
			form.txt_cedula.focus();
			return false;
		}if (form.txt_nacionalidad.value==""){ 
			alert("Ingrese la nacionalidad");
			form.txt_nacionalidad.focus();
			return false;
		}if (form.txt_nombre.value==""){ 
			alert("Ingrese el nombre del usuario");
			form.txt_nombre.focus();
			return false;
		}if (form.txt_apellido.value==""){ 
			alert("Ingrese el apellido del usuario");
			form.txt_apellido.focus();
			return false;
		}if (form.txt_direccion.value==""){ 
			alert("Ingrese la dirección");
			form.txt_direccion.focus();
			return false;
		}if (form.txt_sueldo.value==""){ 
			alert("Ingrese el sueldo");
			form.txt_sueldo.focus();
			return false;
		}if (form.txt_fono1.value==""){ 
			alert("Ingrese un telefono");
			form.txt_fono1.focus();
			return false;
		}if (form.txt_fndia.value==""){ 
			alert("Ingrese el dia de nacimiento");
			form.txt_fndia.focus();
			return false;
		}if (form.txt_fnmes.value==""){ 
			alert("Ingrese el mes de nacimiento");
			form.txt_fnmes.focus();
			return false;
		}if (form.txt_fnanio.value==""){ 
			alert("Ingrese el año de nacimiento");
			form.txt_fnanio.focus();
			return false;
		}if (form.txt_fidia.value==""){ 
			alert("Ingrese el dia de ingreso");
			form.txt_fidia.focus();
			return false;
		}if (form.txt_fimes.value==""){ 
			alert("Ingrese el mes de ingreso");
			form.txt_fimes.focus();
			return false;
		}if (form.txt_fianio.value==""){ 
			alert("Ingrese el año de ingreso");
			form.txt_fianio.focus();
			return false;
		}if (form.cb_sexo.value==""){ 
			alert("Ingrese el sexo");
			form.cb_sexo.focus();
			return false;
		}if (form.cb_tipo.value==""){ 
			alert("Ingrese el año de ingreso");
			form.cb_tipo.focus();
			return false;
		}
		
		if(isNaN(form.txt_cedula.value)){
			alert("Debe ingresar sólo números para el campo cédula");
			form.txt_cedula.value="";
			form.txt_cedula.focus();
			return false;
		}if(!(form.txt_cedula.value.length==10)){
			alert("El número de cédula debe tener 10 dígitos");
			form.txt_cedula.value="";
			form.txt_cedula.focus();
			return false;
		}if(isNaN(form.txt_sueldo.value)){
			alert("Debe ingresar sólo números para el campo sueldo");
			form.txt_sueldo.value="";
			form.txt_sueldo.focus();
			return false;
		}
		//validación de teléfonos
		if(isNaN(form.txt_fono1.value)){
			alert("Debe ingresar sólo números para el campo teléfono");
			form.txt_fono1.value="";
			form.txt_fono1.focus();
			return false;
		}if(isNaN(form.txt_fono2.value)){
			alert("Debe ingresar sólo números para el campo teléfono");
			form.txt_fono2.value="";
			form.txt_fono2.focus();
			return false;
		}if(!(form.txt_fono1.value.length==9) && !(form.txt_fono1.value.length==7) && !(form.txt_fono1.value.length==0)){
			alert("El número de teléfono debe tener 7 o 9 dígitos");
			form.txt_fono1.value="";
			form.txt_fono1.focus();
			return false;
		}if(!(form.txt_fono2.value.length==9) && !(form.txt_fono2.value.length==7) && !(form.txt_fono2.value.length==0)){
			alert("El número de teléfono debe tener 7 o 9 dígitos");
			form.txt_fono2.value="";
			form.txt_fono2.focus();
			return false;
		}if(isNaN(form.txt_fndia.value)){
			alert("Debe ingresar sólo números para el dia de nacimiento");
			form.txt_fndia.value="";
			form.txt_fndia.focus();
			return false;
		}if(!(form.txt_fndia.value.length==2)){
			alert("El dia de nacimiento debe tener 2 digitos");
			form.txt_fndia.value="";
			form.txt_fndia.focus();
			return false;
		}if(isNaN(form.txt_fnmes.value)){
			alert("Debe ingresar sólo números para el mes de nacimiento");
			form.txt_fnmes.value="";
			form.txt_fnmes.focus();
			return false;
		}if(!(form.txt_fnmes.value.length==2)){
			alert("El mes de nacimiento debe tener 2 digitos");
			form.txt_fnmes.value="";
			form.txt_fnmes.focus();
			return false;
		}if(isNaN(form.txt_fnanio.value)){
			alert("Debe ingresar sólo números para el año de nacimiento");
			form.txt_fnanio.value="";
			form.txt_fnanio.focus();
			return false;
		}if(!(form.txt_fnanio.value.length==4)){
			alert("El año de nacimiento debe tener 4 digitos");
			form.txt_fnanio.value="";
			form.txt_fnanio.focus();
			return false;
		}if(isNaN(form.txt_fidia.value)){
			alert("Debe ingresar sólo números para el dia de ingreso");
			form.txt_fidia.value="";
			form.txt_fidia.focus();
			return false;
		}if(!(form.txt_fidia.value.length==2)){
			alert("El dia de ingreso debe tener 2 digitos");
			form.txt_fidia.value="";
			form.txt_fidia.focus();
			return false;
		}if(isNaN(form.txt_fimes.value)){
			alert("Debe ingresar sólo números para el mes de ingreso");
			form.txt_fimes.value="";
			form.txt_fimes.focus();
			return false;
		}if(!(form.txt_fimes.value.length==2)){
			alert("El mes de ingreso debe tener 2 digitos");
			form.txt_fimes.value="";
			form.txt_fimes.focus();
			return false;
		}if(isNaN(form.txt_fianio.value)){
			alert("Debe ingresar sólo números para el año de ingreso");
			form.txt_fianio.value="";
			form.txt_fianio.focus();
			return false;
		}if(!(form.txt_fianio.value.length==4)){
			alert("El año de ingreso debe tener 4 digitos");
			form.txt_fianio.value="";
			form.txt_fianio.focus();
			return false;
		}
	}
</script>
</head>

<body>
<FORM name="registro" method="post" action="ValidarRegistroUsuario.jsp">
  <table width="562" border="0" cellpadding="0" cellspacing="0" bgcolor="#FCFCFC" height="836">
    <tr> 
      <td width="2" height="30"></td>
      <td width="661" valign="top" height="30">
        <DIV align="center">
          <STRONG><FONT size="4" color="#000000" face="Tahoma">Registro de Usuarios</FONT> </STRONG>
          </DIV>
      </td>
      <td width="20" height="30">&nbsp;</td>
    </tr>
    <tr> 
      <td height="14" width="2"></td>
      <td height="14" width="661"></td>
      <td height="14" width="20"></td>
    </tr>
    <tr> 
      <td height="780" width="2"></td>
      <td colspan="2" valign="top" height="780"> 
        <table width="57%" border="0" cellpadding="0" cellspacing="0" height="674">
          <!--DWLayoutTable-->
          <tr valign="middle"> 
            <td height="19" colspan="6" bgcolor="#006699"><FONT face="Tahoma" color=#ffffff size=2><strong><img src="Imagenes/rc_f1.gif" width="15" height="13" hspace="5">Datos de Acceso</strong></FONT></td>
            <td width="1"></td>
          </tr>
          <tr> 
            <td height="61" colspan="6" valign="top"><FONT face="Tahoma" size=2> 
			<P align="justify"><font color="#000033">Elija un <strong>user, password</strong>. 
                Estos se le pedir&aacute;n posteriormente al empleado cuando quiera 
                empezar una sesi&oacute;n y as&iacute; accesar a las diferentes 
                actividades.</font></P>
              </FONT></td>
            <td width="1"></td>
          </tr>
          <tr> 
            <td height="22" colspan="2" valign="top"><div align="right"><FONT face="Tahoma" color=#000000 
                              size=2><B>*User: </B></FONT></div></td>
            <td colspan="2" valign="top"> <input name="txt_user" type="text" id="txt_user" maxlength="30" size="20"></td>
            <td width="288">&nbsp;</td>
            <td width="77">&nbsp;</td>
            <td width="1"></td>
          </tr>
          <tr> 
            <td height="22" colspan="2" valign="top"><div align="right"><FONT face="Tahoma" color=#000000 
                              size=2><B>*Contrase&ntilde;a: </B></FONT></div></td>
            <td colspan="2" valign="top"> <input name="txt_contrasenia" type="password" id="txt_contrasenia" maxlength="30" size="20"></td>
            <td width="288">&nbsp;</td>
            <td width="77">&nbsp;</td>
            <td width="1"></td>
          </tr>
          <tr>
            <td width="201" height="14" colspan="2">
              <DIV align="right"></DIV>
              <DIV align="right">
                <FONT face="Tahoma" color="#000000" size="2"><B>*Tipo Usuario:</B></FONT>
              </DIV>
            </td>
            <td width="64" colspan="2">
              <select size="1" name="cb_tipo">
                <option value="1">Administrador</option>
                <option value="2">Vendedor</option>
              </select>
            </td>
            <td width="288">&nbsp;</td>
            <td width="77">&nbsp;</td>
            <td width="1">&nbsp;</td>
          </tr>
          <tr> 
            <td width="201" height="14"></td>
            <td width="90"></td>
            <td width="64"></td>
            <td width="267"></td>
            <td width="288"></td>
            <td width="77"></td>
            <td width="1"></td>
          </tr>
          <tr> 
            <td height="22" colspan="7" valign="top"><FONT face="Tahoma" size=2 color="#0000CC">Los campos que le antecede un asterisco (*) son campos obligatorios.</font></td>
          </tr>
          <tr valign="middle"> 
            <td height="19" colspan="6" bgcolor="#006699"><FONT face="Tahoma" color=#ffffff size=2><strong><img src="Imagenes/re_f1.gif" width="15" height="13" hspace="5">Datos Personales</strong></FONT></td>
            <td bgcolor="#006699" width="1"></td>
          </tr>
          <tr> 
            <td height="7" width="201"></td>
            <td width="90"></td>
            <td width="64"></td>
            <td width="267"></td>
            <td width="288"></td>
            <td width="77"></td>
            <td width="1"></td>
          </tr>
          <tr> 
            <td height="204" colspan="6" valign="top">
            <p><font color="#000033" size="2" face="Tahoma"><strong>*C&eacute;dula:</strong></font> 
                <input name="txt_cedula" type="text" id="txt_cedula" size="15" maxlength="10">
            <p><font color="#000033" size="2" face="Tahoma"><strong>*Nacionalidad:</strong></font>
                <input name="txt_nacionalidad" type="text" id="txt_nacionalidad" size="23" maxlength="30"></p>
              <p><font color="#000033" size="2" face="Tahoma"><strong>*Nombre</strong></font> 
                <input name="txt_nombre" type="text" id="txt_nombre" size="40" maxlength="40">
              </font></p>
              <p><font color="#000033" size="2" face="Tahoma"><strong>*Apellido</strong></font> 
                <input name="txt_apellido" type="text" id="txt_apellido" size="40" maxlength="40">
              </font></p>
              <p><font color="#000033" size="2" face="Tahoma"><strong>*Fecha Nacimiento:</strong></font> 
                <input name="txt_fndia" type="text" id="txt_fndia" size="3" maxlength="2" value="dd">
                <input name="txt_fnmes" type="text" id="txt_fnmes" size="3" maxlength="2" value="mm">
                <input name="txt_fnanio" type="text" id="txt_fnanio" size="5" maxlength="4" value="aaaa">
              </p>
              <P> <font color="#000033" size="2" face="Tahoma"><strong>*Sexo</strong></font>
                <select name="cb_sexo" size="1" id="cb_sexo">
                  <option value="Femenino">Femenino</option>
                  <option value="Masculino">Masculino</option>
                </select>
            </td>
            <td width="1"></td>
          </tr>
          <tr> 
            <td height="118" colspan="6" valign="top"> <p align="center"><img src="Imagenes/re_l1.gif" width="550" height="8" align="left"></p>
              <p><p><font color="#000033" size="2" face="Tahoma"><strong>*Direcci&oacute;n</strong></font>
                <input name="txt_direccion" type="text" id="txt_direccion" size="40" maxlength="50">
             </font></p>
              <p><font color="#000033" size="2" face="Tahoma"><strong>*Tel&eacute;fono1</strong></font>
                <input name="txt_fono1" type="text" id="txt_fono1" size="10" maxlength="9">
                <font color="#000033" size="2" face="Tahoma"><strong>Telefono2:</strong></font> 
                <input name="txt_fono2" type="text" id="txt_fono2" size="10" maxlength="9">
              <font color="#000033" size="2" face="Tahoma"></font> </p></td>
            <td width="1"></td>
          </tr>
          <tr> 
            <td colspan="6" rowspan="3">&nbsp;</td>
            <td width="1" height="21"></td>
          </tr>
          <tr> 
            <td width="1" height="2"></td>
          </tr>
          <tr> 
            <td width="1" height="15"></td>
          </tr>
          <tr> 
            <td height="19" colspan="6" valign="middle" bgcolor="#006699">
			<FONT face="Tahoma" color=#ffffff size=2><strong><img src="Imagenes/re_f1.gif" width="15" height="13" hspace="5">Datos Profesionales</strong></FONT></td>
            <td width="1"></td>
          </tr>
          <tr> 
            <td height="30" colspan="6" valign="middle"> <p><font color="#000033" size="2" face="Tahoma">Datos para n&oacute;mina</font></p></td>
            <td width="1"></td>
          </tr>
          <tr> 
            <td rowspan="2" valign="top" width="201"><font color="#000033" size="2" face="Tahoma"><strong>*Sueldo</strong></font></td>
            <td height="3" width="90"></td>
            <td width="64"></td>
            <td width="267"></td>
            <td width="288"></td>
            <td width="77"></td>
            <td width="1"></td>
          </tr>
          <tr> 
            <td colspan="5" rowspan="2" valign="top"><p> 
                <input name="txt_sueldo" type="text" id="txt_sueldo" size="15">
              </p></td>
            <td height="20" width="1"></td>
          </tr>
          <tr> 
            <td height="20" width="201"></td>
            <td width="1"></td>
          </tr>
          <tr> 
            <td height="10"><font color="#000033" size="2" face="Taho,a"><strong>*Fecha de ingreso:</strong></font></td>
            <td colspan="5">
            <input name="txt_fidia" type="text" id="txt_fidia" size="3" maxlength="2" value="dd">
            <input name="txt_fimes" type="text" id="txt_fimes" size="3" maxlength="2" value="mm"/>
            <input name="txt_fianio" type="text" id="txt_fianio" size="5" maxlength="4" value="aaaa"/> 
              </td>
            <td></td>
          </tr>
          <tr>
            <td height="10" colspan="6">
              <P>&nbsp;</P>
              <P>
                <font color="#000033" size="2" face="Tahoma"><strong>*Horarios de trabajo:</strong></font>
              </P>
            </td>
            <td width="1">&nbsp;</td>
          </tr>
          <tr> 
            <td height="10" colspan="6">
              <table cellspacing="3" cellpadding="2" border="0">
                <tr>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>*Dia Semana:</strong></font>
                  </td>
                  <td>
                    <select name="cb_dia1" id="cb_dial">
                      <option value="Lunes">Lunes</option>
                      <option value="Martes">Martes</option>
                      <option value="Miercoles">Miercoles</option>
                      <option value="Jueves">Jueves</option>
                      <option value="Viernes">Viernes</option>
                      <option value="Sabado">Sabado</option>
                      <option value="Domingo">Domingo</option>
                    </select>
                  </td>
                  <td rowspan="7">&nbsp;
                  <FONT color="#ffffff">........</FONT></td>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>*Hora Inicio:</strong></font>
                  </td>
                  <td>
                    <select name="cb_hi1" id="cb_hi1">
                      <option value="1">01h00</option>
                      <option value="2">02h00</option>
                      <option value="3">03h00</option>
                      <option value="4">04h00</option>
                      <option value="5">05h00</option>
                      <option value="6">06h00</option>
                      <option value="7">07h00</option>
                      <option value="8">08h00</option>
                      <option value="9">09h00</option>
                      <option value="10">10h00</option>
                      <option value="11">11h00</option>
                      <option value="12">12h00</option>
                      <option value="13">13h00</option>
                      <option value="14">14h00</option>
                      <option value="15">15h00</option>
                      <option value="16">16h00</option>
                      <option value="17">17h00</option>
                      <option value="18">18h00</option>
                      <option value="19">19h00</option>
                      <option value="20">20h00</option>
                      <option value="21">21h00</option>
                      <option value="22">22h00</option>
                      <option value="23">23h00</option>
                      <option value="24">24h00</option>
                    </select>
                                      </td>
                  <td rowspan="7">
                    <FONT color="#ffffff">.......</FONT>
                  </td>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>*Hora Fin:</strong></font>
                  </td>
                  <td>
                     <select name="cb_hf1" id="cb_hf1">
                       <option value="1">01h00</option>
                      <option value="2">02h00</option>
                      <option value="3">03h00</option>
                      <option value="4">04h00</option>
                      <option value="5">05h00</option>
                      <option value="6">06h00</option>
                      <option value="7">07h00</option>
                      <option value="8">08h00</option>
                      <option value="9">09h00</option>
                      <option value="10">10h00</option>
                      <option value="11">11h00</option>
                      <option value="12">12h00</option>
                      <option value="13">13h00</option>
                      <option value="14">14h00</option>
                      <option value="15">15h00</option>
                      <option value="16">16h00</option>
                      <option value="17">17h00</option>
                      <option value="18">18h00</option>
                      <option value="19">19h00</option>
                      <option value="20">20h00</option>
                      <option value="21">21h00</option>
                      <option value="22">22h00</option>
                      <option value="23">23h00</option>
                      <option value="24">24h00</option>
                    </select>
                                      </td>
                </tr>
                <tr>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>Dia Semana:</strong></font>
                  </td>
                  <td>
                    <select size="1" name="cb_dia2">
                      <option value="Lunes">Lunes</option>
                      <option value="Martes">Martes</option>
                      <option value="Miercoles">Miercoles</option>
                      <option value="Jueves">Jueves</option>
                      <option value="Viernes">Viernes</option>
                      <option value="Sabado">Sabado</option>
                      <option value="Domingo">Domingo</option>
                    </select>
                  </td>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>Hora Inicio:</strong></font>
                  </td>
                  <td>
                    <select size="1" name="cb_hi2">
                      
                      <option value="1">01h00</option>
                      <option value="2">02h00</option>
                      <option value="3">03h00</option>
                      <option value="4">04h00</option>
                      <option value="5">05h00</option>
                      <option value="6">06h00</option>
                      <option value="7">07h00</option>
                      <option value="8">08h00</option>
                      <option value="9">09h00</option>
                      <option value="10">10h00</option>
                      <option value="11">11h00</option>
                      <option value="12">12h00</option>
                      <option value="13">13h00</option>
                      <option value="14">14h00</option>
                      <option value="15">15h00</option>
                      <option value="16">16h00</option>
                      <option value="17">17h00</option>
                      <option value="18">18h00</option>
                      <option value="19">19h00</option>
                      <option value="20">20h00</option>
                      <option value="21">21h00</option>
                      <option value="22">22h00</option>
                      <option value="23">23h00</option>
                      <option value="24">24h00</option>
                    </select>
                  </td>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>Hora Fin:</strong></font>
                  </td>
                  <td>
                    <select size="1" name="cb_hf2">
                      
                      <option value="1">01h00</option>
                      <option value="2">02h00</option>
                      <option value="3">03h00</option>
                      <option value="4">04h00</option>
                      <option value="5">05h00</option>
                      <option value="6">06h00</option>
                      <option value="7">07h00</option>
                      <option value="8">08h00</option>
                      <option value="9">09h00</option>
                      <option value="10">10h00</option>
                      <option value="11">11h00</option>
                      <option value="12">12h00</option>
                      <option value="13">13h00</option>
                      <option value="14">14h00</option>
                      <option value="15">15h00</option>
                      <option value="16">16h00</option>
                      <option value="17">17h00</option>
                      <option value="18">18h00</option>
                      <option value="19">19h00</option>
                      <option value="20">20h00</option>
                      <option value="21">21h00</option>
                      <option value="22">22h00</option>
                      <option value="23">23h00</option>
                      <option value="24">24h00</option>
                    </select>
                                      </td>
                </tr>
                <tr>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>Dia Semana:</strong></font>
                  </td>
                  <td>
                    <select size="1" name="cb_dia3">
                      <option value="Lunes">Lunes</option>
                      <option value="Martes">Martes</option>
                      <option value="Miercoles">Miercoles</option>
                      <option value="Jueves">Jueves</option>
                      <option value="Viernes">Viernes</option>
                      <option value="Sabado">Sabado</option>
                      <option value="Domingo">Domingo</option>
                    </select>
                  </td>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>Hora Inicio:</strong></font>
                  </td>
                  <td>
                    <select size="1" name="cb_hi3">
                      
                      <option value="1">01h00</option>
                      <option value="2">02h00</option>
                      <option value="3">03h00</option>
                      <option value="4">04h00</option>
                      <option value="5">05h00</option>
                      <option value="6">06h00</option>
                      <option value="7">07h00</option>
                      <option value="8">08h00</option>
                      <option value="9">09h00</option>
                      <option value="10">10h00</option>
                      <option value="11">11h00</option>
                      <option value="12">12h00</option>
                      <option value="13">13h00</option>
                      <option value="14">14h00</option>
                      <option value="15">15h00</option>
                      <option value="16">16h00</option>
                      <option value="17">17h00</option>
                      <option value="18">18h00</option>
                      <option value="19">19h00</option>
                      <option value="20">20h00</option>
                      <option value="21">21h00</option>
                      <option value="22">22h00</option>
                      <option value="23">23h00</option>
                      <option value="24">24h00</option>
                    </select>
                                      </td>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>Hora Fin:</strong></font>
                  </td>
                  <td>
                    <select size="1" name="cb_hf3">
                      
                      <option value="1">01h00</option>
                      <option value="2">02h00</option>
                      <option value="3">03h00</option>
                      <option value="4">04h00</option>
                      <option value="5">05h00</option>
                      <option value="6">06h00</option>
                      <option value="7">07h00</option>
                      <option value="8">08h00</option>
                      <option value="9">09h00</option>
                      <option value="10">10h00</option>
                      <option value="11">11h00</option>
                      <option value="12">12h00</option>
                      <option value="13">13h00</option>
                      <option value="14">14h00</option>
                      <option value="15">15h00</option>
                      <option value="16">16h00</option>
                      <option value="17">17h00</option>
                      <option value="18">18h00</option>
                      <option value="19">19h00</option>
                      <option value="20">20h00</option>
                      <option value="21">21h00</option>
                      <option value="22">22h00</option>
                      <option value="23">23h00</option>
                      <option value="24">24h00</option>
                    </select>
                                      </td>
                </tr>
                <tr>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>Dia Semana:</strong></font>
                  </td>
                  <td>
                    <select size="1" name="cb_dia4">
                      <option value="Lunes">Lunes</option>
                      <option value="Martes">Martes</option>
                      <option value="Miercoles">Miercoles</option>
                      <option value="Jueves">Jueves</option>
                      <option value="Viernes">Viernes</option>
                      <option value="Sabado">Sabado</option>
                      <option value="Domingo">Domingo</option>
                    </select>
                  </td>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>Hora Inicio:</strong></font>
                  </td>
                  <td>
                    <select size="1" name="cb_hi4">
                      
                      <option value="1">01h00</option>
                      <option value="2">02h00</option>
                      <option value="3">03h00</option>
                      <option value="4">04h00</option>
                      <option value="5">05h00</option>
                      <option value="6">06h00</option>
                      <option value="7">07h00</option>
                      <option value="8">08h00</option>
                      <option value="9">09h00</option>
                      <option value="10">10h00</option>
                      <option value="11">11h00</option>
                      <option value="12">12h00</option>
                      <option value="13">13h00</option>
                      <option value="14">14h00</option>
                      <option value="15">15h00</option>
                      <option value="16">16h00</option>
                      <option value="17">17h00</option>
                      <option value="18">18h00</option>
                      <option value="19">19h00</option>
                      <option value="20">20h00</option>
                      <option value="21">21h00</option>
                      <option value="22">22h00</option>
                      <option value="23">23h00</option>
                      <option value="24">24h00</option>
                    </select>
                                      </td>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>Hora Fin:</strong></font>
                  </td>
                  <td>
                    <select size="1" name="cb_hf4">
                      
                      <option value="1">01h00</option>
                      <option value="2">02h00</option>
                      <option value="3">03h00</option>
                      <option value="4">04h00</option>
                      <option value="5">05h00</option>
                      <option value="6">06h00</option>
                      <option value="7">07h00</option>
                      <option value="8">08h00</option>
                      <option value="9">09h00</option>
                      <option value="10">10h00</option>
                      <option value="11">11h00</option>
                      <option value="12">12h00</option>
                      <option value="13">13h00</option>
                      <option value="14">14h00</option>
                      <option value="15">15h00</option>
                      <option value="16">16h00</option>
                      <option value="17">17h00</option>
                      <option value="18">18h00</option>
                      <option value="19">19h00</option>
                      <option value="20">20h00</option>
                      <option value="21">21h00</option>
                      <option value="22">22h00</option>
                      <option value="23">23h00</option>
                      <option value="24">24h00</option>
                    </select>
                                      </td>
                </tr>
                <tr>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>Dia Semana:</strong></font>
                  </td>
                  <td>
                    <select size="1" name="cb_dia5">
                      <option value="Lunes">Lunes</option>
                      <option value="Martes">Martes</option>
                      <option value="Miercoles">Miercoles</option>
                      <option value="Jueves">Jueves</option>
                      <option value="Viernes">Viernes</option>
                      <option value="Sabado">Sabado</option>
                      <option value="Domingo">Domingo</option>
                    </select>
                  </td>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>Hora Inicio:</strong></font>
                  </td>
                  <td>
                    <select size="1" name="cb_hi5">
                      
                      <option value="1">01h00</option>
                      <option value="2">02h00</option>
                      <option value="3">03h00</option>
                      <option value="4">04h00</option>
                      <option value="5">05h00</option>
                      <option value="6">06h00</option>
                      <option value="7">07h00</option>
                      <option value="8">08h00</option>
                      <option value="9">09h00</option>
                      <option value="10">10h00</option>
                      <option value="11">11h00</option>
                      <option value="12">12h00</option>
                      <option value="13">13h00</option>
                      <option value="14">14h00</option>
                      <option value="15">15h00</option>
                      <option value="16">16h00</option>
                      <option value="17">17h00</option>
                      <option value="18">18h00</option>
                      <option value="19">19h00</option>
                      <option value="20">20h00</option>
                      <option value="21">21h00</option>
                      <option value="22">22h00</option>
                      <option value="23">23h00</option>
                      <option value="24">24h00</option>
                    </select>
                                      </td>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>Hora Fin:</strong></font>
                  </td>
                  <td>
                    <select size="1" name="cb_hf5">
                      
                      <option value="1">01h00</option>
                      <option value="2">02h00</option>
                      <option value="3">03h00</option>
                      <option value="4">04h00</option>
                      <option value="5">05h00</option>
                      <option value="6">06h00</option>
                      <option value="7">07h00</option>
                      <option value="8">08h00</option>
                      <option value="9">09h00</option>
                      <option value="10">10h00</option>
                      <option value="11">11h00</option>
                      <option value="12">12h00</option>
                      <option value="13">13h00</option>
                      <option value="14">14h00</option>
                      <option value="15">15h00</option>
                      <option value="16">16h00</option>
                      <option value="17">17h00</option>
                      <option value="18">18h00</option>
                      <option value="19">19h00</option>
                      <option value="20">20h00</option>
                      <option value="21">21h00</option>
                      <option value="22">22h00</option>
                      <option value="23">23h00</option>
                      <option value="24">24h00</option>
                    </select>
                                      </td>
                </tr>
                <tr>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>Dia Semana:</strong></font>
                  </td>
                  <td>
                    <select size="1" name="cb_dia6">
                      <option value="Lunes">Lunes</option>
                      <option value="Martes">Martes</option>
                      <option value="Miercoles">Miercoles</option>
                      <option value="Jueves">Jueves</option>
                      <option value="Viernes">Viernes</option>
                      <option value="Sabado">Sabado</option>
                      <option value="Domingo">Domingo</option>
                    </select>
                  </td>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>Hora Inicio:</strong></font>
                  </td>
                  <td>
                    <select size="1" name="cb_hi6">
                      
                      <option value="1">01h00</option>
                      <option value="2">02h00</option>
                      <option value="3">03h00</option>
                      <option value="4">04h00</option>
                      <option value="5">05h00</option>
                      <option value="6">06h00</option>
                      <option value="7">07h00</option>
                      <option value="8">08h00</option>
                      <option value="9">09h00</option>
                      <option value="10">10h00</option>
                      <option value="11">11h00</option>
                      <option value="12">12h00</option>
                      <option value="13">13h00</option>
                      <option value="14">14h00</option>
                      <option value="15">15h00</option>
                      <option value="16">16h00</option>
                      <option value="17">17h00</option>
                      <option value="18">18h00</option>
                      <option value="19">19h00</option>
                      <option value="20">20h00</option>
                      <option value="21">21h00</option>
                      <option value="22">22h00</option>
                      <option value="23">23h00</option>
                      <option value="24">24h00</option>
                    </select>
                                      </td>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>Hora Fin:</strong></font>
                  </td>
                  <td>
                    <select size="1" name="cb_hf6">
                    
                      <option value="1">01h00</option>
                      <option value="2">02h00</option>
                      <option value="3">03h00</option>
                      <option value="4">04h00</option>
                      <option value="5">05h00</option>
                      <option value="6">06h00</option>
                      <option value="7">07h00</option>
                      <option value="8">08h00</option>
                      <option value="9">09h00</option>
                      <option value="10">10h00</option>
                      <option value="11">11h00</option>
                      <option value="12">12h00</option>
                      <option value="13">13h00</option>
                      <option value="14">14h00</option>
                      <option value="15">15h00</option>
                      <option value="16">16h00</option>
                      <option value="17">17h00</option>
                      <option value="18">18h00</option>
                      <option value="19">19h00</option>
                      <option value="20">20h00</option>
                      <option value="21">21h00</option>
                      <option value="22">22h00</option>
                      <option value="23">23h00</option>
                      <option value="24">24h00</option>
                    </select>
                                      </td>
                </tr>
                <tr>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>Dia Semana:</strong></font>
                  </td>
                  <td>
                    <select size="1" name="cb_dia7">
                      <option value="Lunes">Lunes</option>
                      <option value="Martes">Martes</option>
                      <option value="Miercoles">Miercoles</option>
                      <option value="Jueves">Jueves</option>
                      <option value="Viernes">Viernes</option>
                      <option value="Sabado">Sabado</option>
                      <option value="Domingo">Domingo</option>
                    </select>
                  </td>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>Hora Inicio:</strong></font>
                  </td>
                  <td>
                    <select size="1" name="cb_hi7">
                      
                      <option value="1">01h00</option>
                      <option value="2">02h00</option>
                      <option value="3">03h00</option>
                      <option value="4">04h00</option>
                      <option value="5">05h00</option>
                      <option value="6">06h00</option>
                      <option value="7">07h00</option>
                      <option value="8">08h00</option>
                      <option value="9">09h00</option>
                      <option value="10">10h00</option>
                      <option value="11">11h00</option>
                      <option value="12">12h00</option>
                      <option value="13">13h00</option>
                      <option value="14">14h00</option>
                      <option value="15">15h00</option>
                      <option value="16">16h00</option>
                      <option value="17">17h00</option>
                      <option value="18">18h00</option>
                      <option value="19">19h00</option>
                      <option value="20">20h00</option>
                      <option value="21">21h00</option>
                      <option value="22">22h00</option>
                      <option value="23">23h00</option>
                      <option value="24">24h00</option>
                    </select>
                                      </td>
                  <td>
                    <font color="#000033" size="2" face="Tahoma"><strong>Hora Fin:</strong></font>
                  </td>
                  <td>
                    <select size="1" name="cb_hf7">
                      
                      <option value="1">01h00</option>
                      <option value="2">02h00</option>
                      <option value="3">03h00</option>
                      <option value="4">04h00</option>
                      <option value="5">05h00</option>
                      <option value="6">06h00</option>
                      <option value="7">07h00</option>
                      <option value="8">08h00</option>
                      <option value="9">09h00</option>
                      <option value="10">10h00</option>
                      <option value="11">11h00</option>
                      <option value="12">12h00</option>
                      <option value="13">13h00</option>
                      <option value="14">14h00</option>
                      <option value="15">15h00</option>
                      <option value="16">16h00</option>
                      <option value="17">17h00</option>
                      <option value="18">18h00</option>
                      <option value="19">19h00</option>
                      <option value="20">20h00</option>
                      <option value="21">21h00</option>
                      <option value="22">22h00</option>
                      <option value="23">23h00</option>
                      <option value="24">24h00</option>
                    </select>
                    </td>
                </tr>
              </table>
              <p>&nbsp;</p>
              <p>&nbsp;</p></td>
            <td width="1"></td>
          </tr>
          <tr> 
            <td height="16" colspan="5" valign="top"> <div align="center"><font color="#000033" size="2" face="Tahoma"> 
                <a onClick="return validarDatos(registro);" href="javascript:document.registro.submit();">Registrar</a> 
                <font color="#FFFFFF"><a href="ConsultarUsuario.jsp">Cancelar</a></font> 
                </font></div></td>
            <td width="77"></td>
            <td width="1"></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td height="12" width="2"></td>
      <td height="12" width="661"></td>
      <td height="12" width="20"></td>
    </tr>
  </table>
</body>
</form>
</html>
