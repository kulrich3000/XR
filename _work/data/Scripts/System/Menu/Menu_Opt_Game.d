// *********************************************************************
// game options menu
// *********************************************************************

INSTANCE MENU_OPT_GAME(C_MENU_DEF) 
{
	backpic			= MENU_BACK_PIC;
	
	items[0]		= "MENUITEM_GAME_HEADLINE";
				
	items[1]		= "MENUITEM_GAME_SUB_TITLES";
	items[2]		= "MENUITEM_GAME_SUB_TITLES_CHOICE";

	items[3]		= "MENUITEM_GAME_FIGHTFOCUS";
	items[4]		= "MENUITEM_GAME_FIGHTFOCUS_CHOICE";	

	items[5]		= "MENUITEM_GAME_INTERACTFOCUS";
	items[6]		= "MENUITEM_GAME_INTERACTFOCUS_CHOICE";	

	items[7]		= "MENUITEM_GAME_LOOKAROUND_INVERSE";
	items[8]		= "MENUITEM_GAME_LOOKAROUND_INVERSE_CHOICE";
	
	items[9]		= "MENUITEM_M";
	items[10]		= "MENUITEM_M_CHOICE";
	
	items[11]		= "MENUITEM_MSENSITIVITY";
	items[12]		= "MENUITEM_MSENSITIVITY_SLIDER";
	
	items[17]		= "MENUITEM_GAME_BLOOD";				// in gothic 2 nur noch �ber die ini tunebar
	items[18]		= "MENUITEM_GAME_BLOOD_CHOICE";
	
	items[13]		= "MENUITEM_GAME_OLDCONTROLS";
	items[14]		= "MENUITEM_GAME_OLDCONTROLS_CHOICE";
				
	items[19]		= "MENUITEM_GAME_BACK";
	
	flags = flags | MENU_SHOW_INFO;
};


INSTANCE MENUITEM_GAME_HEADLINE(C_MENU_ITEM_DEF) 
{
	text[0]		=	"USTAWIENIA GRY";
	type		=	MENU_ITEM_TEXT;
	// Position und Dimension	
	posx		=	0;		posy		=	MENU_TITLE_Y;
	dimx		=	8100;
	
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags | IT_TXT_CENTER;	
};


//
// Lookaround
//

INSTANCE MENUITEM_GAME_SUB_TITLES(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Podpisy";
	text[1]		= 	"Wy�wietlanie tekst�w dialog�w.";  // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_SOUND_DY*0;
	dimx		=	4000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GAME_SUB_TITLES_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;		
	text[0]		= 	"nie|tak";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000;		posy		=	MENU_START_Y + MENU_SOUND_DY*0 + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;	dimy 		= 	MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption													= "subTitles";
	onChgSetOptionSection 											= "GAME";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags  | IT_TXT_CENTER;
};

INSTANCE MENUITEM_GAME_POTIONKEYS(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Hotkeye";
	text[1]		= 	"Zezwoli� na korzystanie z hotkey�w pod H i P?"; // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_SOUND_DY*7;
	dimx		=	4000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GAME_POTIONKEYS_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;		
	text[0]		= 	"nie|tak";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000;		posy		= MENU_START_Y + MENU_SOUND_DY*7 + MENU_CHOICE_YPLUS;
	dimx 		= 2000;		dimy 		= MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption													= "usePotionKeys";
	onChgSetOptionSection 											= "GAME";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags  | IT_TXT_CENTER;
};


INSTANCE MENUITEM_GAME_FIGHTFOCUS(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Oznaczanie cel�w";
	text[1]		= 	"w�./wy�. wyr�niania bie��cego celu w czasie walki.";// Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_SOUND_DY*1;
	dimx		=	4000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GAME_FIGHTFOCUS_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;	
	text[0]		= 	"Nie|Okienko|Pod�wietlenie|Oba";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000;		posy		= MENU_START_Y + MENU_SOUND_DY*1 + MENU_CHOICE_YPLUS;
	dimx 		= 2000;		dimy 		= MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption													= "highlightMeleeFocus";
	onChgSetOptionSection 											= "GAME";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags  | IT_TXT_CENTER;
};


INSTANCE MENUITEM_GAME_INTERACTFOCUS(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Pod�wietlanie obiekt�w";
	text[1]		= 	"W�./wy�. pod�wietlania przedmiot�w w polu widzenia."; // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_SOUND_DY*2;
	dimx		=	4000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GAME_INTERACTFOCUS_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;	
	text[0]		= 	"nie|tak";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000;		posy		= MENU_START_Y + MENU_SOUND_DY*2 + MENU_CHOICE_YPLUS;
	dimx 		= 2000;		dimy 		= MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption													= "highlightInteractFocus";
	onChgSetOptionSection 											= "GAME";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags  | IT_TXT_CENTER;
};





//
// Lookaround
//

INSTANCE MENUITEM_GAME_LOOKAROUND_INVERSE(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Odwr�cona kamera";
	text[1]		= 	"Odwr�cone sterowanie kamer�.";  // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_SOUND_DY*3;
	dimx		=	4000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GAME_LOOKAROUND_INVERSE_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;		
	text[0]		= 	"nie|tak";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000;		posy		=	MENU_START_Y + MENU_SOUND_DY*3 + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;	dimy 		= 	MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption													= "camLookaroundInverse";
	onChgSetOptionSection 											= "GAME";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags  | IT_TXT_CENTER;
};


//
// M.
//

INSTANCE MENUITEM_M(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Mysz";
	text[1]		= 	"Prze��cza sterowanie kamer� za pomoc� myszy."; // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_SOUND_DY*4;
	dimx		=	4000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_M_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;	
	text[0]		= 	"wy�.|w�.";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000;		posy		= MENU_START_Y + MENU_SOUND_DY*4 + MENU_CHOICE_YPLUS;
	dimx 		= 2000;		dimy 		= MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption													= "enableMouse";
	onChgSetOptionSection 											= "XERES";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags  | IT_TXT_CENTER;
};


//
// M-Sensibility
//

INSTANCE MENUITEM_MSENSITIVITY(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Czu�o�� myszy";
	text[1]		= 	""; // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_SOUND_DY*5;
	dimx		=	4000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_MSENSITIVITY_SLIDER(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_SLIDER_BACK_PIC;	
	type		=	MENU_ITEM_SLIDER;	
	text[0]		= 	"";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000;		posy		= MENU_START_Y + MENU_SOUND_DY*5 + MENU_SLIDER_YPLUS;
	dimx 		= 2000;		dimy 		= MENU_SLIDER_DY;
	// Aktionen
	onChgSetOption													= "mouseSensitivity";
	onChgSetOptionSection 											= "GAME";
	// Weitere Eigenschaften	
	userFloat[0]	= 20;
	userString[0]	= MENU_SLIDER_POS_PIC;
	
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags  | IT_TXT_CENTER;
};


//
// Bluteffekte deaktivert in Gothic 2 (nur noch �ber die INI tunebar)
//

INSTANCE MENUITEM_GAME_BLOOD(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Krew";
	text[1]		= 	"Stopie� prezentacji efekt�w krwi."; // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_SOUND_DY*7;
	dimx		=	4000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GAME_BLOOD_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;	
	text[0]		= 	"brak|troch�|wi�cej|du�o";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000;		posy		= MENU_START_Y + MENU_SOUND_DY*7 + MENU_CHOICE_YPLUS;
	dimx 		= 2000;		dimy 		= MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption													= "bloodDetail";
	onChgSetOptionSection 											= "GAME";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags  | IT_TXT_CENTER;
};





INSTANCE MENUITEM_GAME_OLDCONTROLS(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Sterowanie z Gothic 1";
	text[1]		= 	"Wykorzystanie sposobu sterowania z Gothic 1."; // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_SOUND_DY*6;
	dimx		=	4000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

INSTANCE MENUITEM_GAME_OLDCONTROLS_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;	
	text[0]		= 	"wy�.|w�.";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000;		posy		= MENU_START_Y + MENU_SOUND_DY*6 + MENU_CHOICE_YPLUS;
	dimx 		= 2000;		dimy 		= MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption												= "useGothic1Controls";
	onChgSetOptionSection 											= "GAME";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags  | IT_TXT_CENTER;
};




INSTANCE MENUITEM_GAME_BACK(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Wstecz";
	// Position und Dimension	
	posx		=	1000;		posy		=	MENU_START_Y + MENU_SOUND_DY*9;
	dimx		=	6192;		dimy		=	MENU_SOUND_DY;
	// Aktionen
	onSelAction[0]	= 	SEL_ACTION_BACK;	
	flags = flags | IT_TXT_CENTER;
};
