INSTANCE ItWr_Bauplan_Erzschwert_Wasser		(C_Item)
{
	name 				=	"Blueprint";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_Erzschwert_Wasser;
	scemeName			=	"MAP";
	description			= 	"Construction plan: Ore sword of the water stroke";
};

func void UseBauplan_Erzschwert_Wasser ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Ore sword of the water stroke"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "A skilled blacksmith in the processing of magical ore can coat a melee weapon with a thin layer of ore and apply a water-faucet above the handle. Depending on the size of the gun, he needs 10 or 15 pieces of ore and of course the rune. A weapon improved in this way leads in close combat  (text weathered)?"					);

					Doc_Show		( nDocID );

		Smith_Erzschwert_Wasser = TRUE;
};

INSTANCE ItWr_Bauplan_Erzschwert_Feuer		(C_Item)
{
	name 				=	"Blueprint";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_Erzschwert_Feuer;
	scemeName			=	"MAP";
	description			= 	"Construction plan: Ore sword of scorching";
};

func void UseBauplan_Erzschwert_Feuer ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Scorching ore sword"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "A skilled blacksmith in the processing of magical ore can coat a melee weapon with a thin layer of ore and place a fireball run - embedded in ore - above the handle, similar to crossbow or bow. If the rune is too big, you can split it up, but you must always keep your pieces connected by magic ore. Depending on the size of the gun, he needs 10 or 15 pieces of ore and of course the rune."					);

					Doc_Show		( nDocID );

		Smith_Erzschwert_Feuer = TRUE;
};
