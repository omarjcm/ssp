/*
   Deluxe Menu Data File
   Created by Deluxe Tuner v2.4
   http://deluxe-menu.com
*/


// -- Deluxe Tuner Style Names
var tstylesNames=["Individual Style","Individual Style","Individual Style","Individual Style",];
var tXPStylesNames=["Individual Style",];
// -- End of Deluxe Tuner Style Names

//--- Common
var tlevelDX=20;
var texpanded=0;
var texpandItemClick=0;
var tcloseExpanded=1;
var tcloseExpandedXP=0;
var ttoggleMode=1;
var tnoWrap=1;
var titemTarget="_blank";
var titemCursor="pointer";
var statusString="link";
var tblankImage="../imagenes/blank.gif";
var tpathPrefix_img="";
var tpathPrefix_link="";

//--- Dimensions
var tmenuWidth="230px";
var tmenuHeight="auto";

//--- Positioning
var tabsolute=1;
var tleft="20px";
var ttop="160px";

//--- Font
var tfontStyle="normal 8pt Tahoma";
var tfontColor=["#3F3D3D","#7E7C7C"];
var tfontDecoration=["none","underline"];
var tfontColorDisabled="#ACACAC";
var tpressedFontColor="#AA0000";

//--- Appearance
var tmenuBackColor="";
var tmenuBackImage="../imagenes/blank.gif";
var tmenuBorderColor="#FFFFFF";
var tmenuBorderWidth=0;
var tmenuBorderStyle="solid";

//--- Item Appearance
var titemAlign="left";
var titemHeight=22;
var titemBackColor=["#F0F1F5","#F0F1F5"];
var titemBackImage=["../imagenes/blank.gif","../imagenes/blank.gif"];

//--- Icons & Buttons
var ticonWidth=21;
var ticonHeight=15;
var ticonAlign="left";
var texpandBtn=["../imagenes/expandbtn2.gif","../imagenes/expandbtn2.gif","../imagenes/collapsebtn2.gif"];
var texpandBtnW=9;
var texpandBtnH=9;
var texpandBtnAlign="left";

//--- Lines
var tpoints=0;
var tpointsImage="";
var tpointsVImage="";
var tpointsCImage="";

//--- Floatable Menu
var tfloatable=0;
var tfloatIterations=10;
var tfloatableX=1;
var tfloatableY=1;

//--- Movable Menu
var tmoveable=0;
var tmoveHeight=12;
var tmoveColor="transparent";
var tmoveImage="../imagenes/movepic.gif";

//--- XP-Style
var tXPStyle=1;
var tXPIterations=10;
var tXPBorderWidth=1;
var tXPBorderColor="#FFFFFF";
var tXPTitleBackColor="#AFB1C3";
var tXPTitleBackImg="../imagenes/xptitle_s.gif";
var tXPTitleLeft="../imagenes/xptitleleft_s.gif";
var tXPTitleLeftWidth=4;
var tXPIconWidth=31;
var tXPIconHeight=32;
var tXPExpandBtn=["../imagenes/xpexpand1_s.gif","../imagenes/xpexpand1_s.gif","../imagenes/xpcollapse1_s.gif","../imagenes/xpcollapse1_s.gif"];
var tXPBtnWidth=25;
var tXPBtnHeight=23;
var tXPFilter=1;

//--- Dynamic Menu
var tdynamic=0;

//--- State Saving
var tsaveState=0;
var tsavePrefix="menu1";

var tstyles = [
    ["tfontStyle=bold 8pt Tahoma","tfontColor=#FFFFFF,#E6E6E6","tfontDecoration=none,none"],
    ["tfontStyle=bold 8pt Tahoma","tfontColor=#3F3D3D,#7E7C7C","tfontDecoration=none,none"],
    ["tfontDecoration=none,none"],
    ["tfontStyle=bold 8pt Tahoma","tfontColor=#444444,#5555FF"],
];
var tXPStyles = [
    ["tXPTitleBackColor=#D9DAE2","tXPTitleBackImg=../imagenes/xptitle2_s.gif","tXPExpandBtn=../imagenes/xpexpand2_s.gif,../imagenes/xpexpand3_s.gif,../imagenes/xpcollapse2_s.gif,../imagenes/xpcollapse3_s.gif"],
];

var tmenuItems = [

    ["+Documentación","", "../imagenes/xpicon1_s.gif", "", "", "Módulo de Documentación", "", "0", "", ],
        ["|Ingresar Acta","", "../imagenes/icon1_s.gif", "../imagenes/icon1_so.gif", "", "", "", "", "", ],
            ["||de Bautizo","#", "../imagenes/iconarrs.gif", "", "", "", "_parent", "", "", ],
            ["||de Primera Comunión","#", "../imagenes/iconarrs.gif", "", "", "", "_parent", "", "", ],
            ["||de Confirmación","#", "../imagenes/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Matrimonio","#", "../imagenes/iconarrs.gif", "", "", "", "", "", "", ],
        ["|Generar Acta","", "../imagenes/icon1_s.gif", "../imagenes/icon1_so.gif", "", "", "", "", "", ],
            ["||de Bautizo","#", "../imagenes/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Primera Comunión","#", "../imagenes/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Confirmación","#", "../imagenes/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Matrimonio","#", "../imagenes/iconarrs.gif", "", "", "", "", "", "", ],
        ["|Modificar Acta","", "../imagenes/icon1_s.gif", "../imagenes/icon1_so.gif", "", "", "", "", "", ],
            ["||de Bautizo","#", "../imagenes/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Primera Comunión","#", "../imagenes/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Confirmación","#", "../imagenes/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Matrimonio","#", "../imagenes/iconarrs.gif", "", "", "", "", "", "", ],
        ["|Anular Acta","", "../imagenes/icon1_s.gif", "../imagenes/icon1_so.gif", "", "", "", "", "", ],
            ["||de Bautizo","#", "../imagenes/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Primera Comunión","#", "../imagenes/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Confirmación","#", "../imagenes/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Matrimonio","#", "../imagenes/iconarrs.gif", "", "", "", "", "", "", ],
    ["+Administración","", "", "", "", "Módulo de Administración", "", "1", "0", ],
        ["|+Ingresar Usuario","#", "../imagenes/icon3_s.gif", "../imagenes/icon3_so.gif", "", "", "", "", "", ],
        ["|+Modificar Usuario","#", "../imagenes/icon3_s.gif", "../imagenes/icon3_so.gif", "", "", "", "", "", ],
        ["|+Anular Usuario","#", "../imagenes/icon3_s.gif", "../imagenes/icon3_so.gif", "", "", "", "", "", ],
];

dtree_init();