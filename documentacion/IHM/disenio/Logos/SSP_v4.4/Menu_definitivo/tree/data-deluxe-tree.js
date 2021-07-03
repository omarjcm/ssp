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
var tblankImage="deluxe-tree.files/blank.gif";
var tpathPrefix_img="";
var tpathPrefix_link="";

//--- Dimensions
var tmenuWidth="230px";
var tmenuHeight="auto";

//--- Positioning
var tabsolute=1;
var tleft="20px";
var ttop="40px";

//--- Font
var tfontStyle="normal 8pt Tahoma";
var tfontColor=["#3F3D3D","#7E7C7C"];
var tfontDecoration=["none","underline"];
var tfontColorDisabled="#ACACAC";
var tpressedFontColor="#AA0000";

//--- Appearance
var tmenuBackColor="";
var tmenuBackImage="deluxe-tree.files/blank.gif";
var tmenuBorderColor="#FFFFFF";
var tmenuBorderWidth=0;
var tmenuBorderStyle="solid";

//--- Item Appearance
var titemAlign="left";
var titemHeight=22;
var titemBackColor=["#F0F1F5","#F0F1F5"];
var titemBackImage=["deluxe-tree.files/blank.gif","deluxe-tree.files/blank.gif"];

//--- Icons & Buttons
var ticonWidth=21;
var ticonHeight=15;
var ticonAlign="left";
var texpandBtn=["deluxe-tree.files/expandbtn2.gif","deluxe-tree.files/expandbtn2.gif","deluxe-tree.files/collapsebtn2.gif"];
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
var tmoveImage="deluxe-tree.files/movepic.gif";

//--- XP-Style
var tXPStyle=1;
var tXPIterations=10;
var tXPBorderWidth=1;
var tXPBorderColor="#FFFFFF";
var tXPTitleBackColor="#AFB1C3";
var tXPTitleBackImg="deluxe-tree.files/xptitle_s.gif";
var tXPTitleLeft="deluxe-tree.files/xptitleleft_s.gif";
var tXPTitleLeftWidth=4;
var tXPIconWidth=31;
var tXPIconHeight=32;
var tXPExpandBtn=["deluxe-tree.files/xpexpand1_s.gif","deluxe-tree.files/xpexpand1_s.gif","deluxe-tree.files/xpcollapse1_s.gif","deluxe-tree.files/xpcollapse1_s.gif"];
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
    ["tXPTitleBackColor=#D9DAE2","tXPTitleBackImg=deluxe-tree.files/xptitle2_s.gif","tXPExpandBtn=deluxe-tree.files/xpexpand2_s.gif,deluxe-tree.files/xpexpand3_s.gif,deluxe-tree.files/xpcollapse2_s.gif,deluxe-tree.files/xpcollapse3_s.gif"],
];

var tmenuItems = [

    ["+Documentación","", "deluxe-tree.files/xpicon1_s.gif", "", "", "Módulo de Documentación", "", "0", "", ],
        ["|Ingresar Acta","", "deluxe-tree.files/icon1_s.gif", "deluxe-tree.files/icon1_so.gif", "", "", "", "", "", ],
            ["||de Bautizo","#", "deluxe-tree.files/iconarrs.gif", "", "", "", "_parent", "", "", ],
            ["||de Primera Comunión","#", "deluxe-tree.files/iconarrs.gif", "", "", "", "_parent", "", "", ],
            ["||de Confirmación","#", "deluxe-tree.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Matrimonio","#", "deluxe-tree.files/iconarrs.gif", "", "", "", "", "", "", ],
        ["|Generar Acta","", "deluxe-tree.files/icon1_s.gif", "deluxe-tree.files/icon1_so.gif", "", "", "", "", "", ],
            ["||de Bautizo","#", "deluxe-tree.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Primera Comunión","#", "deluxe-tree.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Confirmación","#", "deluxe-tree.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Matrimonio","#", "deluxe-tree.files/iconarrs.gif", "", "", "", "", "", "", ],
        ["|Modificar Acta","", "deluxe-tree.files/icon1_s.gif", "deluxe-tree.files/icon1_so.gif", "", "", "", "", "", ],
            ["||de Bautizo","#", "deluxe-tree.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Primera Comunión","#", "deluxe-tree.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Confirmación","#", "deluxe-tree.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Matrimonio","#", "deluxe-tree.files/iconarrs.gif", "", "", "", "", "", "", ],
        ["|Anular Acta","", "deluxe-tree.files/icon1_s.gif", "deluxe-tree.files/icon1_so.gif", "", "", "", "", "", ],
            ["||de Bautizo","#", "deluxe-tree.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Primera Comunión","#", "deluxe-tree.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Confirmación","#", "deluxe-tree.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Matrimonio","#", "deluxe-tree.files/iconarrs.gif", "", "", "", "", "", "", ],
    ["+Administración","", "", "", "", "Módulo de Administración", "", "1", "0", ],
        ["|+Ingresar Usuario","#", "deluxe-tree.files/icon3_s.gif", "deluxe-tree.files/icon3_so.gif", "", "", "", "", "", ],
        ["|+Modificar Usuario","#", "deluxe-tree.files/icon3_s.gif", "deluxe-tree.files/icon3_so.gif", "", "", "", "", "", ],
        ["|+Anular Usuario","#", "deluxe-tree.files/icon3_s.gif", "deluxe-tree.files/icon3_so.gif", "", "", "", "", "", ],
];

dtree_init();