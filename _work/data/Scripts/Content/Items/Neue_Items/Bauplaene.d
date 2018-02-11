const int Value_Bauplan = 100;

INSTANCE ItWr_Bauplan_Snapperring		(C_Item)
{
	name 				=	"Blueprint";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_Snapperring;
	scemeName			=	"MAPSEALED";
	description			= 	"Construction plan: Snap-force ring";
	
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
					Doc_PrintLine	( nDocID,  0, "snap-force ring"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metal block"					);
					Doc_PrintLines	( nDocID,  0, "4x claws"					);

					Doc_Show		( nDocID );

		Snapperring = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Snap ring: 1x metal block, 4x claws");
};

INSTANCE ItWr_Bauplan_Wolfsring_Ruestung		(C_Item)
{
	name 				=	"Blueprint";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_Wolfsring_Ruestung;
	scemeName			=	"MAPSEALED";
	description			= 	"Construction Plan: Wolf Ring of the Armor";
	
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
					Doc_PrintLine	( nDocID,  0, "Wolf Ring of the Armor"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metal block"					);
					Doc_PrintLines	( nDocID,  0, "4x wolf fur"					);

					Doc_Show		( nDocID );

		Wolfsring_Ruestung = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Armor wolf ring: 1x metal block, 4x Wolfskin");
};

INSTANCE ItWr_Bauplan_Wolfsring_Leben		(C_Item)
{
	name 				=	"Blueprint";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_Wolfsring_Leben;
	scemeName			=	"MAPSEALED";
	description			= 	"Construction plan: Wolfsring des Lebens";
	
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
					Doc_PrintLine	( nDocID,  0, "The wolf ring of life"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metal block"					);
					Doc_PrintLines	( nDocID,  0, "4x teeth"					);

					Doc_Show		( nDocID );

		Wolfsring_Leben = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Wolf ring of life: 1x metal block, 4x teeth");
};

INSTANCE ItWr_Bauplan_Wolfsamulett		(C_Item)
{
	name 				=	"Blueprint";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_Wolfsamulett;
	scemeName			=	"MAPSEALED";
	description			= 	"Construction plan: Amulet of the wolf";
	
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
					Doc_PrintLine	( nDocID,  0, "Amulet of the Wolf"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metal block"					);
					Doc_PrintLines	( nDocID,  0, "3x teeth"					);
					Doc_PrintLines	( nDocID,  0, "3x wolf fur"					);
					Doc_PrintLines	( nDocID,  0, "1x role' Summon Wolf'."					);

					Doc_Show		( nDocID );

		Wolfsamulett = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Amulet of the wolf: 1x metal block, 3x teeth, 3x wolf fur, 1x spell role' Summon wolf'.");
};

INSTANCE ItWr_Bauplan_AdanosRing		(C_Item)
{
	name 				=	"Blueprint";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_AdanosRing;
	scemeName			=	"MAPSEALED";
	description			= 	"Construction plan: Adanos' Ring of Water";
	
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
					Doc_PrintLine	( nDocID,  0, "Adanos' Ring of Water"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metal block"					);
					Doc_PrintLines	( nDocID,  0, "1x ore chunks"					);
					Doc_PrintLines	( nDocID,  0, "2x Aquamarine"					);
					Doc_PrintLines	( nDocID,  0, "1x Heart of an Ice Glove"					);

					Doc_Show		( nDocID );

		AdanosRing = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Adanos' Ring of Water: 1x metal block, 1x ore chunk, 2x aquamarine, 1x ice cream heart");
};

INSTANCE ItWr_Bauplan_AdanosBelt		(C_Item)
{
	name 				=	"Blueprint";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_AdanosBelt;
	scemeName			=	"MAPSEALED";
	description			= 	"Construction plan: Adanos' belt of frost";
	
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
					Doc_PrintLine	( nDocID,  0, "Adanos' belt of frost"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metal block"					);
					Doc_PrintLines	( nDocID,  0, "2x reptile skin"					);
					Doc_PrintLines	( nDocID,  0, "1x ore chunks"					);
					Doc_PrintLines	( nDocID,  0, "1x Rock Crystal"					);
					Doc_PrintLines	( nDocID,  0, "1x role' Eisblock' (ice block)"					);

					Doc_Show		( nDocID );

		AdanosBelt = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Adanos' belt of frost: 1x metal block, 2x reptile skin, 1x ore chunk, 1x rock crystal, 1x spell roll' Eisblock' (ice block)");
};

INSTANCE ItWr_Bauplan_AdanosAmulett		(C_Item)
{
	name 				=	"Blueprint";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_AdanosAmulett;
	scemeName			=	"MAPSEALED";
	description			= 	"Construction plan: Adanos' amulet of the fog";
	
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
					Doc_PrintLine	( nDocID,  0, "Adanos' Amulet of the Nebula"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metal block"					);
					Doc_PrintLines	( nDocID,  0, "1x chunk of gold"					);
					Doc_PrintLines	( nDocID,  0, "1x ore chunks"					);
					Doc_PrintLines	( nDocID,  0, "2x Aquamarine"					);
					Doc_PrintLines	( nDocID,  0, "1x role of saying 'Ice wave"					);

					Doc_Show		( nDocID );

		AdanosAmulett = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Adanos' amulet of the nebula: 1x metal block, 1x gold chunk, 1x ore chunk, 2x aquamarine, 1x spell roll' Eiswelle' (ice wave)");
};

INSTANCE ItWr_Bauplan_DJG_M		(C_Item)
{
	name 				=	"Blueprint";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_DJG_M;
	scemeName			=	"MAPSEALED";
	description			= 	"Construction plan: Improving light kite hunting equipment";
	
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
					Doc_PrintLine	( nDocID,  0, "Improve light kite hunting equipment"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "9x Dragon Scouts"					);
					Doc_PrintLines	( nDocID,  0, "20x ore chunks"					);

					Doc_Show		( nDocID );
};

INSTANCE ItWr_Bauplan_DJG_H		(C_Item)
{
	name 				=	"Blueprint";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_DJG_H;
	scemeName			=	"MAPSEALED";
	description			= 	"Construction Plan: Improving Medium Dragon Hunter Equipment";
	
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
					Doc_PrintLine	( nDocID,  0, "Improve medium kite hunting equipment"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "7x Dragon Scouts"					);
					Doc_PrintLines	( nDocID,  0, "16x chunks of ore"					);
					Doc_PrintLines	( nDocID,  0, "4x dragon's blood"					);

					Doc_Show		( nDocID );
};

INSTANCE ItWr_Bauplan_ChemischeKeule		(C_Item)
{
	name 				=	"Blueprint";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_ChemischeKeule;
	scemeName			=	"MAP";
	description			= 	"Construction plan: Chemical club";
	
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
					Doc_PrintLines	( nDocID,  0, "8x magic ore"					);
					Doc_PrintLines	( nDocID,  0, "2x holy water"					);
					Doc_PrintLines	( nDocID,  0, "1x chunk of gold"					);
					Doc_PrintLines	( nDocID,  0, "1x sulphur"					);
					Doc_PrintLines	( nDocID,  0, "1x reptile skin"					);
					Doc_PrintLines	( nDocID,  0, "2x strong tobacco"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Forge everything on the striking surface of a club and consecrate the chemical club on an Inno shrine."					);

					Doc_Show		( nDocID );
};

INSTANCE ItWr_Bauplan_RingGewandtheit		(C_Item)
{
	name 				=	"Blueprint";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_RingGewandtheit;
	scemeName			=	"MAPSEALED";
	description			= 	"Construction plan: Right Ring of Agility";
	
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
					Doc_PrintLine	( nDocID,  0, "Right Ring of Agility"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metal block"					);
					Doc_PrintLines	( nDocID,  0, "1x horn of a dragon snapper"					);
					Doc_PrintLines	( nDocID,  0, "2x bones of a goblin"					);

					Doc_Show		( nDocID );

		RingGewandtheit = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Right ring of agility: 1x metal block, 1x horn of a dragon snapper, 2x bone of a goblin");
};

INSTANCE ItWr_Bauplan_RingAusdauer		(C_Item)
{
	name 				=	"Blueprint";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_RingAusdauer;
	scemeName			=	"MAPSEALED";
	description			= 	"Construction Plan: Left Ring of Endurance";
	
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
					Doc_PrintLine	( nDocID,  0, "Left ring of endurance"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metal block"					);
					Doc_PrintLines	( nDocID,  0, "1x potion of speed"					);
					Doc_PrintLines	( nDocID,  0, "2x wings"					);

					Doc_Show		( nDocID );

		RingAusdauer = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Left ring of endurance: 1x metal block, 1x potion of speed, 2x wings");
};

INSTANCE ItWr_Bauplan_RingStaerke		(C_Item)
{
	name 				=	"Blueprint";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_RingStaerke;
	scemeName			=	"MAPSEALED";
	description			= 	"Construction plan: Right Ring of Strength";
	
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
					Doc_PrintLine	( nDocID,  0, "Right ring of strength"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metal block"					);
					Doc_PrintLines	( nDocID,  0, "1x horn of a dragon snapper"					);
					Doc_PrintLines	( nDocID,  0, "2x bones of a goblin"					);

					Doc_Show		( nDocID );

		RingStaerke = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Right ring of strength: 1x metal block, 1x horn of a dragon snapper, 2x bone of a goblin");
};

INSTANCE ItWr_Bauplan_RingHiebe		(C_Item)
{
	name 				=	"Blueprint";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_RingHiebe;
	scemeName			=	"MAPSEALED";
	description			= 	"Construction plan: Left ring of blows";
	
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
					Doc_PrintLine	( nDocID,  0, "Left ring of blows"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x metal block"					);
					Doc_PrintLines	( nDocID,  0, "1x potion of speed"					);
					Doc_PrintLines	( nDocID,  0, "2x Lurker claw"					);

					Doc_Show		( nDocID );

		RingHiebe = TRUE;

	Log_CreateTopic	(TOPIC_MOD_SCHMUCK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHMUCK, "Left ring of blows: 1x metal block, 1x potion of speed, 2x Lurker claw");
};

INSTANCE ItWr_Bauplan_Snapperbogen		(C_Item)
{
	name 				=	"Blueprint";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Bauplan*3;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_Snapperbogen;
	scemeName			=	"MAPSEALED";
	description			= 	"Construction plan: Snapperbogen";
	
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
					Doc_PrintLines	( nDocID,  0, "1 x hunting bow"					);
					Doc_PrintLines	( nDocID,  0, "3 x branch"					);
					Doc_PrintLines	( nDocID,  0, "2 x Dragon snapper horn"					);
					Doc_PrintLines	( nDocID,  0, "1 x Dragon Snap Tendon"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Note: This bow is characterized by a long range and easy handling."					);

					Doc_Show		( nDocID );

		if (Snapperbogen == FALSE)
		{
			Snapperbogen = TRUE;

			AI_Output(hero, NULL, "Info_Mod_Snapperbogen_15_00"); //I should find out where I'm getting a dragon snapper tendon.
		};
};
