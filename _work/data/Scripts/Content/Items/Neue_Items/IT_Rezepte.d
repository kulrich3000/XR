const int Value_Rezept = 100;

INSTANCE ItWr_Rezept_Fischragout		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Fischragout;
	scemeName			=	"MAPSEALED";
	description			= 	"Wzór: Ryby ragout";
	
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
					Doc_PrintLines	( nDocID,  0, "2 x ryba"					);
					Doc_PrintLines	( nDocID,  0, "1x jagoda lesna"					);

					Doc_Show		( nDocID );

	if (!Rezept_Fischragout)
	{
		Rezept_Fischragout = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Ryby ragout: 2x ryby, 1x lesne jagody.");
	};
};

INSTANCE ItWr_Rezept_Fischsuppe		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Fischsuppe;
	scemeName			=	"MAPSEALED";
	description			= 	"Zalecenie: Zupa rybna";
	
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
					Doc_PrintLines	( nDocID,  0, "1x Ryby"					);

					Doc_Show		( nDocID );

	if (!Rezept_Fischsuppe)
	{
		Rezept_Fischsuppe = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Zupa rybna: 1x ryby");
	};
};

INSTANCE ItWr_Rezept_Fleischwanzenragout		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Fleischwanzenragout;
	scemeName			=	"MAPSEALED";
	description			= 	"Rysunek: Rgout z pluskwy miesnej";
	
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
					Doc_PrintLines	( nDocID,  0, "2x grzyb ciemny"					);
					Doc_PrintLines	( nDocID,  0, "1x Mieso pluskwy"					);

					Doc_Show		( nDocID );

	if (!Rezept_Fleischwanzenragout)
	{
		Rezept_Fleischwanzenragout = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Grzybek miesny ragout: 2x grzyby ciemne, 1 x mieso pluskwy");
	};
};

INSTANCE ItWr_Rezept_Pilzsuppe		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Pilzsuppe;
	scemeName			=	"MAPSEALED";
	description			= 	"Przepisy: Zupa grzybowa";
	
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
					Doc_PrintLines	( nDocID,  0, "2x grzyb ciemny"					);
					Doc_PrintLines	( nDocID,  0, "1x Mieso Buddlera"					);

					Doc_Show		( nDocID );

	if (!Rezept_Pilzsuppe)
	{
		Rezept_Pilzsuppe = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Zupa grzybowa: 2 x ciemny grzybek, 1 x mieso Buddlera.");
	};
};

INSTANCE ItWr_Rezept_Fleischeintopf		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Fleischeintopf;
	scemeName			=	"MAPSEALED";
	description			= 	"Recepcja: gulasz miesny";
	
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
					Doc_PrintLines	( nDocID,  0, "2x surowe mieso surowe"					);
					Doc_PrintLines	( nDocID,  0, "1x rzepa"					);
					Doc_PrintLines	( nDocID,  0, "1x jagoda lesna"					);

					Doc_Show		( nDocID );

	if (!Rezept_Fleischeintopf)
	{
		Rezept_Fleischeintopf = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Gulasz miesny: 2x surowe mieso, 1x rzepa, 1x dzikie jagody.");
	};
};

INSTANCE ItWr_Rezept_Orkbier		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Orkbier;
	scemeName			=	"MAPSEALED";
	description			= 	"Recepta: Orcbeer";
	
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
					Doc_PrintLines	( nDocID,  0, "1x piwo"					);
					Doc_PrintLines	( nDocID,  0, "1x jalowiec"					);
					Doc_PrintLines	( nDocID,  0, "1x Mieso Buddlera"					);

					Doc_Show		( nDocID );

	if (!Rezept_Orkbier)
	{
		Rezept_Orkbier = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Piwo orkowe: 1x piwo, 1x jalowiec, 1x mieso Buddlera.");
	};
};

INSTANCE ItWr_Rezept_Fangheuschreckensuppe		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Fangheuschreckensuppe;
	scemeName			=	"MAPSEALED";
	description			= 	"Zalecenie: zupa Fangheuschreck.";
	
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
					Doc_PrintLines	( nDocID,  0, "1x glówka szaranczy plaszczowej"					);
					Doc_PrintLines	( nDocID,  0, "woda"					);
					Doc_PrintLines	( nDocID,  0, "1x Ryby"					);

					Doc_Show		( nDocID );

	if (!Rezept_Fangheuschreckensuppe)
	{
		Rezept_Fangheuschreckensuppe = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Polów zupy konopiarki: 1x ryby, 1x woda, 1x glówka mantrony");
	};
};

INSTANCE ItWr_Rezept_Rumtopf		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Rumtopf;
	scemeName			=	"MAPSEALED";
	description			= 	"Tresc: Rumtopff";
	
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
					Doc_PrintLines	( nDocID,  0, "1 x cukier"					);
					Doc_PrintLines	( nDocID,  0, "3x jagoda lesna"					);

					Doc_Show		( nDocID );

	if (!Rezept_Rumtopf)
	{
		Rezept_Rumtopf = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Pokrój Rum: 1 x rum, 1 x cukier, 3 x lesne jagody.");
	};
};

INSTANCE ItWr_Rezept_Blutkult		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Blutkult;
	scemeName			=	"MAPSEALED";
	description			= 	"Sposób uzycia: Demonuj duszek damski.";
	
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
					Doc_PrintLines	( nDocID,  0, "1x Demontaz"					);
					Doc_PrintLines	( nDocID,  0, "2x jezyk ognia"					);
					Doc_PrintLines	( nDocID,  0, "3x Z agaryka lotna"					);
					Doc_PrintLines	( nDocID,  0, "2x mieso zombie"					);
					Doc_PrintLines	( nDocID,  0, "4x krew"					);

					Doc_Show		( nDocID );

	if (!Rezept_Blutkult)
	{
		Rezept_Blutkult = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Demoniczny dusz zaplodnienia: 1x serce demona, 2x jezyk ognia, 3x muszka muszkatolowa, 2x cialo zombie, 4x krew.");
	};
};

INSTANCE ItWr_Rezept_Iwan		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezept_Iwan;
	scemeName			=	"MAPSEALED";
	description			= 	"Zalecenie: Wielkie Bulle";
	
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
					Doc_PrintLine	( nDocID,  0, "Kulki swiete"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Rozpuscic 2 srebrne pierscienie w butelce kwasu azotowego i dodac butelke swietej wody. Ostrza i strzalki zwilzone ta nalewka moga spowodowac powazne szkody dla nieumarlych i demonicznych stworzen."					);

					Doc_Show		( nDocID );

		if (!Rezept_Iwan)
		{
			Rezept_Iwan = TRUE;

			Log_CreateTopic	(TOPIC_MOD_PFEILE, LOG_NOTE);
			B_LogEntry	(TOPIC_MOD_PFEILE, "Moge blogoslawic swoje strzaly przy stole alchemii swieta woda. Pózniej zadaja wiecej szkód stworzeniom zla. Do nalewki potrzebuje dwóch srebrnych pierscieni i zwyklej swietej wody.");
		};
};

INSTANCE ItWr_DrachensudManaverbrennung		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDrachensudManaverbrennung;
	scemeName			=	"MAPSEALED";
	description			= 	"Pokrój: Smocza zupa do spalania maniku";
	
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
					Doc_PrintLines	( nDocID,  0, "4x Jajka smocza");
					Doc_PrintLines	( nDocID,  0, "1x Korzen smoczy");
					Doc_PrintLines	( nDocID,  0, "2x krew smocza");
					Doc_PrintLines	( nDocID,  0, "1x starta waga smocza");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Gotowac az do uformowania sie z niego grubego bulionu.");

					Doc_Show		( nDocID );

	if (!DrachensudManaverbrennung)
	{
		DrachensudManaverbrennung = TRUE;

		Log_CreateTopic	(TOPIC_MOD_KOCHREZEPTE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_KOCHREZEPTE, "Zupa smokowa z managiem spalonym: 4x jajko smoka, 1x korzen smoka, 2x krew smoka, 1x rozgniatana waga smocza.");
	};
};

INSTANCE ItWr_Weisenchronik		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseWeisenchronik;
	scemeName			=	"MAPSEALED";
	description			= 	"Postac: Wise Chronicle";
	
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
					Doc_PrintLines	( nDocID,  0, "Wymieszac ziolo czarnego medrca i wymarzone wezwanie do silnego alkoholu, ogrzac cale 5min w zamknietej butelce.");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Najlepiej sie bawic przed snem.");

					Doc_Show		( nDocID );

		Weisenchronik = TRUE;
};

INSTANCE ItWr_Rezept_FolgsamkeitSnapper		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseFolgsamkeitSnapper;
	scemeName			=	"MAPSEALED";
	description			= 	"Postac: posluszenstwo na snachowców";
	
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
					Doc_PrintLine	( nDocID,  0, "Szacunek dla snapera"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "krew ludzka");
					Doc_PrintLines	( nDocID,  0, "1 krew szamana");
					Doc_PrintLines	( nDocID,  0, "1 Smoczy klakson smokowy");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Zetrzyj tube i polacz wszystkie skladniki w jeden napój przy stole laboratoryjnym. Nie tylko ma on mozliwosc zamieniac sie w slimaka na towarzyszy broni.... (pekniety)");

					Doc_Show		( nDocID );

		FolgsamkeitSnapper = TRUE;
};

INSTANCE ItWr_Rezept_Purpurmond		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Rezept;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UsePurpurmond;
	scemeName			=	"MAPSEALED";
	description			= 	"Recepta: Fioletowy ksiezyc";
	
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
					Doc_PrintLine	( nDocID,  0, "fioletowy ksiezyc"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Doprowadz agaryke muchowa i ziolo dwóch lodyg do wrzenia w mleku przez 10 minut.");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Najlepiej sie bawic przed snem.");

					Doc_Show		( nDocID );

		Purpurmond = TRUE;
};
