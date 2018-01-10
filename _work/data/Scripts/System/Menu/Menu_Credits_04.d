// *********************************************************************
// CREDITS_04ions menu
// *********************************************************************

INSTANCE MENU_CREDITS_04(C_MENU_DEF)
{
	backpic		= MENU_BACK_PIC;

	items[0]	= "MENUITEM_CREDITS_04_HEADING";

	items[1]	= "MENUITEM_CREDITS_04_DERALTE";
	items[2]	= "MENUITEM_CREDITS_04_ELLIBERTADOR";
	items[3]	= "MENUITEM_CREDITS_04_ESSAH";
	items[4]	= "MENUITEM_CREDITS_04_JEOREN";
	items[5]	= "MENUITEM_CREDITS_04_MICHADD";
	items[6]	= "MENUITEM_CREDITS_04_NINEINCHNAIL";
	items[7]	= "MENUITEM_CREDITS_04_THANATOS";

	items[15]	= "MENUITEM_CREDITS_04_LAST";
	items[16]	= "MENUITEM_CREDITS_04_BACK";
	items[17]	= "MENUITEM_CREDITS_04_NEXT";

	flags = flags | MENU_SHOW_INFO;
};


const int MENU_CREDITS_04_DY 		=  600;
const int MENU_CREDITS_04_START_Y	= 2000;

INSTANCE MENUITEM_CREDITS_04_HEADING(C_MENU_ITEM_DEF)
{
	text[0]		=	"ALPHATESTER";
	type		=	MENU_ITEM_TEXT;
	// Position und Dimension
	posx		=	0;		posy		=	MENU_TITLE_Y;
	dimx		=	8192;

	flags		= flags & ~IT_SELECTABLE;
	flags		= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_04_DERALTE(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "The Old";
	text[1]		= "";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_04_START_Y + MENU_CREDITS_04_DY*0;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_04";

	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_04_ELLIBERTADOR(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "El Libertador";
	text[1]		= "";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_04_START_Y + MENU_CREDITS_04_DY*1;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_04";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_04_ESSAH(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Essah";
	text[1]		= "";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_04_START_Y + MENU_CREDITS_04_DY*2;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_04";

	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_CREDITS_04_JEOREN(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		=	"jeans";
	text[1]		=	"";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_04_START_Y + MENU_CREDITS_04_DY*3;
	dimx		= 4096;		dimy		= 750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_04";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_CREDITS_04_MICHADD(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		=	"MichaDD";
	text[1]		=	"";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_04_START_Y + MENU_CREDITS_04_DY*4;
	dimx		= 4096;		dimy		= 750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_04";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_04_NINEINCHNAIL(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "NineInchNail";
	text[1]		= "";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_04_START_Y + MENU_CREDITS_04_DY*5;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_04";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_04_THANATOS(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "thanatos";
	text[1]		= "";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_04_START_Y + MENU_CREDITS_04_DY*6;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_04";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_04_PRAIDEN(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Prairies";
	text[1]		= "for the bulkhead sword";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_CREDITS_04_START_Y + MENU_CREDITS_04_DY*6;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_04";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_04_RAMMON(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "rammon";
	text[1]		= "for the cave from his' Island with Dungeon' from the MDB";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_04_START_Y + MENU_CREDITS_04_DY*0;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_04";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_04_ROXTAR(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "roXtar";
	text[1]		= "for the sleeping mask and scythes";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_04_START_Y + MENU_CREDITS_04_DY*1;
	dimx		= 4096;		dimy		= 800;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_04";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_04_SEKTENSPINNER (C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "sect spinner and shadow lord34";
	text[1]		= "for the leather armor made of Velaya";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_04_START_Y + MENU_CREDITS_04_DY*2;
	dimx		= 4096;		dimy		= 800;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_04";
	
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
	flags 			= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_04_SILVESTRO(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Silvestro";
	text[1]		= "for the dungeon at the old mine";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_04_START_Y + MENU_CREDITS_04_DY*3;
	dimx		= 4096;		dimy		= 800;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_04";
	
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
	flags 			= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_04_SUMPFKRAUTJUNKIE(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Swampweed Junkie";
	text[1]		= "for its beam and the swampy bladder";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_04_START_Y + MENU_CREDITS_04_DY*4;
	dimx		= 4096;		dimy		= 800;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_04";
	
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
	flags 			= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_04_SWEIL(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "sweatshirt";
	text[1]		= "for the Lurker textures from The Alliance of the Gods.";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_04_START_Y + MENU_CREDITS_04_DY*5;
	dimx		= 4096;		dimy		= 800;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_04";
	
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
	flags 			= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_04_TENAX(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "tenax";
	text[1]		= "for two monster textures";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_CREDITS_04_START_Y + MENU_CREDITS_04_DY*6;
	dimx		= 4096;		dimy		= 800;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_CREDITS_04";
	
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
	flags 			= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_04_LAST(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Previous one";
	// Position und Dimension
	posx		=	0;		posy		=	MENU_CREDITS_04_START_Y + MENU_CREDITS_04_DY*8;
	dimx		=	4096;		dimy		=	800;
	// Aktionen
	onSelAction[0]	= 	SEL_ACTION_BACK;
	//onSelAction_S[0] = "MENU_MAIN";
	// Weitere Eigenschaften
	flags			= flags |IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_04_BACK(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Back";
	// Position und Dimension
	posx		=	0;		posy		=	MENU_CREDITS_04_START_Y + MENU_CREDITS_04_DY*8;
	dimx		=	8192;		dimy		=	800;
	// Aktionen
	onSelAction[0]	= 	SEL_ACTION_BACK;
	onSelAction_S[0] = "MENU_MAIN";
	// Weitere Eigenschaften
	flags			= flags |IT_TXT_CENTER;
};

INSTANCE MENUITEM_CREDITS_04_NEXT(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Next";
	// Position und Dimension
	posx		=	4096;		posy		=	MENU_CREDITS_04_START_Y + MENU_CREDITS_04_DY*8;
	dimx		=	4096;		dimy		=	800;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_BACK;
	onSelAction[1]	= SEL_ACTION_STARTMENU;
	onSelAction_S[1] = "MENU_CREDITS_05";
	// Weitere Eigenschaften
	flags			= flags |IT_TXT_CENTER;
};
