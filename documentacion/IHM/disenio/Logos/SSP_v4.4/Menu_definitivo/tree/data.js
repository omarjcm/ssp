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
var tblankImage="data.files/blank.gif";
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
var tmenuBackImage="data.files/blank.gif";
var tmenuBorderColor="#FFFFFF";
var tmenuBorderWidth=0;
var tmenuBorderStyle="solid";

//--- Item Appearance
var titemAlign="left";
var titemHeight=22;
var titemBackColor=["#F0F1F5","#F0F1F5"];
var titemBackImage=["data.files/blank.gif","data.files/blank.gif"];

//--- Icons & Buttons
var ticonWidth=21;
var ticonHeight=15;
var ticonAlign="left";
var texpandBtn=["data.files/expandbtn2.gif","data.files/expandbtn2.gif","data.files/collapsebtn2.gif"];
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
var tmoveImage="data.files/movepic.gif";

//--- XP-Style
var tXPStyle=1;
var tXPIterations=10;
var tXPBorderWidth=1;
var tXPBorderColor="#FFFFFF";
var tXPTitleBackColor="#AFB1C3";
var tXPTitleBackImg="data.files/xptitle_s.gif";
var tXPTitleLeft="data.files/xptitleleft_s.gif";
var tXPTitleLeftWidth=4;
var tXPIconWidth=31;
var tXPIconHeight=32;
var tXPExpandBtn=["data.files/xpexpand1_s.gif","data.files/xpexpand1_s.gif","data.files/xpcollapse1_s.gif","data.files/xpcollapse1_s.gif"];
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
    ["tXPTitleBackColor=#D9DAE2","tXPTitleBackImg=data.files/xptitle2_s.gif","tXPExpandBtn=data.files/xpexpand2_s.gif,data.files/xpexpand3_s.gif,data.files/xpcollapse2_s.gif,data.files/xpcollapse3_s.gif"],
];

var tmenuItems = [

    ["+Documentación","", "data.files/xpicon1_s.gif", "", "", "XP Title Tip", "", "0", "", ],
        ["|Ingresar Acta","", "data.files/icon1_s.gif", "data.files/icon1_so.gif", "", "Product Info Tip", "", "", "", ],
            ["||de Bautizo","#", "data.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Primera Comunión","#", "data.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Confirmación","#", "data.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Matrimonio","#", "data.files/iconarrs.gif", "", "", "", "", "", "", ],
        ["|Generar Acta","", "data.files/icon1_s.gif", "data.files/icon1_so.gif", "", "Samples Tip", "", "", "", ],
            ["||de Bautizo","#", "data.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Primera Comunión","#", "data.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Confirmación","#", "data.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Matrimonio","#", "data.files/iconarrs.gif", "", "", "", "", "", "", ],
        ["|Modificar Acta","", "data.files/icon1_s.gif", "data.files/icon1_so.gif", "", "Purchase Tip", "", "", "", ],
            ["||de Bautizo","#", "data.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Primera Comunión","#", "data.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Confirmación","#", "data.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Matrimonio","#", "data.files/iconarrs.gif", "", "", "", "", "", "", ],
        ["|Anular Acta","", "data.files/icon1_s.gif", "data.files/icon1_so.gif", "", "Support Tip", "", "", "", ],
            ["||de Bautizo","#", "data.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Primera Comunión","#", "data.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Confirmación","#", "data.files/iconarrs.gif", "", "", "", "", "", "", ],
            ["||de Matrimonio","#", "data.files/iconarrs.gif", "", "", "", "", "", "", ],
    ["+Administración","", "", "", "", "XP Title Tip", "", "1", "0", ],
        ["|+Ingresar Usuario","#", "data.files/icon3_s.gif", "data.files/icon3_so.gif", "", "", "", "", "", ],
        ["|+Modificar Usuario","#", "data.files/icon3_s.gif", "data.files/icon3_so.gif", "", "", "", "", "", ],
        ["|+Anular Usuario","#", "data.files/icon3_s.gif", "data.files/icon3_so.gif", "", "", "", "", "", ],
];

dtree_init();