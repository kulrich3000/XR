// *********************************************************************
// CREDITS_03ions menu
// *********************************************************************

INSTANCE MENU_CREDITS_03(C_MENU_DEF)
{
	backpic		= MENU_BACK_PIC;

	items[0]	= "MENUITEM_CREDITS_03_HEADING";

	items[1]	= "MENUITEM_CREDITS_03_THECAMPER";
	items[2]	= "MENUITEM_CREDITS_03_THIELHATER";
	items[3]	= "MENUITEM_CREDITS_03_ZIRROR";

	items[15]	= "MENUITEM_CREDITS_03_LAST";
	items[16]	= "MENUITEM_CREDITS_03_BACK";
	items[17]	= "MENUITEM_CREDITS_03_NEXT";

	flags = flags | MENU_SHOW_INFO;
};


const int MENU_CREDITS_03_DY 		=  600;
const int MENU_CREDITS_03_START_Y	= 2000;

INSTANCE MENUITEM_CREDITS_03_HEADING(C_MENU_ITEM_DEF)
{
	text[0]		=	"MATERIAL - STRONA 3";
	type		=	MENU_ITEM_TEXT;
	// Position und Dimension
	posx		=	0;		posy		=	MENU_TITLE_Y;
	dimx		=	8192;

	flags		= flags & ~IT_SELECTABLE;
	flags		= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_03_THECAMPER(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "_Camper�";
	text[1]		= "dla Magii Transformacji, Magii Ognistego i Wodnego Magii, jak r�wniez dla Zbroi Gladkiej i Lancuchowej.";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_03_START_Y + MENU_CREDITS_03_DY*0;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_03";

	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_03_THIELHATER(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "ThielHater";
	text[1]		= "za jego teksture latka";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_03_START_Y + MENU_CREDITS_03_DY*1;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_03";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_03_ZIRROR(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "marazm";
	text[1]		= "dla przynety uzbrojenie";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_03_START_Y + MENU_CREDITS_03_DY*2;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_03";

	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_CREDITS_03_CEEX(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		=	"CeeX";
	text[1]		=	"zbroja oraz niekt�re przedmioty i bron od Czarnego Bruta";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_03_START_Y + MENU_CREDITS_03_DY*3;
	dimx		= 4096;		dimy		= 750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_03";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_03_CROSSHEAD(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "trawers";
	text[1]		= "dla niekt�rych tekstur pancerza";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_03_START_Y + MENU_CREDITS_03_DY*4;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_03";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_03_ELVEON(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "elveon";
	text[1]		= "za jego teksture latka";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_03_START_Y + MENU_CREDITS_03_DY*5;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_03";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_03_FIZZBAN(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Fizzban";
	text[1]		= "za jego skryptowy poprawka do scenariusza";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_03_START_Y + MENU_CREDITS_03_DY*6;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_03";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_03_FREDDY(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Freddy";
	text[1]		= "kropelki wody z Khorany, wylesniarka lesna i jej plaster tekstury G1";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_03_START_Y + MENU_CREDITS_03_DY*0;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_03";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_03_GARRIKLORAN(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Garrik Loran";
	text[1]		= "dla niekt�rych przedmiot�w z Sciezki ciemnosci.";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_03_START_Y + MENU_CREDITS_03_DY*1;
	dimx		= 4096;		dimy		= 800;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_03";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_03_GOLDENAGE (C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Zloty wiek";
	text[1]		= "szlachetna konsystencja grzyb�w i trumny";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_03_START_Y + MENU_CREDITS_03_DY*2;
	dimx		= 4096;		dimy		= 800;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_03";
	
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
	flags 			= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_03_GOTHIC2005(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Gotycki2005 r.";
	text[1]		= "dla systemu efekt�w roslinnych";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_03_START_Y + MENU_CREDITS_03_DY*3;
	dimx		= 4096;		dimy		= 800;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_03";
	
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
	flags 			= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_03_GOTHICFAN359(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "gotyk 3599";
	text[1]		= "dla krysztalu paladynskiego";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_03_START_Y + MENU_CREDITS_03_DY*4;
	dimx		= 4096;		dimy		= 800;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_03";
	
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
	flags 			= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_03_GOTHIC_MODER(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "nowoczesny";
	text[1]		= "dla kilku budynk�w nalezacych do MDB";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_03_START_Y + MENU_CREDITS_03_DY*5;
	dimx		= 4096;		dimy		= 800;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_03";
	
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
	flags 			= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_03_HAGELNACHT(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "gradobicie w nocy";
	text[1]		= "ma muszkatolowa agaryczna konsystencje i poszukiwania Liselotte.";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_03_START_Y + MENU_CREDITS_03_DY*6;
	dimx		= 4096;		dimy		= 800;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_03";
	
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
	flags 			= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_03_LAST(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Poprzedni";
	// Position und Dimension
	posx		=	0;		posy		=	MENU_CREDITS_02_START_Y + MENU_CREDITS_02_DY*8;
	dimx		=	4096;		dimy		=	800;
	// Aktionen
	onSelAction[0]	= 	SEL_ACTION_BACK;
	//onSelAction_S[0] = "MENU_MAIN";
	// Weitere Eigenschaften
	flags			= flags |IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_03_BACK(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Poprzedni";
	// Position und Dimension
	posx		=	0;		posy		=	MENU_CREDITS_03_START_Y + MENU_CREDITS_03_DY*8;
	dimx		=	8192;		dimy		=	800;
	// Aktionen
	onSelAction[0]	= 	SEL_ACTION_BACK;
	onSelAction_S[0] = "MENU_MAIN";
	// Weitere Eigenschaften
	flags			= flags |IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_03_NEXT(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"najblizszy";
	// Position und Dimension
	posx		=	4096;		posy		=	MENU_CREDITS_03_START_Y + MENU_CREDITS_03_DY*8;
	dimx		=	4096;		dimy		=	800;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_BACK;
	onSelAction[1]	= SEL_ACTION_STARTMENU;
	onSelAction_S[1] = "MENU_CREDITS_04";
	// Weitere Eigenschaften
	flags			= flags |IT_TXT_CENTER;
};
