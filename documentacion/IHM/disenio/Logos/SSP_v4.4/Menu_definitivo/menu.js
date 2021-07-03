/*
   Deluxe Menu Data File
   Created by Deluxe Tuner v2.4
   http://deluxe-menu.com
*/


// -- Deluxe Tuner Style Names
var tstylesNames=["Top Item","Top Item","Top Item","Top Item",];
var tXPStylesNames=["Top Menu",];
// -- End of Deluxe Tuner Style Names

//--- Common
var tlevelDX=20;
var texpanded=0;
var texpandItemClick=0;
var tcloseExpanded=1;
var tcloseExpandedXP=1;
var ttoggleMode=1;
var tnoWrap=1;
var titemTarget="_self";
var titemCursor="pointer";
var statusString="link";
var tblankImage="menu.files/blank.gif";
var tpathPrefix_img="";
var tpathPrefix_link="";

//--- Dimensions
var tmenuWidth="230px";
var tmenuHeight="auto";

//--- Positioning
var tabsolute=1;
var tleft="20px";
var ttop="80px";

//--- Font
var tfontStyle="normal 8pt Tahoma";
var tfontColor=["#3F3D3D","#7E7C7C"];
var tfontDecoration=["none","underline"];
var tfontColorDisabled="#ACACAC";
var tpressedFontColor="#AA0000";

//--- Appearance
var tmenuBackColor="";
var tmenuBackImage="menu.files/blank.gif";
var tmenuBorderColor="#FFFFFF";
var tmenuBorderWidth=0;
var tmenuBorderStyle="solid";

//--- Item Appearance
var titemAlign="left";
var titemHeight=22;
var titemBackColor=["#F6F6EC","#F6F6EC"];
var titemBackImage=["menu.files/blank.gif","menu.files/blank.gif"];

//--- Icons & Buttons
var ticonWidth=21;
var ticonHeight=15;
var ticonAlign="left";
var texpandBtn=["menu.files/expandbtn2.gif","menu.files/expandbtn2.gif","menu.files/collapsebtn2.gif"];
var texpandBtnW=9;
var texpandBtnH=9;
var texpandBtnAlign="left";

//--- Lines
var tpoints=0;
var tpointsImage="";
var tpointsVImage="";
var tpointsCImage="";

//--- Floatable Menu
var tfloatable=1;
var tfloatIterations=10;
var tfloatableX=1;
var tfloatableY=1;

//--- Movable Menu
var tmoveable=0;
var tmoveHeight=12;
var tmoveColor="#AA0000";
var tmoveImage="menu.files/movepic.gif";

//--- XP-Style
var tXPStyle=1;
var tXPIterations=10;
var tXPBorderWidth=1;
var tXPBorderColor="#FFFFFF";
var tXPTitleBackColor="#94A664";
var tXPTitleBackImg="menu.files/xptitle_o.gif";
var tXPTitleLeft="menu.files/xptitleleft_o.gif";
var tXPTitleLeftWidth=4;
var tXPIconWidth=31;
var tXPIconHeight=32;
var tXPExpandBtn=["menu.files/xpexpand1_o.gif","menu.files/xpexpand1_o.gif","menu.files/xpcollapse1_o.gif","menu.files/xpcollapse1_o.gif"];
var tXPBtnWidth=25;
var tXPBtnHeight=23;
var tXPFilter=1;

//--- Dynamic Menu
var tdynamic=0;

//--- State Saving
var tsaveState=0;
var tsavePrefix="menu1";

var tstyles = [
    ["tfontStyle=bold 8pt Tahoma","tfontColor=#FFFFFF,#E0E7B8","tfontDecoration=none,none"],
    ["tfontStyle=bold 8pt Tahoma","tfontColor=#56662D,#72921D","tfontDecoration=none,none"],
    ["tfontDecoration=none,none"],
    ["tfontStyle=bold 8pt Tahoma","tfontColor=#444444,#5555FF"],
];
var tXPStyles = [
    ["tXPTitleBackColor=#E2E9BC","tXPExpandBtn=menu.files/xpexpand3_o.gif,menu.files/xpexpand4_o.gif,menu.files/xpcollapse3_o.gif,menu.files/xpcollapse4_o.gif","tXPTitleBackImg=menu.files/xptitle2_o.gif"],
];

var tmenuItems = [

    ["+Documentación","", "", "", "", "XP Title Tip", "", "0", "0", ],
        ["|Ingresar Acta","", "", "", "", "Ingresar Actas", "", "", "", ],
            ["||de Bautizo","#", "", "", "", "", "", "", "", ],
            ["||de Primera Comunión","#", "", "", "", "", "", "", "", ],
            ["||de Confirmación","#", "", "", "", "", "", "", "", ],
            ["||de Matrimonio","#", "", "", "", "", "", "", "", ],
        ["|Generar Acta","", "", "", "", "Generar Actas", "", "", "", ],
            ["||What's New","testlink.htm", "", "", "", "", "", "", "", ],
            ["||Features","testlink.htm", "", "", "", "", "", "", "", ],
            ["||Installation","testlink.htm", "", "", "", "", "", "", "", ],
            ["||Functions","testlink.htm", "", "", "", "", "", "", "", ],
            ["||Supported Browsers","testlink.htm", "", "", "", "", "", "", "", ],
        ["|Modificar Acta","", "", "", "", "Samples Tip", "", "", "", ],
            ["||Sample 1","testlink.htm", "", "", "", "", "", "", "", ],
            ["||Sample 2","testlink.htm", "", "", "", "", "", "", "", ],
            ["||Sample 3","testlink.htm", "", "", "", "", "", "", "", ],
            ["||Sample 4","testlink.htm", "", "", "", "", "", "", "", ],
            ["||Sample 5","testlink.htm", "", "", "", "", "", "", "", ],
            ["||Sample 6","testlink.htm", "", "", "", "", "", "", "", ],
        ["|Anular Acta","", "", "", "", "Support Tip", "", "", "", ],
            ["||Write Us","mailto:dhtml@dhtml-menu.com", "", "", "", "", "", "", "", ],
    ["+Administración","", "", "", "", "XP Title Tip", "", "1", "0", ],
        ["|+Samples Block 1","", "", "", "", "", "", "", "", ],
            ["||New Sample 1","testlink.htm", "", "", "", "", "", "", "", ],
            ["||New Sample 2","testlink.htm", "", "", "", "", "", "", "", ],
            ["||New Sample 3","testlink.htm", "", "", "", "", "", "", "", ],
            ["||New Sample 4","testlink.htm", "", "", "", "", "", "", "", ],
            ["||New Sample 5","testlink.htm", "", "", "", "", "", "", "", ],
        ["|Samples Block 2","", "", "", "", "", "", "", "", ],
            ["||New Sample 1","testlink.htm", "", "", "", "", "", "", "", ],
            ["||New Sample 2","testlink.htm", "", "", "", "", "", "", "", ],
            ["||New Sample 3","testlink.htm", "", "", "", "", "", "", "", ],
            ["||New Sample 4","testlink.htm", "", "", "", "", "", "", "", ],
            ["||New Sample 5","testlink.htm", "", "", "", "", "", "", "", ],
        ["|Samples Block 3","", "", "", "", "", "", "", "", ],
            ["||New Sample 1","testlink.htm", "", "", "", "", "", "", "", ],
            ["||New Sample 2","testlink.htm", "", "", "", "", "", "", "", ],
            ["||New Sample 3","testlink.htm", "", "", "", "", "", "", "", ],
            ["||New Sample 4","testlink.htm", "", "", "", "", "", "", "", ],
            ["||New Sample 5","testlink.htm", "", "", "", "", "", "", "", ],
];

dtree_init();