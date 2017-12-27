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
	text[0]		=	"MATERIAL - STRONA 1 - MATERIAL - STRONA 1";
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
	text[1]		= "w przypadku Tugettso";  // Kommentar

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
	text[1]		= "królik z 'The Den'.";  // Kommentar

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
	text[1]		= "dla leczniczego buds";  // Kommentar

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
	text[1]		=	"zbroja oraz niektóre przedmioty i bron od Czarnego Bruta";  // Kommentar

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
	text[0]		= "trawers";
	text[1]		= "dla niektórych tekstur pancerza";  // Kommentar

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
	text[1]		= "za jego teksture latka";  // Kommentar

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
	text[1]		= "za jego skryptowy poprawka do scenariusza";  // Kommentar

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
	text[1]		= "kropelki wody z Khorany, wylesniarka lesna i jej plaster tekstury G1";  // Kommentar

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
	text[1]		= "dla niektórych przedmiotów z Sciezki ciemnosci.";  // Kommentar

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
	text[0]		= "Zloty wiek";
	text[1]		= "szlachetna konsystencja grzybów i trumny";  // Kommentar

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
	text[0]		= "Gotycki2005 r.";
	text[1]		= "dla systemu efektów roslinnych";  // Kommentar

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
	text[0]		= "gotyk 3599";
	text[1]		= "dla krysztalu paladynskiego";  // Kommentar

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
	text[0]		= "nowoczesny";
	text[1]		= "dla kilku budynków nalezacych do MDB";  // Kommentar

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
	text[0]		= "gradobicie w nocy";
	text[1]		= "ma muszkatolowa agaryczna konsystencje i poszukiwania Liselotte.";  // Kommentar

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
	text[0]		=	"Poprzedni";
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
	text[0]		=	"najblizszy";
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
