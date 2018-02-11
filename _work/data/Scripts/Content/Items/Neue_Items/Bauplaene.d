const int Value_Bauplan = 100;

INSTANCE ItWr_Bauplan_Snapperring		(C_Item)
{
	name 				=	"wzorzec";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_Snapperring;
	scemeName			=	"MAPSEALED";
	description			= 	"Plan budowy: pierscien Snap-force";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseBauplan_Snapperring ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "zatrzaskany pierscien"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metalowy blok 1x"					);
					Doc_PrintLines	( nDocID,  0, "4x pazury"					);

					Doc_Show		( nDocID );

		Snapperring = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Pierscien zaciskowy: 1-krotny blok metalowy, 4-krotne pazury");
};

INSTANCE ItWr_Bauplan_Wolfsring_Ruestung		(C_Item)
{
	name 				=	"wzorzec";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_Wolfsring_Ruestung;
	scemeName			=	"MAPSEALED";
	description			= 	"Plan budowy: Pierscien Wolfa Pancerza";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseBauplan_Wolfsring_Ruestung ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Pierscien wilka pancernika"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metalowy blok 1x"					);
					Doc_PrintLines	( nDocID,  0, "4x futro z wilka"					);

					Doc_Show		( nDocID );

		Wolfsring_Ruestung = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Armowy pierscien wilka: 1-krotny metalowy blok, 4x Wolfskin");
};

INSTANCE ItWr_Bauplan_Wolfsring_Leben		(C_Item)
{
	name 				=	"wzorzec";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_Wolfsring_Leben;
	scemeName			=	"MAPSEALED";
	description			= 	"Plan zagospodarowania przestrzennego: Wolfsring des Lebésring des Lebérés";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseBauplan_Wolfsring_Leben ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "wilczy pierscien zycia"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metalowy blok 1x"					);
					Doc_PrintLines	( nDocID,  0, "4 zeby 4x"					);

					Doc_Show		( nDocID );

		Wolfsring_Leben = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Pierscien wilgotny: 1-krotny blok metalowy, 4-krotne zeby");
};

INSTANCE ItWr_Bauplan_Wolfsamulett		(C_Item)
{
	name 				=	"wzorzec";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_Wolfsamulett;
	scemeName			=	"MAPSEALED";
	description			= 	"Plan budowy: Amulet wilka";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseBauplan_Wolfsamulett ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Amulet Wolfsa"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metalowy blok 1x"					);
					Doc_PrintLines	( nDocID,  0, "3 3 zeby"					);
					Doc_PrintLines	( nDocID,  0, "3x futro z wilka"					);
					Doc_PrintLines	( nDocID,  0, "1x rola 'Summon Wolf'."					);

					Doc_Show		( nDocID );

		Wolfsamulett = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Amulet wilka: 1x metalowy blok, 3x zeby, 3x siersc wilka, 1x rola zaklecia 'Summon wilk'.");
};

INSTANCE ItWr_Bauplan_AdanosRing		(C_Item)
{
	name 				=	"wzorzec";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_AdanosRing;
	scemeName			=	"MAPSEALED";
	description			= 	"Plan budowy: Pierscien wodny Adanosu";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseBauplan_AdanosRing ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Pierscien wodny Adanosu"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metalowy blok 1x"					);
					Doc_PrintLines	( nDocID,  0, "1x kawalki rudy"					);
					Doc_PrintLines	( nDocID,  0, "2x Akwamaryna"					);
					Doc_PrintLines	( nDocID,  0, "1x Serce rekawicy lodowej"					);

					Doc_Show		( nDocID );

		AdanosRing = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Pierscien wodny Adanos' Ring: 1x blok metalowy, 1x kawalk rudy, 2x akwamaryn, 1x serce lodowe.");
};

INSTANCE ItWr_Bauplan_AdanosBelt		(C_Item)
{
	name 				=	"wzorzec";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_AdanosBelt;
	scemeName			=	"MAPSEALED";
	description			= 	"Plan budowy pasa Adanos: pas mrozoodporny";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseBauplan_AdanosBelt ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Pas Adanosa z mrozem"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metalowy blok 1x"					);
					Doc_PrintLines	( nDocID,  0, "2x skóra gadów 2x"					);
					Doc_PrintLines	( nDocID,  0, "1x kawalki rudy"					);
					Doc_PrintLines	( nDocID,  0, "1x Krysztal kamienny"					);
					Doc_PrintLines	( nDocID,  0, "1x rola 'blokada' (lodowy blokada)"					);

					Doc_Show		( nDocID );

		AdanosBelt = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Pas Adanos' a z mrozu: 1-krotny blok metalowy, 2-krotna skóra gadów, 1 kawalk rudy, 1-krotny krysztal skalny, 1-krotna rolka zaklecia 'Eisblock' (blok lodu)");
};

INSTANCE ItWr_Bauplan_AdanosAmulett		(C_Item)
{
	name 				=	"wzorzec";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_AdanosAmulett;
	scemeName			=	"MAPSEALED";
	description			= 	"Plan budowy: mgla Adanos' amulet mgly";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseBauplan_AdanosAmulett ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Amulet Adanosa z mglawicy"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metalowy blok 1x"					);
					Doc_PrintLines	( nDocID,  0, "1x kawalk zlota"					);
					Doc_PrintLines	( nDocID,  0, "1x kawalki rudy"					);
					Doc_PrintLines	( nDocID,  0, "2x Akwamaryna"					);
					Doc_PrintLines	( nDocID,  0, "1x rola powiedzenia 'Fala lodowa'."					);

					Doc_Show		( nDocID );

		AdanosAmulett = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Adanos' amulet mglawicy: 1x blok metalowy, 1x zloty kawalek, 1x kawalk rudy, 2x akwamaryne, 1x walek zaklecia 'Eiswelle' (lodowa fala)");
};

INSTANCE ItWr_Bauplan_DJG_M		(C_Item)
{
	name 				=	"wzorzec";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_DJG_M;
	scemeName			=	"MAPSEALED";
	description			= 	"Plan budowy: Poprawa wyposazenia do polowan na latawce lekkie";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseBauplan_DJG_M ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Ulepszenie sprzetu do polowania na latawce lekkie"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "9x Skauci Smokowi"					);
					Doc_PrintLines	( nDocID,  0, "20 x grudki rudy"					);

					Doc_Show		( nDocID );
};

INSTANCE ItWr_Bauplan_DJG_H		(C_Item)
{
	name 				=	"wzorzec";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_DJG_H;
	scemeName			=	"MAPSEALED";
	description			= 	"Plan budowy: Usprzet Lowca Smoka Srednim Smokiem.";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseBauplan_DJG_H ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Usprawnienie sprzetu do polowan na srednie latawce"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "7x Skauci Smokowi"					);
					Doc_PrintLines	( nDocID,  0, "16x kawalków rudy"					);
					Doc_PrintLines	( nDocID,  0, "4x krew wazka"					);

					Doc_Show		( nDocID );
};

INSTANCE ItWr_Bauplan_ChemischeKeule		(C_Item)
{
	name 				=	"wzorzec";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_ChemischeKeule;
	scemeName			=	"MAP";
	description			= 	"Plan budowlany: Klub chemiczny";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseBauplan_ChemischeKeule ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Chemische Keule"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "8x ruda magiczna 8x"					);
					Doc_PrintLines	( nDocID,  0, "2x woda swiecona"					);
					Doc_PrintLines	( nDocID,  0, "1x kawalk zlota"					);
					Doc_PrintLines	( nDocID,  0, "1x siarka"					);
					Doc_PrintLines	( nDocID,  0, "1x skóra gadów"					);
					Doc_PrintLines	( nDocID,  0, "2x silny tyton"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Wszystko sfalszowac na uderzajacej powierzchni klubu i poswiecic klub chemiczny na sanktuarium Inno."					);

					Doc_Show		( nDocID );
};

INSTANCE ItWr_Bauplan_RingGewandtheit		(C_Item)
{
	name 				=	"wzorzec";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_RingGewandtheit;
	scemeName			=	"MAPSEALED";
	description			= 	"Plan budowy: Prawy pierscien zwinnosci";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseBauplan_RingGewandtheit ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Pierscien prawy Zrecznosc"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metalowy blok 1x"					);
					Doc_PrintLines	( nDocID,  0, "1x rogowy potok migawki smoczej"					);
					Doc_PrintLines	( nDocID,  0, "2x kosci goblina"					);

					Doc_Show		( nDocID );

		RingGewandtheit = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Prawy pierscien zrecznosci: 1-krotny metalowy blok, 1-krotny rog smoka, 2-krotna kosc goblinu");
};

INSTANCE ItWr_Bauplan_RingAusdauer		(C_Item)
{
	name 				=	"wzorzec";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_RingAusdauer;
	scemeName			=	"MAPSEALED";
	description			= 	"Plan budowy: Lewy pierscien bezpieczenstwa";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseBauplan_RingAusdauer ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Lewy pierscien z lewej strony wytrzymalosciowy"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metalowy blok 1x"					);
					Doc_PrintLines	( nDocID,  0, "1x eliksir predkosci obrotowej"					);
					Doc_PrintLines	( nDocID,  0, "2x skrzydla"					);

					Doc_Show		( nDocID );

		RingAusdauer = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Lewy pierscien: 1-krotny blok metalowy, 1-krotny eliksir predkosci obrotowej, 2-krotne skrzydla");
};

INSTANCE ItWr_Bauplan_RingStaerke		(C_Item)
{
	name 				=	"wzorzec";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_RingStaerke;
	scemeName			=	"MAPSEALED";
	description			= 	"Plan budowy: Prawy pierscien mocny";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseBauplan_RingStaerke ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Pierscien prawy o wytrzymalosci"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metalowy blok 1x"					);
					Doc_PrintLines	( nDocID,  0, "1x rogowy potok migawki smoczej"					);
					Doc_PrintLines	( nDocID,  0, "2x kosci goblina"					);

					Doc_Show		( nDocID );

		RingStaerke = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Prawy pierscien o wytrzymalosci: 1-krotny metalowy blok, 1-krotny rog smoka, 2-krotna kosc goblina");
};

INSTANCE ItWr_Bauplan_RingHiebe		(C_Item)
{
	name 				=	"wzorzec";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_RingHiebe;
	scemeName			=	"MAPSEALED";
	description			= 	"Plan budowy: lewy pierscien uderzen.";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseBauplan_RingHiebe ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Lewy pierscien uderzen"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metalowy blok 1x"					);
					Doc_PrintLines	( nDocID,  0, "1x eliksir predkosci obrotowej"					);
					Doc_PrintLines	( nDocID,  0, "2x Pazurkarz"					);

					Doc_Show		( nDocID );

		RingHiebe = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Lewy pierscien ciosów: 1-krotny metalowy blok, 1-krotny eliksir predkosci obrotowej, 2-krotny pazur Lurkera.");
};

INSTANCE ItWr_Bauplan_Snapperbogen		(C_Item)
{
	name 				=	"wzorzec";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan*3;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_Snapperbogen;
	scemeName			=	"MAPSEALED";
	description			= 	"Plan zagospodarowania przestrzennego: Plan budowy";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseBauplan_Snapperbogen ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Snapperbogen"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1 x lowiectwo"					);
					Doc_PrintLines	( nDocID,  0, "3 x galaz"					);
					Doc_PrintLines	( nDocID,  0, "2 x Smoczy klakson smoczy"					);
					Doc_PrintLines	( nDocID,  0, "1 x Smok Snap Tendon"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Uwaga: Luk ten charakteryzuje sie duzym zasiegiem i latwa obsluga."					);

					Doc_Show		( nDocID );

		if (Snapperbogen == FALSE)
		{
			Snapperbogen = TRUE;

			AI_Output(hero, NULL, "Info_Mod_Snapperbogen_15_00"); //Powinienem dowiedziec sie, gdzie mam potyczke smoka.
		};
};
