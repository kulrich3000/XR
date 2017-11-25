INSTANCE ItWr_Bauplan_Erzschwert_Wasser		(C_Item)
{
	name 				=	"wzorzec";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_Erzschwert_Wasser;
	scemeName			=	"MAP";
	description			= 	"Plan budowy: rudego miecza uderzenia woda.";
};

func void UseBauplan_Erzschwert_Wasser ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Rudny miecz uderzenia woda"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Wykwalifikowany kowal w przetwarzaniu magicznej rudy moze naniesc cienka warstwe rudy na bron zwinieta w walce wrecz i nalozyc kranik nad rekojescia. W zaleznosci od wielkosci pistoletu potrzebuje 10 lub 15 sztuk rudy i oczywiscie runa. Ulepszona w ten sposób bron prowadzi w walce wrecz (tekst zwietrzaly)?"					);

					Doc_Show		( nDocID );

		Smith_Erzschwert_Wasser = TRUE;
};

INSTANCE ItWr_Bauplan_Erzschwert_Feuer		(C_Item)
{
	name 				=	"wzorzec";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_Erzschwert_Feuer;
	scemeName			=	"MAP";
	description			= 	"Plan budowy: Rudy miecz plonacy.";
};

func void UseBauplan_Erzschwert_Feuer ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Ostrzelajacy miecz rudy rudy"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Umiejetny kowal w przetwarzaniu magicznej rudy moze naniesc cienka warstwe rudy i umiescic nad rekojescia, podobna do kuszy czy luku, tor do gry w pilke nozna, osadzony w rudie. Jesli runa jest zbyt duza, mozesz ja rozbic, ale musisz zawsze trzymac swoje kawalki polaczone magiczna ruda. W zaleznosci od wielkosci pistoletu potrzebuje 10 lub 15 sztuk rudy i oczywiscie runa."					);

					Doc_Show		( nDocID );

		Smith_Erzschwert_Feuer = TRUE;
};
