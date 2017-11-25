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
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Firebolt;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Firebolt;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Fire Arrow";
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
					Doc_PrintLine	( nDocID,  0, "Fire arrow - role of saying"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x sulphur"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_FIREBOLT] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the spell roll? FIREARS?: 1 Sulphur");

			PLAYER_TALENT_SCROLLS[SCROLL_FIREBOLT] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Icebolt		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Icebolt;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Icebolt;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Ice arrow";
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
					Doc_PrintLine	( nDocID,  0, "Ice arrow - Spruchrolle"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Glacier Quartz"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_ICEBOLT] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the role? ice arrow?: 1 glacier quartz");

			PLAYER_TALENT_SCROLLS[SCROLL_ICEBOLT] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Zap		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Zap;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Zap;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Blitz";
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
					Doc_PrintLine	( nDocID,  0, "Blitz - saying role"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Rock Crystal"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_ZAP] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role? BLITZ?: 1 rock crystal");

			PLAYER_TALENT_SCROLLS[SCROLL_ZAP] = TRUE;
		};
};

INSTANCE ItWr_Scroll_SumWolf		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_SumWolf;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_SumWolf;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Call Wolf";
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
					Doc_PrintLine	( nDocID,  0, "Calling a wolf - saying role"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x wolf fur"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SUMWOLF] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role 'WOLF RUFEN?: 1 wolf fur");

			PLAYER_TALENT_SCROLLS[SCROLL_SUMWOLF] = TRUE;
		};
};

INSTANCE ItWr_Scroll_SumGobSkel		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_SumGobSkel;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_SumGobskel;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Goblin - Create Skeleton";
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
					Doc_PrintLine	( nDocID,  0, "Goblin - Create Skeleton - Scroll of Sayings"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x goblink bone"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SUMGOBSKEL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role? GOBLINSKELETT CREATE?: 1 goblin bone");

			PLAYER_TALENT_SCROLLS[SCROLL_SUMGOBSKEL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_SumSkel		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_SumSkel;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_SumSkel;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Summon Skeleton";
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
					Doc_PrintLine	( nDocID,  0, "Summon Skeleton - Role of Spell"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x skeleton bone"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SUMSKEL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the role of spell? SKELET CERTIFICATE?: 1 skeleton bone");

			PLAYER_TALENT_SCROLLS[SCROLL_SUMSKEL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_SummonGuardian		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_SummonGuardian;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_SummonGuardian;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Create Guardian";
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
					Doc_PrintLine	( nDocID,  0, "Create Guardian - role of saying"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x old coin"					);
					Doc_PrintLines	( nDocID,  0, "1x Rock Crystal"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SUMMONGUARDIAN] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role 'GUARDIAN CERTIFICATE': 1 old coin and 1 rock crystal.");

			PLAYER_TALENT_SCROLLS[SCROLL_SUMMONGUARDIAN] = TRUE;
		};
};

INSTANCE ItWr_Scroll_SumGol		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_SumGol;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_SumGol;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Create Golem";
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
					Doc_PrintLine	( nDocID,  0, "Golem create - role of saying"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x old coin"					);
					Doc_PrintLines	( nDocID,  0, "1x Rock Crystal"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SUMGOL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role? GOLEM EASCHAFFEN?: 1 stone golem heart");

			PLAYER_TALENT_SCROLLS[SCROLL_SUMGOL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_SummonZombie		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_SummonZombie;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_SummonZombie;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Summon Zombie";
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
					Doc_PrintLine	( nDocID,  0, "Summon Zombie - role of saying"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x zombie meat"					);
					Doc_PrintLines	( nDocID,  0, "1x human blood"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SUMMONZOMBIE] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the role? ZOMBIE DEMONS?: 1 zombie meat, 1 bone and 2 bottles of human blood");

			PLAYER_TALENT_SCROLLS[SCROLL_SUMMONZOMBIE] = TRUE;
		};
};

INSTANCE ItWr_Scroll_SumDemon		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_SumDemon;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_SumDemon;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Summon Demon";
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
					Doc_PrintLine	( nDocID,  0, "Summon demon - role of saying"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Demonheart"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SUMDEMON] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the role of spell? DEMON SPELLING?: 1 demon heart");

			PLAYER_TALENT_SCROLLS[SCROLL_SUMDEMON] = TRUE;
		};
};

INSTANCE ItWr_Scroll_ArmyOfDarkness		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_ArmyOfDarkness;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_ArmyOfDarkness;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Army of Darkness";
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
					Doc_PrintLine	( nDocID,  0, "Army of Darkness - Scrolling role"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Demonheart"					);
					Doc_PrintLines	( nDocID,  0, "1x skeleton bone"					);
					Doc_PrintLines	( nDocID,  0, "1x stair lift heart"					);
					Doc_PrintLines	( nDocID,  0, "1x black pearl"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_ARMYOFDARKNESS] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the role? ARMS OF THE DARK?: 1 skeleton bone, 1 black pearl, 1 heart of a stone golem and 1 demon heart.");

			PLAYER_TALENT_SCROLLS[SCROLL_ARMYOFDARKNESS] = TRUE;
		};
};

INSTANCE ItWr_Scroll_InstantIceball		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_InstantIceball;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_InstantIceball;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Ice ball";
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
					Doc_PrintLine	( nDocID,  0, "Ice ball - Spruchrolle"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Bad luck"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_INSTANTICEBALL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role? ICE BALL?: 1 pitch");

			PLAYER_TALENT_SCROLLS[SCROLL_INSTANTICEBALL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Icelance		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Icelance;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Icelance;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Ice lance";
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
					Doc_PrintLine	( nDocID,  0, "Ice lance - Spruchrolle"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Bad luck"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_ICELANCE] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the role? ice lance?: 1 pitch");

			PLAYER_TALENT_SCROLLS[SCROLL_ICELANCE] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Geyser		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Geyser;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Geyser;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Geysir";
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
					Doc_PrintLine	( nDocID,  0, "Geyser - Spruchrolle"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Aquamarine"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_GEYSER] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the role?GEYSIR?: 1 Aquamarine");

			PLAYER_TALENT_SCROLLS[SCROLL_GEYSER] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Icecube		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Icecube;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Icecube;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Ice block";
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
					Doc_PrintLine	( nDocID,  0, "Ice block - Spruchrolle"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Aquamarine"					);
					Doc_PrintLines	( nDocID,  0, "1x Glacier Quartz"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_ICECUBE] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the role? ICE BLOCK?: 1 glacier Quartz and 1 Aquamarine");

			PLAYER_TALENT_SCROLLS[SCROLL_ICECUBE] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Waterfist		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Waterfist;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Waterfist;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Water Fist";
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
					Doc_PrintLine	( nDocID,  0, "Water Fist - Spruchrolle"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Aquamarine"					);
					Doc_PrintLines	( nDocID,  0, "1x Rock Crystal"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_WATERFIST] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the spell roll 'WATERFAUST?: 1 Aquamarine and 1 rock crystal");

			PLAYER_TALENT_SCROLLS[SCROLL_WATERFIST] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Icewave		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Icewave;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Icewave;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Ice wave";
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
					Doc_PrintLine	( nDocID,  0, "Ice wave - Spruchrolle"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Glacier Quartz"					);
					Doc_PrintLines	( nDocID,  0, "1x Aquamarine"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_ICEWAVE] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the role? ice wave?: 1 glacier quartz and 1 aquamarine");

			PLAYER_TALENT_SCROLLS[SCROLL_ICEWAVE] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Icerain		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Icerain;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Icerain;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Ice rain";
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
					Doc_PrintLine	( nDocID,  0, "Ice rain - saying role"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Bad luck"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_ICERAIN] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role? ICE RAIN?: 1 pitch");

			PLAYER_TALENT_SCROLLS[SCROLL_ICERAIN] = TRUE;
		};
};

INSTANCE ItWr_Scroll_InstantFireball		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_InstantFireball;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_InstantFireball;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Fireball";
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
					Doc_PrintLine	( nDocID,  0, "Fireball - Spruchrolle"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Bad luck"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_INSTANTFIREBALL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the spell roll? FIREBALL?: 1 pitch pitch");

			PLAYER_TALENT_SCROLLS[SCROLL_INSTANTFIREBALL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Firestorm		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Firestorm;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Firestorm;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Small firestorm";
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
					Doc_PrintLine	( nDocID,  0, "Small firestorm - role of saying"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Bad luck"					);
					Doc_PrintLines	( nDocID,  0, "1x sulphur"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_FIRESTORM] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role 'SMALL FIREstorm': 1 pitch and 1 sulphur.");

			PLAYER_TALENT_SCROLLS[SCROLL_FIRESTORM] = TRUE;
		};
};

INSTANCE ItWr_Scroll_ChargeFireball		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_ChargeFireball;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_ChargeFireball;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Big fireball";
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
					Doc_PrintLine	( nDocID,  0, "Big Fireball - Spruchrolle"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Bad luck"					);
					Doc_PrintLines	( nDocID,  0, "1x sulphur"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_CHARGEFIREBALL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role? LARGE FIREBALL?: 1 pitch and 1 sulphur.");

			PLAYER_TALENT_SCROLLS[SCROLL_CHARGEFIREBALL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Pyrokinesis		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Pyrokinesis;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Pyrokinesis;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Great firestorm";
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
					Doc_PrintLine	( nDocID,  0, "Great firestorm - role of saying"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x sulphur"					);
					Doc_PrintLines	( nDocID,  0, "1x tongue of a fire monitor"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_PYROKINESIS] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role 'LARGE FIRE-storm': 1 sulphur and 1 tongue of a fire monitor");

			PLAYER_TALENT_SCROLLS[SCROLL_PYROKINESIS] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Firerain		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Firerain;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Firerain;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe recipe: Fire rain";
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
					Doc_PrintLine	( nDocID,  0, "Fire rain - saying role"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Bad luck"					);
					Doc_PrintLines	( nDocID,  0, "1x tongue of a fire monitor"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_FIRERAIN] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role 'FIRE RAIN?: 1 pitch and 1 tongue of a fire monitor");

			PLAYER_TALENT_SCROLLS[SCROLL_FIRERAIN] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Thunderstorm		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Thunderstorm;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Thunderstorm;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Storm";
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
					Doc_PrintLine	( nDocID,  0, "Storm - Spruchrolle"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Glacier Quartz"					);
					Doc_PrintLines	( nDocID,  0, "1x grand piano"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_THUNDERSTORM] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the role?UNWETTER?: 1 glacier Quartz and 1 wing");

			PLAYER_TALENT_SCROLLS[SCROLL_THUNDERSTORM] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Thunderball		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Thunderball;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Thunderball;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Ball lightning";
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
					Doc_PrintLine	( nDocID,  0, "Ball flash - slogan roll"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x sulphur"					);
					Doc_PrintLines	( nDocID,  0, "1x Rock Crystal"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_THUNDERBALL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the banner? BALL FLASH?: 1 sulphur and 1 rock crystal");

			PLAYER_TALENT_SCROLLS[SCROLL_THUNDERBALL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_LightningFlash		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_LightningFlash;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_LightningFlash;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Lightning strike";
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
					Doc_PrintLine	( nDocID,  0, "Lightning strike - spell roll"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Glacier Quartz"					);
					Doc_PrintLines	( nDocID,  0, "1x Rock Crystal"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_LIGHTNINGFLASH] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role? FLASHING?: 1 glacier Quartz and 1 rock crystal");

			PLAYER_TALENT_SCROLLS[SCROLL_LIGHTNINGFLASH] = TRUE;
		};
};

INSTANCE ItWr_Scroll_SuckEnergy		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_SuckEnergy;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_SuckEnergy;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Stealing energy";
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
					Doc_PrintLine	( nDocID,  0, "Stealing energy - saying role"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x human blood"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SUCKENERGY] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role of ENERGY STEELS: 1 human blood");

			PLAYER_TALENT_SCROLLS[SCROLL_SUCKENERGY] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Zerfleischen		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Zerfleischen;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Zerfleischen;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Meat cutting";
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
					Doc_PrintLines	( nDocID,  0, "1x Bad luck"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_ZERFLEISCHEN] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role? MEAT?: 1 bad luck");

			PLAYER_TALENT_SCROLLS[SCROLL_ZERFLEISCHEN] = TRUE;
		};
};

INSTANCE ItWr_Scroll_BeliarsRage		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_BeliarsRage;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_BeliarsRage;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Beliars anger";
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
					Doc_PrintLine	( nDocID,  0, "Beliars Zorn - Scroll of Wrath"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Black Pearl"					);
					Doc_PrintLines	( nDocID,  0, "2x coal"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_BELIARSRAGE] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role? BELIARS ZORN?: 1 black pearl and 2 charcoal");

			PLAYER_TALENT_SCROLLS[SCROLL_BELIARSRAGE] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Skull		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Skull;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Skull;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: scream of the dead";
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
					Doc_PrintLine	( nDocID,  0, "Scream of the Dead - Role of Saying"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "2x human blood"					);
					Doc_PrintLines	( nDocID,  0, "3x zombie meat"					);
					Doc_PrintLines	( nDocID,  0, "2x skeletal bones"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SKULL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role of CRIES OF THE DEAD?: 2 human blood, 3 zombie flesh and 2 skeletal bones");

			PLAYER_TALENT_SCROLLS[SCROLL_SKULL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_BreathOfDeath		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_BreathOfDeath;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_BreathOfDeath;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Death Breeze";
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
					Doc_PrintLine	( nDocID,  0, "Death breath - role of saying"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Black Pearl"					);
					Doc_PrintLines	( nDocID,  0, "1x coal"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_BREATHOFDEATH] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the spell roll? TODESHAUCH?: 1 black pearl and 1 coal");

			PLAYER_TALENT_SCROLLS[SCROLL_BREATHOFDEATH] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Light		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Light;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Light;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Light";
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
					Doc_PrintLine	( nDocID,  0, "Light - role of saying"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x gold coin"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_LIGHT] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the scroll? LIGHT?: 1 gold coin");

			PLAYER_TALENT_SCROLLS[SCROLL_LIGHT] = TRUE;
		};
};

INSTANCE ItWr_Scroll_Shrink		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_Shrink;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_Shrink;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Shrink monsters";
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
					Doc_PrintLine	( nDocID,  0, "Shrinking monsters - saying role"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x goblink bone"					);
					Doc_PrintLines	( nDocID,  0, "1x troll tooth"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_SHRINK] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the spelling roll? MONSTER SCHRUMPFEN?: 1 goblin bone and 1 troll tooth");

			PLAYER_TALENT_SCROLLS[SCROLL_SHRINK] = TRUE;
		};
};

INSTANCE ItWr_Scroll_HarmUndead		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_HarmUndead;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_HarmUndead;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Destroy undead";
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
					Doc_PrintLine	( nDocID,  0, "Destroy undead - saying role"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x Holy Water"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_HARMUNDEAD] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role of 'SAVE UNTOTE VERNICHTEN': 1 Holy Water");

			PLAYER_TALENT_SCROLLS[SCROLL_HARMUNDEAD] = TRUE;
		};
};

INSTANCE ItWr_Scroll_LightHeal		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_LightHeal;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_LightHeal;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Healing light wounds";
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
					Doc_PrintLine	( nDocID,  0, "Healing light wounds - saying role"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x medicinal plant"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_LIGHTHEAL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role? LIGHT WOUND HEALING?: 1 medicinal plant");

			PLAYER_TALENT_SCROLLS[SCROLL_LIGHTHEAL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_MediumHeal		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_MediumHeal;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_MediumHeal;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Healing medium wounds";
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
					Doc_PrintLine	( nDocID,  0, "Healing medium wounds - saying role"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x medicinal herb"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_MEDIUMHEAL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role? MEDIUM WOUNDS HEALING?: 1 Herb");

			PLAYER_TALENT_SCROLLS[SCROLL_MEDIUMHEAL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_FullHeal		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_FullHeal;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_FullHeal;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Healing severe wounds";
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
					Doc_PrintLine	( nDocID,  0, "Healing severe wounds - saying role"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x healing root"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_FULLHEAL] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role? HEAVY WOUNDS HEALING?: 1 Healing Root");

			PLAYER_TALENT_SCROLLS[SCROLL_FULLHEAL] = TRUE;
		};
};

INSTANCE ItWr_Scroll_AuraFlammen		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Scroll_AuraFlammen;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseScroll_AuraFlammen;
	scemeName			=	"MAPSEALED";
	description			= 	"Recipe: Aura of Flames";
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
					Doc_PrintLine	( nDocID,  0, "Aura of the Flames - Role of Saying"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1x saying role fire rain"					);
					Doc_PrintLines	( nDocID,  0, "1x role of fire storm"					);
					Doc_PrintLines	( nDocID,  0, "1x Demonheart"					);
					Doc_PrintLines	( nDocID,  0, "1x Heart of a fire eagle"					);
					Doc_PrintLines	( nDocID,  0, "1x tongue of fire"					);
					Doc_PrintLines	( nDocID,  0, "3x coal"					);
					Doc_PrintLines	( nDocID,  0, "1x Bad luck"					);
					Doc_PrintLines	( nDocID,  0, "2x sulphur"					);

					Doc_Show		( nDocID );

		if (PLAYER_TALENT_SCROLLS[SCROLL_AuraFlammen] == FALSE)
		{
			B_LogEntry	(TOPIC_TalentScrolls, "Ingredients for the saying role? AURA OF THE FLAMES?: 1 role of fire rain, 1 role of fire storm, 1 demon heart, 1 heart of a fire goyle, 1 tongue of fire, 3 charcoal, 1 pitch, 2 sulphur.");

			PLAYER_TALENT_SCROLLS[SCROLL_AuraFlammen] = TRUE;
		};
};
