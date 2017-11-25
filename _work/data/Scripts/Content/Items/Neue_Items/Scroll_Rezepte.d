const int Value_Scroll_Firebolt		= 50;
const int Value_Scroll_Icebolt 		= 50;
const int Value_Scroll_Zap 		= 50;
const int Value_Scroll_SumWolf		= 50;
const int Value_Scroll_SumGobSkel	= 100;
const int Value_Scroll_AuraFlammen	= 100;
const int Value_Scroll_SumSkel		= 200;
const int Value_Scroll_SummonGuardian	= 200;
const int Value_Scroll_SummonZombie	= 300;
const int Value_Scroll_SumGol		= 300;
const int Value_Scroll_SumDemon		= 400;
const int Value_Scroll_ArmyOfDarkness	= 500;
const int Value_Scroll_InstantIceball	= 100;
const int Value_Scroll_Icelance		= 100;
const int Value_Scroll_Geyser		= 200;
const int Value_Scroll_Icecube		= 200;
const int Value_Scroll_Waterfist	= 300;
const int Value_Scroll_Icewave		= 400;
const int Value_Scroll_Icerain		= 500;
const int Value_Scroll_InstantFireball	= 100;
const int Value_Scroll_Firestorm	= 200;
const int Value_Scroll_ChargeFireball	= 300;
const int Value_Scroll_Pyrokinesis	= 400;
const int Value_Scroll_Firerain		= 500;
const int Value_Scroll_Thunderstorm	= 200;
const int Value_Scroll_Thunderball	= 200;
const int Value_Scroll_LightningFlash	= 300;
const int Value_Scroll_SuckEnergy	= 50;
const int Value_Scroll_Zerfleischen	= 200;
const int Value_Scroll_BeliarsRage	= 200;
const int Value_Scroll_Skull		= 400;
const int Value_Scroll_BreathOfDeath	= 500;
const int Value_Scroll_LightHeal	= 50;
const int Value_Scroll_MediumHeal	= 200;
const int Value_Scroll_FullHeal		= 400;
const int Value_Scroll_Light		= 50;
const int Value_Scroll_Shrink		= 500;
const int Value_Scroll_HarmUndead	= 500;

INSTANCE ItWr_Scroll_Firebolt		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Firebolt;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Firebolt;
	scemeName			=	"MAPSEALED";
	description			= 	"Zalecenie: Strzalka przeciwpozarowa";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_Firebolt ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Strzalka ognia - rola mówienia"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x siarka"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_FIREBOLT] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla rolki zaklec: 1 Siarka?");

			PLAYER_TALENT_SCROLLS[SCROLL_FIREBOLT] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Icebolt		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Icebolt;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Icebolt;
	scemeName			=	"MAPSEALED";
	description			= 	"Zalecenie: Strzalka lodowa";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_Icebolt ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Strzalka lodowa - Spruchrol"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Lodowiec Quartz Quartz"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_ICEBOLT] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla roli? Strzalka lodowa: 1 lodowiec kwarc?");

			PLAYER_TALENT_SCROLLS[SCROLL_ICEBOLT] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Zap		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Zap;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Zap;
	scemeName			=	"MAPSEALED";
	description			= 	"Recepcja: Blitz";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_Zap ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Blitz - rola mówcy"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Krysztal kamienny"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_ZAP] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla powiedzianej roli BLITZ: 1 krysztal skalny?");

			PLAYER_TALENT_SCROLLS[SCROLL_ZAP] = TRUE;
		};
};

INSTANCE ItWr_Scroll_SumWolf		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_SumWolf;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_SumWolf;
	scemeName			=	"MAPSEALED";
	description			= 	"Zalecenie: Zadzwon pod numer Wolff.";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_SumWolf ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Wolanie wilka - rola mówienia"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x futro z wilka"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SUMWOLF] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla powiedzianej roli 'WOLF RUFEN?");

			PLAYER_TALENT_SCROLLS[SCROLL_SUMWOLF] = TRUE;
		};
};

INSTANCE ItWr_Scroll_SumGobSkel		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_SumGobSkel;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_SumGobskel;
	scemeName			=	"MAPSEALED";
	description			= 	"Wzór: Goblin - Stworzenie szkieletu";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_SumGobSkel ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Goblin - Utwórz szkielet - zwój slów"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x kosc goblina"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SUMGOBSKEL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla roli powiedzmy: KREAT GOBLINSKELETT: 1 goblinowa kosc?");

			PLAYER_TALENT_SCROLLS[SCROLL_SUMGOBSKEL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_SumSkel		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_SumSkel;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_SumSkel;
	scemeName			=	"MAPSEALED";
	description			= 	"Zalecenie: szkielet wezwania";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_SumSkel ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Szkielet wezwania - Rola piszczeli"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x kosci szkieletowej"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SUMSKEL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki na role zaklecia, CERTYFIKAT SKELET: 1 kosc szkieletowa?");

			PLAYER_TALENT_SCROLLS[SCROLL_SUMSKEL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_SummonGuardian		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_SummonGuardian;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_SummonGuardian;
	scemeName			=	"MAPSEALED";
	description			= 	"Postac: Utwórz stróza.";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_SummonGuardian ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Twórz gwardiana - rola powiedzenia"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x stara moneta"					);
					Doc_PrintLines	( nDocID,  0, "1x Krysztal kamienny"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SUMMONGUARDIAN] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki do powiedzianej roli 'CERTYFIKAT GUARDIANOWY': 1 stara moneta i 1 krysztal skalny.");

			PLAYER_TALENT_SCROLLS[SCROLL_SUMMONGUARDIAN] = TRUE;
		};
};

INSTANCE ItWr_Scroll_SumGol		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_SumGol;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_SumGol;
	scemeName			=	"MAPSEALED";
	description			= 	"Postac: Utwórz Golem.";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_SumGol ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Tworzenie golema - rola powiedzenia"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x stara moneta"					);
					Doc_PrintLines	( nDocID,  0, "1x Krysztal kamienny"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SUMGOL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki do powiedzianej roli GOLEM EASCHAFFEN: 1 kamienne serce golema?");

			PLAYER_TALENT_SCROLLS[SCROLL_SUMGOL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_SummonZombie		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_SummonZombie;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_SummonZombie;
	scemeName			=	"MAPSEALED";
	description			= 	"Zalecenie: Wezwanie Zombie.";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_SummonZombie ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Summon Zombie - rola powiedzenia"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x mieso zombie"					);
					Doc_PrintLines	( nDocID,  0, "1 x krew ludzka"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SUMMONZOMBIE] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki do roli ZOMBIE DEMONS: 1 zombie mieso, 1 kosc i 2 butelki krwi ludzkiej.");

			PLAYER_TALENT_SCROLLS[SCROLL_SUMMONZOMBIE] = TRUE;
		};
};

INSTANCE ItWr_Scroll_SumDemon		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_SumDemon;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_SumDemon;
	scemeName			=	"MAPSEALED";
	description			= 	"Powód: Wezwac Demon.";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_SumDemon ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Wezwanie demona - rola powiedzenia"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Demontaz"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SUMDEMON] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla roli zaklecia: 1 demon serce?");

			PLAYER_TALENT_SCROLLS[SCROLL_SUMDEMON] = TRUE;
		};
};

INSTANCE ItWr_Scroll_ArmyOfDarkness		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_ArmyOfDarkness;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_ArmyOfDarkness;
	scemeName			=	"MAPSEALED";
	description			= 	"Postac: Armia ciemnosci";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_ArmyOfDarkness ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Armia ciemnosci - Rola przewijania"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Demontaz"					);
					Doc_PrintLines	( nDocID,  0, "1x kosci szkieletowej"					);
					Doc_PrintLines	( nDocID,  0, "1x serce windy schodowej 1x"					);
					Doc_PrintLines	( nDocID,  0, "1x perla czarna"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_ARMYOFDARKNESS] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki roli: 1 kostka szkieletowa, 1 czarna perla, 1 serce kamiennego golema i 1 serce demona.");

			PLAYER_TALENT_SCROLLS[SCROLL_ARMYOFDARKNESS] = TRUE;
		};
};

INSTANCE ItWr_Scroll_InstantIceball		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_InstantIceball;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_InstantIceball;
	scemeName			=	"MAPSEALED";
	description			= 	"Wzór: Kula lodowa";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_InstantIceball ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Pilka do lodu - Spruchrolla"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x pech"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_INSTANTICEBALL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla roli mówcy? ICE BALL: 1 wysokosc?");

			PLAYER_TALENT_SCROLLS[SCROLL_INSTANTICEBALL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Icelance		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Icelance;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Icelance;
	scemeName			=	"MAPSEALED";
	description			= 	"Zalecenie: lanca lodowa";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_Icelance ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Lanca lodowa - Spruchrolina"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x pech"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_ICELANCE] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla roli lancy lodowej: 1 smola?");

			PLAYER_TALENT_SCROLLS[SCROLL_ICELANCE] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Geyser		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Geyser;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Geyser;
	scemeName			=	"MAPSEALED";
	description			= 	"Wzór: Geysir";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_Geyser ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Geyser - Gejzer - Spruchroler"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Akwamaryna"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_GEYSER] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki do roli GEYSIR? 1 Akwamaryna 1 Akwamaryna");

			PLAYER_TALENT_SCROLLS[SCROLL_GEYSER] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Icecube		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Icecube;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Icecube;
	scemeName			=	"MAPSEALED";
	description			= 	"Uwaga: Blok lodowy";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_Icecube ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Blok lodu - Spruchrol"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Akwamaryna"					);
					Doc_PrintLines	( nDocID,  0, "1x Lodowiec Quartz Quartz"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_ICECUBE] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla roli ICE BLOCK: 1 lodowiec Quartz i 1 Aquamarine?");

			PLAYER_TALENT_SCROLLS[SCROLL_ICECUBE] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Waterfist		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Waterfist;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Waterfist;
	scemeName			=	"MAPSEALED";
	description			= 	"Zalecenie: przetoka wodna";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_Waterfist ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Piesc wodna - Spruchrol"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Akwamaryna"					);
					Doc_PrintLines	( nDocID,  0, "1x Krysztal kamienny"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_WATERFIST] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla zaklecia 'WODA SPOSÓB SPRAWIEDLIWOSCI: 1 Akwamaryna i 1 krysztal skalny.");

			PLAYER_TALENT_SCROLLS[SCROLL_WATERFIST] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Icewave		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Icewave;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Icewave;
	scemeName			=	"MAPSEALED";
	description			= 	"Norma: Fala lodowa";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_Icewave ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Fala lodowa - Spruchrol"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Lodowiec Quartz Quartz"					);
					Doc_PrintLines	( nDocID,  0, "1x Akwamaryna"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_ICEWAVE] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla roli fali lodowej: 1 kwarc lodowy i 1 akwamaryna.");

			PLAYER_TALENT_SCROLLS[SCROLL_ICEWAVE] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Icerain		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Icerain;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Icerain;
	scemeName			=	"MAPSEALED";
	description			= 	"Postac: Lód deszczowy";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_Icerain ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Lody deszczowe - rola mówcy"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x pech"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_ICERAIN] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla roli mówcy ICE RAIN: 1 wysokosc?");

			PLAYER_TALENT_SCROLLS[SCROLL_ICERAIN] = TRUE;
		};
};

INSTANCE ItWr_Scroll_InstantFireball		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_InstantFireball;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_InstantFireball;
	scemeName			=	"MAPSEALED";
	description			= 	"Recepcja: Fireball";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_InstantFireball ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Fireball - Spruchrol"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x pech"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_INSTANTFIREBALL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki do rolowania zaklec? FIREBALL: 1 na boisko?");

			PLAYER_TALENT_SCROLLS[SCROLL_INSTANTFIREBALL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Firestorm		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Firestorm;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Firestorm;
	scemeName			=	"MAPSEALED";
	description			= 	"Przepisy: Mala burza pozarowa";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_Firestorm ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Mala burza pozarnicza - rola mówienia"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x pech"					);
					Doc_PrintLines	( nDocID,  0, "1x siarka"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_FIRESTORM] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla powiedzmy 'SMALL FIREstorm': 1 smola i 1 siarka.");

			PLAYER_TALENT_SCROLLS[SCROLL_FIRESTORM] = TRUE;
		};
};

INSTANCE ItWr_Scroll_ChargeFireball		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_ChargeFireball;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_ChargeFireball;
	scemeName			=	"MAPSEALED";
	description			= 	"Zalecenie: Big fireball.";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_ChargeFireball ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Big Fireball - Spruchrol"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x pech"					);
					Doc_PrintLines	( nDocID,  0, "1x siarka"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_CHARGEFIREBALL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla roli powiedzmy: DUZE MOZLIWOSC: 1 smola i 1 siarka.");

			PLAYER_TALENT_SCROLLS[SCROLL_CHARGEFIREBALL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Pyrokinesis		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Pyrokinesis;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Pyrokinesis;
	scemeName			=	"MAPSEALED";
	description			= 	"Recepcja: Wielka burza pozarowa";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_Pyrokinesis ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Wielka burza pozarowa - rola powiedzenia"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x siarka"					);
					Doc_PrintLines	( nDocID,  0, "1x jezyk monitora przeciwpozarowego"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_PYROKINESIS] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki do powiedzenia 'DUZA burza ognia': 1 siarka i 1 jezyk monitora przeciwpozarowego");

			PLAYER_TALENT_SCROLLS[SCROLL_PYROKINESIS] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Firerain		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Firerain;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Firerain;
	scemeName			=	"MAPSEALED";
	description			= 	"Receptura: Pozar deszczu";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_Firerain ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Pozar deszczu - rola mówcy"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x pech"					);
					Doc_PrintLines	( nDocID,  0, "1x jezyk monitora przeciwpozarowego"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_FIRERAIN] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla powiedzianej roli 'RAIN POWIETRZA POZAROWEGO': 1 smola i 1 jezyk monitora przeciwpozarowego.");

			PLAYER_TALENT_SCROLLS[SCROLL_FIRERAIN] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Thunderstorm		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Thunderstorm;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Thunderstorm;
	scemeName			=	"MAPSEALED";
	description			= 	"Recepcja: Burza";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_Thunderstorm ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Burza - Spruchrol"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Lodowiec Quartz Quartz"					);
					Doc_PrintLines	( nDocID,  0, "1x fortepian"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_THUNDERSTORM] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla roli UNWETTER?: 1 kwarc lodowy i 1 skrzydlo.");

			PLAYER_TALENT_SCROLLS[SCROLL_THUNDERSTORM] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Thunderball		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Thunderball;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Thunderball;
	scemeName			=	"MAPSEALED";
	description			= 	"Wzór: Piorun kulowy";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_Thunderball ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Blysk kulkowy - walek z sloganem"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x siarka"					);
					Doc_PrintLines	( nDocID,  0, "1x Krysztal kamienny"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_THUNDERBALL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla banera BALL FLASH: 1 siarka i 1 krysztal skalny?");

			PLAYER_TALENT_SCROLLS[SCROLL_THUNDERBALL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_LightningFlash		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_LightningFlash;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_LightningFlash;
	scemeName			=	"MAPSEALED";
	description			= 	"Wzór: Blyskawica blyskawiczna";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_LightningFlash ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Piorun uderzenia pioruna - zaklecie na rolce"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Lodowiec Quartz Quartz"					);
					Doc_PrintLines	( nDocID,  0, "1x Krysztal kamienny"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_LIGHTNINGFLASH] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki do powiedzianej roli: 1 kwarc lodowy i 1 krysztal skalny?");

			PLAYER_TALENT_SCROLLS[SCROLL_LIGHTNINGFLASH] = TRUE;
		};
};

INSTANCE ItWr_Scroll_SuckEnergy		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_SuckEnergy;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_SuckEnergy;
	scemeName			=	"MAPSEALED";
	description			= 	"Wzór: Energia krystaliczna";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_SuckEnergy ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Sterowanie energia - rola mówienia"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1 x krew ludzka"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SUCKENERGY] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki do powiedzianej roli STELEÓW ENERGII: 1 krew ludzka");

			PLAYER_TALENT_SCROLLS[SCROLL_SUCKENERGY] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Zerfleischen		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Zerfleischen;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Zerfleischen;
	scemeName			=	"MAPSEALED";
	description			= 	"Recepcja: Ciecie miesa";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_Zerfleischen ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Mangle - Spruchrolle"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x pech"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_ZERFLEISCHEN] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki do roli mówcy MIESO: 1 pech?");

			PLAYER_TALENT_SCROLLS[SCROLL_ZERFLEISCHEN] = TRUE;
		};
};

INSTANCE ItWr_Scroll_BeliarsRage		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_BeliarsRage;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_BeliarsRage;
	scemeName			=	"MAPSEALED";
	description			= 	"Wzór: Gniew Beliarów";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_BeliarsRage ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Beliars Zorn - zwój Wrath."					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Czarna Perla"					);
					Doc_PrintLines	( nDocID,  0, "2x wegiel kamienny"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_BELIARSRAGE] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla roli powiedzmy: BELIARS ZORN?: 1 czarna perla i 2 wegiel drzewny?");

			PLAYER_TALENT_SCROLLS[SCROLL_BELIARSRAGE] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Skull		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Skull;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Skull;
	scemeName			=	"MAPSEALED";
	description			= 	"Recepcja: krzyczec martwych.";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_Skull ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Smiech zmarlych - rola powiedzenia"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "2x krew ludzka"					);
					Doc_PrintLines	( nDocID,  0, "3x mieso zombie"					);
					Doc_PrintLines	( nDocID,  0, "2x kosci szkieletowe"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SKULL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla powiedzianej roli CRIES DEAD: 2 krew ludzka, 3 miazsz zombie i 2 kosci szkieletowe.");

			PLAYER_TALENT_SCROLLS[SCROLL_SKULL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_BreathOfDeath		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_BreathOfDeath;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_BreathOfDeath;
	scemeName			=	"MAPSEALED";
	description			= 	"Recepcja: Breeze smierci";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_BreathOfDeath ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Oddech smierci - rola powiedzenia"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Czarna Perla"					);
					Doc_PrintLines	( nDocID,  0, "1x wegiel kamienny"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_BREATHOFDEATH] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla rolki zaklecia: 1 czarna perla i 1 wegiel.");

			PLAYER_TALENT_SCROLLS[SCROLL_BREATHOFDEATH] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Light		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Light;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Light;
	scemeName			=	"MAPSEALED";
	description			= 	"Recepta: Swiatlo";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_Light ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Swiatlo - rola powiedzenia"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x zlota moneta"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_LIGHT] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki do przewijania: 1 zlota moneta?");

			PLAYER_TALENT_SCROLLS[SCROLL_LIGHT] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Shrink		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Shrink;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Shrink;
	scemeName			=	"MAPSEALED";
	description			= 	"Recepcja: Potwory skurczowe";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_Shrink ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Skurczajace sie potwory - powiedzenie roli"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x kosc goblina"					);
					Doc_PrintLines	( nDocID,  0, "1x zab trollowy"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SHRINK] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla walka pisowni MONSTER SCHRUMPFEN: 1 kosc goblinowa i 1 zab trolla?");

			PLAYER_TALENT_SCROLLS[SCROLL_SHRINK] = TRUE;
		};
};

INSTANCE ItWr_Scroll_HarmUndead		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_HarmUndead;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_HarmUndead;
	scemeName			=	"MAPSEALED";
	description			= 	"Postac: Zniszczenie nieumarlych";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_HarmUndead ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Zniszczenie - rola mówienia"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Swieza woda"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_HARMUNDEAD] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla powiedzianej roli 'UNTOTE UNTOTE VERNICHTEN': 1 Woda swieta");

			PLAYER_TALENT_SCROLLS[SCROLL_HARMUNDEAD] = TRUE;
		};
};

INSTANCE ItWr_Scroll_LightHeal		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_LightHeal;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_LightHeal;
	scemeName			=	"MAPSEALED";
	description			= 	"Sposób postepowania: Uzdrawiajace lekkie rany";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_LightHeal ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Uzdrawiajace lekkie rany - rola powiedzenia"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x roslina lecznicza"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_LIGHTHEAL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki do powiedzenia roli: SWIATLO WYSTEPUJACE UZYTKOWANIE: 1 roslina lecznicza?");

			PLAYER_TALENT_SCROLLS[SCROLL_LIGHTHEAL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_MediumHeal		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_MediumHeal;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_MediumHeal;
	scemeName			=	"MAPSEALED";
	description			= 	"Sposób postepowania: Rany czynnika gojacego";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_MediumHeal ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Uzdrawiajace rany medium - rola powiedzenia"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x ziolo lecznicze"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_MEDIUMHEAL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki do roli mówcy SREDNIO UZYTKOWNIKA: 1 Ziola?");

			PLAYER_TALENT_SCROLLS[SCROLL_MEDIUMHEAL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_FullHeal		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_FullHeal;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_FullHeal;
	scemeName			=	"MAPSEALED";
	description			= 	"Sposób postepowania: Uzdrawianie ciezkich ran.";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_FullHeal ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Uzdrowienie ciezkich ran - rola powiedzenia"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1 x korzen leczniczy"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_FULLHEAL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Skladniki dla powiedzianej roli, UWAZAJA POZYCJE UZYTKOWNIKÓW: 1 GODZINA GOSPODARCZA?");

			PLAYER_TALENT_SCROLLS[SCROLL_FULLHEAL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_AuraFlammen		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_AuraFlammen;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_AuraFlammen;
	scemeName			=	"MAPSEALED";
	description			= 	"Wzór: Aura plomieni";
	TEXT[5]	= NAME_Value;
	Count[5] = value;
};

func void UseScroll_AuraFlammen ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Aura plomieni - rola powiedzenia"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1) Powiedzenie roli deszczu ogniowego"					);
					Doc_PrintLines	( nDocID,  0, "1x rola burzy pozarowej"					);
					Doc_PrintLines	( nDocID,  0, "1x Demontaz"					);
					Doc_PrintLines	( nDocID,  0, "1x Serce orla krzykliwego"					);
					Doc_PrintLines	( nDocID,  0, "1x jezyk ognia"					);
					Doc_PrintLines	( nDocID,  0, "3x wegiel kamienny"					);
					Doc_PrintLines	( nDocID,  0, "1x pech"					);
					Doc_PrintLines	( nDocID,  0, "2x siarka 2x"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_AuraFlammen] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "AURA FLAMESÓW: 1 rola deszczu plonacego, 1 rola burzy pozarowej, 1 serce demoniczne, 1 serce gojka ognia, 1 jezyk ognia, 3 wegiel drzewny, 1 smola, 2 siarka.");

			PLAYER_TALENT_SCROLLS[SCROLL_AuraFlammen] = TRUE;
		};
};
