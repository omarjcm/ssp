<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*" errorPage="" session="true"%>
<html>
<head>
<title>Ingreso de usuario</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<script language="javascript">
	//valida que los datos ingresados sean los correctos
	function validarDatos(form){		
		//valida que los campos estén llenos
		if (form.txt_user.value==""){ 
			alert("Ingrese el usuario");
			form.txt_user.focus();
			return false;
		}if (form.txt_pass.value==""){ 
			alert("Ingrese la contraseña");
			form.txt_pass.focus();
			return false;
		}
	}
</script>
<body leftmargin="0" topmargin="0" rightmargin="0">
  <table width="100%" height="131" border="0" cellpadding="0" cellspacing="0">
    <!--DWLayoutTable-->
    <tr>
      <td width="157" height="110" valign="top">
        <img src="Imagenes\Logo.gif" width="88" height="86" vspace="10"/>
        <font color="#FF9933" size="2" face="Times New Roman, Times, serif">&nbsp; </font>
      </td>
      <td width="513" valign="top">
        <P>&nbsp;</P>
        <P align="center">
          <img src="Imagenes/Titulo.png" width="426" height="80"/>
        </P>
      </td>
      <td width="136" valign="top">
        <img src="Imagenes\magistrales_03.jpg" width="133" height="110"/>
      </td>
    </tr>
    <tr>
      <td height="21" valign="top" width="157">
        <FONT face="Book Antiqua"><STRONG>&nbsp;</STRONG> </FONT>
      </td>
      <td valign="top" width="513">
        <FONT face="Book Antiqua">&nbsp;</FONT> 
      </td>
      <td valign="top" width="136">
        <div align="left">
          <font color="#FF9933" size="2" face="Book Antiqua">
            <script languaje="JavaScript">
          var mydate=new Date()
          var year=mydate.getYear()
          if (year < 1000)
          year+=1900
          var day=mydate.getDay()
          var month=mydate.getMonth()
          var daym=mydate.getDate()
          if (daym<10)
          daym="0"+daym
          var dayarray=new Array("Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado")
          var montharray=new Array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre")
          document.write("<small><font color=#000000 font-family: 'Verdana', Arial, Helvetica, sans-serif; font-size: small; text-decoration: underline;>"+dayarray[day]+" "+daym+" de "+montharray[month]+" del "+year+"</font></small>")
        </script>
          </font>
        </div>
      </td>
    </tr>
  </table>
  <table width="711" border="0" cellpadding="0" cellspacing="0"/>
  <table cellspacing="2" cellpadding="3" border="0" width="90%">
    <tr>
      <td>
        <table width="151" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="151" height="29" align="center" valign="top">
              <EM><FONT size="2" color="#3333ff" face="Arial"><STRONG style="color:rgb(0,0,0); text-align:center; font-size:large;">SISTFARM</STRONG> </FONT></EM>
            </td>
          </tr>
          <tr>
            <td width="151" height="81" align="center" valign="top">
              <img src="Imagenes/vitrinas.jpg" width="178" height="151"/>
            </td>
          </tr>
          <tr>
            <td width="151" height="81" align="center" valign="top">
              <img src="Imagenes/evitam.jpg" width="170" height="141"/>
            </td>
          </tr>
          <tr>
            <td width="151" height="81" align="center" valign="top">
              <img src="Imagenes/atencion3peq.jpg" width="177" height="147"/>
            </td>
          </tr>
        </table>
      </td>
      <td>
        <table width="562" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
          <tr>
            <td width="117" height="29">&nbsp;</td>
            <td width="316">&nbsp;</td>
            <td width="129">&nbsp;</td>
          </tr>
          <tr>
            <td height="246" width="117">&nbsp;</td>
            <td valign="top" width="316">
              <table width="99%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="308" height="17"/>
                </tr>
                <tr>
                  <td height="20" valign="top" bordercolor="#000000" bgcolor="#15BAF0">
                    <div align="center">
                      <font face="Tahoma" size="4"><strong>INGRESO</strong></font>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td height="87" valign="top">
                    <form name="ingreso" method="post" action="ValidarIngresoUsuario.jsp">
                      <p align="center">&nbsp;</p>
                      <p align="center">
                        <font color="#000033" face="Tahoma"><strong><font size="2">Usuario</font></strong></font> 
                        <strong><font size="2" color="#000033">
                            <input name="txt_user" type="text" id="txt_user5" maxlength="30"/>
                          </font>
                        </strong>
                      </p>
                      <p align="center">
                        <strong><font size="2"><font color="#000033" face="Tahoma">Clave <font color="#FFFFFF">_</font> </font></font></strong>
                        <input name="txt_pass" type="password" id="txt_pass" maxlength="30"/>
                      </p>
                      <p align="center">
                        <font face="Tahoma" size="2"><a onClick="return validarDatos(ingreso);" href="javascript:document.ingreso.submit();">Ingresar</a></font>
                      </p>
                    </form>
                  </td>
                </tr>
                <tr/>
              </table>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  <P>&nbsp;</P>
  &nbsp;
</body>
</html>
