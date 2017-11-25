//**********************************************************************************
//	StandardBrief
//**********************************************************************************

INSTANCE StandardBrief		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseStandardBrief;
	scemeName			=	"MAP";
	description			= 	"Standardowy list";
};
func void UseStandardBrief ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Standardowy list"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Z zarzabem blablah blablah blablah blablah blablah blablah blablah blablah blablah blablah blablah blablahlahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahbhbhblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahbla.....lahblahbla......."					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_PlagegeisterFormel		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	name;
	TEXT[0]				=	"zawiera formule lagodzaca dla duchów";
};

INSTANCE ItWr_LandstreicherSiegelring		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLandstreicherSiegelring;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"przez wlóczega";
};

func void UseLandstreicherSiegelring ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);

	if (Mod_Herold_Siegelring == 1)
	{
		Mod_Herold_Siegelring_Verlauf = Hlp_Random(2);

		Mod_Herold_Siegelring = 2;

		if (Mod_Herold_Siegelring_Verlauf == 0)
		{
			B_LogEntry	(TOPIC_MOD_HEROLD_SIEGELRING, "Wyglada na to, ze zlodziej wyruszyl w Minental.");
		}
		else
		{
			B_LogEntry	(TOPIC_MOD_HEROLD_SIEGELRING, "Wyglada na to, ze zlodziej przeszedl do Relendel.");
		};
	};

					if (Mod_Herold_Siegelring_Verlauf == 0)
					{
						Doc_PrintLines	( nDocID,  0, "Nie moge juz dluzej czekac. Wierzcie, ze straznicy sa na moich pietach. Wynajmuje samochód w Minental."					);
					}
					else
					{
						Doc_PrintLines	( nDocID,  0, "Nie moge juz dluzej czekac. Wierzcie, ze straznicy sa na moich pietach. Pozyczam Relendel."					);
					};

					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ps: Malgorzata snooka stoje na blotnistym szlamie, hähähähääääääää..."					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_GestathTrophyList		(C_Item)
{
	name 				=	"spis";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseGestathTrophyList;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Trofea dla Gestatatów";
};

func void UseGestathTrophyList ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);

		if (Mod_EIS_Gestath_DragonsnapperHorn > 0)
		{
			Doc_PrintLines	( nDocID,  0, ConcatStrings(IntToString(Mod_EIS_Gestath_DragonsnapperHorn), "x Róg slimaka smoczego"));
		};
		if (Mod_EIS_Gestath_LurkerClaw > 0)
		{
			Doc_PrintLines	( nDocID,  0, ConcatStrings(IntToString(Mod_EIS_Gestath_LurkerClaw), "x Czarodziej"));
		};
		if (Mod_EIS_Gestath_Keilerhauer > 0)
		{
			Doc_PrintLines	( nDocID,  0, ConcatStrings(IntToString(Mod_EIS_Gestath_Keilerhauer), "x Luk brosmy"));
		};
		if (Mod_EIS_Gestath_Flammenzunge > 0)
		{
			Doc_PrintLines	( nDocID,  0, ConcatStrings(IntToString(Mod_EIS_Gestath_Flammenzunge), "x Jezyk plomienia"));
		};
		if (Mod_EIS_Gestath_ShadowHorn > 0)
		{
			Doc_PrintLines	( nDocID,  0, ConcatStrings(IntToString(Mod_EIS_Gestath_ShadowHorn), "x Róg prowadnicy cieni"));
		};
		if (Mod_EIS_Gestath_SharkTeeth > 0)
		{
			Doc_PrintLines	( nDocID,  0, ConcatStrings(IntToString(Mod_EIS_Gestath_SharkTeeth), "x zebów rekina bagiennego"));
		};
					
		Doc_Show		( nDocID );

};

INSTANCE ItWr_KrautruestungListe		(C_Item)
{
	name 				=	"spis";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseKrautruestungListe;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Skladniki w zestawie odchudzania skokowego";
};

func void UseKrautruestungListe ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "15 roslin ziele torfowe"					);
					Doc_PrintLines	( nDocID,  0, "10 skór gadów"					);
					Doc_PrintLines	( nDocID,  0, "5 pretów surowej stali"					);
					Doc_PrintLines	( nDocID,  0, "3 kosci szkieletowe"					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_EivarZettel		(C_Item)
{
	name 				=	"okólnik";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseEivarZettel;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"z trupów w Gelato";
};

func void UseEivarZettel ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "To wlasnie dostalem od mojej chciwosci do trofeów z bardziej odleglych obszarów...... chcial zarobic duze pieniadze. Zamiast tego siedze tutaj i umieram na rane. Gdyby przekleta bestia w koncu zniknela, móglbym przynajmniej zejsc na dól i potraktowac ja prowizorycznie. Ale ja musialem sie wyglupic, zeby wszystko ukryc w pienku.... jak czyjes kradziez ode mnie. Sluzy mi ona prawie....");
					Doc_PrintLines	( nDocID,  0, "Patrzac w przyszlosc, Eivar");
					
					Doc_Show		( nDocID );

	Mod_Eivar = 1;

};

INSTANCE ItWr_TierZaehmung		(C_Item)
{
	name 				=	"okólnik";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;

	value 				=	50;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseTierZaehmung;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Dar uczciwosci Adanosa";
};

func void UseTierZaehmung ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Jak wszystkie istoty na zielonej ziemi Adanosa, zarówno ludzie jak i zwierzeta pochodza z boskiego stworzenia. Istnieje zwiazek pomiedzy tymi wszystkimi istotami. Wiedzialny ksiadz Adanos 'jest teraz w stanie wykorzystac te wiez dla siebie i zrobic zwierzeta, które sa w rzeczywistosci dzikie i nie do naprawienia."					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_GarpNotiz		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseGarpNotiz;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"przez Garp z dawnej kopalni";
};

func void UseGarpNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Dzien 8: Nie moge juz stac wsród innych. Wystarczy uciec od nich. Nigdy nie bede jesc ciala naszych zmarlych towarzyszy, aby przezyc. Bedziemy potepieni za cala wiecznosc.... Wiecej"					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Dzien 10: Ten glód, glód, dreczenie glodu. Co dalbym teraz na kawalek miesa? Ale te przepiekne gasienice pokazaly sie na górze i blokuja moja droge. No 10 koni zjedzie mnie na dól...."					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Dzien 11: Damn to, jedna z potworów mnie uderzyla, gdy próbowalam wspiac sie na dól. Czuje, jak trucizna przenika do moich zyl..... Nie bede to robic duzo dluzej....."					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Garp"					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_OTGeheimkammer01		(C_Item)
{
	name 				=	"Uwaga do czesci 1.";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOTGeheimkammer01;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Informacja o sekretnej izbie";
	TEXT[1]				=	"Trzeci trzeci górny";
};

func void UseOTGeheimkammer01 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters_oben.TGA"  , 0 		);
					Doc_SetMargins	( nDocID, -1, 50, 20, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Handschrift		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Poniewaz skrecona kombinacja dwóch przelaczników nie wchodzi do twojej glowy, zapisalem ja tutaj. Nie zastanawiaj sie nawet nad tym, by nie przenosic calej nuty razem z Toba! Orkiestry nie musza wiedziec, gdzie przechowujemy nasze skarby. Podziel go na trzy czesci i tylko te, która trzymasz przy sobie - reszte, która ukryjesz i wyjdz z niej tylko wtedy, gdy jej potrzebujesz, czy rozumiesz?"					);
					
					Doc_Show		( nDocID );

	if (Mod_OT_Geheimkammer == 0)
	{
		Mod_OT_Geheimkammer = 1;

		Log_CreateTopic	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_OT_GEHEIMKAMMER, "Znalazlem czesc notatki, w której Cor Kalom zdaje sie pisac, jak dostac sie do ukrytego pokoju. Jednak do rozwiazania zagadki potrzebuje jeszcze dwóch czesci.");
	};

};

INSTANCE ItWr_OTGeheimkammer02		(C_Item)
{
	name 				=	"Czesc 2 - Uwaga do uwagi";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOTGeheimkammer02;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Informacja o sekretnej izbie";
	TEXT[1]				=	"Bliski";
};

func void UseOTGeheimkammer02 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters_mitte.TGA"  , 0 		);
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Handschrift		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Otwierasz komore z dwoma przelacznikami ozdobionymi czaszkami. Znajdziesz je w prawym korytarzu dwóch korytarzy, które opuszczaja pokój z duza figura sypialni. Musisz uzyc dwóch przelaczników w kombinacji prawej: Najpierw lewy raz, nastepnie prawy raz, a nastepnie lewy raz...."					);
					
					Doc_Show		( nDocID );

	if (Mod_OT_Geheimkammer == 0)
	{
		Mod_OT_Geheimkammer = 1;

		Log_CreateTopic	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_OT_GEHEIMKAMMER, "Znalazlem czesc notatki, w której Cor Kalom zdaje sie pisac, jak dostac sie do ukrytego pokoju. Jednak do rozwiazania zagadki potrzebuje jeszcze dwóch czesci.");
	};

};

INSTANCE ItWr_OTGeheimkammer03		(C_Item)
{
	name 				=	"Uwaga do czesci 3";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOTGeheimkammer03;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Informacja o sekretnej izbie";
	TEXT[1]				=	"Nizsza trzecia czesc";
};

func void UseOTGeheimkammer03 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters_unten.TGA"  , 0 		);
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Handschrift		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "... dwa razy, trzy razy wlasciwe. Potem lewy raz, prawy dwa razy, lewy dwa razy. I wreszcie wlasciwe (nieczytelne) oznaczenie. W przeciwleglym pokoju otwiera sie otwór, który teraz szybko uderzyles."					);
					
					Doc_Show		( nDocID );

	if (Mod_OT_Geheimkammer == 0)
	{
		Mod_OT_Geheimkammer = 1;

		Log_CreateTopic	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_OT_GEHEIMKAMMER, "Znalazlem czesc notatki, w której Cor Kalom zdaje sie pisac, jak dostac sie do ukrytego pokoju. Jednak do rozwiazania zagadki potrzebuje jeszcze dwóch czesci.");
	};

};

INSTANCE ItWr_OTGeheimkammer04		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOTGeheimkammer04;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Z izby sekretnej";
	TEXT[2]				=	"Do szczesliwego straznika komnaty";
};

func void UseOTGeheimkammer04 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Handschrift		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Bylem szybszy! Gez. M. A. D."					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_Akahasch		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAkahasch;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Wiadomosc od Akahasch";
};

func void UseAkahasch ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Witaj, mój przyjaciel. Pomógl mi pan wtedy wiele pomocy i mysle, ze w koncu znalazlem sposób, aby panu za to podziekowac. Krótko przed tawerna Orlanu pod mostem znajduje sie jaskinia, w której klatka piersiowa stoi obok klucza. Umiescilem w nim kilka rzeczy, które z pewnoscia spodobaja sie Tobie."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Powitania,"					);
					Doc_PrintLines	( nDocID,  0, "Akahasch"					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_AkahaschNagur		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAkahaschNagur;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Akahasa byl tam z nim";
};

func void UseAkahaschNagur ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Sluchaj, Akahash, jesli nie pozwolisz, aby ciasto szybko roslo, jestes chory. Znam jakichs zlowrogich facetów, którzy zrobia rzeczy z toba, których nie mozna sobie wyobrazic w najgorszych koszmarach. Kiedy zrobia to z toba, królestwo Beliara porówna cie do tego, jak czuje sie raj."					);
					Doc_PrintLines	( nDocID,  0, "Czy to bylo jasne? Tak wiec w dwie godziny z pieniedzmi w tawernie, inaczej......"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "N."					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_GoraxAndokai		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseGoraxAndokai;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Dostawa wina Orlan";
};

func void UseGoraxAndokai ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Przejdz do tawerny 'Zur toten Harpie' i przynies dostawe wina do wlasciciela Orlana. Chce, aby zaplacil za to 250 zlota."					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_ErolNotiz1		(C_Item)
{
	name 				=	"Zólta uwaga";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErolNotiz1;
	scemeName			=	"MAP";
	description			= 	name;
};

func void UseErolNotiz1 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ja, Xardas, glowa czarnych magów, opuscilem swoja wieze i stworze domicyl w Khorinis. Wiec jestem blizej moich kolegów wierzacych i wydarzen na wyspie. Pozostawilem po sobie kilka rzeczy, które nie sa teraz potrzebne, ale moga byc przydatne pózniej. Pomyslny czlowiek otrzyma to, czego szuka...."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Xardas"					);
					
					Doc_Show		( nDocID );

	if (Mod_Erol_Fahrender == 2)
	&& (CurrentLevel == MINENTAL_ZEN)
	{
		Mod_Erol_Fahrender = 3;

		B_LogEntry	(TOPIC_MOD_EROL_FEUERMAGIER, "W jednej z skrzyn znalazlem notatke z Xardas. Mysle, ze bede musial pójsc do starej wiezy. Zobaczmy jak.....");

		Mob_CreateItems	("TRUHE_MT_04", ItWr_ErolNotiz2, 1);
	};

};

INSTANCE ItWr_ErolNotiz2		(C_Item)
{
	name 				=	"Nalezy zwrócic uwage na stara wieze Xardy.";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErolNotiz2;
	scemeName			=	"MAP";
	description			= 	name;
};

func void UseErolNotiz2 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Nawet najbardziej znani czytelnicy nie wiedza wszystkiego. Ale jest tez czlowiekiem o wielkim akumencie i cierpliwosci."					);
					
					Doc_Show		( nDocID );

	if (Mod_Erol_Fahrender == 3)
	&& (CurrentLevel == MINENTAL_ZEN)
	{
		Mod_Erol_Fahrender = 4;

		B_LogEntry	(TOPIC_MOD_EROL_FEUERMAGIER, "Oha! Tutaj jest zagadka do rozwiazania:'Nawet najbardziej czytelni jeszcze nie wiedza wszystkiego. Ale jest tez czlowiekiem o wielkim akumencie i cierpliwosci. '");

		//Mob_CreateItems	("TRUHE_MT_02", ItWr_ErolNotiz3, 1);
	};

};

INSTANCE ItWr_ErolNotiz3		(C_Item)
{
	name 				=	"Uwaga z regalu";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErolNotiz3;
	scemeName			=	"MAP";
	description			= 	name;
};

func void UseErolNotiz3 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Nie wszystkie pozary powinny plonac."					);
					
					Doc_Show		( nDocID );

	/*if (Mod_Erol_Fahrender == 3)
	&& (CurrentLevel == MINENTAL_ZEN)
	{
		Mod_Erol_Fahrender = 4;

		B_LogEntry	(TOPIC_MOD_EROL_FEUERMAGIER, "Hmm. Wie lösche ich Feuer? Ausblasen? Ersticken? Am besten wohl mit Wasser ...");

		Mob_CreateItems	("TRUHE_MT_02", ItWr_ErolNotiz3, 1);
	};*/

};

INSTANCE ItWr_ErolNotiz4		(C_Item)
{
	name 				=	"Uwaga z regalu";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErolNotiz4;
	scemeName			=	"MAP";
	description			= 	name;
};

func void UseErolNotiz4 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Czas konwersji moze ulec zmianie. Zmien symbol nieskonczonosci i masz klucz do zasilania."					);
					
					Doc_Show		( nDocID );

	if (Mod_Erol_Fahrender == 4)
	&& (CurrentLevel == MINENTAL_ZEN)
	{
		Mod_Erol_Fahrender = 5;

		B_LogEntry	(TOPIC_MOD_EROL_FEUERMAGIER, "Tajemniczy znów. Zmiana ikony.....");
	};

};

INSTANCE ItWr_JGSuchenderNotiz		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseJGSuchenderNotiz;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"mial z nim poszukujacego";
};
func void UseJGSuchenderNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Wkrótce to nastapi. Ci, którzy uwazaja sie za nietykalnych, sa wstrzasnieci i wnosza chaos do kraju. Ci, którzy mysla, ze uosabiaja równowage beda sie róznic. Ich wladza zniknie, a sprawiedliwosc powróci."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

	if (Mod_JG_MinenPart == 3)
	{
		Mod_JG_MinenPart = 4;

		B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Inny poszukujacy. Ale nie ten, który pochodzi z Khorinis. Mówil inaczej. Oto kolejna kartka papieru na Cyrco. Przeciez to niezwykle gospodarstwo domowe.");
	};

};

INSTANCE ItWr_AndreAbschied		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAndreAbschied;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Andres List";
};
func void UseAndreAbschied ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Czas jest pilny, bede mówic krótko."					);
					Doc_PrintLines	( nDocID,  0, "Miejmy nadzieje, ze plan roztopienia robota okazal sie sukcesem. Jednak juz od samego poczatku wiedzialem, ze prawdopodobnie nie uda sie zainstalowac drugiego wyjscia w piecu. Jesli to przeczytasz, moje zalozenie zostalo potwierdzone i prawdopodobnie przez jakis czas nie bede wsród Ciebie. Przepraszam za moje oszustwo, ale trzeba bylo uniknac zagrozenia projektu. Poniewaz byloby znacznie gorzej, gdyby obserwowano, jak maszyna zabijajaca dziala dluzej. Z pewnoscia nie byli to najbardziej nienaganni ludzie, od których wziela zycie. Ale oni nie zasluzyli na smierc. I Innos wie, ze nikt nie jest bez winy. Mój nastepca bedzie nastepca z szeregów strazników miejskich, którzy zgodzili sie wabic robota do pieca. Podejmowanie takiego niebezpieczenstwa w celu ochrony zycia innych jest wlasnie tym, co wyróznia bojownika Inno. Jestem pewien, ze bedzie on godnym nastepca."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Szczerze,"					);
					Doc_PrintLines	( nDocID,  0, "Andrzej"					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_BesaenftigungBeliars		(C_Item)
{
	name 				=	"okólnik";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBesaenftigungBeliars;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Beliars kojacy";
};
func void UseBesaenftigungBeliars ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Beliars kojacy"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "W ten sposób Beliar zniszczyl wioske z niszczycielskim pozarem w zlosci. Po jakims jednak czasie ludzie zaczeli budowac nowa osade, która zostala czesciowo zbudowana na pozostalosciach starych. Aby jednak uchronic ja przed takim samym losem jak poprzedni, dostojnicy podjeli tajna uchwale. W celu uspokojenia Boga ciemnosci, od teraz nalezy mu poswiecic niewielka ilosc zlota w odstepach kilku dni. Straznik miasta zawsze rzucal go w glab nocy, gdzie poswiecili swiatynie Beliarowi. W nastepnych pokoleniach coraz mniej kto wiedzial o prawdziwej przyczynie zlotego poswiecenia. Nie wszyscy ufali starszym miastu, ze poradza sobie z ta prawda, tak wiec zostala ona wreczona jako ofiara Adanosowi....."					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_KurganNotiz		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseKurganNotiz;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Uwaga: Kurgan";
};
func void UseKurganNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Doskonaly, mój wierny sluga. Porwania nie tylko poglebiaja napiecia miedzy przywolywaczami demonów a miastem. Im liczniejsze ich ciala powstana w ciemnosci, tym latwiej bedzie nam doprowadzic kopalnie pod nasza kontrole, kiedy nadejdzie czas."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "urna"					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_AndreSchwert		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAndreSchwert;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"I notatka dla mnie";
};
func void UseAndreSchwert ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Zawartosc mojej klatki piersiowej powinna pomóc wam oddac sprawiedliwosc waszemu zadaniu. Wsród zawartych w nim rzeczy znajdziemy równiez stopiony miecz. Daj ja Haradowi i powiedz mu, aby przepracowal ja dla Ciebie. On wie, o co w tym wszystkim chodzi i zrozumie."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Byc moze bedziesz sie zastanawial, dlaczego poswiecilem sie, choc jak dotad ofiara robota padli tylko przestepcy. No cóz, raz mialem mlodszego brata. Byl on naczyniem, zlodziejem i oszukaniem i zostal wygnany do kolonii za swoje czyny. Przeklelam jego imie i chcialam go wymazac z mojego zycia."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Nawet po upadku bariery nie uleglo to zmianie. Gdybym go kiedykolwiek widzial, przysiaglem sam sobie, ze nigdy go nie docenie, nie mówiac juz o zwróceniu sie do niego. I skrycie chcialem, aby umarl i na zawsze wymazal sie z powierzchni ziemi."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Teraz jednak niedawno dowiedzialem sie, ze stal sie czcigodnym sluga Inno i ze teraz kieruje swoje zycie calkowicie ku niemu. Wstydzilem sie siebie samego za przeklenstwa i przeklenstwa, które wyrzucilem przeciwko niemu i zrozumialem, ze sie myle."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Moze teraz rozumiesz moje dzialania troche lepiej."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Cóz, czas naciska na zmiane....."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Innos jest z wami na swojej drodze."					);
					
					Doc_Show		( nDocID );

	if (Mod_AndreSchwert == 0)
	{
		Mod_AndreSchwert = 1;

		B_LogEntry	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "Andre zostawil mi nute i roztopiony miecz w klatce piersiowej. Jesli chodzi o miecz, powiedzial mi, abym zabral go do Haradu i mial go ukuc dla mnie.");
	};

};

INSTANCE ItWr_DominiquesRuf		(C_Item)
{
	name 				=	"wiersz";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDominiquesRuf;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Dominique's Call";
};
func void UseDominiquesRuf ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Dominique's Call"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Bedziemy zac jego chwale."					);
					Doc_PrintLines	( nDocID,  0, "Innosy stoja obok mnie i moich braci"					);
					Doc_PrintLines	( nDocID,  0, "Zbiory beda ubój jak owce na mojej drodze."					);
					Doc_PrintLines	( nDocID,  0, "On jest ogniem w moim sercu."					);
					Doc_PrintLines	( nDocID,  0, "Mój ostrze jest dedykowane tylko dla niego."					);
					Doc_PrintLines	( nDocID,  0, "tego dnia rozbrzmiewac bedzie jego imie"					);
					Doc_PrintLines	( nDocID,  0, "Kazdy, kto stoi na mojej drodze"					);
					Doc_PrintLines	( nDocID,  0, "umrze moja reka"					);
					Doc_PrintLines	( nDocID,  0, "dla mnie, jestem wojownikiem Innosem"					);
					Doc_PrintLines	( nDocID,  0, "wykonawca testamentu"					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_YasinErpresser		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseYasinErpresser;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"list wymuszenia";
};
func void UseYasinErpresser ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "No cóz, mój drogi Yasin, wasze wymuszone ceny nie byly dokladnie swiadectwem milosci. Wiec udziele ci lekcji szczodrosci i milcze o Twoim miejscu pobytu... a jak wiesz, cisza jest zlotem. I pozwole ci zostawic mi skromny worek na kazdy pelny ksiezyc. Nie w naszym ekskluzywnym punkcie spotkan w miescie, ale 20m na pólnoc od Bramy Wschodniej."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ps: I uwierzcie mi, straznikom miejskim to twój najmniejszy problem. Zastanów sie, co zrobia ci twoi 'przyjaciele', gdy dowiedza sie, ze zostali zdruzgotani przez twoja lekkomyslnosc. Mysle, ze rozumiemy sie wzajemnie, kochani moi koledzy."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Z powazaniem,"					);
					Doc_PrintLines	( nDocID,  0, "M."					);
					
					Doc_Show		( nDocID );

};

var int Mod_ArgezTB1;

INSTANCE ItWr_ArgezTagebuch1		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseArgezTagebuch1;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Strona dziennika Argeza";
};
func void UseArgezTagebuch1 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Dzis budze sie i zmienilo sie moje zycie. Radanos znów pojawil sie we snie, tak jak w ostatnich czasach. Tym razem jednak przeslanie bylo jasniejsze i czulem, ze jego zadania byly absolutnie uzasadnione. Teraz wiem, dlaczego jestem z kim sie pokazuje: jestem jego wyborem, aby pokonac Xeres, jestem jedynym, który jest w stanie to zrobic. Znajac moja historie, nic dziwnego.");
					Doc_PrintLines	( nDocID,  0, "Ale nawet moja magia nie wystarcza, aby wziac Xeres. Dlatego tez bogowie wlozyli mi bron, której wzrok sam w sobie daje mi nowa odwage. W nieuniknionej walce 'Uriziel' - ramiona Boze - polaczy moc Radano i da Xeresowi decydujacy impuls.");
					Doc_PrintLines	( nDocID,  0, "Drogi pamietnik, nie wiem, czy kiedykolwiek cie znów zobacze. Teraz znaja panstwo moje ciemne i jasne strony, a ja chce zrobic wszystko, aby ta druga strona zwyciezyla. Oby znalazca tej broszury uslyszal tylko dobre rzeczy o mnie.");
					Doc_PrintLine	( nDocID,  0, ""					);

					Doc_Show		( nDocID );

	if (!Mod_ArgezTB1) {
		B_LogEntry	(TOPIC_MOD_ARGEZ, "Argez wydaje mi sie byc znacznie starszy niz pomyslalem! Tlumaczona przez niego strona dziennika sugeruje, ze to on kiedys sprzeciwial sie Xeresowi i zapewnial, ze bedzie mógl zostac wygnany. Co od tego czasu utrzymuje go przy zyciu? Czy on sam ma boskie pochodzenie?");
	};

};

INSTANCE ItWr_YasinNotiz		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseYasinNotiz;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Uwaga Yasin's Uwaga";
};
func void UseYasinNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Gotta znalezc kogos, kto sprzata te swinie. Nie ma jednak nikogo, kogo móglby on rozpoznac jako jednego z nas. Albo inaczej poczuje pieczen, a ja zostane dostarczony na dobre."					);
					
					Doc_Show		( nDocID );

};

var int Mod_UrsNotiz_Gelesen;

INSTANCE ItWr_UrsNotiz		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseUrsNotiz;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"po lewej stronie za";
};

func void UseUrsNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Niestety, nie moglem znalezc tutaj Wally. Spogladam za Starym Obozem przy lesie."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

	if (Mod_Urs_Hund == 1 && !Mod_UrsNotiz_Gelesen)
	{
		Mod_UrsNotiz_Gelesen = TRUE;

		B_LogEntry	(TOPIC_MOD_URS_HUND, "Urs szuka Wally gdzies za starym obozem kolo lasu.");
	};

};

INSTANCE ItWr_SeraNotiz		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseSeraNotiz;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Serca mial z nim";
};
func void UseSeraNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Bardzo dobre, moje córki. Dzieki swojemu podarunkowi powinienes byc w stanie z latwoscia podporzadkowac mieszkanców danego obszaru swojej woli. Na pólnocny wschód od nas jest wioska. Tam wypróbuj swoja moc."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_Strewak_01		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseStrewak_01;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Uwaga: Strewak 1";
};
func void UseStrewak_01 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "... pomiedzy stworzeniami i zabito je bezlitosnie. Zaden atak, jakkolwiek gwaltowny, nie zrobil na nim wrazenia... jak gdyby nie znal bólu.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Gdy weszlismy glebiej do swiatyni, w koncu dotarlismy do dlugiego przejscia, przez które przechodzil ogien. Mój towarzysz zwrócil sie do mnie i wreczyl mi kamienne tabliczki i zaklecia. Zwrócil mi uwage, ze gdybym je przeczytal, otworzylbym sobie wiele rzeczy. W koncu mówil troche o celu swojej podrózy i o odkupieniu, które go teraz czekalo, potem odwrócil sie i przeszedl przez plomienie, az moje oczy nie mogly go juz zobaczyc."					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_Strewak_02		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseStrewak_02;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Uwaga: Strewak 2";
};
func void UseStrewak_02 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Pozostalem na siedzaco, jakby spellbound i spojrzenie padlo na tablice przed soba. Bylo tak, jakbym nagle zostal wypelniony wiedza, a tablica rozpadla sie. Rozumiem wszystkie dziwne hieroglify na scianach sali, nawet jesli byly bardzo fragmentaryczne. Potem odkrylem tekst relatywnie kompletny. Opowiadal, ze plomienie byly magiczna natura i spalaly cale zywiace je zycie. A on opowiedzial o olbrzymiego lodu, którego serce moze sprawic, ze plomien ugasi....."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_Strewak_03		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseStrewak_03;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Uwaga: Strewak 3";
};
func void UseStrewak_03 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Zimna pogoda jest bezlitosna, a moja sila jest wyczerpana. Bede odpoczywal z rodzina w wiosce, zanim przejde po drodze....."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "... Podnosi sie przed mna, potezny, przerazajacy. Im blizej do niego dojde, tym bardziej bezlitosnie ogarnia mnie zimno. Teraz wykorzystam role i mam nadzieje, ze uda mi sie go pokonac...."					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_KesselProblem		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseKesselProblem;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Bruce wraz z nim";
};
func void UseKesselProblem ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Wszystko w porzadku, wiec nie zapomne:"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Sobotni wieczór:"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "50 Ruda i wszyscy sa zadowoleni."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Noc w poniedzialek:"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "20 Czy tym razem dla Festera dla wiekszej przyczyny."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Sroda w nocy:"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "10 rudy na 12 sztuk."					);
					
					Doc_Show		( nDocID );

	if (Mod_NL_TalkesselProblem < 3)
	{
		Mod_NL_TalkesselProblem = 3;

		B_LogEntry	(TOPIC_MOD_NL_TALKESSELPROB, "Soso, powinienem porozmawiac z Festerem.");
	};

};

INSTANCE ItWr_LeeInKneipe		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLeeInKneipe;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Pisanie przez Lee";
	TEXT[1]		=	"Daj mi dostep do pubu.";
};
func void UseLeeInKneipe ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Ten czlowiek zarabial na zycie w obozie jako poszukiwacz i placil swój udzial."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Lee"					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_EremitEinkaufsliste		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseEremitEinkaufsliste;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Lista zakupów pustelnika";
};
func void UseEremitEinkaufsliste ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "lista zakupowa"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "20 bochenków chleba");
					Doc_PrintLines	( nDocID,  0, "szynka");
					Doc_PrintLines	( nDocID,  0, "10 Wino");
					Doc_PrintLines	( nDocID,  0, "10 Kielbasa");
					Doc_PrintLines	( nDocID,  0, "5 Grot");
					Doc_PrintLines	( nDocID,  0, "30 Drewno");
					Doc_PrintLines	( nDocID,  0, "300 strzalek");
					Doc_PrintLines	( nDocID,  0, "2 molowy smar");
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_PetuniaZettel		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UsePetuniaZettel;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"byl z nim jeden z kijów bocznych Petunii,";
};
func void UsePetuniaZettel ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Kiedy widzisz kandydata, uderzyles w niego i wylej go dodatkowym eliksirem. Bedzie marzyl, ze znajdzie piekny platek, w którym znajdowaly sie goblinowe matrony. Tam nalezy wziac przygotowany platek. Kandydat nastepnie wezmie arkusz do klienta i w koncu wiemy, kto jest naszym glównym celem. Wylacz kandydata i klienta i wróc do mnie."					);
					Doc_PrintLine	( nDocID,  0, "P."					);
					
					Doc_Show		( nDocID );

	if (Mod_VMG_Pruefung_Petunia == 4)
	{
		Mod_VMG_Pruefung_Petunia = 5;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Znam teraz plan Petunii. Powinienem z nia porozmawiac, aby dowiedziec sie wiecej o niej.");
	};

};

INSTANCE ItWr_Schneegeister		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseSchneegeister;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"mial wraz z nim zombie w swiatyni w Gelato.";
};
func void UseSchneegeister ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "To prawie czas."					);
					Doc_PrintLines	( nDocID,  0, "Wszystko jest juz ustalone na rytual. Wkrótce bede tez zwiazany z demonicznymi sferami i bede mógl wykorzystac wladze.... Wiecej tak jak oni. A nieszczesni mieszkancy wioski beda dreszczykiem...... na zawsze."					);
					
					Doc_Show		( nDocID );

	if (Mod_Thys_Schneegeister == 1)
	{
		Mod_Thys_Schneegeister = 2;

		B_LogEntry	(TOPIC_MOD_GELLIT_SCHNEEGEISTER, "No cóz, najwyrazniej nie sprostal mrocznym silom. Powinienem powiedziec Thysowi o tym.");
	};

};

INSTANCE ItWr_TheodorusBotschaft		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseTheodorusBotschaft;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"soll ich auf dem Gerüst am Marktplatz vorlesen";
};
func void UseTheodorusBotschaft ()
{
	var int nDocID;

	nDocID = 	Doc_Create		()			  ;							// DocManager
	Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
	Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
	Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
	Doc_PrintLines	( nDocID,  0, "Ogloszenie w imieniu Teodoru"					);
	Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
	Doc_PrintLines	( nDocID,  0, "Obywatele Khoratasa, ja, nowy gubernator, niniejszym informujemy Panstwa o wszelkich zmianach w strajku górniczym, które natychmiast wejda w zycie. Skargi, które slusznie zlozyli, podlegaja szczególowej analizie; tylko wtedy zdecyduje, czy wznowic prace w kopalni na nowych warunkach."					);
	Doc_PrintLines	( nDocID,  0, "Dotychczasowe smierci sa tragiczne, ale znajde sposób na zrekompensowanie rodzinom, które ucierpialy. Blagam, zebyscie nie pozwolili górnikom poczuc wasza mozliwa zlosc."					);
	Doc_PrintLine	( nDocID,  0, ""					);
	Doc_PrintLine	( nDocID,  0, "Odpowiednio,"					);
	Doc_PrintLine	( nDocID,  0, "Theodorus"					);
					
	Doc_Show		( nDocID );
};

INSTANCE ItWr_PerZettel		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UsePerZettel;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Formula medytacji w dolinie";
};
func void UsePerZettel ()
{
	if (Npc_GetDistToWP(hero, "TUG_87") < 2000)
	&& (Npc_KnowsInfo(hero, Info_Mod_Per_Pruefung3))
	{
		Mod_VMG_Pruefung = 4;

		Npc_RemoveInvItems	(hero, ItWr_PerZettel, 1);
	}
	else if (Npc_GetDistToWP(hero, "TUG_87") >= 2000)
	{
		Print	("Nie tutaj.");
	}
	else
	{
		Print	("Jeszcze nie.");
	};
};

INSTANCE ItWr_RaetselWand		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRaetselWand;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"zawiera objasnienie lamiglówki na scianie";
};
func void UseRaetselWand ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Szalwia interpretuje znaki"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "0000 = 0"					);
					Doc_PrintLine	( nDocID,  0, "0001 = 1"					);
					Doc_PrintLine	( nDocID,  0, "0010 = 2"					);
					Doc_PrintLine	( nDocID,  0, "0100 = 4"					);
					Doc_PrintLine	( nDocID,  0, "1000 = 8"					);
					
					Doc_Show		( nDocID );

	if (Mod_JG_Raetselwand == 0)
	{
		Mod_JG_Raetselwand = 1;

		Log_CreateTopic	(TOPIC_MOD_JG_RAETSELWAND, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_JG_RAETSELWAND, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_JG_RAETSELWAND, "Oops! To wciaz wydaje mi sie tajemnica. Hm....");
	};

};

INSTANCE ItWr_OrktempelZettel1		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOrktempelZettel1;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Uwaga poczatkujacego";
	TEXT[1]		=	"Napisany odrecznie.";
};

FUNC VOID UseOrktempelZettel1 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "To sa moje ostatnie oddechy w swietle ledwo jarzacej sie latarki. Kor Kalom doprowadzil nas wszystkich do ruiny; to obsesyjny fanatyk. W dól dowiedzialem sie, co to znaczy byc przerazonym. Strach, który odsuwal mnie od grupy Bractwa i do tego waskiego ubytku, który teraz bedzie moim grobowcem. Poniewaz szczelina przez która sie wspialem zniknela z powodu jednego z owych malych trzesien ziemi; tylko ubytek, gdzie jestem w towarzystwie mumii. Jedyna moja nadzieja jest drugie trzesienie ziemi, jedynym moim zyczeniem jest lyk wody....");
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_OrktempelZettel2		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOrktempelZettel2;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Starozytny dokument";
	TEXT[1]		=	"Jest on tylko czesciowo czytelny.";
};

FUNC VOID UseOrktempelZettel2 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "(nieczytelny)? masz zamiar zbudowac swiatynie dla Mistrza Krushaka. posteriori Byc moze pozwolisz wrócic do Jharkendend..... Uciec, natychmiastowa smierc grozi.... nie milosierdzie.... My.... Szamani, Twoja strazników.... Mistrz ma na tobie milosierdzie!");
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_OrktempelZettel3		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOrktempelZettel3;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Dokument lukowy";
	TEXT[1]		=	"Pelna z literami orkiestrowymi";
};

FUNC VOID UseOrktempelZettel3 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "(Nie da sie odczytac znaków, ale agresywny krój pisma nie sugeruje przyjaznego tonu. Wydaje sie, ze slowo 'Krushak' pojawia sie czesciej w tekscie. Przyjrzawszy sie blizej zauwazasz, ze kolor pisma nie jest czarny jak tusz, ale brazowy jak suszona krew.... )");
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_BlutkelchZettel1		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBlutkelchZettel1;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Czesc lamiglówki zabójcy";
};

FUNC VOID UseBlutkelchZettel1 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "ANIS");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "DARS");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "HERR");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "MINEN");
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_BlutkelchZettel2		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBlutkelchZettel2;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Czesc lamiglówki zabójcy";
};

FUNC VOID UseBlutkelchZettel2 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "STRAND");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "JHARKEN");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "SCHAFT");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "NICHT");
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_BlutkelchZettel3		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBlutkelchZettel3;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Czesc lamiglówki zabójcy";
};

FUNC VOID UseBlutkelchZettel3 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "KHOR");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "MINEN");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "HAUS");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "TAL");
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_Zeichnung_Stuhl		(C_Item)
{
	name 				=	"rysunek";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseZeichnung_Stuhl;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Szkic krzesla Coragon";
};

FUNC VOID UseZeichnung_Stuhl ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "Zeichnung_Stuhl.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_Zeichnung_Tisch		(C_Item)
{
	name 				=	"rysunek";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseZeichnung_Tisch;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Szkic stolu stalego Matteos";
};

FUNC VOID UseZeichnung_Tisch ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "Zeichnung_Tisch.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_Zeichnung_Schmuckkasten		(C_Item)
{
	name 				=	"rysunek";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseZeichnung_Schmuckkasten;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Szkic pudelka na bizuterie";
};

FUNC VOID UseZeichnung_Schmuckkasten ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "Zeichnung_Schmuckkasten.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_Zeichnung_Bierkrug		(C_Item)
{
	name 				=	"rysunek";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseZeichnung_Bierkrug;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Szkic kufla piwa";
};

FUNC VOID UseZeichnung_Bierkrug ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "Zeichnung_Bierkrug.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_Zeichnung_Karte		(C_Item)
{
	name 				=	"rysunek";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseZeichnung_Karte;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"rysunek mapy";
};

FUNC VOID UseZeichnung_Karte ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "Zeichnung_Karte.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_SteinDerWeisen		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseSteinDerWeisen;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Skladniki kamienia filozoficznego";
};

FUNC VOID UseSteinDerWeisen ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "Lista Kamienia Filozoficznego");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "5 kawalków zlota");
	Doc_PrintLines	(nDocID,  0, "3 krysztaly skalne");
	Doc_PrintLines	(nDocID,  0, "2 czesci siarki");
	Doc_PrintLines	(nDocID,  0, "15 kawalków rudy");
	Doc_PrintLines	(nDocID,  0, "5 sztuk wegla");
	Doc_PrintLines	(nDocID,  0, "monety stare");
	Doc_PrintLines	(nDocID,  0, "5 koraliki");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "1 eliksir wytrzymalosciowy");
	Doc_PrintLines	(nDocID,  0, "1 eliksir umiejetnosci");
	Doc_PrintLines	(nDocID,  0, "1 Eliksir zycia");
	Doc_PrintLines	(nDocID,  0, "2 Eliksir Ducha Swietego");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_MahamadRaetsel1		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseMahamadRaetsel1;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"zawiera pierwsza lamiglówke Mahamad.";
};

FUNC VOID UseMahamadRaetsel1 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLines	(nDocID,  0, "Za dobra butelke wina placisz 100 zlota i polowe ceny.");
	Doc_PrintLine	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "Ile zatem kosztuje wino?");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_MahamadRaetsel2		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseMahamadRaetsel2;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"zawiera druga ukladanke Mahamad.";
};

FUNC VOID UseMahamadRaetsel2 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "lettersMahamad.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLine	(nDocID,  0, "Zliczanie trójkatów");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_MahamadRaetsel3		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseMahamadRaetsel3;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"zawiera trzecia ukladanke Mahamada";
};

FUNC VOID UseMahamadRaetsel3 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLines	(nDocID,  0, "Sprawdz prawidlowosc liczb w kazdym wierszu i dodaj dwie cyfry do kazdej z nich.");
	Doc_PrintLine	(nDocID,  0, "");
	Doc_PrintLine	(nDocID,  0, "21 18 16 13 11  8 . .");
	Doc_PrintLine	(nDocID,  0, "12 14 13 15 14 16 . .");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_MahamadRaetsel4		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseMahamadRaetsel4;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"zawiera czwarta ukladanke Mahamada";
};

FUNC VOID UseMahamadRaetsel4 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLines	(nDocID,  0, "Ktos jest chory i dostaje trzy butelki eliksiru leczniczego. Powinny one byc wykonywane co 30 minut.");
	Doc_PrintLine	(nDocID,  0, "");
	Doc_PrintLine	(nDocID,  0, "Jak dlugo zanim wszystko minie?");
					
	Doc_Show (nDocID);
};

var int GnomZettel_Gelesen;

INSTANCE ItWr_GnomZettel		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseGnomZettel;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"z pijanego gnomu na plaskowyzu pastwiskowym";
};
func void UseGnomZettel ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Wyruszylam w doline rudy, aby wypelnic kieszenie ruda w jednej z kopalni. Jestem pewien, ze niebawem do zobaczymy Cie, starego przyjaciela."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

	if (GnomZettel_Gelesen == 0)
	{
		GnomZettel_Gelesen = 1;

		B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "W tym gnomie znalazlem notatke od przyjaciela, który powiedzial mu, ze bedzie szukal rudy w Minentalu w kopalni. Chyba powinienem go zobaczyc.....");
	};

};

INSTANCE ItWr_BlutkultMage		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBlutkultMage;
	scemeName			=	"MAP";
	description			= 	"przez magika kultywujacego krew";
};
func void UseBlutkultMage ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Damn..... komus udalo sie wygnac nasze stworzenia. Jak to jest mozliwe? Czuje, jak wygasa moja wlasna sila zyciowa zwiazana z moimi istotami. Musze to zrobic.... nikogo.... damn Adanos....."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_BlutkultMage2		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBlutkultMage2;
	scemeName			=	"MAP";
	description			= 	"przez magika kultywujacego krew";
};
func void UseBlutkultMage2 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Oshustvor, moje uprawnienia znikaja i zostawiam wam to przeslanie, zanim odejde jak inni bracia."					);
					Doc_PrintLines	( nDocID,  0, "Kiedy poszedlem po drodze, nieszczesni magicy wodni zdolali wygnac stworzen, które wzywalismy na plaskowyzu. Kiedy wrócilem do domu, nasi bracia lezeli juz umarli na ziemi. Równiez moje zycie zaczyna sie wychodzic na zewnatrz..... l... ...."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_TelborZettel		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseTelborZettel;
	scemeName			=	"MAP";
	description			= 	"od Telboru";
};
func void UseTelborZettel ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Damn ten ciemny pielgrzym. Zanim przeniósl sie na nasza farme, przyniósl chorobe i zniszczenie."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Caly czas modle sie do Innosa, ale najwyrazniej nie odpowiada on na moje modlitwy. Nikt, kto niesie pomoc w te mroczne dni...."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Innos stoi przy nas....."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_HenkerRechnung		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseHenkerRechnung;
	scemeName			=	"MAP";
	description			= 	"Faktura oprawcy wystawiona przez Hansa";
};
func void UseHenkerRechnung ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "kwit"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1 osie tortur, nowe? 600 zlote?"					);
					Doc_PrintLine	( nDocID,  0, "3 Kag 64?50 Zloty?"					);
					Doc_PrintLine	( nDocID,  0, "Razem 650 zloty?"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Zabawa z nowymi przejeciami!"					);
					Doc_PrintLine	( nDocID,  0, "Hans"					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_FeuermagierMeditation		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseFeuermagierMeditation;
	scemeName			=	"MAP";
	description			= 	"Oczyszczanie duchowe";
};
func void UseFeuermagierMeditation ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Oczyszczanie duchowe"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Wypic szklanke czystej wody"					);
					Doc_PrintLine	( nDocID,  0, "Szukasz wygodnego fotela."					);
					Doc_PrintLine	( nDocID,  0, "Zamykac oczy, odpoczac"					);
					Doc_PrintLine	( nDocID,  0, "Skoncentruj sie na wewnetrznej stronie powiek"					);
					Doc_PrintLine	( nDocID,  0, "Rozpoznawanie i interpretacja ksztaltów"					);
					Doc_PrintLine	( nDocID,  0, "ok. 2 godziny pózniej: budzic sie"					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_BibAusleihliste		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBibAusleihliste;
	scemeName			=	"MAP";
	description			= 	"Lista wypozyczalni Biblioteki Khorata";
};
func void UseBibAusleihliste ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "lista pozyczek"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Anselm: (Hodowla szczurów), Zmierzch czesc 1-4"					);
					Doc_PrintLines	( nDocID,  0, "Heiler: Podstawy medycyny dla krwawych poczatkujacych."					);
					Doc_PrintLines	( nDocID,  0, "Fuego: Dark Magic: Dark Magic"					);
					Doc_PrintLines	( nDocID,  0, "Teodorek: Systemy panstwowe - ich wady i zalety"					);
					Doc_PrintLines	( nDocID,  0, "Peter: Przepisy egzotyczne"					);
					Doc_PrintLines	( nDocID,  0, "(Pomysly: Jak doprawic swoje zycie milosne)"					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_Fragebogen		(C_Item)
{
	name 				=	"spis";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseFragebogen;
	scemeName			=	"MAP";
	description			= 	"Pytania dotyczace Khorata";
};
func void UseFragebogen ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "ankieta"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1. W którym budynku jest tylko jeden z poronien Khoraty?"					);
					Doc_PrintLines	( nDocID,  0, "2. Jaka byla nazwa straznika trzech szczurów?"					);
					Doc_PrintLines	( nDocID,  0, "3. Dowiedz sie o poczatkach khoraty!"					);
					Doc_PrintLines	( nDocID,  0, "4. Ilu dealerów ma swoje stanowisko na rynku Khoraty?"					);
					Doc_PrintLines	( nDocID,  0, "5. Kto jest odpowiedzialny za zapewnienie plynnego dzialania zaopatrzenia w wode?"					);
					Doc_PrintLines	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_ErikaLiebesbrief		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErikaLiebesbrief;
	scemeName			=	"MAP";
	description			= 	"od Erika do Wendel";
};
func void UseErikaLiebesbrief ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Darling, "					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Kto opiekuje sie toba tesknota, kiedy rano patrolujecie trawe rozlana? Kto wyglada tesknota odbija sie od twojego mocnego pleców? (Ja mam gesie skórki, kiedy mysle o tym. ) Ach, gdybys byl sam na trasie, jakie mozliwosci mialbym mozliwosci? Teraz jednak staram sie w ten sposób, majac nadzieje, ze nie zostanie odrzucony. Moje mysli sa zawsze z wami. Daj mi znak."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "E."					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_Lehrling01		(C_Item)
{
	name 				=	"Arkusz praktykanta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLehrling01;
	scemeName			=	"MAP";
	description			= 	"Konserwacja ogrodu - jak sobie z tym radze? [1]";
};
func void UseLehrling01 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Wykopywanie korzeni pala"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Uzyj lopaty do usuwania ziemi w duzej odleglosci od rosliny, aby nie uszkodzic wlosów i cienkich korzeni. Wyznacz polozenie glównego korzenia delikatnie pociagajac go i ostroznie odslaniajac. Nalezy koniecznie szanowac glówny korzen, bo boczne pedy sa znacznie mniej potrzebne! Po pól metra glebokosci kopac w poblizu walu glównego, az do momentu, gdy bedzie mozna go latwo odlaczyc od ziemi."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_Lehrling02		(C_Item)
{
	name 				=	"Arkusz praktykanta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLehrling02;
	scemeName			=	"MAP";
	description			= 	"Konserwacja ogrodu - jak sobie z tym radze? [2]";
};
func void UseLehrling02 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Pielegnacja Triticum aestivum"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Nasiona te lubia byc pokryte warstwa gleby o wysokosci kilku centymetrów, aby móc w pelni rozwinac sie.");
					Doc_PrintLines	( nDocID,  0, "Nawozenie w cwierctuszy jest wystarczajace! Czestsze nawozenie atakuje pszenice u podstawy i czyni ja podatna na zarazenie chrzaszczami.");
					Doc_PrintLines	( nDocID,  0, "W klimacie umiarkowanym T. potrzeby. estivum nie powinno byc nawadniane tylko w suchych okresach.");
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_AnselmForFrazer		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAnselmForFrazer;
	scemeName			=	"MAP";
	description			= 	"Pisanie Anselm";
};
func void UseAnselmForFrazer ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Mozesz ufac chlopcu, Frazerowi.... On jest nieszkodliwy!"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_TruhenNotizJG		(C_Item)
{
	name 				=	"fragment wiadomosci";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	name;
};

INSTANCE ItWr_TruhenScrollJG		(C_Item)
{
	name 				=	"Rola tajemnicy";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItSc_PalLight.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	name;
};

INSTANCE ItWr_NovizeJGPass		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseNovizeJGPass;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"przez nowicjusza na przepustce";
};
func void UseNovizeJGPass ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Opusc teren i udaj sie bezposrednio do doliny, czeka na Ciebie nowe zadanie. Niektórzy wykupieni lokalni bandyci beda Cie wspierac w twoich misjach. Nie ponosisz nigdy wiecej porazki."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Khorgor"					);
					
					Doc_Show		( nDocID );

	if (Mod_JG_NovizeJGPass == 0)
	{
		Mod_JG_NovizeJGPass = 1;

		Log_CreateTopic	(TOPIC_MOD_JG_BANDITENSCHULD, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_JG_BANDITENSCHULD, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_JG_BANDITENSCHULD, "To kolejny nowicjusz ognia. Czego chca. Musze pokazac Cyrco nuty.");
	};

};

INSTANCE ItWr_Daemonisch		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDaemonisch;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Zombie bylo z dreczycielami duszy,";
};
func void UseDaemonisch ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Dzieki temu wiele sie nie dokonczyles. Na naszym nastepnym spotkaniu w tawernie nagrodze Was kilkoma piwami.... ale jak czarny cien...."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

	if (Mod_HQ_Daemonisch == 3)
	{
		Mod_HQ_Daemonisch = 4;

		//B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Aha, Taverne ... nur welche?");
	};

};

INSTANCE ItWr_Daemonisch_SP_01		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDaemonisch_SP_01;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Zombie bylo z dreczycielami duszy,";
};
func void UseDaemonisch_SP_01 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Innos, powitanie,"					);
					Doc_PrintLines	( nDocID,  0, "Jesli chcialbys cieszyc sie miejscem z dala od ludzi, gdzie mozna odpoczac w cichej poboznosci do Innos, moge goraco polecic jaskinie nad jeziorem. Z jeziora rozposciera sie wspanialy widok na jezioro i cieszyc sie mozna swiatlem slonca wieczornego i nocnymi gwiazdami."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Ulf"					);
					
					Doc_Show		( nDocID );

		if (Mod_HQ_Daemonisch_SP_01 == 1)
		{
			Mod_HQ_Daemonisch_SP_01 = 2;

			B_StartOtherRoutine	(Mod_753_NOV_Ulf_NW, "DAEMONISCH");

			B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Aha, wyglada jak Ulf wabi ludzi do miejsc z dreczycielami duszy.");
		};


};

INSTANCE ItWr_Daemonisch_SP_02		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDaemonisch_SP_02;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Zombie bylo z dreczycielami duszy,";
};
func void UseDaemonisch_SP_02 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Hej, maly obóz w lesie jest naprawde idealny do odpoczynku z dala od wszystkich ludzi. Male zwierzeta sa równiez dostepne, jesli chcesz sledzic swoje hobby - polowanie ponownie. A nocne niebo jest piekne....."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Till"					);
					
					Doc_Show		( nDocID );

		if (Mod_HQ_Daemonisch_SP_02 == 1)
		{
			Mod_HQ_Daemonisch_SP_02 = 2;

			B_StartOtherRoutine	(Mod_541_NONE_Till_NW, "DAEMONISCH");

			B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Aha, wyglada jak Till kusi ludzi do miejsc z dreczycielami duszy.");
		};
};

INSTANCE ItWr_Daemonisch_SP_03		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDaemonisch_SP_03;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Zombie bylo z dreczycielami duszy,";
};
func void UseDaemonisch_SP_03 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Pozdrowienia, przyjaciel,"					);
					Doc_PrintLines	( nDocID,  0, "W malej dolinie znajduja sie wszelkiego rodzaju rzadkie ziola, a w jaskini znajduja sie takze niezwykle grzyby. Jestem pewien, ze niektórzy magicy i alchemicy beda Ci za to zazdroscic. Póznym wieczorem widac takze dziwne krysztaly swiecace i jarzace sie w strefie wejscia do jaskini. Warto tylko odwiedzic....."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Valentino"					);
					
					Doc_Show		( nDocID );

		if (Mod_HQ_Daemonisch_SP_03 == 1)
		{
			Mod_HQ_Daemonisch_SP_03 = 2;

			B_StartOtherRoutine	(Mod_754_NONE_Valentino_NW, "DAEMONISCH");

			B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Aha, wyglada jak Valentino wabi ludzi do miejsc z dreczycielami duszy.");
		};

};

INSTANCE ItWr_DraalVermisstennotiz		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDraalVermisstennotiz;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"przez cialo Draala";
};
func void UseDraalVermisstennotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Warunki pracy sa nieludzkie. Nie wiem, jak dlugo moge to zrobic. Moje uprawnienia z dnia na dzien maleja. Tylko suchy chleb i woda, bez swiatla slonecznego..... Nie wiem nawet, jak dlugo tu jestem. Czy to sa tygodnie, czy nawet miesiace? Zrezygnowalem z nadziei, ze kiedykolwiek znowu wyjde z tego miejsca. Adanos stoi przy mnie....."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

	if (Mod_WM_KurganAlarm == 3)
	{
		Mod_WM_KurganAlarm = 4;

		B_LogEntry	(TOPIC_MOD_VERMISSTE, "Oh, to wlasnie on rozumial jako 'inny'. No cóz, w kazdym razie mam pewnosc, ze demonowi wojownicy sa za nim i moga wrócic do Vatr.");
	};

};

INSTANCE ItWr_CirioNotiz		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseCirioNotiz;
	scemeName			=	"MAP";
	description			= 	"od Ciria do Richarda";
};
func void UseCirioNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Przywiózlem czlowieka do jaskini, nie powinien juz nam przysparzac problemów, nasi przyjaciele beda sie z nim bawic. Jesli chcesz zajrzec do gryzienia, narysowalem punkt na mapie. Ale jesli znam Cie, jestem pewien, ze z ta kobieta bedziesz sie dobrze bawic. W miedzyczasie czekam na nowe jedzenie przy wejsciu do Relendel. Zobacze cie pózniej w punkcie spotkan."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

	if (Mod_RattenQuest == 1)
	{
		Mod_RattenQuest = 2;

		B_LogEntry	(TOPIC_MOD_RATTENQUEST, "W jaskini tutaj w Relendel powinien byc mezczyzna, kolejna ofiara Cirio. I wydaje sie, ze mezczyzna imieniem Richard zlapal kobiete. Byc moze znajde wskazówke, gdzie mieszka z czlowiekiem w jaskini....");
	};

};

INSTANCE ItWr_LeonhardRichter		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLeonhardRichter;
	scemeName			=	"MAP";
	description			= 	"Do sedziego";
};
func void UseLeonhardRichter ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Weentder, Chamiel nud Lippphi jest równiez znany jako jeden z najwiekszych na swiecie, wiec chcialbym kontynuowac czytanie denfreuderspen-felings!"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );


};

INSTANCE ItWr_AnselmRundschreiben		(C_Item)
{
	name 				=	"biuletyn";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAnselmRundschreiben;
	scemeName			=	"MAP";
	description			= 	"Okólnik dla mieszkanców Khoraty.";
};
func void UseAnselmRundschreiben ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Aby uzyskac wiecej szczególowych informacji, nalezy przekrecic strone."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );


};

INSTANCE ItWr_CirioNotiz2		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseCirioNotiz2;
	scemeName			=	"MAP";
	description			= 	"z ciala mezczyzny";
};
func void UseCirioNotiz2 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Miód,"					);
					Doc_PrintLines	( nDocID,  0, "Nie wiem, jak dlugo moge dluzej trwac. Odkad obudzilem sie tutaj w jaskini, codziennie bylo wiecej szczurów od czasu kiedy zabilem jednego, dwa nowe szczury wracaja. Mam nadzieje, ze ktos nas uratuje, ale najwyrazniej mieszkancy miasta nie dbaja o to, co dzieje sie z ludnoscia wiejska. Nie wiem, czego szczury od nas nie chca, przynajmniej dla mnie jest to prawdopodobnie tylko spozycie pokarmu. Ale dopóki zostawia cie samotnie, nie obchodzi mnie mój los."					);
					Doc_PrintLine	( nDocID,  0, "Kocham Cie!"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "P. S. Kto to czyta, ten zdaje sie, ze znalazl moje cialo. Prosze przekazac ten list mojej zonie. Wskazówka: Bylo dwoje szczurów, jeden z nich mial pancerz futrzarski, pochodzil prawdopodobnie z bardzo zimnego miejsca."					);
					
					Doc_Show		( nDocID );

	if (Mod_RattenQuest == 2)
	{
		Mod_RattenQuest = 3;

		B_LogEntry	(TOPIC_MOD_RATTENQUEST, "umarly mezczyzna, ale w jego pokoju znalazlem wskazówke dla Richarda. On mial na sobie futrzasta pancerz i prawdopodobnie mozna go znalezc w zimnym miejscu......");

		B_GivePlayerXP	(200);
	};

};

INSTANCE ItWr_EchsenQuest_01		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseEchsenQuest_01;
	scemeName			=	"MAP";
	description			= 	"notatka z jaszczurki";
};
func void UseEchsenQuest_01 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Karmienie samic"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "a. ) Mlode samice: Zabic piec rekinów bagiennych i wrzucic ich mieso do strefy przygranicznej."					);
					Doc_PrintLines	( nDocID,  0, "b. ) Starozytne samice: Slabe piec rekinów bagiennych do polowy ich energii, a nastepnie zawinac je w obszar przygraniczny."					);
					Doc_PrintLines	( nDocID,  0, "c. ) Silne samice: zgniatac piec zdrowych rekinów bagiennych do strefy przygranicznej"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Uwaga: Fabryka rekina wyplywa z miasta po prawej stronie w kotlinie doliny. Obszar graniczny stanowi kladka laczaca miasto i wejscie do bagna. Mieso musi byc uzywane w strefie przygranicznej, scisle wedlug hierarchii."					);

					Doc_Show		( nDocID );

	if (Mod_EchsenQuest_01 == 0)
	{
		Mod_EchsenQuest_01 = 1;

		Log_CreateTopic	(TOPIC_MOD_ECHSEN_WEIBCHENFUETTERUNG, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ECHSEN_WEIBCHENFUETTERUNG, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_ECHSEN_WEIBCHENFUETTERUNG, "Mam karmic kobiety. Kazdy rodzaj samicy wymaga innego rodzaju przygotowania. Najpierw mam zajac sie mlodymi samicami i wrzucic do strefy przygranicznej bagienne mieso rekinów bagiennych z hodowli rekinów bagiennych. Farma rekina znajduje sie po prawej stronie kotliny dolinowej, kiedy opuszczam miasto. Karmienie musi byc scisle zgodne z hierarchia. Powinnam go uzywac do rozprowadzania miazszu....");

		Wld_InsertNpc	(Swampshark_Fuetterung_01,	"ADW_BANDIT_VP3_05");
		Wld_InsertNpc	(Swampshark_Fuetterung_01,	"ADW_BANDIT_VP3_05");
		Wld_InsertNpc	(Swampshark_Fuetterung_01,	"ADW_BANDIT_VP3_03");
		Wld_InsertNpc	(Swampshark_Fuetterung_01,	"ADW_SHARK_02");
		Wld_InsertNpc	(Swampshark_Fuetterung_01,	"ADW_SHARK_01");

		Wld_InsertNpc	(Swampshark,	"FP_ROAM_SHARK_30");
		Wld_InsertNpc	(Swampshark,	"FP_ROAM_SHARK_27");
		Wld_InsertNpc	(Swampshark,	"FP_ROAM_SHARK_24");
		Wld_InsertNpc	(Swampshark,	"FP_ROAM_SHARK_04");
		Wld_InsertNpc	(Swampshark,	"FP_ROAM_DANGER_28");
		Wld_InsertNpc	(Swampshark,	"FP_ROAM_SHARK_SPECIAL_02");
		Wld_InsertNpc	(Swampshark,	"FP_STAND_LOGAN");
		Wld_InsertNpc	(Swampshark,	"FP_ROAM_BL_FLIES_07");
		Wld_InsertNpc	(Swampshark,	"FP_ROAM_SHARK_24");
		Wld_InsertNpc	(Swampshark,	"FP_ROAM_BL_FLIES_07");
	};

};

INSTANCE ItWr_EchsenQuest_02		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseEchsenQuest_02;
	scemeName			=	"MAP";
	description			= 	"notatka z jaszczurki";
};
func void UseEchsenQuest_02 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Swiatlo pozarów"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "a. ) Oswietl cztery latarnie w dolnym miescie."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Uwaga: Ogien swieci w walce."					);

					Doc_Show		( nDocID );

	if (Mod_EchsenQuest_02 == 0)
	{
		Mod_EchsenQuest_02 = 1;

		Log_CreateTopic	(TOPIC_MOD_ECHSEN_SIGNALFEUER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ECHSEN_SIGNALFEUER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_ECHSEN_SIGNALFEUER, "Mam rozpoczac cztery latarnie w miescie. Komentujac notatke stwierdzono, ze ogien jest zapalany w walce....");

		Wld_InsertNpc	(Mod_7387_Signalfeuer_AW,	"BANDIT_CAMP_ROOF_04");
		Wld_InsertNpc	(Mod_7388_Signalfeuer_AW,	"ADW_BL_SIGNALFEUER_02");
		Wld_InsertNpc	(Mod_7389_Signalfeuer_AW,	"BL_DOWN_SIDE_05");
		Wld_InsertNpc	(Mod_7390_Signalfeuer_AW,	"BL_WAIT_FINN");
	};

};

INSTANCE ItWr_EchsenQuest_03		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseEchsenQuest_03;
	scemeName			=	"MAP";
	description			= 	"notatka z jaszczurki";
};
func void UseEchsenQuest_03 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Znajdz zarlacz bagienny bialy"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "a. ) Zabierz z toba cztery mlode jaszczurki."					);
					Doc_PrintLines	( nDocID,  0, "b. ) Poszukaj naszej czesci bagna pod katem zarlacza bialopletwego."					);
					Doc_PrintLines	( nDocID,  0, "c. ) Gdy znajdziesz rekina bagiennego, zawolaj ich cos (niezaleznie od tego, co, i tak cie nie rozumieja)."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Uwaga: Pokaz cztery jaszczurki tej notatki, które beda Ci towarzyszyc."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Shhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhzzzzz."					);

					Doc_Show		( nDocID );

	if (Mod_EchsenQuest_03 == 0)
	{
		Mod_EchsenQuest_03 = 1;

		Log_CreateTopic	(TOPIC_MOD_ECHSEN_SUMPFHAIFINDEN, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ECHSEN_SUMPFHAIFINDEN, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_ECHSEN_SUMPFHAIFINDEN, "Mam szukac rekina bagiennego w bagnie. W tym celu pokaze najpierw cztery mlode jaszczurki, a nastepnie otworze je z nimi.");
	};

};

INSTANCE ItWr_TorlofForSaturas		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_TorlofForSaturas;
	scemeName			=	"MAP";
	description			= 	"przez Torlof dla Satura";
};
func void UseItWr_TorlofForSaturas ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Czcigodny magik wody. Wysylam ci ten magiczny krysztal. Przekazac poslanniczce te oplate, która wydaje sie wam kiedykolwiek odpowiednia."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Torlof"					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_DeanGekillt		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_DeanGekillt;
	scemeName			=	"MAP";
	description			= 	"mial golem z nim";
};
func void UseItWr_DeanGekillt ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Zabij pierwszego spotykanego czarodzieja i przynos mi swoja szate. Nastepnie zdejmij swoje cialo i poczekaj na dalsze instrukcje."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Trador"					);

					Doc_Show		( nDocID );

	if (Mod_Turendil_Faice_Day == 2)
	{
		if (Npc_KnowsInfo(hero, Info_Mod_Dever_Trador))
		{
			B_LogEntry_More	(TOPIC_MOD_FAICE_GIFT, TOPIC_MOD_DEVER_DEAN, "Dziekan zostal zamordowany przez golem wyslany przez Tradora.", "Nie sadze, aby dziekan byl w stanie odpowiedziec na pytanie Dever' a, czy go znal.");
		}
		else
		{
			B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "Dziekan zostal zamordowany przez golem wyslany przez Tradora.");
		};

		Mod_Turendil_Faice_Day = 3;
	};

};

INSTANCE ItWr_DMBildNotiz		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_DMBildNotiz;
	scemeName			=	"MAP";
	description			= 	"polozyc sie na lózku króla";
};
func void UseItWr_DMBildNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Drogi Królu!"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Oto moje najnowsze kreacje. Dziekujemy za uznanie i wkrótce do Ciebie!"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Twój sekretarz ds. narkotyków"					);

					Doc_Show		( nDocID );

	if (Mod_SL_Meer == 3)
	{
		Mod_SL_Meer = 4;

		B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Wydaje sie, ze sekretarzem narkotyków jest równiez malarz. Moze on moze narysowac mi obraz bagna?");
	};

};

INSTANCE ItWr_HofstaatListe		(C_Item)
{
	name 				=	"spis";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_HofstaatListe;
	scemeName			=	"MAP";
	description			= 	"z tym, co oslabia królewskie gospodarstwo domowe";
};
func void UseItWr_HofstaatListe ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1. )."					);
					Doc_PrintLines	( nDocID,  0, "2. ) Ominac grobowiec królewski."					);
					Doc_PrintLines	( nDocID,  0, "3. ) Królewski ukochany uwodziciel"					);
					Doc_PrintLines	( nDocID,  0, "4. ) Rozpowszechnic w Khoracie, ze dawca radosci slepo oslepia"					);
					Doc_PrintLines	( nDocID,  0, "5. ) Wlewanie wody do publicznej fontanny radosci."					);
					Doc_PrintLine	( nDocID,  0, ""					);

					Doc_Show		( nDocID );

	if (Mod_SL_Schwaechen == 0)
	{
		Mod_SL_Schwaechen = 1;
		Mod_SL_PartBlind = 1;

		B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Aby oslabic dwór, musze zrobic piec rzeczy: trzezwy Fluffy, wychodzic z królewskich grobów, uwodzic królewska kochanke, glosic plotki, ze dawca radosci slepi i wypelnia woda fontanne radosci.");

		Log_CreateTopic	(TOPIC_MOD_SL_FLUFFY, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SL_FLUFFY, LOG_RUNNING);
		Log_CreateTopic	(TOPIC_MOD_SL_LOCHGRAEBER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SL_LOCHGRAEBER, LOG_RUNNING);
		Log_CreateTopic	(TOPIC_MOD_SL_GELIEBTE, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SL_GELIEBTE, LOG_RUNNING);
		Log_CreateTopic	(TOPIC_MOD_SL_BLIND, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SL_BLIND, LOG_RUNNING);
		Log_CreateTopic	(TOPIC_MOD_SL_BRUNNEN, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SL_BRUNNEN, LOG_RUNNING);

		B_LogEntry_NS	(TOPIC_MOD_SL_FLUFFY, "Musze trzec Fluffy' ego. Powinnam dostac troche jedzenia.");
		B_LogEntry_NS	(TOPIC_MOD_SL_LOCHGRAEBER, "Nad koparka do otworów. Nie bedzie to latwe.");
		B_LogEntry_NS	(TOPIC_MOD_SL_GELIEBTE, "Aby uwiesc królewskiego kochanka..... Jestem pewien, ze kobieciarz bedzie w stanie mi pomóc.");
		B_LogEntry_NS	(TOPIC_MOD_SL_BLIND, "Plotki rozprzestrzeniaja sie, ze radosne dozowniki sa slepe? Dzwieki proste....");
		B_LogEntry_NS	(TOPIC_MOD_SL_BRUNNEN, "Musze napelnic dobrze wesola woda.");

		// Neue NPC's

		Wld_InsertNpc	(Mod_7334_HS_Typ_REL, "REL_242");

		// Bei alten Routinewechsel

		B_StartOtherRoutine	(Mod_7013_HS_Fluffy_REL, "WAITINGFORNEWFOOD");
		B_StartOtherRoutine	(Mod_7011_HS_Alex_REL, "START");
	};

};

INSTANCE ItWr_SentenzaForCutter		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_SentenzaForCutter;
	scemeName			=	"MAP";
	description			= 	"zentenza";
};
func void UseItWr_SentenzaForCutter ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Bardzo dobry. Po tym, jak zdejmiemy z Bullitu wszystkie rzeczy, wystarczy tylko powiedziec, ze najemnik lub mysliwy na orki zrobilby ten czyn. Zdejmijmy ten karabin wkrótce, wiec nikt nie moze nas przesledzic."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Bloodwyn"					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_StraschiduosBrief		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_StraschiduosBrief;
	scemeName			=	"MAP";
	description			= 	"z zapasów Straschiduo.";
};
func void UseItWr_StraschiduosBrief ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Doskonaly. Cala nasza wspólpraca zniszczy ten nedzny region smiercia i bieda. Magicy tych trzech bóstw nie maja pojecia, co zrobili swoja glupia praca. Na razie nalezy pozwolic czarownicom przekonac sie, ze praca ta przyniesie pozytek ich bogu Beliarowi. Nie potrzebujemy ich równiez. Ale gdy tylko miasto i gospodarstwa zostana zniszczone, nie trac czasu na pozbycie sie czarownic. Mój pan bedzie niezmiernie zadowolony i nagrodzi cie ksiazeco..... jak robil to w przeszlosci.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "urna");

					Doc_Show		( nDocID );

		if (Mod_WM_StraschiduosBrief == FALSE)
		{
			Mod_WM_StraschiduosBrief = TRUE;

			B_GivePlayerXP	(150);
		};

};

INSTANCE ItWr_GennGiftListe		(C_Item)
{
	name 				=	"Wykaz roslin trujacych";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_GennGiftListe;
	scemeName			=	"MAP";
	description			= 	"z Genn";
};
func void UseItWr_GennGiftListe ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "wykaz roslin trujacych"					);
					Doc_PrintLine	( nDocID,  0, "-----------------------");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Ponzola");
					Doc_PrintLine	( nDocID,  0, "Venena");
					Doc_PrintLine	( nDocID,  0, "Mithrida");
					Doc_PrintLine	( nDocID,  0, "Fungo");
					Doc_PrintLine	( nDocID,  0, "Piante");

					Doc_Show		( nDocID );

};

INSTANCE ItWr_InubisZettel		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_InubisZettel;
	scemeName			=	"MAP";
	description			= 	"Elena";
};
func void UseItWr_InubisZettel ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Po tym, jak nasz zasadzka odniosla sukces i Iwan uderzyl w dól, dostaje sie jego glowe. W dajacej sie przewidziec przyszlosci powinienes go ukryc w bezpiecznym miejscu, aby zapobiec ostatniemu niebezpieczenstwu, aby Iwan powrócil do zycia. Jego tulów pochowalem w grobie. Smierc i zniszczenie wszystkich sprawiedliwych.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Inubis");

					Doc_Show		( nDocID );
};

INSTANCE ItWr_MoeNotiz_Dead		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_MoeNotiz_Dead;
	scemeName			=	"MAP";
	description			= 	name;
};
func void UseItWr_MoeNotiz_Dead ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Slyszalem o tajnym spotkaniu miedzy Canthar a innym wysokiej rangi szermierzem. Mówi sie, ze nastepnego wieczoru znajduje sie miasto w Kana-Lisa-Tion (ale niezbyt blisko zlodziejskiej gildii). Moze uda mi sie to spotkanie zakonczyc!");

					Doc_Show		( nDocID );

		if (Mod_CantharQuest_Last == 2)
		{
			Mod_CantharQuest_Last = 3;

			Log_CreateTopic	(TOPIC_MOD_MOE_DEAD, LOG_MISSION);
			B_SetTopicStatus	(TOPIC_MOD_MOE_DEAD, LOG_RUNNING);
			B_LogEntry_More	(TOPIC_MOD_MOE_DEAD, TOPIC_MOD_CANTHAR_GESCHAEFTE, "Moe mial na niej wiadomosc, ze mówi o spotkaniu miedzy Canthar a drugim przestepca. Planuje sie jej przeprowadzenie wieczorem lub w nocy w czesci ukladu kanalizacyjnego z dala od cechu zlodziei.", "Zagrozenie nie okazalo sie goracym powietrzem - Moe, mój najwazniejszy informator, zostal zamordowany w magazynie.");

			Wld_InsertNpc	(Mod_7211_NONE_Schlaeger_NW, "NW_CITY_KANAL_14");
			Wld_InsertNpc	(Mod_7212_NONE_Schlaeger_NW, "NW_CITY_KANAL_14");
			Wld_InsertNpc	(Mod_7213_NONE_Schlaeger_NW, "NW_CITY_KANAL_14");
		};
};

INSTANCE ItWr_ElenaNotiz		(C_Item)
{
	name 				=	"okólnik";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_ElenaNotiz;
	scemeName			=	"MAP";
	description			= 	"Uwaga: Elena";
};
func void UseItWr_ElenaNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Wiele do zrobienia w czary. Nie powinienes zapomniec o pozbyciu sie glowy. Cóz, ale rozwijajaca sie magia uzdrawiajaca nie bedzie miala prawie nikogo, kto przypadkowo natknie sie na nasza jaskinie.");
					Doc_PrintLine	( nDocID,  0, ""					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_Paper		(C_Item)
{
	name 				=	"poslizg";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	1;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	TEXT[5]		= Name_Value;		COUNT[5]		= value;
};

INSTANCE ItWr_HSAufzeichnung		(C_Item)
{
	name 				=	"rejestracja";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
};

INSTANCE ItWr_Passierschein_HS		(C_Item)
{
	name 				=	"przelecz";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
};

INSTANCE ItWr_HagenForHymir		(C_Item)
{
	name 				=	"pismo zapieczetowane";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;

	description		= name;
	TEXT[0]			= "By Lord Hagen dla Hymiru";
};

INSTANCE ItWr_Rukhar_Wacholder		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRukhar_Wacholder;
	scemeName			=	"MAP";
	description			= 	"Z zapasów Rukhara";
};
func void UseRukhar_Wacholder ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Rukhar, ty idiotuj! Kradziez zostala zauwazona. Coragon musi nas do tej pory szukac! Sprzedaj jalowca do Thekli, hostessy najemniczki, i rozmyj sie. To konczy nasza wspólprace!"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Kardif"					);

					Doc_Show		( nDocID );

	if (Mod_KnowsRukharWacholder == 0)
	{
		Mod_KnowsRukharWacholder = 1;

		B_LogEntry	(TOPIC_MOD_CORAGON_WACHOLDER, "Rukhar dal mi list od Cardif. Kardif jest równiez zamieszany w to przestepstwo.");
	};

};

INSTANCE ItWr_CronosAbsorbKristall		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseCronosAbsorbKristall;
	scemeName			=	"MAP";
	description			= 	"wezwac boskiego poslannika";
};
func void UseCronosAbsorbKristall ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Kosc szkieletu, leczniczy korzen, korzen ognia, 500 zlota, 1 kawalk rudy i nieznany skladnik - prawdopodobnie cos jadalnego."					);

					Doc_Show		( nDocID );
};

INSTANCE ItWr_MoesZettel		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseMoesZettel;
	scemeName			=	"MAP";
	description			= 	"odoe";
};
func void UseMoesZettel ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Wiemy, gdzie mieszkasz. Wiemy, co zdradziliscie (nazwa jest nastawiona na nieczytelnosc). Wkrótce dowiesz sie, ile ziaren pylu znajduje sie na podlodze magazynu."					);

					Doc_Show		( nDocID );

	if (Mod_MoeDontTalk == 5)
	{
		Mod_MoeDontTalk = 6;
	};

};

INSTANCE ItWr_SnorresNotiz		(C_Item)
{
	name 				=	"okólnik";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseSnorresNotiz;
	scemeName			=	"MAP";
	description			= 	"Snorre";
};
func void UseSnorresNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Przepraszam, drogi Smok, ze po tak wielu latach pod twoim kanalem wolalem zbudowac wlasna egzystencje. Nie bedziesz mial nic przeciwko temu, jesli wykorzystam w tym celu niektóre twoje smokowe skarby. W krainie marzen mam zamiar zrobic z nim milego Lenza."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Bardzo panstwu dziekuje,"					);
					Doc_PrintLines	( nDocID,  0, "Twoje cenione Snorre; O)"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Hahahaha, nene nene nene...."					);
					
					Doc_Show		( nDocID );


};

INSTANCE ItWr_TodeslisteVonCanthar		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseTodeslisteVonCanthar;
	scemeName			=	"MAP";
	description			= 	"Z inwentaryzacji klubu";
};
func void UseTodeslisteVonCanthar ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Wez Kuno na przelecz, zanim dostanie wiatr sprawy. Potem zaczekaj tam.... i rozjasnia ja wokól obudowy. A co bardzo wazne: Silence Flora z górnego kwartalu! Moze cos wiedziec."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);

					Doc_Show		( nDocID );

	if (Moe_KnowsPort == 7)
	{
		Moe_KnowsPort = 8;

		B_LogEntry	(TOPIC_MOD_MOE_PORT, "Wydaje mi sie, ze jestem niepopularny..... przynajmniej ktos próbuje wydobyc mnie z drogi, jak Kuno. Moze owa flora z Górnej dzielnicy wie cos o tym wie. Przynajmniej powinienem ich ostrzec.");
	};

};

INSTANCE ItWr_MagicPaper		(C_Item)
{
	name 				=	"Uwaga magiczna";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	//on_state[0]			=   UseMagicPaper;
	//scemeName			=	"MAP";
	description			= 	name;
};
func void UseMagicPaper ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Zatrzymac kazdego, kto podaza za nasza droga! Pozwólcie mi Panstwo, ze natychmiast o tym dowiedzialem sie."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Kardif"					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_DragomirsNotiz		(C_Item)
{
	name 				=	"okólnik";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDragomirsNotiz;
	scemeName			=	"MAP";
	description			= 	"Notiz";
};
func void UseDragomirsNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Jesli cos nam sie tu stanie, spotkamy sie ponownie w Nandorze. Zalozyl maly obóz w poblizu kamiennego kola w ciemnym lesie, co wydaje mi sie dosc bezpieczne."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Dragomir"					);

					Doc_Show		( nDocID );

	if (Mod_Drago == 1)
	{
		Mod_Drago = 2;

		Log_CreateTopic	(TOPIC_MOD_JG_LAGER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_JG_LAGER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_JG_LAGER, "Obóz Dragomira jest spalony, udal sie do Nandora. Powinienem go tam zobaczyc.");
	};

};

INSTANCE ItWr_LorfornsBrief		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLorfornsBrief;
	scemeName			=	"MAP";
	description			= 	"List od Lorfornn";
};
func void UseLorfornsBrief ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Lorforn, z zalaczona rolka zaklecia mozesz stworzyc duzy obsuw, który spowoduje zawalenie sie calego systemu jaskin w Tugettso. W rezultacie gobliny musza uciekac do doliny i powoli, ale pewnie doprowadza ja do zguby. Jednak po uzyciu roli powiedzenia upewnij sie jednak, ze nikt nie zblizy sie do matronów, aby mogli nadal produkowac potomstwo."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "P."					);

					Doc_Show		( nDocID );

		if (TUG_Lorforn == FALSE)
		{
			TUG_Lorforn = TRUE;

			B_LogEntry	(TOPIC_MOD_FERCO_GOBLIN, "W drodze do Matronsa, który jest odpowiedzialny za trzesienie ziemi, spotkalem Lorforna. On pochodzi od pewnego 'P'. 'zostales poslany do Ciebie.");
		};

};

INSTANCE WilfriedsTagebuchseite		(C_Item)
{
	name 				=	"strona dziennika";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseWilfriedsTagebuchseite;
	scemeName			=	"MAP";
	description			= 	"Strona dziennika Wilfried";
};

func void UseWilfriedsTagebuchseite ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Co moze byc piekniejsze niz ucieczka przed miastem, halas, brud, ludzie? Odkad odkrylem ta mala jaskinie tuz za miastem, odwiedzilem ja czesto. Do tej pory tak ja skonfigurowalem, ze moglem tam mieszkac przez lata (nigdy nie wiesz, co sie dzieje). Zawsze z niecierpliwoscia czekam na moja zlota klatke piersiowa. Uwielbiam dotykac rekami zlota, które zdobylem i zarobilem w najlepszej pracy. Byc moze wkrótce bede naprawde gotowy do znikniecia bez sladu...... Ale wczesniej sa ludzie, z którymi chce sie osiedlic!"					);

					Doc_Show		( nDocID );

		if (Mod_WilfriedsQuest == 4)
		{
			Mod_WilfriedsQuest = 5;

			B_LogEntry	(TOPIC_MOD_WILFRIED_GOLD, "W jednej z skrzynek Wilfrieda znalazlem strone dziennika, na której wspomina sie o jaskini w poblizu miasta, która Wilfried zalozyl jako swój drugi dom. Czy powinienem tam zajrzec?");
		};

};

INSTANCE ItMi_Bauanleitung		(C_Item)
{
	name 				=	"instrukcje montazu";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"Instrukcja budowy urzadzen do uprawy roslin bagiennych";
};

INSTANCE ItWr_StahlkampfAnleitung		(C_Item)
{
	name 				=	"instrukcje montazu";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"Instrukcja obslugi stalowego personelu bojowego";
};

INSTANCE ItWr_WilfriedsListe		(C_Item)
{
	name 				=	"spis";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"Lista jaskini Wilfrieda";
};

INSTANCE ItWr_BuddlerNachrichtVonAL		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBuddlerNachrichtVonAL;
	scemeName			=	"MAP";
	description			= 	"List od Alissandro";
};
func void UseBuddlerNachrichtVonAL ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Chce, abyscie udali sie do przywódcy Rycerzy Demonicznych i zlozyli oferte podpisania kontraktu na stara kopalnie. Kopalnia jest slusznie nasza i mamy prawo zadac jej czesci. Jesli jest zainteresowany, powiedz mu, aby skontaktowal sie ze mna. Jesli tak sie nie stanie, powiedz mu, ze bedziemy zmuszeni podjac dzialania."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Alissandro"					);

					Doc_Show		( nDocID );

	if (Hat_BuddlerNachrichtVonAL == FALSE)
	{
		Hat_BuddlerNachrichtVonAL = TRUE;

		Log_CreateTopic	(TOPIC_MOD_AL_MINE, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_AL_MINE, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_AL_MINE, "Otrzymalem wiadomosc od Alissandro, ze powinienem zlozyc ofiare Rycerzom Demonicznym na temat dawnej kopalni.");

		if (!Npc_KnowsInfo(hero, Info_Mod_Elvrich_Liste))
		{
			Wld_InsertNpc	(Mod_1000_DMR_Kurgan_NW,	"BIGFARM");
		};

		B_StartOtherRoutine	(Mod_1000_DMR_Kurgan_NW, "ANGEBOT");
	};

};

INSTANCE ItWr_NandorToDragomir		(C_Item)
{
	name 				=	"fragment wiadomosci";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseNandorToDragomir;
	scemeName			=	"MAP";
	description			= 	"Komunikat od Nandora dla Dragomiru";
};
func void UseNandorToDragomir ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Znalazlem odpowiednie miejsce i przygotuje je jak najlepiej i bede nadal badac ten obszar. Oczekuje, ze najpózniej za dwa tygodnie. Stary obóz stal sie zbyt niepewny."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Nandor"					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_KimonsBeleg		(C_Item)
{
	name 				=	"rekord";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseKimonsBeleg;
	scemeName			=	"MAP";
	description			= 	"Pokrywa od Kimona";
};
func void UseKimonsBeleg ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Dowód sprzedazy 50 winogron po cenie jednostkowej 20 zlotych monet. Laczna cena odpowiada 1. 000 zlotych monet. Na liczbach wezy czarodziejów."					);

					Doc_Show		( nDocID );

};

INSTANCE AL_PfeilNachricht		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAL_PfeilNachricht;
	scemeName			=	"MAP";
	description			= 	"Litera wiszaca na strzalce";
};
func void UseAL_PfeilNachricht ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Mam informacje na temat kradziezy. Nie moge ujawnic mnie otwarcie. Jesli chcesz wiedziec wiecej, przejdz do strzezonego miejsca."					);

					Doc_Show		( nDocID );

			if (Mod_TemplerBeiThorus == 3)
			{
				Mod_TemplerBeiThorus = 4;
			};

};

INSTANCE ItWR_MessageAlvar		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseMessageAlvar;
	scemeName			=	"MAP";
	description			= 	"Litera wiszaca na strzalce";
};
func void UseMessageAlvar ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Pozdrowienia, obcy,"					);
					Doc_PrintLines	( nDocID,  0, "twój umysl nie wydaje sie slepy, jak u innych, twoje pragnienie prawdy jest wieksze niz strach przed wlasna korzyscia. Czy chcesz podazac droga do prawdy, która wybrales? Nastepnie idz za wioska, a zobaczysz jaskinie po prawej stronie. Tam otrzymaja Panstwo dalsze odpowiedzi......"					);

					Doc_Show		( nDocID );

			if (Mod_AlvarKristall == 4)
			{
				Mod_AlvarKristall = 5;

				B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "Nieznany autor wiadomosci obiecuje mi dalsze odpowiedzi w jaskini znajdujacej sie po prawej stronie za wioska. Nie jestem do konca pewien, co o tym myslec.....");

				Wld_InsertItem	(ItWr_ErisKult, "FP_ITEM_BUCH_ERISKULT");
			};

};

INSTANCE AL_Aufstellung		(C_Item)
{
	name 				=	"uklad";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"Formacja strazników";
};

INSTANCE ItWr_HagenLares		(C_Item)
{
	name 				=	"przeslanie pokoju";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"przez Lord Hagen dla Laurów";
};

INSTANCE ItWr_TurnierUrkunde		(C_Item)
{
	name 				=	"statut";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"Certyfikat dla zwyciezcy turnieju milicji";
};

INSTANCE ItWr_DiebDokumente		(C_Item)
{
	name 				=	"Cenne dokumenty dotyczace Khorata.";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"Wertvolle Dokumente über Khorata";
};

INSTANCE ItWr_FisksNotiz		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_FisksNotiz;
	scemeName			=	"MAP";
	description			= 	"Uwaga: Fisk";
};
func void Use_FisksNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Twoje rzeczy:"					);
					Doc_PrintLines	( nDocID,  0, "1x spiaca kolyska"					);
					Doc_PrintLines	( nDocID,  0, "5x odpady rudy"					);
					Doc_PrintLines	( nDocID,  0, "3x kawalki zlota 3x"					);
					Doc_PrintLines	( nDocID,  0, "1 x prowadnica"					);
					Doc_PrintLines	( nDocID,  0, "7x Ziolo pedów lodygowych"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "zauwazalny krew"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "PS: Mamy frez po naszej stronie."					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_AL_Zufluchtsnotiz		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_AL_Zufluchtsnotiz;
	scemeName			=	"MAP";
	description			= 	"Notatka Alissandro z jaskini Goblin Cave";
};
func void Use_AL_Zufluchtsnotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Kto to czyta, ten jest bezpieczny."					);
					Doc_PrintLines	( nDocID,  0, "Jest to jedno z schronisk, które zbudowalem na wypadek sytuacji kryzysowych."					);
					Doc_PrintLines	( nDocID,  0, "Nie opuszczaj swiatyni, dopóki nie uslyszycie ode mnie."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Alissandro"					);

					Doc_Show		( nDocID );

	if (Mod_AL_EnteredGobboCaveFirstTime == 1)
	{
		Mod_AL_EnteredGobboCaveFirstTime = 2;

		B_StartOtherRoutine	(Mod_1107_GRD_Jackal_MT, "ZUFLUCHT");
	};

};

INSTANCE ItWr_Alissandro_KillList		(C_Item)
{
	name 				=	"spis";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_ItWr_Alissandro_KillList;
	scemeName			=	"MAP";
	description			= 	"Wykaz Alissandro";
};
func void Use_ItWr_Alissandro_KillList ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Fletcher, przywódca strazników"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Ian, lider Shadows."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Cathran, odnowiony czlonek Gwardii Królewskiej."					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_JuanNotiz		(C_Item)
{
	name 				=	"okólnik";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_JuanNotiz;
	scemeName			=	"MAP";
};
func void Use_JuanNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Widzisz, nie obiecywalem ci zbyt wiele. Ten kupiec Juan ma naprawde gorace rzeczy. Poniewaz nawet szefowie w Nowym Obozie od lat nie widzieli kobiety i nie sa ukamienowani bez przerwy, dostaniesz za to ladna sume."					);
					Doc_PrintLine	( nDocID,  0, "Powitania, Antony"					);

					Doc_Show		( nDocID );

	if (Mod_JuanQuest == 3)
	{
		Mod_JuanQuest = 4;
	};

};

INSTANCE ItWr_AliBotschaft		(C_Item)
{
	name 				=	"fragment wiadomosci";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_AliBotschaft;
	scemeName			=	"MAP";
	description			= 	"Wiadomosc dla zleceniodawcy";
};
func void Use_AliBotschaft ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Nasz obóz jest w zly sposób. Bartholo zamordowal Thorusa i przejal obóz. Dlatego prosimy inne obozy o zawiazanie z nami sojuszu. Jesli wygramy wojne nad obozem, oferujemy 10% udzial w wydobyciu rudy. Jesli jestes zainteresowany, otrzymasz wszystkie informacje od ambasadora."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "zauwazalny Alissandro"					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_DraganNachricht		(C_Item)
{
	name 				=	"wysylka";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_DraganNachricht;
	scemeName			=	"MAP";
	description			= 	"Wiadomosc pochodzaca od Nieznanego Czlowieku w kufrze";
};
func void Use_DraganNachricht ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Hey, Paran,"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Jesli idioty nadal nie podejrzewaja, zrobimy sobie szalenstwo na arenie. Z walców zaklecia wykradlismy sie od tych idiotów, mozemy latwo pokonac kazdego wojownika. Po prostu walcze, oslabie twojego przeciwnika malymi skarbami. Mówie wam, mamy przed soba zlota przyszlosc."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "zauwazalny smok"					);

					Doc_Show		( nDocID );

	if (Mod_GorKarantoSchwach == 5)
	|| (Mod_GorKarantoSchwach == 6)
	{
		B_LogEntry	(TOPIC_MOD_AL_ARENA, "Aha, nieznany i wspólnik wygral swoje zwyciestwa sztuczkami. Powiem Thorusowi.");

		Mod_GorKarantoSchwach = 7;
	};

};

INSTANCE ItWr_Erfinderbrief		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErfinderbrief;
	scemeName			=	"MAP";
	description			= 	"List do wynalazcy";
};
func void UseErfinderbrief ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Szanowny wynalazca,"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Spotkaj mnie za ratuszem o pólnocy. Lepiej isc z nami dobrowolnie, inaczej milicja nie bedzie mogla Ci pomóc!"					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "L.");

					Doc_Show		( nDocID );

	if (Mod_Erfinderbrief_Gelesen == FALSE)
	&& (hero.guild == GIL_PAL)
	{
		Wld_InsertNpc	(Mod_1730_MIL_Lawrence_NW,	"NW_CITY_UPTOWN_HUT_04_ENTRY");

		Mod_Erfinderbrief_Gelesen = TRUE;
	};

};

INSTANCE ItWr_ErfinderKolamsBrief		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErfinderKolamsBrief;
	scemeName			=	"MAP";
	description			= 	"List do Lariusa";
};
func void UseErfinderKolamsBrief ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Wszystko idzie zgodnie z planem!"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Wynalazca jest w mojej mocy. Pracuje dla nas, ja o to zadbam."					);
					Doc_PrintLines	( nDocID,  0, "Podloga jest zadowolona z Ciebie i wkrótce wróci do domu, robiac to dalej!"					);
					Doc_PrintLine	( nDocID,  0, "Pedro budzi sie!");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Kor Kolam");

					Doc_Show		( nDocID );

	if (Mod_MitLawrenceGesprochen == 12)
	{
		B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "Wydaje sie, ze pewien Cor Kolam jest przywódca fanatycznych sekciarskich nerdów. Z pomoca wynalazcy próbuje ponownie obudzic spiwora. Jesli chce rozwiazac te tajemnice, musze znalezc Cor Kolama. Ale najpierw powinienem mówic do Pana Andre' a.");

		Mod_MitLawrenceGesprochen = 13;
	};

};

INSTANCE ItWr_ErfinderLuteroNotiz		(C_Item)
{
	name 				=	"okólnik";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErfinderLuteroNotiz;
	scemeName			=	"MAP";
	description			= 	"Notatka od Luteroro";
};
func void UseErfinderLuteroNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "lista uporzadkowania"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Potrzebujemy 20 przypadków magicznej rudy."					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");

					Doc_Show		( nDocID );

	if (Mod_MitLawrenceGesprochen == 9)
	{
		Mod_MitLawrenceGesprochen = 10;

		B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "Mysle, ze nadszedl czas, aby wziac udzial w tym spotkaniu za ratuszem. To powinna byc okolo pólnocy.");
	};

};

INSTANCE ItWr_ErfinderLawrenceFuerLutero		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErfinderLawrenceFuerLutero;
	scemeName			=	"MAP";
	description			= 	"Notatka od Lawrence";
};
func void UseErfinderLawrenceFuerLutero ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "NOTFALL!"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Milicja badala znikniecie wynalazcy. Jesli ktos Cie zapyta, zadzwon do Ciebie! Jestes bratem Lutero, odszedl Lutero. Spotkam cie dzis o pólnocy, za ratuszem."					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");

					Doc_Show		( nDocID );

	if (Mod_MitLawrenceGesprochen == 5)
	{
		AI_Teleport	(Mod_594_NONE_Lutero_NW, "NW_CITY_SMALLTALK_05");

		B_StartOtherRoutine	(Mod_594_NONE_Lutero_NW, "BRIEF");

		AI_Teleport	(Mod_594_NONE_Lutero_NW, "NW_CITY_SMALLTALK_05");

		Wld_InsertItem	(ItWr_ErfinderLawrenceFuerLutero, "FP_ERFINDER_BRIEFFUERLUTERO");
		Npc_RemoveInvItems	(PC_Hero, ItWr_ErfinderLawrenceFuerLutero, 1);

		Mod_MitLawrenceGesprochen = 6;
	};

};

INSTANCE ItWr_PatherionNachricht1		(C_Item)
{
	name 				=	"Kalendarz strona 7";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UsePatherionNachricht1;
	scemeName			=	"MAP";
	description			= 	name;
};
func void UsePatherionNachricht1 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "1. Dzien 3. miesiac"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "W koncu zostalem powolany w ich szeregi przez Strazaków. Moi ojcowie sa teraz moimi bracmi.");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLine	(nDocID, 0, "5. Dzien 4. miesiac");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLines	(nDocID, 0, "Mam duzo pracy do zrobienia, prawie nigdy nie ruszam sie z ta ksiazka, nie mówiac juz o spaniu. Ale lubie to robic dla Innosa.");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLine	(nDocID, 0, "23. Dzien 4. miesiac");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLines	(nDocID, 0, "Wszyscy górni magicy ognia sa bardzo podekscytowani. Slyszalem, jak dwóch z nich mówilo o 'Patherionie'. Jaki moze byc dobrobyt?");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLine	(nDocID, 0, "25. Dzien 4. miesiac");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLines	(nDocID, 0, "Dzis przyszedl do mnie Pyrokar. Opowiedzial mi o Patherionie. Starozytna magiczna twierdza ogniochronna, oblezona. Mam tam pojechac i przyniesc im ladunek eliksirów, aby mogli sie przez to przetrwac.");
					Doc_PrintLine	(nDocID, 0, "");
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_PatherionNachricht2		(C_Item)
{
	name 				=	"Kalendarz strona 8";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UsePatherionNachricht2;
	scemeName			=	"MAP";
	description			= 	name;
};
func void UsePatherionNachricht2 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	(nDocID, 0, "1. Dzien 5. miesiaca");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLines	(nDocID, 0, "Dzisiaj przybyl do Patherionu. Czarny magik.... wszedzie. Czarni wojownicy z daleka od oka. Nie wiem, czy moge dostac sie do klasztoru.");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLine	(nDocID, 0, "3. Dzien 5. miesiac");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLines	(nDocID, 0, "Studiowal cala nieruchomosc. Z wyjscia kaplicy znajduje sie jaskinia po przekatnej w lewo. Spróbuje sie tam noca przemknac. Jest wiele.... Innos trzyma nade mna swój ogien ochronny.");

					Doc_Show		( nDocID );

};

INSTANCE ItWr_SektisTeleport1		(C_Item)
{
	name 				=	"polowa roli";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	name;
};

INSTANCE ItWr_SektisTeleport2		(C_Item)
{
	name 				=	"polowa roli";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	name;
};

INSTANCE ItWr_SektisTeleport3		(C_Item)
{
	name 				=	"zaklecie";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MISSION;

	visual				=	"ItSc_PalLight.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_TeleportSektis;
	cond_atr[2]   			= 	ATR_MANA_MAX;
	cond_value[2]  			= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_TeleportSektis;
	
	TEXT	[1]			=	NAME_Mana_needed;		
	COUNT	[1]			=	SPL_Cost_Scroll;
};

//**********************************************************************************
//	StandardBuch
//**********************************************************************************

INSTANCE StandardBuch (C_ITEM)
{
	name 					=	"Ksiazka";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"NewBook_V1_1.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"StandardBuch";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseStandardBuch;
};

	FUNC VOID UseStandardBuch()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "23. Dzien czwartej rundy. Cykl 457"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Dzisiaj dolaczylem do Long John Silver's Pirates. Musialem zlozyc przysiege Adanosowi, aby byc zawsze lojalnym wobec niego."					);
					//Absatz
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			);
					Doc_PrintLines	( nDocID,  0, "7. Dzien 8. rundy. Cykl 459");
					Doc_SetFont	( nDocID,  0, FONT_Book);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Na poklad wsiedlismy królewska galaretke. Zaloga nie zyje, ale kucharz uciekl. Niezwykly skarb skarb, ale wkrótce flota królewska pójdzie za nami.");
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			);
					Doc_PrintLines	( nDocID,  0, "20. Dzien 8. rundy. Cykl 459");
					Doc_SetFont	( nDocID,  0, FONT_Book);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Przyjechalismy na wyspe.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Plotki buntu rozprzestrzeniaja sie. Nie badzcie miec odwagi, aby mnie skierowac przeciwko buntownikom."	);
					Doc_PrintLine	( nDocID,  1, ""					);
					//Absatz
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			);
					Doc_PrintLines	( nDocID,  1, "21. Dzien 8. rundy. Cykl 459");
					Doc_SetFont	( nDocID,  1, FONT_Book);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Dzis kapitan zostal powieszony. Z ostatnim oddechem przeklal nas i smial sie z nas:'Adanos cie ukarze! “");
					//Absatz
					Doc_PrintLine	( nDocID,  1, "");
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			);
					Doc_PrintLines	( nDocID,  1, "22. Dzien 8. rundy. Cykl 459");
					Doc_SetFont	( nDocID,  1, FONT_Book);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "NIECHAJ!");
					Doc_Show		( nDocID );

		if (Mod_HatSkeletonBook_Gelesen == FALSE)
		{
			Mod_HatSkeletonBook_Gelesen = TRUE;
		};
};

var int Mod_REL_KhorataGeschichte;

INSTANCE ItWr_KhorataGeschichte (C_ITEM)
{
	name 					=	"ksiega";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"NewBook_V1_2.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Pelna prawda o Khorata";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseKhorataGeschichte;
};

	FUNC VOID UseKhorataGeschichte()
	{
		var int nDocID;
		nDocID = 	Doc_Create		();

		if (Mod_REL_KhorataGeschichte == 0)
		{
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLines	( nDocID,  0, "Pelna prawda o Khorata"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Jeden z czterech ocalalych z Jharkendara znalazl droge do Relendel. Z dala od starych problemów chcial zbudowac sobie nowe zycie. Nieco pózniej dolaczyla do niego cnotliwa para, która byla obrzydzona zyciem w Khorinis i chciala zalozyc wlasna osade. Kobieta na imie Eva i maz Bernd. Trójka z nich zbudowala pod zwisem skalnym spokojny obóz, którego czernione ruiny stoja do dzis.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 
 					Doc_PrintLine	( nDocID,  1, ""					);	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Zaledwie kilkadziesiat lat pózniej osada ta rozrosla sie do zaskakujacych rozmiarów. Starsi i mlodzi ludzie zyli harmonijnie, bo nic im nie brakowalo i nie bylo powodu do sporów. Potem wystawila Beliara na próbe, podpalajac ogien i zwezajac ich domy. Gleboko zszokowana ta zlosliwoscia, ale wciaz pelna nadziei w sercu, spolecznosc zalozyla nowa wioske o nazwie Khorata.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Ponownie otwórz strone, aby ja ponownie otworzyc.");
					Doc_Show		( nDocID );
			

			Mod_REL_KhorataGeschichte = 1;
		}
		else
		{
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLines	( nDocID,  0, ""	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Niektórzy bezdomni odeszli od innych i ruszyli dalej, majac nadzieje na ucieczke przed obserwacja Beliara. Ukrywali sie w malej dolinie i budowali królewskie gospodarstwo. Poniewaz bylo ich tylko kilka, mezczyzni kochali swoje siostry, a kobiety kochaly swoich braci, wiec ta genetyczna galaz, jak do dzis widzimy, rozpadla sie.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 
 					Doc_PrintLine	( nDocID,  1, ""					);	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Ale Khorata jest wciaz kwitnacym miastem. Tylko dzieki umiejetnosciom i pracowitosci, ludnosc zdolala utrzymac uzyteczne kontakty handlowe ze wszystkimi czesciami wyspy. Z ochronna reka Adanosa Beliar nie uda sie zniszczyc spolecznosci.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Ponownie otwórz strone, aby ja ponownie otworzyc.");
					Doc_Show		( nDocID );

			Mod_REL_KhorataGeschichte = 0;
		};
};

INSTANCE ItWr_HofstaatGeschichte03 (C_ITEM)
{
	name 					=	"Historia Panstwa Trybunalu Czesc 3";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"NewBook_V1_3.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseHofstaatGeschichte03;
};

	FUNC VOID UseHofstaatGeschichte03()
	{
		var int nDocID;
		nDocID = 	Doc_Create		();

		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "Die Geschichte des Hofstaats Teil 3"					);
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLines	( nDocID,  0, "Po poczatkowych sukcesach, regresja zaczela sie w eksporcie darczynca-przyjemnosc, kiedy kilku wladców zakazalo uzywania tego narkotyku w swoich królestwach. Nastepnie Hofstaatler rozpoczal kampanie reklamowa majaca na celu poprawe reputacji ich jedynego produktu produkcyjnego.");
		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLine	( nDocID,  0, ""					);

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 
		Doc_PrintLine	( nDocID,  1, ""					);	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Niewielkie miasteczko Khorata, które znajduje sie przed dworem królewskim, jest z pewnoscia najsilniej pod wplywem naduzywania przyjemnosci - dawców. Zgodnie z ich wlasna historiografia, obie osady pochodza z tej samej grupy ludów. Nie zostalo to jednak jeszcze zweryfikowane.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1, "");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_BeliarBibGruss (C_ITEM)
{
	name 					=	"powitanie urodzinowe";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"NewBook_V1_4.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseBeliarBibGruss;
};

	FUNC VOID UseBeliarBibGruss()
	{
		var int nDocID;
		nDocID = 	Doc_Create		();

		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "Die Geschichte des Hofstaats Teil 3"					);
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLines	( nDocID,  0, "Szczesliwe urodziny, stary szczur. Jesli otworzysz te ksiazke, bedziesz wiedzial, dlaczego w tym roku nie pojawilem sie na kolacji. Przeciez raczej przyslalem z góry moje male kreacje, aby raz na zawsze zniszczyly ciebie i twoja nieszczesna rodzine z oblicza tego swiata. I wtedy twoja forteca, która tak haniebnie wyeksponowales na rozpad, bedzie w koncu moja! I nie osmielisz sie otworzyc ksiazki!");
		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLine	( nDocID,  0, ""					);

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 
		Doc_PrintLine	( nDocID,  1, ""					);	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1, "");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_GeheimnisseDerJagd5 (C_ITEM)
{
	name 					=	"Tajemnice mysliwskie tom V - trucizny";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"NewBook_V1_5.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseGeheimnisseDerJagd5;
};

	FUNC VOID UseGeheimnisseDerJagd5()
	{
		var int nDocID;
		nDocID = 	Doc_Create		();

		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "... lub trujacych roslin. W tym celu nalezy jednak najpierw wyekstrahowac toksyny przy stole alchemicznym. Uzyskana istote trucizny mozna nastepnie zastosowac do strzalek i ostrych/ostrych broni. Dzikie zwierzeta mozna wiec latwiej umieszczac i zabijac. Jednak bron do walki wrecz straci czesc zastosowanej trucizny przy kazdym uderzeniu i udarze az do momentu, gdy bedzie musiala zostac ponownie przeszczepiona z trujaca wydzielina."					);

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Nalezy równiez zauwazyc, ze zwierzeta uzywajace trucizny w walce maja wysoka odpornosc na trucizne zwierzeca. Nieco slabsza trucizna roslinna jest w takich przypadkach lepszym wyborem. Inne stworzenia, takie demoniczne pochodzenie i mysliwi dryfujacy w wrogich bagnach maja pewna odpornosc na wszystkie trujace stworzenia. Znowu, wszelkiego rodzaju trucizny sa zupelnie nieskuteczne dla istot wykonanych z nieozywionego materialu i zywiolów, równie nieumarlych istot......");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_StadthalterChroniken (C_ITEM)
{
	name 					=	"Kroniki strazników miejskich";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"NewBook_V1_6.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseStadthalterChroniken;
};

	FUNC VOID UseStadthalterChroniken()
	{
		var int nDocID;
		nDocID = 	Doc_Create		();

		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "Stadthalter-Chroniken"					);
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLines	( nDocID,  0, "14. Gubernator: Aurelian. Poniewaz czul, ze zostal przekazany nowemu gubernatorowi, walczyl z armii najemników przeciwko wyznaczonemu nastepcy Quintillusowi, który nie mial nic przeciwko niemu.");
		Doc_PrintLines	( nDocID,  0, "Na poczatku zasady Aureliana nie byly dobra gwiazda. Hordowie Moleratów zdewastowali Relendela, a nawet skierowali sie do Khoraty. Z tego okresu wywodzi sie jeszcze znana dzis róznorodnosc receptur miesnych trzonowych.");
		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLine	( nDocID,  0, ""					);

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 
		Doc_PrintLine	( nDocID,  1, ""					);	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Wewnatrz murów miasta równiez wybuchly zamieszki, kiedy mennice buntuja sie przeciwko oskarzeniu o korupcje i rzucily zloto na Aureliana, powodujac, ze mial kilka wgniecen. Przeciwwaga dla burmistrza bylo torturowanie i powolne zabijanie buntowników. Od tego czasu w Khoracie nie bylo kopalni monet.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1, "");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_BookLehmar (C_ITEM)
{
	name 					=	"Ksiazka";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"NewBook_V2_1.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	description = name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

INSTANCE ItWr_Siegelbuch (C_ITEM)
{
	name 					=	"trzy ksiazeczki";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V2_2.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	description = name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

INSTANCE ItWr_JuanBook (C_ITEM)
{
	name 					=	"Ksiazka dla Juana";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V2_3.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseJuanBook;
};

	FUNC VOID UseJuanBook()
	{
		if (Mod_HasJuanBook_Gelesen == TRUE)
		{
			var int nDocID;

				nDocID = 	Doc_Create		()			  ;								// DocManager

					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "JuanBook01.TGA"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "JuanBook02.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					Doc_Show		( nDocID );	
	
		}
		else
		{
			Mod_HasJuanBook_Gelesen = TRUE;

			CreateInvItems	(hero, ItWr_JuanNotiz, 1);

			AI_PrintScreen	("odebrac notatke", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);
		};

		
};

INSTANCE ItWr_Chromanin3 (C_ITEM)
{
	name 					=	"ksiazka chromatyczna";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V2_4.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseChromanin3;
};

	FUNC VOID UseChromanin3()
	{
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager
				Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga


					Doc_Show		( nDocID );	
	
		if (Mod_NL_Chromanin == 0)
		{
			Mod_NL_Chromanin = 1;

			Log_CreateTopic	(TOPIC_MOD_NL_SIEGELBUCH, LOG_MISSION);
			B_SetTopicStatus	(TOPIC_MOD_NL_SIEGELBUCH, LOG_RUNNING);
			B_LogEntry	(TOPIC_MOD_NL_SIEGELBUCH, "Damn to! Ksiazka chromaniny jest pusta. Co powie Xardas?");
		};		
};

INSTANCE ItWr_AlvarTagebuch (C_ITEM)
{
	name 					=	"protokól";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V2_5.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	UseAlvarTagebuch;

	description				= 	name;
	TEXT[1]					=	"od";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

	FUNC VOID UseAlvarTagebuch()
	{
		var int nDocID;
		nDocID = 	Doc_Create();								// DocManager
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLines	( nDocID,  0, "... Wczoraj na polowaniu znów spotkalem niektóre z tych duchów lodu. Na szczescie w zbroi ukrylem swój magiczny krysztal. Nigdy nie powinni mi juz nigdy wiecej grozic.");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Drewno i skórki szybko opadaja. Wkrótce bede musial wrócic do lasu, aby zdobyc nowe. Od czasu, kiedy ostatni raz bylem w tarapatach, nikt nie chcial mi nic sprzedac... Wiecej");


		Doc_Show		( nDocID );	
	
		if (Mod_AlvarTagebuch == 1)
		{
			Mod_AlvarTagebuch = 2;

			B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "Hmm, na ostatnich kilku stronach nie moge znalezc niczego, co daloby poczatek spowiedzi. Sera chce, abym blizej przyjrzala sie ksiazce.");
		};		
};

INSTANCE ItWr_AlvarTagebuch2 (C_ITEM)
{
	name 					=	"protokól";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V2_6.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	UseAlvarTagebuch2;

	description				= 	name;
	TEXT[1]					=	"od";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

	FUNC VOID UseAlvarTagebuch2()
	{
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager
				Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLines	( nDocID,  0, "Te suki nie oddadza sie mi. Mysle, ze bede musial przyjac bardziej zdecydowane podejscie. I biada im sie biada, oni mnie zdradzaja - potem beda cierpiec zle.");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "");

		Doc_Show		( nDocID );	
	
		if (Mod_AlvarDead == 2)
		{
			Mod_AlvarDead = 3;

		};		
};

INSTANCE ItWr_GorNaKoshsTagebuch1 (C_ITEM)
{
	name 					=	"pamietnik kurzu";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_1.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	UseGorNaKoshsTagebuch1;

	description				= 	name;
	TEXT[1]					=	"od Gor Na Kosh";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

	FUNC VOID UseGorNaKoshsTagebuch1()
	{
		var int nDocID;
		nDocID = 	Doc_Create();								// DocManager
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLines	( nDocID,  0, "Po latach, które spedzilem tutaj, nadszedl wreszcie czas. Jestem podniesiony do rangi szablonu. Pocialem sie i cierpialem, ale ból, który mi dal pot i krew, nie mógl calkowicie zetrzec wysuszonego sladu lez......");
 		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLines	( nDocID,  0, "I znów jestem gorszym czlonkiem spoleczenstwa. Jeden ze starszych opiekunów powiedzial mi, ze nie bede pelnoprawnym templariuszem, dopóki nie bede mial ostrza opiekuna. Niemal niemozliwe jest jednak znalezienie surowców potrzebnych do ich produkcji. Widzialam, jak inni Templariusze wycierali lub targowali sie o ostrza opiekunów starszych templariuszy, podczas gdy inni przywiezli niewlasciwe skladniki do kuzni. Nie wiem, co robic......");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Rozmawialem dzis z Baalem Ydranem. Dal mi stara ksiazke zawierajaca kilka niejasnych wskazówek. W poblizu skalnej twierdzy mówi sie, ze jest pustelnik, który moze mi pomóc w moim poszukiwaniu.");


		Doc_Show		( nDocID );	
	
		if (Mod_TPL_HK_Ydran == 1)
		{
			Mod_TPL_HK_Ydran = 2;

			B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Wydaje sie, ze Gor Na Kosh wyruszyl w poszukiwaniu swoich skladników do pustelnika, który podobno mieszka w poblizu twierdzy skalnej.");

			Wld_InsertItem	(ItWr_GorNaKoshsTagebuch2, "FP_ITEM_GORNAKOSH_BUCH2");
		};		
};

INSTANCE ItWr_GorNaKoshsTagebuch2 (C_ITEM)
{
	name 					=	"pamietnik kurzu";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_2.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	UseGorNaKoshsTagebuch2;

	description				= 	name;
	TEXT[1]					=	"od Gor Na Kosh";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

	FUNC VOID UseGorNaKoshsTagebuch2()
	{
		var int nDocID;
		nDocID = 	Doc_Create();								// DocManager
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLines	( nDocID,  0, "Znalazlem pustelnika i on faktycznie mógl mi pomóc. Powiedzial mi o niektórych miejscach, które powinienem odwiedzic, aby znalezc potrzebne mi surowce, takich jak Wawóz Troll, plaza, Wieza Mgly i stary klasztor. Nie moglem mu pomóc w zamian. Kiedy odszedlem wczesnie wieczorem, mniej niz piec minut od obozu pustelnika, uslyszalem krzyk i wycie.");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Zaczalem uciekac, ale bylem juz za pózno. Ogromny biegacz cienia wyginal sie nad starym czlowiekiem i karmil sie jego domem. Podbieglem do potwora z wyciagnietym pistoletem i udalo mi sie go odjechac. Wszystko, co moglem zrobic dla pustelnika, to dobrze go pochowac. Oby odpoczal w pokoju.");


		Doc_Show		( nDocID );	
	
		if (Mod_TPL_HK_Ydran == 2)
		{
			Mod_TPL_HK_Ydran = 3;

			B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Wydaje sie, ze Gor Na Kosh odnalazl wiodaca role. W swoich dokumentach wspomina o Wawozie Troll Gorge, plazy, mglistej wiezy i starym klasztorze. Byc moze w jednym z tych miejsc znajde kolejna wskazówke.");

			Wld_InsertItem	(ItWr_GorNaKoshsTagebuch3, "FP_ITEM_GORNAKOSH_BUCH3");

			Npc_RemoveInvItems	(hero, ItWr_GorNaKoshsTagebuch1, 1);
		};		
};

INSTANCE ItWr_GorNaKoshsTagebuch3 (C_ITEM)
{
	name 					=	"pamietnik kurzu";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_3.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	UseGorNaKoshsTagebuch3;

	description				= 	name;
	TEXT[1]					=	"od Gor Na Kosh";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

	FUNC VOID UseGorNaKoshsTagebuch3()
	{
		var int nDocID;
		nDocID = 	Doc_Create();								// DocManager
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLines	( nDocID,  0, "Dziekujemy pustelnikowi. Naprawde po tych latach poszukiwan znalazlem wszystkie skladniki. Moje kosci mogly byc stare i zmeczone, mój duch spala sie tak jak wtedy, gdy bylem mlodym nowicjuszem, który dopiero co zostal podniesiony do poziomu szablonu.");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Jak tylko wróce do obozu, zakuto mi ostrze straznika. Przedtem jednak przejde obok grobu pustelnika, aby mu podziekowac.");


		Doc_Show		( nDocID );	
	
		if (Mod_TPL_HK_Ydran == 3)
		{
			Mod_TPL_HK_Ydran = 4;

			B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Gor Na Kosh znalazl wszystkie skladniki i chcial zatrzymac sie przy grobie pustelnika przed powrotem do obozu.");

			Wld_InsertItem	(ItWr_GorNaKoshsTagebuch3, "FP_ITEM_GORNAKOSH_BUCH3");

			Npc_RemoveInvItems	(hero, ItWr_GorNaKoshsTagebuch2, 1);

			Wld_InsertNpc	(Shadowbeast_GorNaKosh, "FP_ROAM_GORNAKOSH_SHADOWBEAST");
		};		
};

INSTANCE Ryans_Almanach (C_ITEM)
{
	name 					=	"almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_4.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	description				= 	"Almanach z klatki piersiowej Ryana";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

INSTANCE ItWr_XardasAlmanach (C_ITEM)
{
	name 					=	"almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_5.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	description				= 	"Almanach Orka";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

INSTANCE ItWr_BeliarBook (C_ITEM)
{
	name 					=	"nekronomika";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_6.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	description				= 	"Ksiazka Czarnych magów";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};


INSTANCE ItWr_BookFromSkeleton (C_ITEM)
{
	name 					=	"protokól";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_1.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Kalendarz pirackich Zombienstw Piratów";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseSkeletonBook;
};

	FUNC VOID UseSkeletonBook()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "23. Dzien czwartej rundy. Cykl 457"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Dzisiaj dolaczylem do Long John Silver's Pirates. Musialem zlozyc przysiege Adanosowi, aby byc zawsze lojalnym wobec niego."					);
					//Absatz
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			);
					Doc_PrintLines	( nDocID,  0, "7. Dzien 8. rundy. Cykl 459");
					Doc_SetFont	( nDocID,  0, FONT_Book);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Na poklad wsiedlismy królewska galaretke. Zaloga nie zyje, ale kucharz uciekl. Niezwykly skarb skarb, ale wkrótce flota królewska pójdzie za nami.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			);
					Doc_PrintLines	( nDocID,  0, "20. Dzien 8. rundy. Cykl 459");
					Doc_SetFont	( nDocID,  0, FONT_Book);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Przyjechalismy na wyspe.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Kapitan chce zakopac skarb. Nastepnie chce jechac dalej na pólnoc, by w pewnym momencie znów podniesc skarb. Plotki buntu rozprzestrzeniaja sie. Nie badzcie miec odwagi, aby mnie skierowac przeciwko buntownikom."	);
					Doc_PrintLine	( nDocID,  1, ""					);
					//Absatz
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			);
					Doc_PrintLines	( nDocID,  1, "21. Dzien 8. rundy. Cykl 459");
					Doc_SetFont	( nDocID,  1, FONT_Book);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Dzis kapitan zostal powieszony. Z ostatnim oddechem przeklal nas i smial sie z nas:'Adanos cie ukarze! “");
					//Absatz
					Doc_PrintLine	( nDocID,  1, "");
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			);
					Doc_PrintLines	( nDocID,  1, "22. Dzien 8. rundy. Cykl 459");
					Doc_SetFont	( nDocID,  1, FONT_Book);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "NIECHAJ!");
					Doc_Show		( nDocID );

		if (Mod_HatSkeletonBook_Gelesen == FALSE)
		{
			Mod_HatSkeletonBook_Gelesen = TRUE;
		};
};

INSTANCE ItWr_EmerinsTagebuch (C_ITEM)
{
	name 					=	"protokól";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_2.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Dziennik Emerina";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseEmerinsTagebuch;
};

	FUNC VOID UseEmerinsTagebuch()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Te damskie orki. Znów slysze, jak kpiacy przy wejsciu. Mysle, ze wyslemy tam kilka zombie.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Slysze glosy w poblizu mnie. Lepiej widze, czy ten harpienny idiot powróci, to moge mu w koncu dac role zaklecia, wszakze skonczylem go teraz.");
					Doc_Show		( nDocID );

		if (Mod_Hermy_KnowsQuest == 6)
		{
			Mod_Hermy_KnowsQuest = 7;

			B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "Orkiestry zabily Emerina i przyjely role czaru. Zobacze, czy uda mi sie uzyskac zaklecie bez rozlewu krwi.");
		};
};

INSTANCE ItWr_MagicSecretsBand5 (C_ITEM)
{
	name 					=	"Ksiazka";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_3.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Tajemnica magicznego zespolu V - magicznie utalentowany nieumarly";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseMagicSecretsBand5;
};

	FUNC VOID UseMagicSecretsBand5()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Pozostalosci magicznie utalentowanych stworzen, które staly sie nieumarle, ale bez wlasnej woli i zrozumienia. Podazaja za rozproszonymi impulsami magii lub mistrza, jak zwykli nieumarli, nawet jesli sami potrafia pracowac magicznie. Sa tez doniesienia o tych, którzy pozostaja zdenerwowani, a do pewnego stopnia nawet wolna wola. Zwykle sa one sluzacymi istotami poteznych magicznych istot, takich jak archipelag-demony.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Stare zródla opowiadaja nawet o cechach nieumarlych magów, którzy mogliby przetrwac, wiazac swoja sile zyciowa z obiektem w skomplikowanym procesie magicznym. Calkowicie niezalezne od innych istot i niezwykle potezne, mozna je bylo zatrzymac jedynie poprzez znalezienie i zniszczenie obiektu, który zawieral w sobie sile zyciowa. Zazwyczaj byly one dobrze ukryte w pewnej odleglosci od magów. W przeciwnym razie istnialaby mozliwosc, ze przedmiot przekazalby moc zyciowa martwemu cialu, gdzie natychmiast by umarl.....");
					Doc_Show		( nDocID );

		if (Mod_NL_Lich == 1)
		{
			Mod_NL_Lich = 2;

			Mod_NL_Dragon_KnowsLich = 1;

			B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Aha, gildia nieumarlych magów, którzy przywiazali swoje sily zyciowe do przedmiotów.");
		};
};

INSTANCE ItWr_MagicSecretsBand6 (C_ITEM)
{
	name 					=	"Ksiazka";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_4.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Tajemnice magicznego tomu VI - Podstep i kamuflaz";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseMagicSecretsBand6;
};

	FUNC VOID UseMagicSecretsBand6()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "... zglaszano równiez, ze czarownice maja zdolnosc do zmiany formy, ale nie tylko w postaci zwierzecej. Moga ucielesniac wszystko, od uroczej dziewczyny po starsza kobiete. Pozostaje jednak nadal kontrowersyjne, czy jest to kwestia czystej magii metamorfozy, czy tez oko widza jest po prostu oszukiwane przez prawdziwa forme uzytkownika.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Sztuka kamuflazu i oszustwa jest podobno dopracowala niektóre czarownice do tego stopnia, ze sa calkowicie niewidoczne dla widza. Jednak efekt tej magii wydaje sie byc selektywny w swej naturze. Magia ta zdaje sie nie miec zadnego wplywu na istoty w których magicznie utalentowane kobiety nie widza zagrozenia dla siebie. Równiez ludzie, którym kiedys udalo sie obejrzec kamuflaz czarownicy, nie powinni juz dluzej pozostawac pod wplywem jej magii....");
					Doc_Show		( nDocID );

		if (Knows_MagicSecretsBand6 == 0)
		{
			Knows_MagicSecretsBand6 = 1;

			B_LogEntry	(TOPIC_MOD_NL_MOORHEXE, "Hmm, ukrywajac sie przed poteznymi.... zyjacych istot, w których nie widzieli zadnego niebezpieczenstwa, zadnego efektu.....");
		};
};

INSTANCE ItWr_MagicMonsterBand7 (C_ITEM)
{
	name 					=	"ksiega";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_5.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Tajemnice typów tom VII - Twory magiczne";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseMagicMonsterBand7;
};

	FUNC VOID UseMagicMonsterBand7()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "... przez tysiace lat pozostawala na swiecie. Byly to giganty, smoki, gobliny i skrzaty. Wiele stuleci temu jednak niektóre z nich zniknely z powierzchni ziemi tak nagle, ze wspólczesne zródla twierdza nawet, ze kiedykolwiek istnialy.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Luki w materiale zródlowym, który przetrwal w czasie sugeruja poteznego maga jako przyczyne ich naglego upadku. Nie wiadomo, jak dokladnie to mialo sie zdarzyc. Mówi sie, ze tylko skrajne poludnie kuli ziemskiej, z dala od Myrtany, zostalo uchronione przed czarodziejska rekojescia......");
					Doc_Show		( nDocID );

};

INSTANCE ItWr_Buddlerbuch (C_ITEM)
{
	name 					=	"Ksiazka Buddlera";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_6.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	description				= 	"z Costa";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

INSTANCE ItWr_Milizregeln (C_ITEM)
{
	name 					=	"ksiega";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V2_1.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Zasady milicji";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseMilizregeln;
};

	FUNC VOID UseMilizregeln()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLines	( nDocID,  0, "Zasady milicji"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1. Dobry zolnierz milicji zawsze chroni slabych."					);
					Doc_PrintLines	( nDocID,  0, "2. Zagrozenie przemoca wobec jednostki lub ogólu spoleczenstwa jako takie jest przestepstwem karnym."					);
					Doc_PrintLines	( nDocID,  0, "3. Milicja nie moze wykonywac nieuczciwych czynów w swojej wzorcowej roli."					);
					Doc_PrintLines	( nDocID,  0, "4. Prawo i porzadek to chleb i powietrze prawdziwego zolnierza milicji."					);
					Doc_PrintLines	( nDocID,  0, "5. Zolnierz milicji walczy o miasto, kraj, króla i wolnosc."					);
					Doc_PrintLines	( nDocID,  0, "6. Zolnierz milicji nie walczy o jego wynagrodzenie, walczy z przekonaniem."					);
					Doc_PrintLines	( nDocID,  0, "7. Zolnierz milicji pod zadnym pozorem nie podnosi miecza przeciwko bratu-broni."					);
					Doc_Show		( nDocID );

		if (Mod_PAL_HeroBot == 18)
		{
			Mod_PAL_HeroBot = 19;

			B_GivePlayerXP	(2000);
		};
};

INSTANCE ItWr_Innosklinge (C_ITEM)
{
	name 					=	"ksiega";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V2_2.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Rozdrobniona ksiega poswiecania miecza";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseInnosklinge;
};

	FUNC VOID UseInnosklinge()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLines	( nDocID,  0, ""	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "... Mówi sie, ze ten, kto uslyszy wezwanie wojownika, moze kroczyc sciezkami swego Pana po róznych rejonach ziemi. W miejscach modlitwy pozwala mu odbijac sie jak najjasniejsze slonce. Swiatlo, plonaca pilka, ognista burza, sluga ognia i palacy deszcz, ofiarowuje go jako ofiare. Jesli za kazdym razem, gdy rzuca swieta wode nad ostrzem, stal jest nasaczona moca Inno. Od tej pory swiety plomien bedzie prowadzil i chronil jego wiernego sluge.... Wiecej"					);
					Doc_Show		( nDocID );

		if (Mod_AndreSchwert_Test == 1)
		{
			Mod_AndreSchwert_Test = 2;

			B_LogEntry	(TOPIC_MOD_MILIZ_INNOSKLINGE, "Hmm, bardzo tajemniczy. 'Kto slyszy wezwanie wojownika, aby szedl po sciezkach swojego mistrza'. Moze Harad moze cos wymysli.");
			B_LogEntry(TOPIC_MOD_MILIZ_INNOSKLINGE, "W miejscach modlitwy pozwala zabrzmiec, gdy slonce swieci najjasniej...... Oznacza to, ze musze dotrzec do sanktuarium w poludnie. Swiatlo, plonaca pilka, ognista burza, sluga ognia i plonacego deszczu, ofiarowuje go jako ofiare....[...]. Masz na mysli magie?");
		};
};

INSTANCE ItWr_HSBook (C_ITEM)
{
	name 					=	"ksiega";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V2_3.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Cechy szczególne dworskich kobiet miejskich";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseHSBook;
};

	FUNC VOID UseHSBook()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLines	( nDocID,  0, "Cechy szczególne dworskich kobiet miejskich"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Kobiety, które nie naleza do królików, zazwyczaj angazuja sie jedynie w kontakt z mezczyznami, którzy spotkali sie z nimi poza domem. Rolnicy powinni zadbac o to, by na dworze byla zona obecnej 'karmy królewskiej dla psów', bo juz niedlugo stanie sie ona samotna. Wazne jest równiez, aby upewnic sie, ze nie biora darczynców nie tylko przyjemnosci, poniewaz to w znacznym stopniu ogranicza zachowania seksualne.");

					//2.Seite
					Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Najlepiej wspólpracuje z lekiem, który jest bardzo powszechny poza nasza sfera. Jest to plyn, który jest obecny w róznych stezeniach w niektórych napojach i lamie testament. Pijak ucieka z niego, powinienes o to zapytac.");
					Doc_Show		( nDocID );

		if (Mod_HSBook == 0)
		{
			Mod_HSBook = 1;
		};
};

INSTANCE ItWr_HSBook2 (C_ITEM)
{
	name 					=	"ksiega";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V2_4.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Wlaczanie i smiech";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseHSBook2;
};

	FUNC VOID UseHSBook2()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLines	( nDocID,  0, "Wlaczanie i smiech"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Wygladasz jak moja czwarta dziewczyna. Ona:'Ach, ile masz dziewczynek? 'Trzy. '");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Powiem ci cos: moje spodnie nie sa ciezka galazka. '");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Jesli poprosilbym Cie o poslubienie mnie, czy odpowiedz na to pytanie bylaby taka sama? '");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Czy masz nosiciela golebia? Obiecalem napisac do matki, jak tylko znalazlem moja wymarzona dziewczyne. '");
					Doc_Show		( nDocID );

		if (Mod_HSBook2 == 0)
		{
			Mod_HSBook2 = 1;
		};
};

INSTANCE ItWr_Advent1 (C_ITEM)
{
	name 					=	"ksiega";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V2_5.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Cechy szczególne dworskich kobiet miejskich";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAdvent1;
};

	FUNC VOID UseAdvent1()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, ""	);
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "... Zostalem w koncu przyjety przez najemników. Przynajmniej nie dbaja o bogów. Kaplani i wojownicy Innos z wdziecznoscia przyjmuja kazda pomocna dlon w swojej brudnej pracy, ale jesli chodzi o przetwory, to 'nie jest sie wystarczajaco religijnym'. Pah, klub moze zostac skradziony!");

		//2.Seite
		Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Ale to wystarczy. Wydaje sie, ze nowy obóz bardzo sie zmienil od czasu, gdy sypialni; ale wiele rzeczy jest mi znanych....");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_Advent2 (C_ITEM)
{
	name 					=	"ksiega";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V2_6.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Cechy szczególne dworskich kobiet miejskich";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAdvent2;
};

	FUNC VOID UseAdvent2()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, ""	);
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "Jak tylko wrócilem tam znowu, Fester zatrudnil mnie do 'polowania' - powinnismy strzelac do padlinozerców i moleraterów, jesli wiedzial, ze..... Szeroki usmiech na jego twarzy powinien wydawal mi sie podejrzliwy, ale obwinialem go o jego arogancje. Czterech z nas wyszlo wprost do jednej z malych jaskin bezposrednio przed polami ryzowymi.");

		//2.Seite
		Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Tam panowie po raz pierwszy zostali zarazeni swoja chwastowata bagienka, która Fester przyznal tylko 'Ahh, wspanialy'. Pozwolono mi wtedy zajac sie padlinozercami i moleratami, podczas gdy pozostale trzy byly 'na czujce'. Zakaz karczowania w obozie nie wydaje sie naprawde skuteczny......");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_Advent3 (C_ITEM)
{
	name 					=	"ksiega";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_1.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Cechy szczególne dworskich kobiet miejskich";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAdvent3;
};

	FUNC VOID UseAdvent3()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, ""	);
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "Po dostarczeniu miesa (pomysleli o tym, ze w pierwszym rzedzie odjechalismy), chlopcy chcieli 'polowac' na cos innego w innej jaskini. Jedynym, którym pozwolono cos 'zabic', bylam znowu - mala grupa mlodych goblinów, którzy uwazali, ze narkotykowymi najemnikami sa orki.");

		//2.Seite
		Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Potem najemnicy chcieli cwiczyc alchemie w jaskini, która pachniala jak bagnista. Po zastrzeleniu stawów wrócili do obozu. Po drodze, dookola wisial jeszcze jeden z goblinów, przed którym twardzieli mezczyzni zabierali sie na ziemie i krzyczeli 'zly ork'. Zakaz zabijania rdestnicy torfowiskowej wydaje mi sie calkiem bezzasadny, zanim upadek zapory poszedl w obozie o wiele bardziej trzezwo.");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_Advent4 (C_ITEM)
{
	name 					=	"ksiega";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_2.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Cechy szczególne dworskich kobiet miejskich";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAdvent4;
};

	FUNC VOID UseAdvent4()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, ""	);
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "Kiedy w koncu znów dogonilem ich trójke, dostalem jakas rude i kilka lodyg ziól jako nagrode - i obietnice, ze Lee i Sylvio zostana poinformowane o mojej pomocy.");

		//2.Seite
		Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Nie jestem jednak az tak pewna, czy jest to naprawde dobre dla mojej reputacji; zwlaszcza, ze nie wiem, czy mam cokolwiek wspólnego z tym Sylvio....");
		Doc_Show		( nDocID );
};

var int ErisKult_Page;


INSTANCE ItWr_ErisKult (C_ITEM)
{
	name 					=	"ksiega";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_3.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Moc Eriskult";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	Use_Eriskult;
};

	FUNC VOID Use_Eriskult()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		if (ErisKult_Page == 0)
		{
			Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
			Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLines	( nDocID,  0, "Moc Eriskult");
			Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLines	( nDocID,  0, "Eriskult jest siostra bardzo bliska kultom czarownic. Jednakze, podczas gdy inne klany czarownic osiagaja transformacje i oszustwa wylacznie za pomoca magii, sztuka sióstr Eris wprowadza je w blad poprzez wykorzystanie emocjonalnych srodków autoportretowych i retorycznych."					);

			Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
			Doc_PrintLine	( nDocID,  1, ""					);
			Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
			Doc_PrintLines	( nDocID,  1, "magia byla skutecznoscia ich srodków, ale sa to banalne metody komunikacji, których umiejetnie i perfidnie uzywaja. Poprzez intrygi, klamstwa, klamstwa, oszustwa i uwodzenie widza oni miedzyludzkie dysproporcje, a jednoczesnie wzmacniaja swój wplyw na srodowisko.");

			ErisKult_Page = 1;
		}
		else if (ErisKult_Page == 1)
		{
			Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
			Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLines	( nDocID,  0, "Kiedy juz wystarczajaco dlugo wywarli wplyw na spolecznosc, ludzie staja sie od nich calkowicie zalezni w czasie, jak narkotyk. Beda one nawet wystarczajaco szerokie, aby podazac za siostrami wprowadzajacymi w blad do samo-ofiarowania, klamstwa i oszukiwania...... jesli zostaniesz do nich poproszony."					);

			Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
			Doc_PrintLine	( nDocID,  1, ""					);
			Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
			Doc_PrintLines	( nDocID,  1, "Jedynym sposobem zatrzymania Erisschwestern jest Inno. Daleko od duzego kregu kamiennego podobno znajduje sie jaskinia w kierunku pólnocno-zachodnim, która rózni sie od otaczajacego ja obszaru lodu. Ogien wznosi sie do ziemi, a korozyjne opary utrudniaja oddychanie.");

			ErisKult_Page = 2;
		}
		else if (ErisKult_Page == 2)
		{
			Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
			Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLines	( nDocID,  0, "Kiedy Innos kiedys rzucil lzy, mówi sie, ze niektórzy ludzie znalezli tam swoja droge. Nienaturalne warunki w jaskini uformowaly z nich cos nowego. Rozkwitaly do krysztalów niosacych moc Inno."					);

			Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
			Doc_PrintLine	( nDocID,  1, ""					);
			Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
			Doc_PrintLines	( nDocID,  1, "Mówi sie, ze wymuszaja oni jezyki tych, którzy opieraja swoja moc na oszustwach, aby mówic prawde. Osoba noszaca taki 'krysztal lzawiacy' musi jedynie nagrac rozmowe z zwodnicza osoba....");

			ErisKult_Page = 3;
		}
		else if (ErisKult_Page == 3)
		{
			Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
			Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLines	( nDocID,  0, "Rozdzial. 2: Pierwsze kroki siostry Eris, aby wplynac na ich otoczenie.");
			Doc_PrintLine	( nDocID,  0, "");
			Doc_PrintLines	( nDocID,  0, "Siostry Eris zwykle zaczynaja ja pochlebiac. Przekazuja mu poczucie, ze czuje, iz jest to niezwykle, wyrózniajace sie z otoczenia. W ten sposób oni wazyli sie do Niego i jego checi.....");

			ErisKult_Page = 0;

			if (Mod_AlvarKristall == 5)
			{
				Mod_AlvarKristall = 6;

				B_Say_Overlay	(hero, NULL, "$ERISKULTBUCH01");

				B_GivePlayerXP	(300);

				B_RaiseHandelsgeschick	(10);

				AI_Teleport	(Mod_7563_OUT_Brutus_EIS, Npc_GetNearestWP(hero));
				B_StartOtherRoutine	(Mod_7563_OUT_Brutus_EIS, "CAVE");

				Wld_InsertItem	(ItMi_Traenenkristall,	"FP_ITEM_TRAENENKRISTALL");
			};
		};

	Doc_Show		( nDocID );
};

var int Almanach_Pre_Gelesen;


INSTANCE ItWr_AxtAlmanach_Pre (C_ITEM)
{
	name 					=	"almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_4.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Zawiera 1. tajemniczosc";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAxtAlmanach_Pre;
};

	FUNC VOID UseAxtAlmanach_Pre()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Osie zguby sa dobrze zabezpieczone i ukryte. Tylko ci, którzy sa czystymi w sercu i rozwiazuja tajemnice, osiagna ja. Teraz uslyszysz pierwsze slowa:"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Pierwsza ksiazka jest ukryta, dobrze zabezpieczona i strzezona!");
					Doc_PrintLines	( nDocID,  0, "Tylko ci, którzy zejda w glab krwawej jaskini, otrzymaja ja!");
					Doc_PrintLines	( nDocID,  0, "Tylko ci, którzy pokonaja biegaczy cieni, otrzymaja to!");
					Doc_PrintLines	( nDocID,  0, "Tylko ci, którzy rozwiaza zagadke, otrzymaja ja!");
					
					Doc_Show		( nDocID );

		if (Almanach_Pre_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_Pre_Gelesen = TRUE;

			B_StartOtherRoutine	(GardeBeliars_1989_Drach, "ATALMANACH");
		};
};

var int Almanach_01_Gelesen;


INSTANCE ItWr_AxtAlmanach_01 (C_ITEM)
{
	name 					=	"almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_5.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Zawiera 2. tajemniczosc";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAxtAlmanach_01;
};

	FUNC VOID UseAxtAlmanach_01()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Pierwsza ksiazka jest teraz bezpieczna i otwiera nastepna lamiglówke. Podazaj sciezka Innos i wejdz do jaskini niebieskiego swiatla! Na Ciebie czeka tam druga ksiazka!"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

		if (Almanach_01_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_01_Gelesen = TRUE;

			B_LogEntry_More	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_FIVEKNIGHTS, "Rozwiazalem pierwsza zagadke, a teraz znam druga. Od razu powinienem byc na drodze.", "Drach jest juz martwy i nie sprawi mi wiecej klopotów.");

			Wld_InsertNpc	(GardeBeliars_1990_Jorjo, "BIGFARM");
		};
};

var int Almanach_02_Gelesen;


INSTANCE ItWr_AxtAlmanach_02 (C_ITEM)
{
	name 					=	"almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_6.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Zawiera 3. tajemniczosc";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAxtAlmanach_02;
};

	FUNC VOID UseAxtAlmanach_02()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Druga ksiazka jest bezpieczna i zblizasz sie do celu! Ale pamietaj jeszcze cztery kolejne lamiglówki, które musisz rozwiazac, aby dostac siekiere. Teraz sluchaj! Idz do kola w lesie, gdzie swieci slonce i zregeneruj nastepny almanach!");
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

		if (Almanach_02_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_02_Gelesen = TRUE;

			B_LogEntry_More	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_FIVEKNIGHTS, "Druga ukladanka tez nie byla problemem. Teraz pójde do kola w lesie, gdzie swieci slonce.", "Drugim wojownikiem nazwanym Jorjo jest równiez historia.");

			Wld_InsertNpc	(GardeBeliars_1991_Fantrek, "BIGFARM");
		};
};

var int Almanach_03_Gelesen;


INSTANCE ItWr_AxtAlmanach_03 (C_ITEM)
{
	name 					=	"almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_1.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Zawiera 4. tajemniczosc";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAxtAlmanach_03;
};

	FUNC VOID UseAxtAlmanach_03()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Jestes w polowie drogi! Teraz posluchaj kolejnej zagadki!");
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Jedz tam, gdzie spotykaja sie piasek i woda!"					);
					
					Doc_Show		( nDocID );

		if (Almanach_03_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_03_Gelesen = TRUE;

			B_LogEntry_More	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_FIVEKNIGHTS, "Gdzie spotykaja sie piasek i woda....", "Trzy w dól, trzy do jazdy. Fantrek nie byl duzym wyzwaniem.");

			Wld_InsertNpc	(GardeBeliars_1992_Reinhold, "SEPCIAL_FOR_REINHOLD");
		};
};

var int Almanach_04_Gelesen;


INSTANCE ItWr_AxtAlmanach_04 (C_ITEM)
{
	name 					=	"almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_2.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Zawiera 5. tajemniczosc";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAxtAlmanach_04;
};

	FUNC VOID UseAxtAlmanach_04()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Teraz posluchaj kolejnych slów:");
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Wejdz w ciemnosc, w której kiedys odkryto rude. Pozbaw ciemnych slug i zapisz piata ksiazke!"					);
					
					Doc_Show		( nDocID );

		if (Almanach_04_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_04_Gelesen = TRUE;

			B_LogEntry_More	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_FIVEKNIGHTS, "poszukiwanej rudy rudy..... brzmi jak moja kopalnia. Na szczescie nie ma ich tak wielu na tej wyspie.", "Inny wojownik. Jesli tak dalej bede kontynuowal, to wkrótce wymra.");

			Wld_InsertNpc	(GardeBeliars_1993_Gunram, "SEPCIAL_FOR_GUNRAM");
		};
};

var int Almanach_05_Gelesen;


INSTANCE ItWr_AxtAlmanach_05 (C_ITEM)
{
	name 					=	"almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_3.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Zawiera 6. tajemniczosc";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAxtAlmanach_05;
};

	FUNC VOID UseAxtAlmanach_05()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Teraz jestes juz prawie tam!");
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Wróc do pierwszego miejsca i zakoncz wyszukiwanie, Szukaj!"					);
					
					Doc_Show		( nDocID );

		if (Almanach_05_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_05_Gelesen = TRUE;

			B_LogEntry_More	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_FIVEKNIGHTS, "Wróce na pierwsze miejsce.", "Gunram to historia. Teraz zostalo tylko jednego z szesciu wojowników.");

			Wld_InsertNpc	(GardeBeliars_1994_Frowin, "BIGFARM");

			Wld_InsertItem	(ItWr_AxtAlmanach_06, "FP_STAND_DRACH");
		};
};

var int Almanach_06_Gelesen;


INSTANCE ItWr_AxtAlmanach_06 (C_ITEM)
{
	name 					=	"almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_4.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Zawiera 7. tajemniczosc";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAxtAlmanach_06;
};

	FUNC VOID UseAxtAlmanach_06()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Zrobiles to zrobiles! Teraz sluchaj uwaznie tych slów:");
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Idz do ostatniego miejsca spoczynku Inubisa i wykop grób. Rozebrac ciemnych opiekunów i wziac siekiere i uzywac jej madrze!"					);
					
					Doc_Show		( nDocID );

		if (Almanach_06_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_06_Gelesen = TRUE;

			B_LogEntry_More	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_FIVEKNIGHTS, "Ostatnie miejsce spoczynku Inubis? Zastanawiam sie, gdzie tak jest. Tak czy owak, znajde tam siekiere, jesli Frowin mnie do tego nie uda mi sie pobic.", "Wedrówka uciekla. Musze go szybko znalezc.");
		};
};

INSTANCE ItWr_DarrionTagebuch (C_ITEM)
{
	name 					=	"Dziennik Darriona";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_5.3DS"; 
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseDarrionTagebuch;
};

	FUNC VOID UseDarrionTagebuch()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Nadszedl czas, stare niedzwiedz morski wreszcie odwrócil sie od morza. Na te chwile tak dlugo czekalem. Jestem zmeczony woda. Greg ma przejac wojsko, spelnila sie stara obietnica, która przywiazala mnie do statku.");
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ulatwilam sobie wygode w starej wiezy przy zatoce. Mieszkam na tej plazy tak dlugo, a jednak ta wyspa jest mi prawie nieznana. Mimo to. Przynajmniej nie musze sie bac stworzen, które wedruja tu juz teraz dzieki wielu latom na morzu.");
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Na tej wyspie znajduje sie wiele starozytnych swiatyn. W duzym bagnie natknalem sie na kilka gadów. Walczyc jak diabel i smakowac jak leniwa ryba. Znalazlem równiez dziwna rosline, która w nocy swieci jaskrawo czerwonym swiatlem. Moze to jest cos warte.");
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Dzis znalazlem stara ksiazke w swiatyni, w której znalazlem zdjecie tej rosliny. Nie moglem przeczytac ani slowa po tym, jak dalem imigrantowi, którego spotkalem troche splesnialego sera, tlumaczyl mi cala rzecz. Najwyrazniej liscie tego kwiatu zmieszane z tytoniem sa niezwyklym lekiem. To brzmi interesujaco."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Rosline posadzilem w dolinie kolo Cove Pirate' s, ale to po prostu nie chce nic zrobic. Nie wydaje sie, aby nawet saletra, z która ja nawoze, dzialala. W ksiazce pustelnik powiedzial, ze roslina ta moze rosnac jedynie w glebokich bagnach. Ale moge zapomniec o tym, ze codziennie zabijam sie przez te bestie jaszczurki. Nadszedl najwyzszy czas, abym i tak opuscil ten kraj. Gdzies znajde jeszcze jedno mile miejsce."					);
					
					Doc_Show		( nDocID );
};
//////////////////////////////////////////////////////////////////////////////
//
//	MAPS
//
//////////////////////////////////////////////////////////////////////////////

instance ItWr_Map_NewWorld (C_Item)
{
	name 		= "Mapahorynów";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_NewWorld;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_NewWorld()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_NewWorld);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_NewWorld.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

instance ItWr_Map_Eisgebiet (C_Item)
{
	name 		= "Mapa lodowiska";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_Eisgebiet.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_Eisgebiet;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_Eisgebiet()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_Eisgebiet);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_Eisgebiet.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "Zafiron\Eisgebiet.zen");
					Doc_Show			(Document);
	};

instance ItWr_Map_Eisgebiet_Richard (C_Item)
{
	name 		= "Mapa lodowiska";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_Eisgebiet.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_Eisgebiet_Richard;

	description	= name;
	TEXT[0]		= "Miejsce pobytu Richarda jest oznaczone";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_Eisgebiet_Richard()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_Eisgebiet_Richard);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_Eisgebiet_Richard.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

instance ItWr_Map_Eisgebiet_Keith (C_Item)
{
	name 		= "Mapa lodowiska";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_Eisgebiet.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_Eisgebiet_Keith;

	description	= name;
	TEXT[0]		= "Chata Keith's oznakowana";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_Eisgebiet_Keith()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_Eisgebiet_Keith);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_Eisgebiet_Keith.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

instance ItWr_Map_Tugettso_Tempel (C_Item)
{
	name 		= "Mapa Tugettso";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_Tugettso_Tempel;

	description	= name;
	TEXT[0]		= "Swiatynia jest oznaczona";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_Tugettso_Tempel()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_Tugettso_Tempel);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_Tugettso_Tempel.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

instance ItWr_LageplanOrks (C_Item)
{
	name 		= "Mapahorynów";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_LageplanOrks;

	description	= "Niektóre punkty sa zaznaczone";
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_LageplanOrks()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_LageplanOrks);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_NewWorld_Orklager.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);

	if (Mod_GarondQuest == 0)
	{
		Mod_GarondQuest = 1;

		Wld_InsertNpc	(OrcScout_Garond_03, "NW_PATH_TO_MONASTER_AREA_01");
		Wld_InsertNpc	(OrcScout_Garond_04, "NW_PATH_TO_MONASTER_AREA_01");
		Wld_InsertNpc	(OrcScout_Garond_05, "NW_PATH_TO_MONASTER_AREA_01");
		Wld_InsertNpc	(OrcScout_Garond_06, "NW_TROLLAREA_RUINS_CAVE_01");
		Wld_InsertNpc	(OrcScout_Garond_07, "NW_TROLLAREA_RUINS_CAVE_01");
		Wld_InsertNpc	(OrcScout_Garond_08, "NW_TROLLAREA_RUINS_CAVE_01");
		Wld_InsertNpc	(OrcScout_Garond_09, "NW_BIGMILL_MALAKSVERSTECK_06");
		Wld_InsertNpc	(OrcScout_Garond_10, "NW_BIGMILL_MALAKSVERSTECK_06");
		Wld_InsertNpc	(OrcScout_Garond_11, "NW_BIGMILL_MALAKSVERSTECK_06");

		Log_CreateTopic	(TOPIC_MOD_GAROND_ORKLAGER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_GAROND_ORKLAGER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_GAROND_ORKLAGER, "W obozie harcerskim dwa orki byla mapa. Na nim zaznaczone sa jakies miejsca. Karte te powinienem okazac Garondowi.");
	};
};

instance ItWr_Map_NewWorld_City (C_Item)
{
	name 		= "Mapa miastahoryn";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 50;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_NewWorld_City;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_NewWorld_City()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_NewWorld_City);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_NewWorld_City.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

instance ItWr_Map_OldWorld (C_Item)
{
	name 		= "Mapa Minentalna";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_OldWorld;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_OldWorld()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_OldWorld);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_OldWorld.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

instance ItWr_Map_HagenAL (C_Item)
{
	name 		= "Mapahorynów";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_HagenAL;

	description	= name;
	TEXT[0]		= "Lord Hagen hat die Stellen eingezeichnet,";
	TEXT[1]		= "wo Sträflinge aus dem Minental sein sollen";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_HagenAL()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_HagenAL);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_HagenAL.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

instance ItWr_MapToGobboHoehle (C_Item)
{
	name 		= "Mapa Minentalna";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_MapToGobboHoehle;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_MapToGobboHoehle()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_MapToGobboHoehle);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "MapToGobboHoehle.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

instance ItWr_NicksMap (C_Item)
{
	name 		= "mapa skarbów";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_NicksMap;

	description	= name;
	TEXT[0]		= "z Nicka";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_NicksMap()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_NicksMap);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "NicksMap.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

var int Lerne_Einhand;
var int Lerne_Zweihand;

instance ItWr_Map_Schatzsuche (C_Item)
{
	name 		= "mapa skarbów";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 0;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

instance ItWr_Map_Schatzsuche_Translated (C_Item)
{
	name 		= "Przekladana mapa skarbów";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 0;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};
//---------------------------------------------------------------------------------------------------------------------------
//						Einhandkampf
//---------------------------------------------------------------------------------------------------------------------------
INSTANCE ItWr_EinhandBuch (C_ITEM)
{
	name 					=	"sztuki walki";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	5000;

	visual 					=	"NewBook_V1_6.3DS";  					
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Poludniowa obrona";
	
	TEXT[2] 				=  "Podrecznik o walce.";
	TEXT[3] 				=  "z bronia jednoreczna";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseEinhandBuch;
};

	FUNC VOID UseEinhandBuch()
	{
		if (Lerne_Einhand == FALSE)
		{
			B_RaiseFightTalent (self, NPC_TALENT_1H, 5);
			Print (PRINT_Learn1H);
			Lerne_Einhand = TRUE;
			Snd_Play("Levelup");
		};
		
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								
					Doc_SetPages	( nDocID,  2 );                        

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga"  , 0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 0	); 

					

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Poludniowa obrona"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "The Southerner walczy teraz mniej z sila Nordmanna niz z jego zrecznoscia. Poniewaz w goracym klimacie ojczyzny preferuje pancerz lekki, który pozwala mu na wieksza elastycznosc. W wyniku tej sytuacji Southerner wypracowal zupelnie inny styl walki niz ten, który jest nam znany. "					);
					
					

					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Najbardziej znanym manewrem poludniowego manewru jest prawdopodobnie jednoramienny blok z tylna burta. Dzieki temu udaje mu sie zlagodzic sile ataku przeciwnika i w ten sposób osiagnac doskonala pozycje wyjsciowa, która mozna wykorzystac jako bezposrednia kontratak."	);
					Doc_PrintLine	( nDocID,  1, ""					);
					
					
					Doc_Show		( nDocID );
};
//---------------------------------------------------------------------------------------------------------------------------
//						Zweihandkampf
//---------------------------------------------------------------------------------------------------------------------------
INSTANCE ItWr_ZweihandBuch (C_ITEM)
{
	name 					=	"taktyka walki ";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	5000;

	visual 					=	"NewBook_V2_1.3DS";  					
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Blok podwójny";
	
	TEXT[2] 				=  "Podrecznik o walce.";
	TEXT[3] 				=  "bron dwureczna";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseZweihandBuch;
};

	FUNC VOID UseZweihandBuch()
	{
		if (Lerne_Zweihand == FALSE)
		{
			B_RaiseFightTalent (self, NPC_TALENT_2H, 5);
			Print (PRINT_Learn2H);
			Lerne_Zweihand = TRUE;
			Snd_Play("Levelup");
		};
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga"  , 0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 0	); 

				

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Blok podwójny"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Blokowanie ostrza przeciwnika, z bronia prowadzona obiema rekami, moze byc uzyte z odpowiednia sila, aby powstrzymac wszelki hustawke ataku i zmusic przeciwnika do gwaltownego zatrzymania. "					);
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, ""	);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Pózniejsza stagnacja przeciwnika powinna byc uzyta w sposób zdecydowany, aby przejac inicjatywe i doprowadzic przeciwnika do porazki umiejetnymi ciosami.    "	);
					
					Doc_Show		( nDocID );
};
