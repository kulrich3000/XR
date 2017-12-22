INSTANCE ItWr_Bauplan_BeliarDolch		(C_Item)
{
	name 				=	"Blueprint";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_BeliarDolch;
	scemeName			=	"MAP";
	description			= 	"Construction plan: Dagger Beliars";
};

func void UseBauplan_BeliarDolch ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Dagger Beliars"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "The dagger is created from 1 lump of black ore and 1 lump of magic ore. From a powerful magician of the Dark God, he must receive his last consecration before he can uniquely unfold his destructive effect."					);

					Doc_Show		( nDocID );

};
