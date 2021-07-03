<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="../estilos/mi_estilo_01.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_nbGroup(event, grpName) { //v6.0
  var i,img,nbArr,args=MM_nbGroup.arguments;
  if (event == "init" && args.length > 2) {
    if ((img = MM_findObj(args[2])) != null && !img.MM_init) {
      img.MM_init = true; img.MM_up = args[3]; img.MM_dn = img.src;
      if ((nbArr = document[grpName]) == null) nbArr = document[grpName] = new Array();
      nbArr[nbArr.length] = img;
      for (i=4; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
        if (!img.MM_up) img.MM_up = img.src;
        img.src = img.MM_dn = args[i+1];
        nbArr[nbArr.length] = img;
    } }
  } else if (event == "over") {
    document.MM_nbOver = nbArr = new Array();
    for (i=1; i < args.length-1; i+=3) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = (img.MM_dn && args[i+2]) ? args[i+2] : ((args[i+1])? args[i+1] : img.MM_up);
      nbArr[nbArr.length] = img;
    }
  } else if (event == "out" ) {
    for (i=0; i < document.MM_nbOver.length; i++) {
      img = document.MM_nbOver[i]; img.src = (img.MM_dn) ? img.MM_dn : img.MM_up; }
  } else if (event == "down") {
    nbArr = document[grpName];
    if (nbArr)
      for (i=0; i < nbArr.length; i++) { img=nbArr[i]; img.src = img.MM_up; img.MM_dn = 0; }
    document[grpName] = nbArr = new Array();
    for (i=2; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = img.MM_dn = (args[i+1])? args[i+1] : img.MM_up;
      nbArr[nbArr.length] = img;
  } }
}
//-->
</script>
</head>
<body onload="MM_preloadImages('../imagenes/Menu_a.3.gif','../imagenes/Menu_a.2.gif','../imagenes/Menu_b.3.gif','../imagenes/Menu_b.2.gif','../imagenes/Menu_c.3.gif','../imagenes/Menu_c.2.gif','../imagenes/Menu_d.3.gif','../imagenes/Menu_d.2.gif','../imagenes/Menu_e.3.gif','../imagenes/Menu_e.2.gif')"><div id="frame">
<table width="703" height="553" border="0" align="center" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td height="155"><div align="center"><img src="../imagenes/Logo.gif" alt="LogoPrincipal" width="153" height="153" /></div></td>
    <td width="410">&nbsp;</td>
    <td width="164"><p align="right">Usuario:<br />
      &lt;nombre&gt;</p>
        <p align="right">Salir</p></td>
  </tr>
  <tr>
    <td width="142" height="371" valign="top"><table width="134" border="0" align="left">
      <!--DWLayoutTable-->
      <tr>
        <td width="128" height="21"><div align="right">Ingresar</div></td>
      </tr>
      <tr>
        <td height="21"><div align="right">Consultar</div></td>
      </tr>
      <tr>
        <td height="21"><div align="right">Modificar</div></td>
      </tr>
      <tr>
        <td height="21"><div align="right">Anular</div></td>
      </tr>
    </table></td>
    <td colspan="2" valign="top"><table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td><a href="javascript:;" target="_top" onclick="MM_nbGroup('down','group1','Bautizo','../imagenes/Menu_a.3.gif',1)" onmouseover="MM_nbGroup('over','Bautizo','../imagenes/Menu_a.2.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="../imagenes/Menu_a.1.gif" alt="Bautizo" name="Bautizo" width="79" height="32" border="0" id="Bautizo" onload="" /></a></td>
        <td><a href="javascript:;" target="_top" onclick="MM_nbGroup('down','group1','PrimeraComunion','../imagenes/Menu_b.3.gif',1)" onmouseover="MM_nbGroup('over','PrimeraComunion','../imagenes/Menu_b.2.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="../imagenes/Menu_b.1.gif" alt="PrimeraComunion" name="PrimeraComunion" width="168" height="32" border="0" id="PrimeraComunion" onload="" /></a></td>
        <td><a href="javascript:;" target="_top" onclick="MM_nbGroup('down','group1','Confirmacion','../imagenes/Menu_c.3.gif',1)" onmouseover="MM_nbGroup('over','Confirmacion','../imagenes/Menu_c.2.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="../imagenes/Menu_c.1.gif" alt="Confirmacion" name="Confirmacion" width="123" height="32" border="0" id="Confirmacion" onload="" /></a></td>
        <td><a href="javascript:;" target="_top" onclick="MM_nbGroup('down','group1','Matrimonio','../imagenes/Menu_d.3.gif',1)" onmouseover="MM_nbGroup('over','Matrimonio','../imagenes/Menu_d.2.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="../imagenes/Menu_d.1.gif" alt="Matrimonio" name="Matrimonio" width="114" height="32" border="0" id="Matrimonio" onload="" /></a></td>
        <td><a href="javascript:;" target="_top" onclick="MM_nbGroup('down','group1','Usuario','../imagenes/Menu_e.3.gif',1)" onmouseover="MM_nbGroup('over','Usuario','../imagenes/Menu_e.2.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="../imagenes/Menu_e.1.gif" alt="Usuario" name="Usuario" width="90" height="32" border="0" id="Usuario" onload="" /></a></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td colspan="2"><div align="center">Desarrollado por CoDeSOFTWARE </div></td>
  </tr>
</table>
</div>
</body>
</html>
