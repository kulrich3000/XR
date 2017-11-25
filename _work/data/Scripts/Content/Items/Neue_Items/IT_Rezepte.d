const int Value_Rezept = 100;

INSTANCE ItWr_Rezept_Fischragout		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Fischragout;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Fish ragout";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseRezept_Fischragout ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Fischragout"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "2x fish"					);
					Doc_PrintLines	( nDocID,  0, "1x forest berry"					);

					Doc_Show		( nDocID );

	if (!Rezept_Fischragout)
	{
		Rezept_Fischragout = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Fish ragout: 2x fish, 1x forest berry");
	};
};

INSTANCE ItWr_Rezept_Fischsuppe		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Fischsuppe;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Fish soup";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseRezept_Fischsuppe ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Fischsuppe"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Fish"					);

					Doc_Show		( nDocID );

	if (!Rezept_Fischsuppe)
	{
		Rezept_Fischsuppe = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Fish soup: 1x fish");
	};
};

INSTANCE ItWr_Rezept_Fleischwanzenragout		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Fleischwanzenragout;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: meatbug ragout";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseRezept_Fleischwanzenragout ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Fleischwanzenragout"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "2x dark mushroom"					);
					Doc_PrintLines	( nDocID,  0, "1x Bug meat"					);

					Doc_Show		( nDocID );

	if (!Rezept_Fleischwanzenragout)
	{
		Rezept_Fleischwanzenragout = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Meatbug ragout: 2x dark mushroom, 1x bug meat");
	};
};

INSTANCE ItWr_Rezept_Pilzsuppe		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Pilzsuppe;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Mushroom soup";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseRezept_Pilzsuppe ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Pilzsuppe"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "2x dark mushroom"					);
					Doc_PrintLines	( nDocID,  0, "1x Buddler meat"					);

					Doc_Show		( nDocID );

	if (!Rezept_Pilzsuppe)
	{
		Rezept_Pilzsuppe = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Mushroom soup: 2x dark mushroom, 1x Buddler meat");
	};
};

INSTANCE ItWr_Rezept_Fleischeintopf		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Fleischeintopf;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: meat stew";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseRezept_Fleischeintopf ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Fleischeintopf"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "2x raw meat"					);
					Doc_PrintLines	( nDocID,  0, "1x turnip"					);
					Doc_PrintLines	( nDocID,  0, "1x forest berry"					);

					Doc_Show		( nDocID );

	if (!Rezept_Fleischeintopf)
	{
		Rezept_Fleischeintopf = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Meat stew: 2x raw meat, 1x turnip, 1x wild berry");
	};
};

INSTANCE ItWr_Rezept_Orkbier		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Orkbier;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Orcbeer";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseRezept_Orkbier ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Orkbier"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x beer"					);
					Doc_PrintLines	( nDocID,  0, "1x juniper"					);
					Doc_PrintLines	( nDocID,  0, "1x Buddler meat"					);

					Doc_Show		( nDocID );

	if (!Rezept_Orkbier)
	{
		Rezept_Orkbier = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Orc beer: 1x beer, 1x juniper, 1x Buddler meat");
	};
};

INSTANCE ItWr_Rezept_Fangheuschreckensuppe		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Fangheuschreckensuppe;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Fangheuschreck soup";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseRezept_Fangheuschreckensuppe ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Fangheuschreckensuppe"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x mantle locust head"					);
					Doc_PrintLines	( nDocID,  0, "2x water"					);
					Doc_PrintLines	( nDocID,  0, "1x Fish"					);

					Doc_Show		( nDocID );

	if (!Rezept_Fangheuschreckensuppe)
	{
		Rezept_Fangheuschreckensuppe = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Catch grasshopper soup: 1x fish, 1x water, 1x mantis head");
	};
};

INSTANCE ItWr_Rezept_Rumtopf		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Rumtopf;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Rumtopf";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseRezept_Rumtopf ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Rumtopf"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Rum"					);
					Doc_PrintLines	( nDocID,  0, "1x sugar"					);
					Doc_PrintLines	( nDocID,  0, "3x forest berry"					);

					Doc_Show		( nDocID );

	if (!Rezept_Rumtopf)
	{
		Rezept_Rumtopf = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Rum pot: 1x rum, 1x sugar, 3x forest berry");
	};
};

INSTANCE ItWr_Rezept_Blutkult		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Blutkult;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Demon stew of damnation";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseRezept_Blutkult ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Dämoneneintopf der Verdammnis"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Demonheart"					);
					Doc_PrintLines	( nDocID,  0, "2x tongue of fire"					);
					Doc_PrintLines	( nDocID,  0, "3x Fly agaric"					);
					Doc_PrintLines	( nDocID,  0, "2x zombie meat"					);
					Doc_PrintLines	( nDocID,  0, "4x blood"					);

					Doc_Show		( nDocID );

	if (!Rezept_Blutkult)
	{
		Rezept_Blutkult = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Demon stew of damnation: 1x demon heart, 2x fire tongue, 3x fly agaric, 2x zombie flesh, 4x blood");
	};
};

INSTANCE ItWr_Rezept_Iwan		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Iwan;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Holy Bullets";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseRezept_Iwan ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Holy Bullets"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Dissolve 2 silver rings in a bottle of nitric acid and add a bottle of holy water. Blades and arrows wetted with this tincture can cause severe harm to undead and demonic creatures."					);

					Doc_Show		( nDocID );

		if (!Rezept_Iwan)
		{
			Rezept_Iwan = TRUE;

			Log_CreateTopic	(TOPIC_MOD_PFEILE, LOG_NOTE);
			B_LogEntry	(TOPIC_MOD_PFEILE, "I can bless my arrows at an alchemy table with holy water. They then cause more damage to creatures of evil. For the tincture I need two silver rings and normal holy water.");
		};
};

INSTANCE ItWr_DrachensudManaverbrennung		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDrachensudManaverbrennung;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Dragon soup of mana combustion";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseDrachensudManaverbrennung ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Drachensud der Manaverbrennung"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "4x Dragon Egg");
					Doc_PrintLines	( nDocID,  0, "1x Dragon root");
					Doc_PrintLines	( nDocID,  0, "2x dragon's blood");
					Doc_PrintLines	( nDocID,  0, "1x grated dragon scales");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Boil until a thick broth has formed from it.");

					Doc_Show		( nDocID );

	if (!DrachensudManaverbrennung)
	{
		DrachensudManaverbrennung = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Dragon soup of mana burnt: 4x dragon's egg, 1x dragon root, 2x dragon's blood, 1x crushed dragon scales");
	};
};

INSTANCE ItWr_Weisenchronik		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseWeisenchronik;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Wise Chronicle";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseWeisenchronik ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Weisenchronik"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Mix the herb of a black wise man and a dream call into strong alcohol, heat the whole 5min in closed bottle.");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Best enjoyed before bedtime.");

					Doc_Show		( nDocID );

		Weisenchronik = TRUE;
};

INSTANCE ItWr_Rezept_FolgsamkeitSnapper		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseFolgsamkeitSnapper;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Snapper obedience";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UseFolgsamkeitSnapper ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Respect for the snapper"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1 human blood");
					Doc_PrintLines	( nDocID,  0, "1 witch's blood");
					Doc_PrintLines	( nDocID,  0, "1 Dragon snapper horn");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Grate the horn and combine all ingredients in one drink at the laboratory table. He not only has the ability to turn snapper into comrades-in-arms... (cracked)");

					Doc_Show		( nDocID );

		FolgsamkeitSnapper = TRUE;
};

INSTANCE ItWr_Rezept_Purpurmond		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UsePurpurmond;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Purple moon";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};

func void UsePurpurmond ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "purple moon"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Bring a fly agaric and the herb of two stems to the boil in milk for 10 minutes.");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Best enjoyed before bedtime.");

					Doc_Show		( nDocID );

		Purpurmond = TRUE;
};
