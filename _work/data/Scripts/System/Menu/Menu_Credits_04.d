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
	text[0]		= "Stare";
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
	text[0]		= "Esea";
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
	text[0]		=	"dzinsy";
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
	text[0]		=	"MichaDDD";
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
	text[0]		= "DziewiecInchNail";
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
	text[0]		= "tanatosy";
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
	text[0]		= "modlitwy";
	text[1]		= "w przypadku miecza grodziowego";  // Kommentar

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
	text[1]		= "dla jaskini z jego 'Wyspy z Dungeonem' z MDB";  // Kommentar

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
	text[0]		= "roXar";
	text[1]		= "do spiacej maski i kosy";  // Kommentar

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
	text[0]		= "Blysteczka sekty i lord cieni34";
	text[1]		= "dla pancerza sk�rzanego z Velaya";  // Kommentar

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
	text[0]		= "srebro";
	text[1]		= "dla loch�w w starej kopalni";  // Kommentar

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
	text[0]		= "Ziolo bagienne junkie";
	text[1]		= "w przypadku wiazki i bagiennego pecherza moczowego";  // Kommentar

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
	text[0]		= "bluza";
	text[1]		= "dla tekstur Lurkera z Przymierza Bog�w.";  // Kommentar

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
	text[0]		= "tenis";
	text[1]		= "dla dw�ch potwornych tekstur";  // Kommentar

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
	text[0]		=	"Poprzedni";
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
	text[0]		=	"Poprzedni";
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
	text[0]		=	"najblizszy";
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
