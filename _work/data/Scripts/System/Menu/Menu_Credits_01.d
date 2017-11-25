// *********************************************************************
// CREDITS_01ions menu
// *********************************************************************

INSTANCE MENU_CREDITS_01(C_MENU_DEF)
{
	backpic		= MENU_BACK_PIC;

	items[0]	= "MENUITEM_CREDITS_01_HEADING";

	items[1]	= "MENUITEM_CREDITS_01_ADELMO";
	items[2]	= "MENUITEM_CREDITS_01_ALEXX";
	items[3]	= "MENUITEM_CREDITS_01_BLACKNAPALM";
	items[4]	= "MENUITEM_CREDITS_01_CEEX";
	items[5]	= "MENUITEM_CREDITS_01_CROSSHEAD";
	items[6]	= "MENUITEM_CREDITS_01_ELVEON";
	items[7]	= "MENUITEM_CREDITS_01_FIZZBAN";
	items[8]	= "MENUITEM_CREDITS_01_FREDDY";
	items[9]	= "MENUITEM_CREDITS_01_GARRIKLORAN";
	items[10]	= "MENUITEM_CREDITS_01_GOLDENAGE";
	items[11]	= "MENUITEM_CREDITS_01_GOTHIC2005";
	items[12]	= "MENUITEM_CREDITS_01_GOTHICFAN359";
	items[13]	= "MENUITEM_CREDITS_01_GOTHIC_MODER";
	items[14]	= "MENUITEM_CREDITS_01_HAGELNACHT";

	items[15]	= "MENUITEM_CREDITS_01_BACK";
	items[16]	= "MENUITEM_CREDITS_01_NEXT";

	flags = flags | MENU_SHOW_INFO;
};


const int MENU_CREDITS_01_DY 		=  600;
const int MENU_CREDITS_01_START_Y	= 2000;

INSTANCE MENUITEM_CREDITS_01_HEADING(C_MENU_ITEM_DEF)
{
	text[0]		=	"MATERIAL - PAGE 1";
	type		=	MENU_ITEM_TEXT;
	// Position und Dimension
	posx		=	0;		posy		=	MENU_TITLE_Y;
	dimx		=	8192;

	flags		= flags & ~IT_SELECTABLE;
	flags		= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_01_ADELMO(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Adelmo";
	text[1]		= "for Tugettso";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_01_START_Y + MENU_CREDITS_01_DY*0;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_01";

	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_01_ALEXX(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "AlexX";
	text[1]		= "for the rabbit from 'The Den";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_01_START_Y + MENU_CREDITS_01_DY*1;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_01";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_01_BLACKNAPALM(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "BlackNapalm";
	text[1]		= "for the healing bud";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_01_START_Y + MENU_CREDITS_01_DY*2;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_01";

	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_CREDITS_01_CEEX(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		=	"CeeX";
	text[1]		=	"for the armor and some items and weapons from Dark Brut";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_01_START_Y + MENU_CREDITS_01_DY*3;
	dimx		= 4096;		dimy		= 750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_01";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_01_CROSSHEAD(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "crosshead";
	text[1]		= "for some armor textures";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_01_START_Y + MENU_CREDITS_01_DY*4;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_01";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_01_ELVEON(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "elveon";
	text[1]		= "for his texture patch";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_01_START_Y + MENU_CREDITS_01_DY*5;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_01";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_01_FIZZBAN(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Fizzban";
	text[1]		= "for his script patch";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_01_START_Y + MENU_CREDITS_01_DY*6;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_01";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_01_FREDDY(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Freddy";
	text[1]		= "for the water droplets from Khorana, the Forest Scavenger and its G1 texture patch";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_01_START_Y + MENU_CREDITS_01_DY*0;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_01";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_01_GARRIKLORAN(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Garrik Loran";
	text[1]		= "for some items from Trails of Darkness.";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_01_START_Y + MENU_CREDITS_01_DY*1;
	dimx		= 4096;		dimy		= 800;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_01";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_01_GOLDENAGE (C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Golden Age";
	text[1]		= "for the noble mushroom texture and the coffin";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_01_START_Y + MENU_CREDITS_01_DY*2;
	dimx		= 4096;		dimy		= 800;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_01";
	
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
	flags 			= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_01_GOTHIC2005(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Gothic2005";
	text[1]		= "for its plant effect system";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_01_START_Y + MENU_CREDITS_01_DY*3;
	dimx		= 4096;		dimy		= 800;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_01";
	
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
	flags 			= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_01_GOTHICFAN359(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "gothicfan359";
	text[1]		= "for the Paladin crystal";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_01_START_Y + MENU_CREDITS_01_DY*4;
	dimx		= 4096;		dimy		= 800;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_01";
	
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
	flags 			= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_01_GOTHIC_MODER(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "gothic modern";
	text[1]		= "for a few buildings from the MDB";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_01_START_Y + MENU_CREDITS_01_DY*5;
	dimx		= 4096;		dimy		= 800;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_01";
	
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
	flags 			= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_01_HAGELNACHT(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "hailstorm night";
	text[1]		= "for its fly agaric texture and the quest of Liselotte";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_01_START_Y + MENU_CREDITS_01_DY*6;
	dimx		= 4096;		dimy		= 800;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_01";
	
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
	flags 			= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_01_BACK(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Back";
	// Position und Dimension
	posx		=	0;		posy		=	MENU_CREDITS_01_START_Y + MENU_CREDITS_01_DY*8;
	dimx		=	8192;		dimy		=	800;
	// Aktionen
	onSelAction[0]	= 	SEL_ACTION_BACK;
	//onSelAction_S[0] = "MENU_MAIN";
	// Weitere Eigenschaften
	flags			= flags |IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_01_NEXT(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Next";
	// Position und Dimension
	posx		=	4096;		posy		=	MENU_CREDITS_01_START_Y + MENU_CREDITS_01_DY*8;
	dimx		=	4096;		dimy		=	800;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_BACK;
	onSelAction[1]	= SEL_ACTION_STARTMENU;
	onSelAction_S[1] = "MENU_CREDITS_02";
	// Weitere Eigenschaften
	flags			= flags |IT_TXT_CENTER;
};
