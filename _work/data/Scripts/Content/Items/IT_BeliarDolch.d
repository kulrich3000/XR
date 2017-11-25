INSTANCE ItWr_Bauplan_BeliarDolch		(C_Item)
{
	name 				=	"wzorzec";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_BeliarDolch;
	scemeName			=	"MAP";
	description			= 	"Plan budowy: Dagger Beliars.";
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
					Doc_PrintLines	( nDocID,  0, "Sztylet powstaje z 1 brylki rudy czarnej i 1 bryly magicznej rudy. Od poteznego maga Mrocznego Boga musi on otrzymac swoja ostatnia konsekracje, zanim bedzie mógl w niepowtarzalny sposób rozwinac swój niszczycielski skutek."					);

					Doc_Show		( nDocID );

};
