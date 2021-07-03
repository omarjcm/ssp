<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Sistema de Servicios Parroquiales - Administraci&oacute;n</title>
<link href="../../estilos/menu.css" rel="stylesheet" type="text/css" />
<link href="../../estilos/formularios_02.css" rel="stylesheet" type="text/css" />
<link href="../../estilos/estilo.css" rel="stylesheet" type="text/css" />
<link href="../../estilos/menu_formulario.css" rel="stylesheet" type="text/css" />

<style type="text/css">
DIV.clSlide{position:absolute;  ;z-index:10; left:0; width:auto; height:auto; clip:rect(0,138,22,0); padding:3px;}
DIV.clSlideSub{position:absolute; ;z-index:10; padding:2px; clip:rect(0,127,20,0); width:127; height:20; left:8; visibility:hidden}
DIV.clSlideSub2{position:absolute; ;z-index:10; padding:2px; clip:rect(0,118,20,0); width:118; height:20; left:8; visibility:hidden}
#divSlideCont{position:absolute; z-index:10; left:0; top:100; height:600; width:170; visibility:hidden}
A.clSlideLinks{font-family:Verdana, Helvetica, Helv; font-size:11px; font-weight:bold; text-decoration:none; color:white}
A.clSlideSubLinks{font-family:Verdana, Helvetica, Helv; font-size:10px; text-decoration:none; color:Navy}
A.clSlideSub2Links{font-family:Verdana, Helvetica, Helv; font-size:9px; text-decoration:none; color:Navy}
body {
	background-color: #CCCCCC;
}
</style>

<script language="JavaScript" type="text/javascript" src="../../scripts/formulario.js"></script>
<script language="JavaScript" type="text/javascript">
/**********************************************************************************   
SlideMenu 
*   Copyright (C) 2001 Thomas Brattli
*   This script was released at DHTMLCentral.com
*********************************************************************************/
function lib_bwcheck(){ //Browsercheck (needed)
	this.ver=navigator.appVersion
	this.agent=navigator.userAgent
	this.dom=document.getElementById?1:0
	this.opera5=(navigator.userAgent.indexOf("Opera")>-1 && document.getElementById)?1:0
	this.ie5=(this.ver.indexOf("MSIE 5")>-1 && this.dom && !this.opera5)?1:0; 
	this.ie6=(this.ver.indexOf("MSIE 6")>-1 && this.dom && !this.opera5)?1:0;
	this.ie4=(document.all && !this.dom && !this.opera5)?1:0;
	this.ie=this.ie4||this.ie5||this.ie6
	this.mac=this.agent.indexOf("Mac")>-1
	this.ns6=(this.dom && parseInt(this.ver) >= 5) ?1:0; 
	this.ns4=(document.layers && !this.dom)?1:0;
	this.bw=(this.ie6 || this.ie5 || this.ie4 || this.ns4 || this.ns6 || this.opera5)
	return this
}
var bw=lib_bwcheck()
//Opera didn't seem to like the padding in the layers, it messes up the background-images, so here's a version without it.
if(bw.opera5) document.write("<style>DIV.clSlide{padding:0px; background-image:url(' ')}\nDIV.clSlideSub{padding:0px; background-image:url(' ')}\nDIV.clSlideSub2{padding:0px; background-image:url(' ')}</style>")

/************************************************************************************
Making cross-browser objects
************************************************************************************/
function makeMenuObj(obj,nest){
	nest=(!nest) ? "":'document.'+nest+'.'										
   	this.css=bw.dom? document.getElementById(obj).style:bw.ie4?document.all[obj].style:bw.ns4?eval(nest+"document.layers." +obj):0;		
	this.el=bw.dom?document.getElementById(obj):bw.ie4?document.all[obj]:bw.ns4?eval(nest+'document.'+obj):0;	
	this.ref=bw.dom || bw.ie4? document:bw.ns4?eval(nest+"document.layers." +obj+".document"):0;		
	this.x=(bw.ns4 || bw.ns5)? this.css.left:this.css.offsetLeft;
	this.y=(bw.ns4 || bw.ns5)? this.css.top:this.css.offsetTop;		
	this.hideIt=b_hideIt; this.showIt=b_showIt; this.movey=b_movey
	this.moveIt=b_moveIt; this.moveBy=b_moveBy; this.status=0; 
	this.bgImg=b_bgImg;	this.obj = obj + "Object"; eval(this.obj + "=this"); 
	this.clipTo=b_clipTo;
	return this
}
function b_showIt(){this.css.visibility="visible"; this.status=1}
function b_hideIt(){this.css.visibility="hidden"; this.status=0}
function b_movey(y){this.y=y; this.css.top=this.y}	
function b_moveIt(x,y){this.x=x; this.y=y; this.css.left=this.x;this.css.top=this.y}
function b_moveBy(x,y){this.x=this.x+x; this.y=this.y+y; this.css.left=this.x;this.css.top=this.y}
function b_bgImg(img){if(bw.ie||bw.dom)this.css.backgroundImage="url("+img+")"
else this.css.background.src=img
}
function b_clipTo(t,r,b,l,w){if(bw.ns4){this.css.clip.top=t;this.css.clip.right=r
this.css.clip.bottom=b;this.css.clip.left=l
}else{this.css.clip="rect("+t+","+r+","+b+","+l+")"; if(w){this.css.width=r; this.css.height=b}}}
/********************************************************************************
Initiating page, making objects..
********************************************************************************/
function SlideMenuInit(){
	oSlideMenu=new makeMenuObj('divSlideCont')
	oSlideMenu.moveIt(menux,menuy)
	oSlide=new Array()
	for(i=0;i<menus.length;i++){
		oSlide[i]=new makeMenuObj('divSlide'+i,'divSlideCont')
		oSlide[i].subs=menus[i].subs
		oSlide[i].sub=new Array()
		oSlide[i].moveIt(0,mainheight*i)
		oSlide[i].starty=oSlide[i].y
    if(bw.opera) oSlide[i].css.paddingLeft="10px"
		if(!menus[i].seperator) oSlide[i].bgImg(level0_regular)
		for(j=0;j<oSlide[i].subs;j++){
			oSlide[i].sub[j]=new makeMenuObj('divSlideSub'+i+"_"+j,'divSlideCont')
			oSlide[i].sub[j].moveIt(10,oSlide[i].y+subheight*j+between)
			oSlide[i].sub[j].starty=oSlide[i].sub[j].y
			oSlide[i][j]=new Array()
			oSlide[i][j].subs=menus[i][j].subs
			oSlide[i][j].sub=new Array()
			img=level1_round
			if(oSlide[i][j].subs!=0){
				if(j!=oSlide[i].subs-1) img=level1_sub
				else img=level1_sub_round
				oSlide[i].sub[j].css.color="white"
			}else{
				if(j!=oSlide[i].subs-1)img=level1_regular
			}
			oSlide[i].sub[j].origimg=img
			oSlide[i].sub[j].bgImg(img)
			for(a=0;a<oSlide[i][j].subs;a++){
				oSlide[i][j].sub[a]=new makeMenuObj('divSlideSub'+i+"_"+j+"_"+a,'divSlideCont')
				oSlide[i][j].sub[a].moveIt(20,oSlide[i].sub[j].y+subheight*a+between-2)
				oSlide[i][j].sub[a].starty=oSlide[i][j].sub[a].y			
				oSlide[i][j][a]=new Array()
				oSlide[i][j][a].subs=menus[i][j][a].subs
				oSlide[i][j][a].sub=new Array()
				if(a!=oSlide[i][j].subs-1) img=level2_regular
				else img=level2_round
				oSlide[i][j].sub[a].origimg=img
				oSlide[i][j].sub[a].bgImg(img)
			}
		}
	}
	oSlideMenu.showIt()
}
/********************************************************************************
Variables
********************************************************************************/
var active=-1;var going;var isthere; var sactive=-1; var sisthere=-1; var s2active=-1; var s2isthere=-1
/********************************************************************************
Switch menu function.
********************************************************************************/
function swmenu(num,snum,s2num){
	if(snum!=-1){
		if(oSlide[num][snum].subs==0) return
	}
	if(s2num!=-1){
		if(oSlide[num][snum][s2num].subs==0) return
	}
	if((num!=active || snum!=sactive || s2num!=s2active) && !going){going=true;isthere=0;sisthere=0;moveUp(num,snum,s2num)}
}
/********************************************************************************
Moving the menus upward to their original position.
********************************************************************************/
function moveUp(num,snum){
	if(snum==-1){
		for(i=0;i<oSlide.length;i++){
			if(oSlide[i].y>oSlide[i].starty+pxspeed && active!=i) oSlide[i].moveBy(0,-pxspeed)
			else{if(active!=i) oSlide[i].moveIt(oSlide[i].x,oSlide[i].starty); isthere=i}
		}
		
		if(isthere<oSlide.length-1) setTimeout("moveUp("+num+","+snum+")",timspeed)
		else swmenu2(num,snum)
	}else{
		if(num==oSlide.length-1) isthere=num
	
		if(sactive!=-1){ //Is out!
			//Slide subs
			j=0
			for(i=sactive+1;i<oSlide[num].sub.length;i++){
				j++
				if(oSlide[num].sub[i].y>oSlide[num].sub[i].starty+pxspeed) oSlide[num].sub[i].moveBy(0,-pxspeed)
				else{oSlide[num].sub[i].moveIt(oSlide[num].sub[i].x,oSlide[num].sub[i].starty); sisthere=i}
			}
			//Slide main
			for(i=num+1;i<oSlide.length;i++){
				if(oSlide[i].y>oSlide[i].starty + oSlide[num].sub[sactive].y +subheight*j )  oSlide[i].moveBy(0,-pxspeed)
				else{oSlide[i].moveIt(oSlide[i].x,oSlide[i].starty + oSlide[num].sub[sactive].y +subheight*j ); isthere=i}
			}
		}else{ //Slide to the one clicked
			for(i=num+1;i<oSlide.length;i++){
				if(oSlide[i].y>oSlide[i].starty + snum*between+between)  oSlide[i].moveBy(0,-pxspeed)
				else{oSlide[i].moveIt(oSlide[i].x,oSlide[i].starty + snum*between+between); isthere=i}
			}
		}
		if(isthere<oSlide.length-1 || (sactive!=-1 && sisthere<oSlide[num].sub.length-1 && sactive!=oSlide[num].sub.length-1)) setTimeout("moveUp("+num+","+snum+")",timspeed)
		else swmenu2(num,snum)
	}
}
/********************************************************************************
Switch menu 2, stuff that happens before the menus are moved down again.
********************************************************************************/
function swmenu2(num,snum){
	isthere=0;
	sisthere=0;
	if(active>-1 && snum==-1){
		//Hiding submenus
		for(j=0;j<oSlide[active].subs;j++){oSlide[active].sub[j].hideIt()}
		oSlide[active].bgImg(level0_regular)
		oSlide[active].moveIt(0,oSlide[active].starty)
	}
	if(sactive>-1){
		//Hiding submenus
		for(j=0;j<oSlide[active][sactive].sub.length;j++){oSlide[active][sactive].sub[j].hideIt()}
		oSlide[active].sub[sactive].bgImg(oSlide[active].sub[sactive].origimg)
		oSlide[active].sub[sactive].moveIt(10,oSlide[active].sub[sactive].starty)
		//Move back to place
		for(i=sactive+1;i<oSlide[active].sub.length;i++){
			oSlide[active].sub[i].moveIt(oSlide[active].sub[i].x,oSlide[active].sub[i].starty)
		}
	}
	active=num
	//Showing submenus
	if(snum>-1){
		sactive=snum
		for(j=0;j<oSlide[num][snum].sub.length;j++){oSlide[num][snum].sub[j].showIt()}
		oSlide[num].sub[snum].moveBy(10,3)
		oSlide[num].sub[snum].bgImg(level1_round2)
	}else{
		sactive=-1
		for(j=0;j<oSlide[active].subs;j++){oSlide[active].sub[j].showIt()}
		oSlide[num].moveBy(10,3)
		oSlide[num].bgImg(level0_round)
	}
	if(num!=oSlide.length-1) moveDown(num,snum)
	else{
		isthere=num
		moveDown(num,snum)
	}
}
/********************************************************************************
Moving the menus down
********************************************************************************/
function moveDown(num,snum){
	//if(num==oSlide.length-1) isthere=num
	for(i=num+1;i<oSlide.length;i++){
		if(snum==-1){
			if(oSlide[i].y<(oSlide[num].subs-1)*subheight+oSlide[i].starty+between-pxspeed) oSlide[i].moveBy(0,pxspeed)
			else{oSlide[i].moveIt(oSlide[i].x,(oSlide[num].subs-1)*subheight+oSlide[i].starty+between); isthere=i}
		}else{
			if(oSlide[i].y<(oSlide[num].subs-1)*subheight+oSlide[i].starty+between-pxspeed + (oSlide[num][snum].subs-1)*subheight+between)  oSlide[i].moveBy(0,pxspeed)
			else{oSlide[i].moveIt(oSlide[i].x,(oSlide[num].subs-1)*subheight+oSlide[i].starty+between  + (oSlide[num][snum].subs-1)*subheight+between); isthere=i}
		}
	}
	if(snum!=-1){
		for(i=snum+1;i<oSlide[num].sub.length;i++){		
			if(oSlide[num].sub[i].y<(oSlide[num][snum].subs-1)*subheight+oSlide[num].sub[i].starty+between-pxspeed) oSlide[num].sub[i].moveBy(0,pxspeed)
			else{oSlide[num].sub[i].moveIt(oSlide[num].sub[i].x,(oSlide[num][snum].subs-1)*subheight+oSlide[num].sub[i].starty+between); sisthere=i}
		}
	}
	if(snum==-1){
		if(isthere<oSlide.length-1) setTimeout("moveDown("+num+","+snum+")",timspeed)
		else going=false
	}else{
		if(isthere<oSlide.length-1 || (sisthere<oSlide[num].sub.length-1 && snum!=oSlide[num].sub.length-1)) setTimeout("moveDown("+num+","+snum+")",timspeed)
		else going=false
	}
}
var test=0
/********************************************************************************
Functions to write out the layers...
********************************************************************************/
menus=new Array(); var a=0; var b=0; var c=0; var d=0
function makeMenu(type,text,lnk,target,end){
	str=""; tg="";
  if(target) tg='target="'+target+'"'
  if(!lnk) lnk="#"
  self.status=lnk
	if(a==0) str='<div id="divSlideCont">\n'
	if(type=="top"){
		menus[a]=new Array();
		if(text=="seperator"){
			str+='\t<div id="divSlide'+a+'" class="clSlide"></div>\n'
			menus[a].seperator=1
		}else{
      str+='\t<div id="divSlide'+a+'" class="clSlide"><a href="'+lnk+'" '+tg+' onclick="swmenu('+a+',-1,-1); if(bw.ie || bw.ns6) this.blur(); '
      if(lnk=="#") str+='return false'
      str+='" class="clSlideLinks"> '+text+'</a><br></div>\n'
		}
    menus[a].subs=0; a++; b=0
	}else if(type=="sub"){
		str+='\t\t<div id="divSlideSub'+(a-1)+'_'+(b)+'" class="clSlideSub"><a '+tg+' onclick="swmenu('+(a-1)+','+b+',-1); if(bw.ie || bw.ns6) this.blur(); '
    if(lnk=="#") str+='return false'
    str+='" href="'+lnk+'" class="clSlideSubLinks">  '+text+'</a><br></div>\n'
		b++; menus[a-1].subs=b; menus[a-1][b-1]=new Array(); c=0; menus[a-1][b-1].subs=0
	}else if(type=="sub2"){
		str+='\t\t<div id="divSlideSub'+(a-1)+'_'+(b-1)+'_'+c+'" class="clSlideSub2"><a '+tg+' href="'+lnk+'" class="clSlideSub2Links">  '+text+'</a><br></div>\n'
		c++; menus[a-1][b-1].subs=c; menus[a-1][b-1][c-1]=new Array(); d=0; menus[a-1][b-1][c-1].subs=0
	}
	if(end) str+="</div>"
	document.write(str)
}
function preLoadBackgrounds(){
  for(i=0;i<arguments.length;i++){
    this[i]=new Image()
    this[i].src=arguments[i]
  }
  return this
}
</script>
</head>

<body>
<table width="800" border="0" align="center">
  <!--DWLayoutTable-->
  <tr>
    <td width="204" rowspan="2"><div align="right"><img src="../../imagenes/Logo.gif" alt="" name="Logo_Prinicipal" width="153" height="153" id="Logo_Prinicipal" /></div></td>
    <td width="402" height="132">&nbsp;</td>
    <td width="180" rowspan="2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td height="21"><a href="../../menu/index.jsp">Inicio</a> &gt; Ingresar Acta de Bautizo </td>
  </tr>
  <tr>
    <td height="340" rowspan="3" valign="top" on>
<script language="javascript" type="text/javascript">
//Variables to set
between=28 //The pixel between the menus and the submenus
mainheight=45 //The height of the mainmenus
subheight=22 //The height of the submenus
pxspeed=13 //The pixel speed of the animation
timspeed=15 //The timer speed of the animation
menuy=80 //The top placement of the menu.
menux=0 //The left placement of the menu 
//Images - Play with these
level0_regular="../../imagenes/menus/level0_regular.gif"
level0_round="../../imagenes/menus/level0_round.gif"
level1_regular="../../imagenes/menus/level1_regular.gif"
level1_round="../../imagenes/menus/level1_round.gif"
level1_sub="../../imagenes/menus/level1_sub.gif"
level1_sub_round="../../imagenes/menus/level1_sub_round.gif"
level1_round2="../../imagenes/menus/level1_round2.gif"
level2_regular="../../imagenes/menus/level2_regular.gif"
level2_round="../../imagenes/menus/level2_round.gif"

//Leave this line
preLoadBackgrounds(level0_regular,level0_round,level1_regular,level1_round,level1_sub,level1_sub_round,level1_round2,level2_regular,level2_round)


//There are 3 different types of menus you can make
//top = Main menus
//sub = Sub menus
//sub2 = SubSub menus

//You control the look of the menus in the stylesheet

//makeMenu('TYPE','TEXT','LINK','TARGET', 'END (THE LAST MENU)')

//Menu 0
makeMenu('top','Inventario')
	makeMenu('sub','Ingresar','Inventario/ingresoInventario.php', 'mainFrame')
	makeMenu('sub','Modificar','Inventario/seleccionaInventario.php', 'mainFrame')
	makeMenu('sub','Eliminar','Inventario/mostrarAsistentes.php','mainFrame')

//Starting the menu
onload=SlideMenuInit;

</script>

	</td>
    <td rowspan="2" align="center" valign="top"><table width="402" border="0" align="center">
        <!--DWLayoutTable-->
        <tr>
          <td width="275" height="32" valign="top">
		  <form id="bautismo" name="bautismo" method="post" action="bautismo.jsp">
              <div id="reg_eclesiastico">
                <fieldset>
                <legend>Registro Eclesi&aacute;stico</legend>
                <p>
                  <label for="num_sacramento">No: </label>
                  <input type="text" name="num_sacramento" id="num_sacramento" class="txt"/>
                </p>
                <p>
                  <label for="anio_libro">A&ntilde;o: </label>
                  <input type="text" name="anio_libro" id="anio_libro" class="txt"/>
                </p>
                <p>
                  <label for="num_libro">Libro: </label>
                  <input type="text" name="num_libro" id="num_libro" class="txt"/>
                </p>
                <p>
                  <label for="folio_libro">Folio: </label>
                  <input type="text" name="folio_libro" id="folio_libro" class="txt"/>
                </p>
                </fieldset>
              </div>
            <div id="parroquia">
                <fieldset>
                <legend>Datos de la Parroquia</legend>
                <p>
                  <label for="id_ministro">Ministro: </label>
                  <select name="id_ministro" id="id_ministro">
                  </select>
                </p>
                <p>
                  <label for="lugar_bautizo">Lugar de Bautizo: </label>
                  <input name="lugar_bautizo" type="text" class="txt" id="lugar_bautizo" value="Parroquia Cristo Rey"/>
                </p>
                <p>
                  <label for="fecha_bautizo">Fecha de Bautizo: </label>
                  <input type="text" name="fecha_bautizo" id="fecha_bautizo" size="15"/>
                </p>
                </fieldset>
            </div>
            <div id="solicitante">
                <fieldset>
                <legend>Datos del Bautizado</legend>
                <p>
                  <label for="bautizado_nombre">Nombre(s): </label>
                  <input type="text" name="bautizado_nombre" id="bautizado_nombre" class="txt"/>
                </p>
                <p>
                  <label for="bautizado_apellido">Apellido(s): </label>
                  <input type="text" name="bautizado_apellido" id="bautizado_apellido" class="txt"/>
                </p>
                <p>
                  <label for="id_sexo">Sexo: </label>
                  <select name="id_sexo" id="id_sexo">
                    <option value="0">Femenino</option>
                    <option value="1">Masculino</option>
                  </select>
                </p>
                <p>
                  <label for="lugar_nacimiento">Lugar de Nacimiento: </label>
                  <input type="text" name="lugar_nacimiento" id="lugar_nacimiento" class="txt"/>
                </p>
                <p>
                  <label for="fecha_bautizo">Fecha de Bautizo: </label>
                  <input type="text" name="fecha_bautizo" id="fecha_bautizo" size="15"/>
                </p>
                </fieldset>
            </div>
            <div id="padres">
                <fieldset>
                <legend>Datos de los Padres</legend>
                <p>
                  <label for="padre_nombre">Nombre(s) del padre: </label>
                  <input type="text" name="padre_nombre" id="padre_nombre" class="txt"/>
                </p>
                <p>
                  <label for="padre_apellido">Apellido(s) del padre: </label>
                  <input type="text" name="bautizado_apellido" id="bautizado_apellido" class="txt"/>
                </p>
                <p>
                  <label for="madre_nombre">Nombre(s) de la madre: </label>
                  <input type="text" name="madre_nombre" id="madre_nombre" class="txt"/>
                </p>
                <p>
                  <label for="madre_apellido">Apellido(s) de la madre: </label>
                  <input type="text" name="madre_apellido" id="madre_apellido" class="txt"/>
                </p>
                </fieldset>
            </div>
            <div id="padrinos">
                <fieldset>
                <legend>Datos de los Padrinos</legend>
                <p>
                  <label for="padrino_nombre">Nombre(s) del padrino: </label>
                  <input type="text" name="padrino_nombre" id="padrino_nombre" class="txt"/>
                </p>
                <p>
                  <label for="padrino_apellido">Apellido(s) del padrino: </label>
                  <input type="text" name="padrino_apellido" id="padrino_apellido" class="txt"/>
                </p>
                <p>
                  <label for="madrina_nombre">Nombre(s) de la madrina: </label>
                  <input type="text" name="madrina_nombre" id="madrina_nombre" class="txt"/>
                </p>
                <p>
                  <label for="madrina_apellido">Apellido(s) de la madrina: </label>
                  <input type="text" name="madrina_apellido" id="madrina_apellido" class="txt"/>
                </p>
                </fieldset>
            </div>
            <div id="reg_civil">
                <fieldset>
                <legend>Datos del Registro Civil</legend>
                <p>
                  <label for="acta">Acta: </label>
                  <input type="text" name="acta" id="acta" class="txt"/>
                </p>
                <p>
                  <label for="anio">A&ntilde;o: </label>
                  <input type="text" name="anio" id="anio" class="txt"/>
                </p>
                <p>
                  <label for="tomo">Tomo: </label>
                  <input type="text" name="tomo" id="tomo" class="txt"/>
                </p>
                <p>
                  <label for="folio">Folio: </label>
                  <input type="text" name="folio" id="folio" class="txt"/>
                </p>
                <p>
                  <label for="lugar">Lugar: </label>
                  <input name="lugar" type="text" class="txt" id="lugar" value="Guayaquil - Guayas"/>
                </p>
                </fieldset>
            </div>
            <div id="observacion">
                <fieldset>
                <legend>Observaci&oacute;n</legend>
                <p>
                  <textarea name="acta" cols="40" rows="4" class="txt" id="acta"></textarea>
                </p>
                </fieldset>
            </div>
          </form></td>
        </tr>
        </table></td>
    <td valign="top">
		    <div align="left">
		      <ul id="navmenu">
		        <li><a href="#">Ingresar Ministro</a></li>
			  </ul>
			</div>			</td>
  </tr>
  <tr>
    <td height="125" valign="top">
	  <a id="titulo" href="#" onclick="mostrarRegistroEclesiastico()">Registro Eclesi&aacute;stico</a><br />
      <a id="titulo" href="#" onclick="mostrarParroquia()">Datos de la Parroquia</a><br />
      <a id="titulo" href="#" onclick="mostrarSolicitante()">Datos del Bautizado</a><br />
      <a id="titulo" href="#" onclick="mostrarPadres()">Datos de los Padres</a><br />
      <a id="titulo" href="#" onclick="mostrarPadrinos()">Datos de los Padrinos</a><br />
      <a id="titulo" href="#" onclick="mostrarRegistroCivil()">Datos del Registro Civil</a><br />
      <a id="titulo" href="#" onclick="mostrarObservacion()">Observaci&oacute;n</a></td>
  </tr>
  <tr>
    <td height="14" align="center" valign="top">Aceptar</td>
    <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
  </tr>
  <tr>
    <td height="15" align="center" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
  </tr>
  <tr>
    <td height="21">&nbsp;</td>
    <td><div align="center">Desarrollado por CoDeSOFTWARE </div></td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
