	
// *********************************************************************
// leave game menu
// *********************************************************************

INSTANCE MENU_LEAVE_GAME(C_MENU_DEF) 
{
	backpic		= MENU_BACK_PIC;
	
	items[0]	= "MENUITEM_LEAVE_GAME_HEADLINE";	
	
	items[1]	= "MENUITEM_LEAVE_GAME_YES";
	items[2]	= "MENUITEM_LEAVE_GAME_NO";	
		
	defaultOutGame	= 2;	// NEWGAME
	defaultInGame	= 2;	// SAVEGAME
	
	flags = flags | MENU_SHOW_INFO;
};

INSTANCE MENUITEM_LEAVE_GAME_HEADLINE(C_MENU_ITEM_DEF) 
{
	text[0]		= "Xeres' return home?";   		
	type		= MENU_ITEM_TEXT;
	// Position und Dimension	
	posx		=    0;		posy		= 3400;
	dimx		= 8100;		dimy		=  750;
	// Weitere Eigenschaften
	flags		=	IT_CHROMAKEYED|IT_TRANSPARENT|IT_MOVEABLE|IT_TXT_CENTER;		
};


INSTANCE MENUITEM_LEAVE_GAME_YES(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "yes";
	text[1]		= "Yes, I want to leave Xeres's return."; // Kommentar
	
	// Position und Dimension	
	posx		=    0;		posy		= 4400;	
	dimx		= 8100;		dimy		=  750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_CLOSE;
	onSelAction_S[0]= "LEAVE_GAME";
	// Weitere Eigenschaften
	flags			= IT_CHROMAKEYED|IT_TRANSPARENT|IT_MOVEABLE|IT_SELECTABLE|IT_TXT_CENTER;
};

INSTANCE MENUITEM_LEAVE_GAME_NO(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "nay";
	text[1]		= "No, I want to resume playing."; // Kommentar
	
	// Position und Dimension	
	posx		=    0;		posy		= 5000;	
	dimx		= 8100;		dimy		=  750;
	// Weitere Eigenschaften
	flags		= IT_CHROMAKEYED|IT_TRANSPARENT|IT_MOVEABLE|IT_SELECTABLE|IT_TXT_CENTER;
};

INSTANCE MENU_REALLY_NEWGAME(C_MENU_DEF) 
{
	backpic		= MENU_BACK_PIC;
	
	items[0]	= "MENUITEM_REALLY_NEWGAME_HEADLINE";	
	
	items[1]	= "MENUITEM_REALLY_NEWGAME_YES";
	items[2]	= "MENUITEM_REALLY_NEWGAME_NO";	
		
	defaultOutGame	= 2;	// NEWGAME
	defaultInGame	= 2;	// SAVEGAME
	
	flags = flags | MENU_SHOW_INFO;
};

INSTANCE MENUITEM_REALLY_NEWGAME_HEADLINE(C_MENU_ITEM_DEF) 
{
	text[0]		= "Really start a new game?";   		
	type		= MENU_ITEM_TEXT;
	// Position und Dimension	
	posx		=    0;		posy		= 3400;
	dimx		= 8100;		dimy		=  750;
	// Weitere Eigenschaften
	flags		=	IT_CHROMAKEYED|IT_TRANSPARENT|IT_MOVEABLE|IT_TXT_CENTER;		
};


INSTANCE MENUITEM_REALLY_NEWGAME_YES(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "yes";
	text[1]		= "Yes, I want to start a new game."; // Kommentar
	
	// Position und Dimension	
	posx		=    0;		posy		= 4400;	
	dimx		= 8100;		dimy		=  750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_CLOSE;
	onSelAction_S[0]= "NEW_GAME";
	// Weitere Eigenschaften
	flags			= IT_CHROMAKEYED|IT_TRANSPARENT|IT_MOVEABLE|IT_SELECTABLE|IT_TXT_CENTER;
};

INSTANCE MENUITEM_REALLY_NEWGAME_NO(C_MENU_ITEM_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "nay";
	text[1]		= "No, I don't want to start a new game."; // Kommentar
	
	// Position und Dimension	
	posx		=    0;		posy		= 5000;	
	dimx		= 8100;		dimy		=  750;
	// Weitere Eigenschaften
	flags		= IT_CHROMAKEYED|IT_TRANSPARENT|IT_MOVEABLE|IT_SELECTABLE|IT_TXT_CENTER;
};

