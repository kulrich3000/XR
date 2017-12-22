// *********************************************************************
// game options menu - extensions
// *********************************************************************


INSTANCE MENU_OPT_XR(C_MENU_DEF)
{
	backpic			= MENU_BACK_PIC;
	
	items[0]		= "MENUITEM_XR_HEADLINE";
				
	items[1]		= "MENUITEM_XR_AUTOSAVE";	
	items[2]		= "MENUITEM_XR_AUTOSAVE_CHOICE";
				
	items[3]		= "MENUITEM_XR_BALKEN";	
	items[4]		= "MENUITEM_XR_BALKEN_CHOICE";
				
	items[5]		= "MENUITEM_XR_EXP";	
	items[6]		= "MENUITEM_XR_EXP_CHOICE";
				
	items[7]		= "MENUITEM_XR_DIFFICULTY";	
	items[8]		= "MENUITEM_XR_DIFFICULTY_CHOICE";
				
	items[9]		= "MENUITEM_XR_SPIELZEIT";	
	items[10]		= "MENUITEM_XR_SPIELZEIT_CHOICE";
				
	items[11]		= "MENUITEM_XR_BLOODSPLATS";	
	items[12]		= "MENUITEM_XR_BLOODSPLATS_CHOICE";
				
	items[13]		= "MENUITEM_OPT_GFA";	
	items[14]		= "MENUITEM_OPT_GFA_CHOICE";
	
	items[15]		= "MENUITEM_XR_BACK";
	//items[14]		= "MENUITEM_XR_NEXT";	
	
	flags = flags | MENU_SHOW_INFO;
};


INSTANCE MENUITEM_XR_HEADLINE(C_MENU_ITEM_DEF) 
{
	text[0]		=	"SPECJALNE";
	type		=	MENU_ITEM_TEXT;
	// Position und Dimension	
	posx		=	0;		posy		=	MENU_TITLE_Y-500;
	dimx		=	8100;
	
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags | IT_TXT_CENTER;	
};


//
// Autosave
//

INSTANCE MENUITEM_XR_AUTOSAVE(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Autozapis";
	text[1]		= 	"Autozapis (wy�./10 min./20 min./30 min.)"; // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_DY*-1;
	dimx		=	3000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags		= flags | IT_EFFECTS_NEXT;		
};

instance MENUITEM_XR_AUTOSAVE_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;		
	text[0]		= 	"wy�.|co 10 minut|co 20 minut|co 30 minut";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000;		posy		=	MENU_START_Y + MENU_DY*-1 + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;	dimy 		= 	MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption		= "autosave";
	onChgSetOptionSection 	= "XERES";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags  | IT_TXT_CENTER;
};


//
// Balken
//

INSTANCE MENUITEM_XR_BALKEN(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Paski";
	text[1]		= 	"Wy�wietlanie pask�w (stare/nowe/alternatywne)"; // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_DY*0;
	dimx		=	3000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags		= flags | IT_EFFECTS_NEXT;		
};

instance MENUITEM_XR_BALKEN_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;		
	text[0]		= 	"stare|nowe|alternatywne";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000;		posy		=	MENU_START_Y + MENU_DY*0 + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;	dimy 		= 	MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption		= "balken";
	onChgSetOptionSection 	= "XERES";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags  | IT_TXT_CENTER;
};


//
// Esssystem
//

INSTANCE MENUITEM_XR_ESSSYSTEM(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"System jedzenia";
	text[1]		= 	"System jedzenia (w�./wy�.)"; // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_DY*1;
	dimx		=	3000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags		= flags | IT_EFFECTS_NEXT;		
};

instance MENUITEM_XR_ESSSYSTEM_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;		
	text[0]		= 	"wy�.|w�.";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000;		posy		=	MENU_START_Y + MENU_DY*1 + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;	dimy 		= 	MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption		= "esssystem";
	onChgSetOptionSection 	= "XERES";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags  | IT_TXT_CENTER;
};


//
// Erfahrungsbalken
//

INSTANCE MENUITEM_XR_EXP (C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Pasek do�w.";
	text[1]		= 	"Pokazywanie paska do�wiadczenia (w�./wy�.)"; // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_DY*1;
	dimx		=	3000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags		= flags | IT_EFFECTS_NEXT;		
};

instance MENUITEM_XR_EXP_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;		
	text[0]		= 	"wy�.|w�.";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000;		posy		=	MENU_START_Y + MENU_DY*1 + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;	dimy 		= 	MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption		= "erfahrung";
	onChgSetOptionSection 	= "XERES";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags  | IT_TXT_CENTER;
};


//
// Schwierigkeitsgrad
//

INSTANCE MENUITEM_XR_DIFFICULTY(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Poziom trudno�ci";
	text[1]		= 	"Wyb�r poziomu trudno�ci (�atwy, �redni, trudny)"; // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_DY*2;
	dimx		=	3000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags		= flags | IT_EFFECTS_NEXT;		
};

instance MENUITEM_XR_DIFFICULTY_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;		
	text[0]		= 	"�atwy|�redni|Trudny";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000;		posy		=	MENU_START_Y + MENU_DY*2 + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;	dimy 		= 	MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption		= "difficulty";
	onChgSetOptionSection 	= "XERES";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags  | IT_TXT_CENTER;
};


//
// Spielzeit
//

INSTANCE MENUITEM_XR_SPIELZEIT (C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Czas gry";
	text[1]		= 	"Pokazywanie czasu gry (w�./wy�.)"; // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_DY*3;
	dimx		=	3000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags		= flags | IT_EFFECTS_NEXT;		
};

instance MENUITEM_XR_SPIELZEIT_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;		
	text[0]		= 	"wy�.|w�.";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000;		posy		=	MENU_START_Y + MENU_DY*3 + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;	dimy 		= 	MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption		= "spielzeit";
	onChgSetOptionSection 	= "XERES";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags  | IT_TXT_CENTER;
};


//
// Blutspritzer
//

INSTANCE MENUITEM_XR_BLOODSPLATS(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Rozprysk krwi";
	text[1]		= 	"Rozprysk krwi (w�./wy�.)"; // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_DY*4;
	dimx		=	3000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags		= flags | IT_EFFECTS_NEXT;		
};

instance MENUITEM_XR_BLOODSPLATS_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;		
	text[0]		= 	"w�.|wy�.";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000;		posy		=	MENU_START_Y + MENU_DY*4 + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;	dimy 		= 	MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption		= "bloodsplats";
	onChgSetOptionSection 	= "XERES";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags  | IT_TXT_CENTER;
};



INSTANCE MENUITEM_XR_BACK(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Wstecz";
	// Position und Dimension	
	posx		=	1000;		posy		=	MENU_BACK_Y+500;
	dimx		=	6192;		dimy		=	MENU_DY;
	// Aktionen
	onSelAction[0]	= 	SEL_ACTION_BACK;	
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_XR_NEXT(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Dalej";
	// Position und Dimension
	posx		=	4096;		posy		=	MENU_CREDITS_01_START_Y + MENU_CREDITS_01_DY*8;
	dimx		=	4096;		dimy		=	800;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_STARTMENU;
	onSelAction_S[0] = "MENU_OPT_XR2";
	// Weitere Eigenschaften
	flags			= flags |IT_TXT_CENTER;
};
