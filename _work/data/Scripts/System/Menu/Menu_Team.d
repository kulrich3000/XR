// *********************************************************************
// TEAMions menu
// *********************************************************************

INSTANCE MENU_TEAM(C_MENU_DEF)
{
	backpic		= MENU_BACK_PIC;

	items[0]	= "MENUITEM_TEAM_HEADING";

	items[1]	= "MENUITEM_TEAM_ALBI";
	items[2]	= "MENUITEM_TEAM_AMPROSIUS";
	items[3]	= "MENUITEM_TEAM_AXON";
	items[4]	= "MENUITEM_TEAM_BONNE6";
	items[5]	= "MENUITEM_TEAM_HOW4RD";
	items[6]	= "MENUITEM_TEAM_JIMHALWILSON";
	items[7]	= "MENUITEM_TEAM_NATHAN";
	items[8]	= "MENUITEM_TEAM_PHILIP";
	items[9]	= "MENUITEM_TEAM_QUANTARIE";
	items[10]	= "MENUITEM_TEAM_THOMASBAUSB";
	items[11]	= "MENUITEM_TEAM_ZAFIRON";
	items[12]	= "MENUITEM_TEAM_BACK";

	flags = flags | MENU_SHOW_INFO;
};


const int MENU_TEAM_DY 		=  600;
const int MENU_TEAM_START_Y	= 2000;

INSTANCE MENUITEM_TEAM_HEADING(C_MENU_ITEM_DEF)
{
	text[0]		=	"TEUTONIC TEAM";
	type		=	MENU_ITEM_TEXT;
	// Position und Dimension
	posx		=	0;		posy		=	MENU_TITLE_Y;
	dimx		=	8192;

	flags		= flags & ~IT_SELECTABLE;
	flags		= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_TEAM_ALBI(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Albi";
	text[1]		= "Autor opowiadan i pytan";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_TEAM_START_Y + MENU_TEAM_DY*0;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_TEAM";

	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_TEAM_AMPROSIUS(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "AmProsius";
	text[1]		= "Autor opowiadan i scenarzysta oraz 2D Artysta";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_TEAM_START_Y + MENU_TEAM_DY*1;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_TEAM";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_TEAM_AXON(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "akson";
	text[1]		= "Autor opowiadan i pytan";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_TEAM_START_Y + MENU_TEAM_DY*2;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_TEAM";

	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_TEAM_BONNE6(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		=	"kostnia";
	text[1]		=	"Skryptor i element dystansowy";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_TEAM_START_Y + MENU_TEAM_DY*3;
	dimx		= 4096;		dimy		= 750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_TEAM";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_TEAM_HOW4RD(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "jak4";
	text[1]		= "2D Artysta, Quest Writer i Spacer";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_TEAM_START_Y + MENU_TEAM_DY*4;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_TEAM";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_TEAM_JIMHALWILSON(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Jim Hal Wilson.";
	text[1]		= "Artysta muzyczny, Spacer i autor scenarzysta muzyki Quest Writer.";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_TEAM_START_Y + MENU_TEAM_DY*5;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_TEAM";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_TEAM_NATHAN(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Nathan, Bialy Ojciec";
	text[1]		= "Autor opowiadan i pytan";  // Kommentar

	// Position und Dimension
	posx		= 0;		posy		= MENU_TEAM_START_Y + MENU_TEAM_DY*6;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_TEAM";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_TEAM_PHILIP(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Philip";
	text[1]		= "rozp�rka";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_TEAM_START_Y + MENU_TEAM_DY*0;
	dimx		= 4096;		dimy		= 750;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_TEAM";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_TEAM_QUANTARIE(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "kwant";
	text[1]		= "Artysta i animator 3D";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_TEAM_START_Y + MENU_TEAM_DY*1;
	dimx		= 4096;		dimy		= 800;

	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_TEAM";
	
	// Weitere Eigenschaften
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_TEAM_THOMASBAUSB (C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "TomaszBusB";
	text[1]		= "Spacer i artysta 3D";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_TEAM_START_Y + MENU_TEAM_DY*2;
	dimx		= 4096;		dimy		= 800;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_TEAM";
	
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
	flags 			= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_TEAM_ZAFIRON(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "zrono";
	text[1]		= "Projektant poziomu i artysta 3D";  // Kommentar

	// Position und Dimension
	posx		= 4096;		posy		= MENU_TEAM_START_Y + MENU_TEAM_DY*3;
	dimx		= 4096;		dimy		= 800;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	onSelAction_S[0] = "MENU_TEAM";
	
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
	flags 			= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_TEAM_BACK(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Poprzedni";
	// Position und Dimension
	posx		=	0;		posy		=	MENU_TEAM_START_Y + MENU_TEAM_DY*8;
	dimx		=	8192;		dimy		=	800;
	// Aktionen
	onSelAction[0]	= 	SEL_ACTION_BACK;
	//onSelAction_S[0] = "MENU_MAIN";
	// Weitere Eigenschaften
	flags			= flags |IT_TXT_CENTER;
};
