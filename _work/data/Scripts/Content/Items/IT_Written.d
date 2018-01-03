//**********************************************************************************
//	StandardBrief
//**********************************************************************************

INSTANCE StandardBrief		(C_Item)
{
	name 				=	"Letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseStandardBrief;
	scemeName			=	"MAP";
	description			= 	"DefaultLetter";
};
func void UseStandardBrief ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "DefaultLetter"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Bla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bla"					);

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
	TEXT[0]				=	"contains the formula for soothing the spirits";
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
	TEXT[0]				=	"by a tramp";
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
			B_LogEntry	(TOPIC_MOD_HEROLD_SIEGELRING, "It looks as if the thief has set off into the Minental.");
		}
		else
		{
			B_LogEntry	(TOPIC_MOD_HEROLD_SIEGELRING, "Looks like the thief has moved on to Relendel.");
		};
	};

					if (Mod_Herold_Siegelring_Verlauf == 0)
					{
						Doc_PrintLines	( nDocID,  0, "I can't wait any longer. Believe the guards are on my heels. I'm renting a car in the Minental."					);
					}
					else
					{
						Doc_PrintLines	( nDocID,  0, "I can't wait any longer. Believe the guards are on my heels. I'm borrowing Relendel."					);
					};

					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ps: The clamottn of the snook stand me gud gud, hähähäää..."					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_GestathTrophyList		(C_Item)
{
	name 				=	"List";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseGestathTrophyList;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Trophies for Gestath";
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
			Doc_PrintLines	( nDocID,  0, ConcatStrings(IntToString(Mod_EIS_Gestath_DragonsnapperHorn), "x Horn of a dragon snapper"));
		};
		if (Mod_EIS_Gestath_LurkerClaw > 0)
		{
			Doc_PrintLines	( nDocID,  0, ConcatStrings(IntToString(Mod_EIS_Gestath_LurkerClaw), "x Lurker claw"));
		};
		if (Mod_EIS_Gestath_Keilerhauer > 0)
		{
			Doc_PrintLines	( nDocID,  0, ConcatStrings(IntToString(Mod_EIS_Gestath_Keilerhauer), "x Boar tusk"));
		};
		if (Mod_EIS_Gestath_Flammenzunge > 0)
		{
			Doc_PrintLines	( nDocID,  0, ConcatStrings(IntToString(Mod_EIS_Gestath_Flammenzunge), "x Flame tongue"));
		};
		if (Mod_EIS_Gestath_ShadowHorn > 0)
		{
			Doc_PrintLines	( nDocID,  0, ConcatStrings(IntToString(Mod_EIS_Gestath_ShadowHorn), "x Horn of a shadow runner"));
		};
		if (Mod_EIS_Gestath_SharkTeeth > 0)
		{
			Doc_PrintLines	( nDocID,  0, ConcatStrings(IntToString(Mod_EIS_Gestath_SharkTeeth), "x teeth of a swamp shark"));
		};
					
		Doc_Show		( nDocID );

};

INSTANCE ItWr_KrautruestungListe		(C_Item)
{
	name 				=	"List";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseKrautruestungListe;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Ingredients for the bogweed kit";
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
					Doc_PrintLines	( nDocID,  0, "15 plants bog herb"					);
					Doc_PrintLines	( nDocID,  0, "10 reptile skins"					);
					Doc_PrintLines	( nDocID,  0, "5 bars of crude steel"					);
					Doc_PrintLines	( nDocID,  0, "3 skeletal bones"					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_EivarZettel		(C_Item)
{
	name 				=	"Note";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseEivarZettel;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"from a corpse in Gelato";
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
					Doc_PrintLines	( nDocID,  0, "That's what I got from my greed for the trophies from the more distant areas.... wanted to make the big money. Instead, I sit up here and die on my wound. If the cursed beast would finally disappear, I could at least go downstairs and treat her in a makeshift way. But I fool had to hide everything in the stump... like somebody's stealing from me. It almost serves me right...");
					Doc_PrintLines	( nDocID,  0, "Looking towards the Beyond, Eivar");
					
					Doc_Show		( nDocID );

	Mod_Eivar = 1;

};

INSTANCE ItWr_TierZaehmung		(C_Item)
{
	name 				=	"Note";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;

	value 				=	50;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseTierZaehmung;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Adanos' gift of fairness";
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
					Doc_PrintLines	( nDocID,  0, "Like all beings on Adanos' green earth, both humans and animals came from the divine creation. There is a connection between all these creatures. A knowledgeable priest Adanos' is now able to use this bond for himself and to make animals that are actually wild and untamable."					);
					
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
	TEXT[0]				=	"by Garp from the old mine";
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
					Doc_PrintLines	( nDocID,  0, "Day 8: I can't stand it anymore among the others. Just get away from them. I will never eat the flesh of our dead comrades to survive. We would be damned for all eternity..."					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Day 10: This hunger, hunger, tormenting hunger. What would I give for a piece of meat now? But those damn crawlers showed up downstairs and they're blocking my path. No 10 horses will get me down..."					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Day 11: Damn it, one of the beasts bit me when I tried to climb down. I feel how the poison penetrates my veins.... I won't be doing it much longer..."					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Garp"					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_OTGeheimkammer01		(C_Item)
{
	name 				=	"Note part 1";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOTGeheimkammer01;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Information on the Secret Chamber";
	TEXT[1]				=	"Upper third";
};

func void UseOTGeheimkammer01 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters_oben.TGA"  , 0 		);
					Doc_SetMargins	( nDocID, -1, 50, 20, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Handschrift		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Since the twisted combination for the two switches doesn't go into your head, I wrote it down here. But don't even think about carrying the whole note around with you! The orcs don't need to know where we stored our treasures. Divide it into three parts, and only this one you keep with you - the rest you hide and only get it out when you need it, do you understand?"					);
					
					Doc_Show		( nDocID );

	if (Mod_OT_Geheimkammer == 0)
	{
		Mod_OT_Geheimkammer = 1;

		Log_CreateTopic	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_OT_GEHEIMKAMMER, "I found part of a note where Cor Kalom seems to have written down how to get into a hidden room. However, I still need two more parts to solve the puzzle.");
	};
};

INSTANCE ItWr_OTGeheimkammer02		(C_Item)
{
	name 				=	"Note part 2";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOTGeheimkammer02;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Information on the Secret Chamber";
	TEXT[1]				=	"Middle third";
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
					Doc_PrintLines	( nDocID,  0, "You open the chamber with the two switches decorated with skulls. You will find them in the right-hand corridor of the two aisles that leave the room with the large statue of the sleeper. You have to use the two switches in the right combination: First the left one time, then the right one, then the left one..."					);
					
					Doc_Show		( nDocID );

	if (Mod_OT_Geheimkammer == 0)
	{
		Mod_OT_Geheimkammer = 1;

		Log_CreateTopic	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_OT_GEHEIMKAMMER, "I found part of a note where Cor Kalom seems to have written down how to get into a hidden room. However, I still need two more parts to solve the puzzle.");
	};
};

INSTANCE ItWr_OTGeheimkammer03		(C_Item)
{
	name 				=	"Note part 3";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOTGeheimkammer03;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Information on the Secret Chamber";
	TEXT[1]				=	"Lower third";
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
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "... twice, the right three times. Then the left one time, the right two times, the left two times. And finally the right (unreadable) mark. In the opposite room, the hole that you hit quickly now opens."					);
					
					Doc_Show		( nDocID );

	if (Mod_OT_Geheimkammer == 0)
	{
		Mod_OT_Geheimkammer = 1;

		Log_CreateTopic	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_OT_GEHEIMKAMMER, "I found part of a note where Cor Kalom seems to have written down how to get into a hidden room. However, I still need two more parts to solve the puzzle.");
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
	TEXT[0]				=	"From the Secret Chamber";
	TEXT[2]				=	"To the happy finder of the chamber";
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
					Doc_PrintLines	( nDocID,  0, "I was faster! Gez. M. A. D."					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_OTGeheimkammer05		(C_Item)
{
	name 				=	"Piece of paper 1 and 2";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOTGeheimkammer05;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Information on the Secret Chamber";
	TEXT[1]				=	"Upper two thirds";
};

func void UseOTGeheimkammer05 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters_obenmitte.TGA"  , 0 		);
					Doc_SetMargins	( nDocID, -1, 50, 20, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Handschrift		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Since the twisted combination for the two switches doesn't go into your head, I wrote it down here. But don't even think about carrying the whole note around with you! The orcs don't need to know where we stored our treasures. Divide it into three parts, and only this one you keep with you - the rest you hide and only get it out when you need it, do you understand?"					);
					Doc_PrintLines	( nDocID,  0, "You open the chamber with the two switches decorated with skulls. You will find them in the right-hand corridor of the two aisles that leave the room with the large statue of the sleeper. You have to use the two switches in the right combination: First the left one time, then the right one, then the left one..."					);
					
					Doc_Show		( nDocID );

	if (Mod_OT_Geheimkammer == 0)
	{
		Mod_OT_Geheimkammer = 1;

		Log_CreateTopic	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_OT_GEHEIMKAMMER, "I found parts of a note where Cor Kalom seems to have written down how to get into a hidden room. However, I still need another piece to solve the puzzle.");
	};
};

INSTANCE ItWr_OTGeheimkammer06		(C_Item)
{
	name 				=	"Piece of paper 1 and 3";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOTGeheimkammer06;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Information on the Secret Chamber";
	TEXT[1]				=	"Upper and lower third";
};

func void UseOTGeheimkammer06 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters_obenunten.TGA"  , 0 		);
					Doc_SetMargins	( nDocID, -1, 50, 20, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Handschrift		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Since the twisted combination for the two switches doesn't go into your head, I wrote it down here. But don't even think about carrying the whole note around with you! The orcs don't need to know where we stored our treasures. Divide it into three parts, and only this one you keep with you - the rest you hide and only get it out when you need it, do you understand?"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "... twice, the right three times. Then the left one time, the right two times, the left two times. And finally the right (unreadable) mark. In the opposite room, the hole that you hit quickly now opens."					);
					
					Doc_Show		( nDocID );

	if (Mod_OT_Geheimkammer == 0)
	{
		Mod_OT_Geheimkammer = 1;

		Log_CreateTopic	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_OT_GEHEIMKAMMER, "I found parts of a note where Cor Kalom seems to have written down how to get into a hidden room. However, I still need another piece to solve the puzzle.");
	};
};

INSTANCE ItWr_OTGeheimkammer07		(C_Item)
{
	name 				=	"Piece of paper 2 and 3";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOTGeheimkammer07;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Information on the Secret Chamber";
	TEXT[1]				=	"Lower two thirds";
};

func void UseOTGeheimkammer07 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters_mitteunten.TGA"  , 0 		);
					Doc_SetMargins	( nDocID, -1, 50, 20, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Handschrift		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "You open the chamber with the two switches decorated with skulls. You will find them in the right-hand corridor of the two aisles that leave the room with the large statue of the sleeper. You have to use the two switches in the right combination: First the left one time, then the right one, then the left one..."					);
					Doc_PrintLines	( nDocID,  0, "... twice, the right three times. Then the left one time, the right two times, the left two times. And finally the right (unreadable) mark. In the opposite room, the hole that you hit quickly now opens."					);
					
					Doc_Show		( nDocID );

	if (Mod_OT_Geheimkammer == 0)
	{
		Mod_OT_Geheimkammer = 1;

		Log_CreateTopic	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_OT_GEHEIMKAMMER, "I found parts of a note where Cor Kalom seems to have written down how to get into a hidden room. However, I still need another piece to solve the puzzle.");
	};
};

INSTANCE ItWr_OTGeheimkammer08		(C_Item)
{
	name 				=	"chit";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOTGeheimkammer08;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Information on the Secret Chamber";
	TEXT[1]				=	"Completely assembled";
};

func void UseOTGeheimkammer08 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters_complete.TGA"  , 0 		);
					Doc_SetMargins	( nDocID, -1, 50, 20, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Handschrift		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Since the twisted combination for the two switches doesn't go into your head, I wrote it down here. But don't even think about carrying the whole note around with you! The orcs don't need to know where we stored our treasures. Divide it into three parts, and only this one you keep with you - the rest you hide and only get it out when you need it, do you understand?"					);
					Doc_PrintLines	( nDocID,  0, "You open the chamber with the two switches decorated with skulls. You will find them in the right-hand corridor of the two aisles that leave the room with the large statue of the sleeper. You have to use the two switches in the right combination: First the left one time, then the right one, then the left one..."					);
					Doc_PrintLines	( nDocID,  0, "... twice, the right three times. Then the left one time, the right two times, the left two times. And finally the right (unreadable) mark. In the opposite room, the hole that you hit quickly now opens."					);
					
					Doc_Show		( nDocID );

	if (Mod_OT_Geheimkammer == 0)
	{
		Mod_OT_Geheimkammer = 1;

		Log_CreateTopic	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_OT_GEHEIMKAMMER, "I found a note where Cor Kalom seems to have written down how to get into a hidden room.");
	};
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
	TEXT[0]				=	"Message from Akahasch";
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
					Doc_PrintLines	( nDocID,  0, "Hello, my friend. You helped me a lot in my predicament back then and I think I finally found a way to thank you for that. Shortly before Orlan's tavern there is a cave underneath the bridge, in which the chest stands next to the key. I've put some things in it that I'm sure you'll like."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Greetings,"					);
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
	TEXT[0]				=	"Akahasch was there with him";
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
					Doc_PrintLines	( nDocID,  0, "Listen, Akahash, if you don't let the dough grow over soon, you're gonna be sick. I know some sinister guys who will do stuff with you that you can't imagine in your worst nightmares. When they're done with you, Beliar's realm will compare you to what paradise feels like."					);
					Doc_PrintLines	( nDocID,  0, "Was that clear? So, in two hours with the money in the tavern, otherwise...."					);
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
	TEXT[0]				=	"Orlan's wine delivery";
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
					Doc_PrintLines	( nDocID,  0, "Go to the tavern' Zur toten Harpie' and bring the wine delivery to the owner Orlan. I want him to pay 250 gold for it."					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_ErolNotiz1		(C_Item)
{
	name 				=	"Yellow note";

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
					Doc_PrintLines	( nDocID,  0, "I, Xardas, head of the black mages, have left my tower and will create a domicile in Khorinis. So I'm closer to my fellow believers and the events on the island. I have left behind some items that are not needed now, but may be useful later on. The resourceful man will receive what he is looking for..."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Xardas"					);
					
					Doc_Show		( nDocID );

	if (Mod_Erol_Fahrender == 2)
	&& (CurrentLevel == MINENTAL_ZEN)
	{
		Mod_Erol_Fahrender = 3;

		B_LogEntry	(TOPIC_MOD_EROL_FEUERMAGIER, "In one of the chests I found a note from Xardas. I guess I'll have to go to the old tower. Let's see....");

		Mob_CreateItems	("TRUHE_MT_04", ItWr_ErolNotiz2, 1);
	};

};

INSTANCE ItWr_ErolNotiz2		(C_Item)
{
	name 				=	"Note from Xarda's old tower";

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
					Doc_PrintLines	( nDocID,  0, "Even the most well-read doesn't know everything. But he is also a man of great acumen and patience."					);
					
					Doc_Show		( nDocID );

	if (Mod_Erol_Fahrender == 3)
	&& (CurrentLevel == MINENTAL_ZEN)
	{
		Mod_Erol_Fahrender = 4;

		B_LogEntry	(TOPIC_MOD_EROL_FEUERMAGIER, "Oha! Here there is a riddle to solve:' Even the most read one doesn't know everything yet. But he is also a man of great acumen and patience. '");

		//Mob_CreateItems	("TRUHE_MT_02", ItWr_ErolNotiz3, 1);
	};

};

INSTANCE ItWr_ErolNotiz3		(C_Item)
{
	name 				=	"Note from the bookcase";

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
					Doc_PrintLines	( nDocID,  0, "Not all fires should burn."					);
					
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
	name 				=	"Note from the bookcase";

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
					Doc_PrintLines	( nDocID,  0, "The time of the conversion is subject to change. Change the symbol of infinity and you have the key to power."					);
					
					Doc_Show		( nDocID );

	if (Mod_Erol_Fahrender == 4)
	&& (CurrentLevel == MINENTAL_ZEN)
	{
		Mod_Erol_Fahrender = 5;

		B_LogEntry	(TOPIC_MOD_EROL_FEUERMAGIER, "Mysterious again. Change an icon....");
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
	TEXT[0]		=	"had a seeker with him";
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
					Doc_PrintLines	( nDocID,  0, "It'll be done soon. Those who consider themselves untouchable are shaken up and bring chaos to the country. Those who think they embody balance will vary. Their power will fade away and justice will return."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

	if (Mod_JG_MinenPart == 3)
	{
		Mod_JG_MinenPart = 4;

		B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Another seeker. But not the one from Khorinis. He spoke differently. Here's another piece of paper for Cyrco. After all, a remarkable homestead.");
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
	TEXT[0]		=	"Andres letter";
};
func void UseAndreAbschied ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Time is pressing, I will be brief."					);
					Doc_PrintLines	( nDocID,  0, "The plan to melt down the robot was hopefully successful. But I was already aware from the beginning that it will probably not succeed to install a 2nd exit in the oven. If you read this, my assumption has been confirmed and I probably won't be among you for a while. I apologize for my deception, but it was necessary to avoid jeopardizing the project. Because it would be much worse than that to watch a killing machine go on for even longer than that. It was certainly not the most blameless people she took her life from. But they didn't deserve to die. And Innos knows that no one is without guilt. My successor will be the one from the ranks of the city guards who agreed to lure the robot into the oven. To take such a danger to protect the lives of others is precisely what distinguishes an Inno fighter. I am sure he will be a worthy successor."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Sincerely,"					);
					Doc_PrintLines	( nDocID,  0, "Captain Andre"					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_BesaenftigungBeliars		(C_Item)
{
	name 				=	"Note";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBesaenftigungBeliars;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Soothing Beliars";
};
func void UseBesaenftigungBeliars ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Soothing Beliars"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Thus Beliar had destroyed the village with a devastating fire in his anger. After some time, however, the people started to build a new settlement which was partly built on the remains of the old ones. However, to prevent her from facing the same fate as the previous one, a secret resolution was passed among the dignitaries. In order to appease the God of darkness, a small amount of gold should be sacrificed to him from now on in intervals of a few days. The keeper of the town always threw it into the depths of the night, where they had consecrated a shrine to Beliar. In the next generations, less and less the successor knew about the true cause of the gold sacrifice. Not everyone trusted the city elders to deal with this truth, so that it was handed out as a sacrifice to Adanos...."					);
					
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
	TEXT[0]		=	"Note from Kurgan";
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
					Doc_PrintLines	( nDocID,  0, "Excellent, my loyal servant. The kidnappings will not only further fuel tensions between the demon summoners and the city. The more numerous their bodies pile up in the darkness, the easier it will be for us to bring the mine under our control when the time comes."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "urnol"					);
					
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
	TEXT[0]		=	"Andres note for me";
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
					Doc_PrintLines	( nDocID,  0, "The contents of my chest should help you to do justice to your task. Among the things in it you will also find a melted sword. Give it to Harad and tell him to rework it for you. He knows what this is all about and he will understand."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Maybe you'll wonder why I sacrificed myself, even though so far only criminals have fallen victim to the robot. Well, I had a younger brother once. He was a crockery, thief and cheat and was banished to the colony for his deeds. I cursed his name and wanted to erase any trace of him from my life."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Even after the fall of the barrier, this did not change. If I should ever see him, I swore to myself that I would never appreciate him, let alone address the word to him. And I secretly wished he were dead and erased from the face of the earth forever."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "But now I recently learned that he had become a venerable servant of Inno and that he is now orienting his life entirely towards him. I was ashamed of myself for the curses and curses I had cast out against him and realized that I had been wrong."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Maybe now you understand my actions a little better."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Well, time is pressing for a change...."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Innos be with you on your ways."					);
					
					Doc_Show		( nDocID );

	if (Mod_AndreSchwert == 0)
	{
		Mod_AndreSchwert = 1;

		B_LogEntry	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "Andre left me a note and a melted sword in the chest. As for the sword, he told me to take it to Harad and have it forged for me.");
	};

};

INSTANCE ItWr_DominiquesRuf		(C_Item)
{
	name 				=	"poem";

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
					Doc_PrintLines	( nDocID,  0, "We shall reap His glory."					);
					Doc_PrintLines	( nDocID,  0, "Innos stands by me and my brothers."					);
					Doc_PrintLines	( nDocID,  0, "I will slay all who would stop me like sheep"					);
					Doc_PrintLines	( nDocID,  0, "for He is the fire inside my heart."					);
					Doc_PrintLines	( nDocID,  0, "My blade serves Him alone."					);
					Doc_PrintLines	( nDocID,  0, "On this day His name will echo forth."					);
					Doc_PrintLines	( nDocID,  0, "Any man who opposes me"					);
					Doc_PrintLines	( nDocID,  0, "will die at my hand"					);
					Doc_PrintLines	( nDocID,  0, "for I am a warrior of Innos."					);
					Doc_PrintLines	( nDocID,  0, "executor of his will"					);
					
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
	TEXT[0]		=	"extortion letter";
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
					Doc_PrintLines	( nDocID,  0, "Well, my dear Yasin, your extortionate prices didn't exactly bear witness to charity. So I'll give you a lesson in generosity and I'll keep silent about your whereabouts... and, as you know, silence is gold. And I'll let you leave me a modest sack of it every full moon. Not at our exclusive meeting point in the city, of course, but 20m north of the East Gate."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ps: And believe me, the city guards are your least problem. Because think about what your 'friends' will do to you when they find out they've been blown away by your carelessness. I think we understand each other, my dear fellow."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "With kind regards,"					);
					Doc_PrintLines	( nDocID,  0, "your M."					);
					
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
	TEXT[0]		=	"Page from Argez's diary";
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
					Doc_PrintLines	( nDocID,  0, "Today I wake up and my life has changed. Radanos has appeared in my sleep again - as so often in recent times. But this time the message was clearer, and I had the feeling asleep that his demands were absolutely justified. I now know why I am to whom he shows himself: I am his chosen one to defeat Xeres, I am the only one who is able to do it. That's hardly surprising, knowing my history.");
					Doc_PrintLines	( nDocID,  0, "But not even my magic is enough to take on Xeres. That is why the gods have put a weapon at my side, the sight of which alone gives me new courage. In the unavoidable battle,' Uriziel' - the arm of God - will bundle Radano's power and give Xeres the decisive push.");
					Doc_PrintLines	( nDocID,  0, "Dear diary, I don't know if I'll ever see you again. You now know my dark and bright sides, and I want to do everything to make sure that the latter prevail. May the finder of this booklet hear only good things about me.");
					Doc_PrintLine	( nDocID,  0, ""					);

					Doc_Show		( nDocID );

	if (!Mod_ArgezTB1) {
		B_LogEntry	(TOPIC_MOD_ARGEZ, "Argez seems to be a lot older than I thought! The translated diary page he gave me suggests that it was him who once opposed Xeres and ensured that he could be banished. What's keeping him alive since then? Is he himself of divine origin?");
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
	TEXT[0]		=	"Yasin's Note";
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
					Doc_PrintLines	( nDocID,  0, "Gotta find someone to clean up that pig. But there can't be anyone he could recognize as one of us. Or else he'll smell the roast and I'll be delivered for good."					);
					
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
	TEXT[0]		=	"left Urs behind";
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
					Doc_PrintLines	( nDocID,  0, "Unfortunately, I couldn't find Wally here. I will look around behind the Old Camp by the forest."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

	if (Mod_Urs_Hund == 1 && !Mod_UrsNotiz_Gelesen)
	{
		Mod_UrsNotiz_Gelesen = TRUE;

		B_LogEntry	(TOPIC_MOD_URS_HUND, "Urs is looking for Wally somewhere behind the old camp near the forest.");
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
	TEXT[0]		=	"Serra had with him";
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
					Doc_PrintLines	( nDocID,  0, "Very good, my daughters. With your gift, you should easily be able to subject the inhabitants of the area to your will. There is a village a good part northeast of us. There you shall test your power."					);
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
	TEXT[0]		=	"Note from Strewak 1";
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
					Doc_PrintLines	( nDocID,  0, "... between the creatures and slaughtered them mercilessly. No attack, however violent, seemed to impress him in the slightest... as if he knew no pain.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "As we went deeper into the temple, we finally came to a long passage that was traversed by fire. My companion turned to me and handed me some stone tablets and spell rolls. He pointed out to me that I would open up a lot of things to myself if I read them. Finally he spoke a little about the destination of his journey and about the redemption that awaited him now, then turned around and walked through the flames until my eyes could not see him any more."					);
					
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
	TEXT[0]		=	"Note from Strewak 2";
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
					Doc_PrintLines	( nDocID,  0, "I remained seated as if spellbound and my gaze fell on the blackboard in front of me. It was as if I was suddenly filled with knowledge and the blackboard fell apart. I could understand all the strange hieroglyphs on the walls of the room, even if they were very fragmented. Then I discovered a text that was relatively complete. He reported that the flames were of magical nature and would burn all the life that was feeding them. And he told of a giant of ice whose heart could make the flames extinguish...."					);
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
	TEXT[0]		=	"Note from Strewak 3";
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
					Doc_PrintLines	( nDocID,  0, "The cold weather is merciless and my strength is exhausted. I will rest with my family in the village before continuing on the way...."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "... he lifts up before me, mighty, terrifying. The closer I get to him, the more mercilessly the cold embraces me. I will now use the roles and hope that I can defeat him..."					);
					
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
	TEXT[0]		=	"had Bruce with him";
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
					Doc_PrintLines	( nDocID,  0, "All right, so I won't forget:"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Saturday night:"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "50 Ore and everyone is satisfied."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Monday night:"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "20 Ore this time for Fester for the greater cause."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Wednesday night:"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "10 ore for 12 pieces."					);
					
					Doc_Show		( nDocID );

	if (Mod_NL_TalkesselProblem < 3)
	{
		Mod_NL_TalkesselProblem = 3;

		B_LogEntry	(TOPIC_MOD_NL_TALKESSELPROB, "Soso, I should have a chat with Fester.");
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
	TEXT[0]		=	"Writing by Lee";
	TEXT[1]		=	"Give me access to the pub";
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
					Doc_PrintLines	( nDocID,  0, "This man earned his living in the camp as a prospector and paid his share."					);
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
	TEXT[0]		=	"Shopping list of the hermit";
};
func void UseEremitEinkaufsliste ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "shopping list"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "20 loaves of bread");
					Doc_PrintLines	( nDocID,  0, "10 ham");
					Doc_PrintLines	( nDocID,  0, "10 Wine");
					Doc_PrintLines	( nDocID,  0, "10 Sausage");
					Doc_PrintLines	( nDocID,  0, "5 Grog");
					Doc_PrintLines	( nDocID,  0, "30 Wood");
					Doc_PrintLines	( nDocID,  0, "300 arrows");
					Doc_PrintLines	( nDocID,  0, "2 molar grease");
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
	TEXT[0]		=	"one of Petunia's sidekicks was with him,";
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
					Doc_PrintLines	( nDocID,  0, "When you see a candidate, strike him down and infuse him with the added potion. He will dream that he will find the beautiful petal where the goblin matrons were. You must take the prepared petal there. The candidate will then take the sheet to his client and we finally know who our main goal is. Turn off the candidate and the client and return to me."					);
					Doc_PrintLine	( nDocID,  0, "P."					);
					
					Doc_Show		( nDocID );

	if (Mod_VMG_Pruefung_Petunia == 4)
	{
		Mod_VMG_Pruefung_Petunia = 5;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I now know Petunia's plan. I should talk to her about it to learn more about her.");
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
	TEXT[0]		=	"had the zombie at the temple in Gelato with him.";
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
					Doc_PrintLines	( nDocID,  0, "It's almost time."					);
					Doc_PrintLines	( nDocID,  0, "Everything is already fixed for the ritual. Soon I will also be connected with the demonic spheres and will be able to make use of the power... just like them. And the wretched inhabitants of the village shall shudder.... forever."					);
					
					Doc_Show		( nDocID );

	if (Mod_Thys_Schneegeister == 1)
	{
		Mod_Thys_Schneegeister = 2;

		B_LogEntry	(TOPIC_MOD_GELLIT_SCHNEEGEISTER, "Well, apparently he wasn't up to the dark forces. I should tell Thys about it.");
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
	TEXT[0]		=	"I shall read aloud on the scaffolding in the marketplace";
};
func void UseTheodorusBotschaft ()
{
	var int nDocID;

	nDocID = 	Doc_Create		()			  ;							// DocManager
	Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
	Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
	Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
	Doc_PrintLines	( nDocID,  0, "Announcement in the name of Theodorus"					);
	Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
	Doc_PrintLines	( nDocID,  0, "Citizens of Khoratas, I, the new governor, hereby inform you of any changes in the miners' strike that will take effect immediately. The complaints they have rightly made are subject to detailed examination; only then will I decide whether to resume work in the mine under new conditions."					);
	Doc_PrintLines	( nDocID,  0, "The deaths to date are tragic, but I will find a way to compensate the families affected. I implore you not to let the miners feel your possibly pent-up anger."					);
	Doc_PrintLine	( nDocID,  0, ""					);
	Doc_PrintLine	( nDocID,  0, "Respectfully,"					);
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
	TEXT[0]		=	"Formula for meditation in the valley";
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
		Print	("Not here.");
	}
	else
	{
		Print	("Not yet.");
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
	TEXT[0]		=	"contains an explanation of the puzzle wall";
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
					Doc_PrintLine	( nDocID,  0, "The sage interprets the signs"					);
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
		B_LogEntry	(TOPIC_MOD_JG_RAETSELWAND, "Oops! That still seems to me to be a mystery. Hm...");
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
	TEXT[0]		=	"Note of a novice";
	TEXT[1]		=	"In a scribbled handwriting";
};

FUNC VOID UseOrktempelZettel1 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "These are my last breaths in the light of a hardly glowing torch. Cor Kalom has brought us all to ruin; he's an obsessed fanatic. Down here, I learned what it means to be scared. Fear that drove me away from the group of the Brotherhood and into this narrow cavity that will now be my tomb. Because the crevice through which I climbed in has disappeared due to one of these small earthquakes; only the cavity where I'm in the company of mummies. My only hope is a second earthquake, my only wish is a sip of water...");
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
	TEXT[0]		=	"Ancient document";
	TEXT[1]		=	"It is only partially legible";
};

FUNC VOID UseOrktempelZettel2 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "(unreadable)? you are destined to build the temple for Master Krushak. posterior perhaps allow you to return to Jharkendar.... to flee, immediate death threatens... no mercy... We... Shamans, will your guards... the Master have mercy on you!");
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
	TEXT[0]		=	"Orc document";
	TEXT[1]		=	"Full with orcish characters";
};

FUNC VOID UseOrktempelZettel3 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "(You can't read the characters, but the aggressive typeface doesn't suggest a friendly tone. It seems that the word' Krushak' appears more often in the text. When you take a closer look, you notice that the writing colour is not black like ink, but bronze like dried blood... )");
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
	TEXT[0]		=	"Part of an Assassin puzzle";
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
	TEXT[0]		=	"Part of an Assassin puzzle";
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
	TEXT[0]		=	"Part of an Assassin puzzle";
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
	name 				=	"sketch";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseZeichnung_Stuhl;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Sketch of Coragon's chair";
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
	name 				=	"sketch";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseZeichnung_Tisch;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Sketch of Matteos fixed table";
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
	name 				=	"sketch";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseZeichnung_Schmuckkasten;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Sketch of a jewelry box";
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
	name 				=	"sketch";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseZeichnung_Bierkrug;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Sketch of a beer mug";
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
	name 				=	"sketch";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseZeichnung_Karte;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"map sketch";
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
	TEXT[0]		=	"Ingredients for the Philosopher's Stone";
};

FUNC VOID UseSteinDerWeisen ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "List for the Philosopher's Stone");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "5 chunks of gold");
	Doc_PrintLines	(nDocID,  0, "3 rock crystals");
	Doc_PrintLines	(nDocID,  0, "2 pieces of sulphur");
	Doc_PrintLines	(nDocID,  0, "15 chunks of ore");
	Doc_PrintLines	(nDocID,  0, "5 coal pieces");
	Doc_PrintLines	(nDocID,  0, "30 old coins");
	Doc_PrintLines	(nDocID,  0, "5 beads");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "1 strength potion");
	Doc_PrintLines	(nDocID,  0, "1 skill potion");
	Doc_PrintLines	(nDocID,  0, "1 Elixir of life");
	Doc_PrintLines	(nDocID,  0, "2 Elixir of the Spirit");
					
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
	TEXT[0]		=	"contains the first puzzle of Mahamad";
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
	Doc_PrintLines	(nDocID,  0, "For a good bottle of wine you pay 100 gold and half the price.");
	Doc_PrintLine	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "So how much does the wine cost?");
					
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
	TEXT[0]		=	"contains the second puzzle of Mahamad";
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
	Doc_PrintLine	(nDocID,  0, "Count the triangles");
					
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
	TEXT[0]		=	"contains the third puzzle of Mahamad";
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
	Doc_PrintLines	(nDocID,  0, "Find out the regularity of the numbers in each row and add two numbers to each of them.");
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
	TEXT[0]		=	"contains the fourth puzzle of Mahamad";
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
	Doc_PrintLines	(nDocID,  0, "Someone is sick and gets three bottles of healing potion. These should be taken every 30 minutes.");
	Doc_PrintLine	(nDocID,  0, "");
	Doc_PrintLine	(nDocID,  0, "How long before they're all gone?");
					
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
	TEXT[0]		=	"from the drunken gnome on the pasture plateau";
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
					Doc_PrintLines	( nDocID,  0, "I set out into the valley of the ore to fill my pockets with ore in one of the mines. I'm sure we'll see you soon, old friend."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

	if (GnomZettel_Gelesen == 0)
	{
		GnomZettel_Gelesen = 1;

		B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "In this gnome I found a note from a friend of his who told him that he was going to look for ore in the Minental in a mine. I should probably go see him....");
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
	description			= 	"by a blood cult magician";
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
					Doc_PrintLines	( nDocID,  0, "Damn... someone managed to banish our creatures. How is this possible? I feel how my own life force, which was bound to my creatures, begins to extinguish. I have to make it... no-one... damn Adanos...."					);
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
	description			= 	"by a blood cult magician";
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
					Doc_PrintLines	( nDocID,  0, "Oshustvor, my powers are disappearing and I leave you this message before I go away like our other brothers."					);
					Doc_PrintLines	( nDocID,  0, "When I was on the way, the wretched water magicians managed to banish the creatures we called on the plateau. When I returned to our home, our brothers were already lying dead on the ground. Also my life begins to go out.... l... damn Adan..."					);
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
	description			= 	"from Telbor";
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
					Doc_PrintLines	( nDocID,  0, "Damn that dark pilgrim. He brought disease and destruction to our farm before he moved on."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "I pray to Innos all the time, but apparently he does not answer my prayers. No one who brings help in these dark days..."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Innos stand by us...."					);
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
	description			= 	"Invoice of the executioner by Hans";
};
func void UseHenkerRechnung ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "bill"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1 torture axe, as new? 600 Gold"					);
					Doc_PrintLine	( nDocID,  0, "3 Gag? 64?50 Gold"					);
					Doc_PrintLine	( nDocID,  0, "Total??650 Gold"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Have fun with the new acquisitions!"					);
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
	description			= 	"Spirit purification";
};
func void UseFeuermagierMeditation ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Spirit purification"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Drink a glass of clear water"					);
					Doc_PrintLine	( nDocID,  0, "Looking for a comfortable armchair"					);
					Doc_PrintLine	( nDocID,  0, "Close eyes, relax"					);
					Doc_PrintLine	( nDocID,  0, "Focus thoughts on the inner side of the eyelids"					);
					Doc_PrintLine	( nDocID,  0, "Recognizing and interpreting shapes"					);
					Doc_PrintLine	( nDocID,  0, "approx. 2 hours later: Wake up"					);
					
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
	description			= 	"The lending list of the Khorata Library";
};
func void UseBibAusleihliste ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "loan list"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Anselm: (The Rats Breeding), Twilight Part 1-4"					);
					Doc_PrintLines	( nDocID,  0, "Heiler: Basics of Medicine for Bloody Beginners"					);
					Doc_PrintLines	( nDocID,  0, "Fuego: Dark Magic"					);
					Doc_PrintLines	( nDocID,  0, "Theodorus: State systems - their advantages and disadvantages"					);
					Doc_PrintLines	( nDocID,  0, "Peter: Exotic Recipes"					);
					Doc_PrintLines	( nDocID,  0, "(Endres: How to spice up your love life)"					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_Fragebogen		(C_Item)
{
	name 				=	"List";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseFragebogen;
	scemeName			=	"MAP";
	description			= 	"Questions about Khorata";
};
func void UseFragebogen ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "questionnaire"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1. In which building is the only one of Khorata's miscarriages?"					);
					Doc_PrintLines	( nDocID,  0, "2. What was the keeper's name of the three rats?"					);
					Doc_PrintLines	( nDocID,  0, "3. Learn about the beginnings of khorata!"					);
					Doc_PrintLines	( nDocID,  0, "4. How many dealers have their stand in the marketplace of Khorata?"					);
					Doc_PrintLines	( nDocID,  0, "5. Who is responsible for ensuring that the water supply runs smoothly?"					);
					Doc_PrintLines	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_ErikaLiebesbrief		(C_Item)
{
	name 				=	"Letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErikaLiebesbrief;
	scemeName			=	"MAP";
	description			= 	"from Erika to Wendel";
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
					Doc_PrintLines	( nDocID,  0, "who looks after you longingly when you are patrolling the dewy lawn in the morning? Whose longing looks bounce off your strong back? (I get goosebumps when I think about it. ) Oh, if only you were alone on your tour, what possibilities I would have had! But now I am trying in this way, hoping not to be rejected. My thoughts are always with you. Give me a sign."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "E."					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_Lehrling01		(C_Item)
{
	name 				=	"Apprentice's sheet";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLehrling01;
	scemeName			=	"MAP";
	description			= 	"Garden maintenance - how do I do it right? [1]";
};
func void UseLehrling01 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Excavation of pile roots"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Use a shovel to remove the soil at a generous distance around the plant so that the hair and fine roots do not get damaged. Determine the position of the main root by gently pulling it and uncover it carefully. It is imperative to respect the main root, side shoots are much less necessary! After half a metre deep, dig close to the main shaft until it can be easily detached from the ground."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_Lehrling02		(C_Item)
{
	name 				=	"Apprentice's sheet";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLehrling02;
	scemeName			=	"MAP";
	description			= 	"Garden maintenance - how do I do it right? [2]";
};
func void UseLehrling02 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Care of the Triticum aestivum"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "The seed loves to be covered by a layer of soil a few centimetres high in order to be able to reach its full development.");
					Doc_PrintLines	( nDocID,  0, "Fertilization in the quarter is sufficient! More frequent fertilisation attacks the wheat at its base and makes it susceptible to beetle infestation.");
					Doc_PrintLines	( nDocID,  0, "In a temperate climate T. needs. aestivum no additional water supply, only in dry periods should be irrigated.");
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_AnselmForFrazer		(C_Item)
{
	name 				=	"letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAnselmForFrazer;
	scemeName			=	"MAP";
	description			= 	"Writing Anselm";
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
					Doc_PrintLines	( nDocID,  0, "You can trust the boy, Frazer... He's harmless!"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_TruhenNotizJG		(C_Item)
{
	name 				=	"Message";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	name;
};

INSTANCE ItWr_TruhenScrollJG		(C_Item)
{
	name 				=	"The role of mystery";

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
	TEXT[0]		=	"by a novice on the pass";
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
					Doc_PrintLines	( nDocID,  0, "Leave the area and go directly to the valley, a new task awaits you. Some bribed out local bandits will support you in your quests. Don't you ever fail again."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Khorgor"					);
					
					Doc_Show		( nDocID );

	if (Mod_JG_NovizeJGPass == 0)
	{
		Mod_JG_NovizeJGPass = 1;

		Log_CreateTopic	(TOPIC_MOD_JG_BANDITENSCHULD, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_JG_BANDITENSCHULD, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_JG_BANDITENSCHULD, "It's another fire novice. What they want. I have to show Cyrco the note.");
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
	TEXT[0]		=	"the zombie was with the soul tormentors,";
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
					Doc_PrintLines	( nDocID,  0, "Thanks a lot, you didn't understate. At our next meeting in the tavern, I will reward you with a few beers... but, what a black shadow..."					);
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
	name 				=	"Letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDaemonisch_SP_01;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"the zombie was with the soul tormentors,";
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
					Doc_PrintLines	( nDocID,  0, "Innos, greeting,"					);
					Doc_PrintLines	( nDocID,  0, "If you would like to enjoy a place away from the people, where you can rest in quiet devotion to Innos, I can warmly recommend the cave by the lake. You have a wonderful view of the lake from it and can enjoy the light of the evening sun and the night stars."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Ulf"					);
					
					Doc_Show		( nDocID );

		if (Mod_HQ_Daemonisch_SP_01 == 1)
		{
			Mod_HQ_Daemonisch_SP_01 = 2;

			B_StartOtherRoutine	(Mod_753_NOV_Ulf_NW, "DAEMONISCH");

			B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Aha, looks like it's Ulf luring people to the places with the soul tormentors.");
		};


};

INSTANCE ItWr_Daemonisch_SP_02		(C_Item)
{
	name 				=	"Letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDaemonisch_SP_02;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"the zombie was with the soul tormentors,";
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
					Doc_PrintLines	( nDocID,  0, "Hey, the little camp in the forest is really ideal for resting away from all the people. Small animals are also available, if you want to follow your hobby-horse - hunting again. And the night sky is beautiful...."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Till"					);
					
					Doc_Show		( nDocID );

		if (Mod_HQ_Daemonisch_SP_02 == 1)
		{
			Mod_HQ_Daemonisch_SP_02 = 2;

			B_StartOtherRoutine	(Mod_541_NONE_Till_NW, "DAEMONISCH");

			B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Aha, looks like it's Till luring people to the places with the soul tormentors.");
		};
};

INSTANCE ItWr_Daemonisch_SP_03		(C_Item)
{
	name 				=	"Letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDaemonisch_SP_03;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"the zombie was with the soul tormentors,";
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
					Doc_PrintLines	( nDocID,  0, "Greetings, my friend,"					);
					Doc_PrintLines	( nDocID,  0, "In the small valley there are all kinds of rare herbs and in the cave there are also extraordinary mushrooms. I'm sure some magicians and alchemists would envy you for these. Late in the evening you can also see strange crystals shine and glow in the entrance area of the cave. A visit can only be worthwhile...."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Valentino"					);
					
					Doc_Show		( nDocID );

		if (Mod_HQ_Daemonisch_SP_03 == 1)
		{
			Mod_HQ_Daemonisch_SP_03 = 2;

			B_StartOtherRoutine	(Mod_754_NONE_Valentino_NW, "DAEMONISCH");

			B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Aha, looks like it's Valentino luring people to the places with the soul tormentors.");
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
	TEXT[0]		=	"by Draal's body";
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
					Doc_PrintLines	( nDocID,  0, "The working conditions are inhuman. I don't know how much longer I can take this. My powers are fading from day to day. Only dry bread and water, no sunlight.... I don't even know how long I've been here. Are it weeks or even months? I've given up hope of ever getting out of here again. Adanos stand by me...."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

	if (Mod_WM_KurganAlarm == 3)
	{
		Mod_WM_KurganAlarm = 4;

		B_LogEntry	(TOPIC_MOD_VERMISSTE, "Ohh, that's what he meant by' other'. Well, anyway, I have the certainty that the demon warriors are behind it and can return to Vatras.");
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
	description			= 	"from Cirio to Richard";
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
					Doc_PrintLines	( nDocID,  0, "I have brought man into the cave, he should not cause us any more problems, our friends there will have a lot of fun with him. If you want to come over for a bite, I've drawn the spot on the map. But if I know you, I'm sure you'll have a lot of fun with that woman. Meanwhile I am waiting for new food at the entrance to Relendel. I'll see you at the rendezvous point later."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

	if (Mod_RattenQuest == 1)
	{
		Mod_RattenQuest = 2;

		B_LogEntry	(TOPIC_MOD_RATTENQUEST, "In a cave here in Relendel there should be a man, another victim of Cirio. And a man named Richard seems to have captured a woman. Maybe I'll find a clue to his whereabouts with the man in the cave...");
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
	description			= 	"To the judge";
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
					Doc_PrintLines	( nDocID,  0, "Weentder, Chamiel nud Lippphi is also known as one of the world's largest, so I would like to continue reading the denfreuderspen-felings!"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );


};

INSTANCE ItWr_AnselmRundschreiben		(C_Item)
{
	name 				=	"newsletter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAnselmRundschreiben;
	scemeName			=	"MAP";
	description			= 	"A circular to the citizens of Khorata.";
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
					Doc_PrintLines	( nDocID,  0, "For more detailed information, please turn the page."					);
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
	description			= 	"from the body of a man";
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
					Doc_PrintLine	( nDocID,  0, "Honey,"					);
					Doc_PrintLines	( nDocID,  0, "I don't know how much longer I can hold out. Since I woke up here in the cave, there have been more rats every day since I killed one, two new rats come back. I hope someone saves us, but apparently the people in the city don't care what happens to the rural population. I don't know what the rats want from us, at least for me it's probably just the food intake. But as long as they leave you alone, I don't care about my fate."					);
					Doc_PrintLine	( nDocID,  0, "I love you!"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "P. S. Whoever's reading this seems to have found my body. Please give this letter to my wife. A hint: There were two rat people, one of them had fur armor on, he probably comes from a very cold area."					);
					
					Doc_Show		( nDocID );

	if (Mod_RattenQuest == 2)
	{
		Mod_RattenQuest = 3;

		B_LogEntry	(TOPIC_MOD_RATTENQUEST, "The man's dead, but I found a clue to Richard in his room. He was wearing fur armor and can probably be found in a cold area....");

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
	description			= 	"note from a lizard";
};
func void UseEchsenQuest_01 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Feed the females"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "a. ) Young females: Kill five swamp sharks and throw their flesh into the border area."					);
					Doc_PrintLines	( nDocID,  0, "b. ) Ancient females: Weak five swamp sharks up to half of their energy, then curl them into the border area."					);
					Doc_PrintLines	( nDocID,  0, "c. ) Strong females: Curl five healthy swamp sharks into the border area"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Remark: The marsh shark farm is coming out of the city on the right in a valley basin. The border area is the footbridge connecting the town and the entrance to the swamp. The meat must be used in the border area, strictly according to the hierarchy."					);

					Doc_Show		( nDocID );

	if (Mod_EchsenQuest_01 == 0)
	{
		Mod_EchsenQuest_01 = 1;

		Log_CreateTopic	(TOPIC_MOD_ECHSEN_WEIBCHENFUETTERUNG, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ECHSEN_WEIBCHENFUETTERUNG, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_ECHSEN_WEIBCHENFUETTERUNG, "I'm supposed to feed the females. Each type of female requires a different type of preparation. First I am to take care of the young females and throw the swamp shark meat of the swamp sharks of the swamp shark farm into the border area. The marsh shark farm is on the right side of a valley basin when I leave town. The feeding must be strictly in line with the hierarchy. I should use it to spread the flesh...");

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
	description			= 	"note from a lizard";
};
func void UseEchsenQuest_02 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Light the fires"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "a. ) Light the four beacons in the lower town."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Note: Fire is lit in combat."					);

					Doc_Show		( nDocID );

	if (Mod_EchsenQuest_02 == 0)
	{
		Mod_EchsenQuest_02 = 1;

		Log_CreateTopic	(TOPIC_MOD_ECHSEN_SIGNALFEUER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ECHSEN_SIGNALFEUER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_ECHSEN_SIGNALFEUER, "I'm supposed to start four beacons in town. As a comment on the note it said that the fires are lit in battle...");

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
	description			= 	"note from a lizard";
};
func void UseEchsenQuest_03 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Find a white swamp shark"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "a. ) Take four young lizards with you."					);
					Doc_PrintLines	( nDocID,  0, "b. ) Search our part of the swamp for a white marsh shark."					);
					Doc_PrintLines	( nDocID,  0, "c. ) When you find the swamp shark, call them something (regardless of what, they don't understand you anyway)."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Note: Show four lizards this note and they will accompany you."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Shhhhhhhhhhhhhhhhhhhhhhhhhhhhhzzz."					);

					Doc_Show		( nDocID );

	if (Mod_EchsenQuest_03 == 0)
	{
		Mod_EchsenQuest_03 = 1;

		Log_CreateTopic	(TOPIC_MOD_ECHSEN_SUMPFHAIFINDEN, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ECHSEN_SUMPFHAIFINDEN, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_ECHSEN_SUMPFHAIFINDEN, "I'm supposed to be looking for a white swamp shark in the swamp. To do this, I shall first show four young lizards the note and then break it open with them.");
	};

};

INSTANCE ItWr_TorlofForSaturas		(C_Item)
{
	name 				=	"Letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_TorlofForSaturas;
	scemeName			=	"MAP";
	description			= 	"by Torlof for Saturas";
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
					Doc_PrintLines	( nDocID,  0, "Venerable magician of water. I'm sending you this magic crystal. Hand over to the messenger that fee, which ever seems to be appropriate to you."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Torlof"					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_DeanGekillt		(C_Item)
{
	name 				=	"Letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_DeanGekillt;
	scemeName			=	"MAP";
	description			= 	"had the golem with him";
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
					Doc_PrintLines	( nDocID,  0, "Kill the first magician you meet and bring me his robe. Then remove his body and await further instructions."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Trador"					);

					Doc_Show		( nDocID );

	if (Mod_Turendil_Faice_Day == 2)
	{
		if (Npc_KnowsInfo(hero, Info_Mod_Dever_Trador))
		{
			B_LogEntry_More	(TOPIC_MOD_FAICE_GIFT, TOPIC_MOD_DEVER_DEAN, "Dean was murdered by a golem sent by Trador.", "I don't think Dean will be able to answer Dever's question if he knew it.");
		}
		else
		{
			B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "Dean was murdered by a golem sent by Trador.");
		};

		Mod_Turendil_Faice_Day = 3;
	};

};

INSTANCE ItWr_DMBildNotiz		(C_Item)
{
	name 				=	"Letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_DMBildNotiz;
	scemeName			=	"MAP";
	description			= 	"lay on the king's bed";
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
					Doc_PrintLine	( nDocID,  0, "Dear King!"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Here are my latest creations. Thank you for your appreciation and see you soon!"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Your secretary of drugs"					);

					Doc_Show		( nDocID );

	if (Mod_SL_Meer == 3)
	{
		Mod_SL_Meer = 4;

		B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "It seems the secretary of drugs is also a painter. Maybe he can draw me a picture of the swamp?");
	};

};

INSTANCE ItWr_HofstaatListe		(C_Item)
{
	name 				=	"List";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_HofstaatListe;
	scemeName			=	"MAP";
	description			= 	"with things that weaken the royal household";
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
					Doc_PrintLines	( nDocID,  0, "1. ) Fluffy sober up"					);
					Doc_PrintLines	( nDocID,  0, "2. ) Overtrump the royal hole grave"					);
					Doc_PrintLines	( nDocID,  0, "3. ) The royal beloved seduce"					);
					Doc_PrintLines	( nDocID,  0, "4. ) Spread in Khorata that the giver of joy makes blind"					);
					Doc_PrintLines	( nDocID,  0, "5. ) Pouring water into the public fountain of joy."					);
					Doc_PrintLine	( nDocID,  0, ""					);

					Doc_Show		( nDocID );

	if (Mod_SL_Schwaechen == 0)
	{
		Mod_SL_Schwaechen = 1;
		Mod_SL_PartBlind = 1;

		B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "In order to weaken the court, I have to do five things: sober Fluffy, outdo the royal pit graves, seduce the royal mistress, spread rumours that the giver of joy blinds and fills the fountain of joy with water.");

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

		B_LogEntry_NS	(TOPIC_MOD_SL_FLUFFY, "I need to sober up Fluffy. I should get some food.");
		B_LogEntry_NS	(TOPIC_MOD_SL_LOCHGRAEBER, "Outperform the hole digger. It won't be easy.");
		B_LogEntry_NS	(TOPIC_MOD_SL_GELIEBTE, "To seduce the royal lover.... I'm sure the womanizer will be able to help me.");
		B_LogEntry_NS	(TOPIC_MOD_SL_BLIND, "Rumors spread that glee dispensers are blind? Sounds simple...");
		B_LogEntry_NS	(TOPIC_MOD_SL_BRUNNEN, "I have to fill the fun-donor well with water.");

		// Neue NPC's

		Wld_InsertNpc	(Mod_7334_HS_Typ_REL, "REL_242");

		// Bei alten Routinewechsel

		B_StartOtherRoutine	(Mod_7013_HS_Fluffy_REL, "WAITINGFORNEWFOOD");
		B_StartOtherRoutine	(Mod_7011_HS_Alex_REL, "START");
	};

};

INSTANCE ItWr_SentenzaForCutter		(C_Item)
{
	name 				=	"Letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_SentenzaForCutter;
	scemeName			=	"MAP";
	description			= 	"from Sentenza";
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
					Doc_PrintLines	( nDocID,  0, "Very good. Very good. After we've taken all the stuff off of Bullit, all you have to say is that a mercenary or an orc hunter would have done the deed. Let's get this gun out of here soon so no one can trace us."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Bloodwyn"					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_StraschiduosBrief		(C_Item)
{
	name 				=	"Letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_StraschiduosBrief;
	scemeName			=	"MAP";
	description			= 	"from Straschiduo's inventory";
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
					Doc_PrintLines	( nDocID,  0, "Excellent. All our cooperation will devastate this miserable region with death and misery. The magicians of the three deities have no idea what they have done with their foolish work. For the time being, you should let the witches be convinced that this work will benefit their god Beliar. Nor do we need them. But as soon as the town and farms are destroyed, don't waste your time getting rid of the witches. My master will be exceedingly pleased and will reward you princely.... as he has done in the past.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "urnol");

					Doc_Show		( nDocID );

		if (Mod_WM_StraschiduosBrief == FALSE)
		{
			Mod_WM_StraschiduosBrief = TRUE;

			B_GivePlayerXP	(150);
		};

};

INSTANCE ItWr_GennGiftListe		(C_Item)
{
	name 				=	"List of poisonous plants";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_GennGiftListe;
	scemeName			=	"MAP";
	description			= 	"from Genn";
};
func void UseItWr_GennGiftListe ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "list of poisonous plants"					);
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
	description			= 	"from Elena";
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
					Doc_PrintLines	( nDocID,  0, "After our ambush was successful and Iwan struck down, you get his head. You should hide it in the foreseeable future in a safe place, so that the last danger is also averted that Iwan could come back to life. I buried his torso in my tomb. Death and destruction of all righteous.");
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
					Doc_PrintLines	( nDocID,  0, "I've heard of a secret meeting between Canthar and another high-ranking fencer. It is said to find a city in the next night, somewhere in the Kana-Lisa-Tion (but not very close to the thief guild). Maybe I can make the meeting over!");

					Doc_Show		( nDocID );

		if (Mod_CantharQuest_Last == 2)
		{
			Mod_CantharQuest_Last = 3;

			Log_CreateTopic	(TOPIC_MOD_MOE_DEAD, LOG_MISSION);
			B_SetTopicStatus	(TOPIC_MOD_MOE_DEAD, LOG_RUNNING);
			B_LogEntry_More	(TOPIC_MOD_MOE_DEAD, TOPIC_MOD_CANTHAR_GESCHAEFTE, "Moe had a message on her that talks about a meeting between Canthar and a second criminal. It is planned to take place in the evening or at night in a part of the sewerage system far away from the guild of thieves.", "The threat didn't turn out to be hot air - Moe, my most important informant, was murdered in the warehouse.");

			Wld_InsertNpc	(Mod_7211_NONE_Schlaeger_NW, "NW_CITY_KANAL_14");
			Wld_InsertNpc	(Mod_7212_NONE_Schlaeger_NW, "NW_CITY_KANAL_14");
			Wld_InsertNpc	(Mod_7213_NONE_Schlaeger_NW, "NW_CITY_KANAL_14");
		};
};

INSTANCE ItWr_ElenaNotiz		(C_Item)
{
	name 				=	"Note";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_ElenaNotiz;
	scemeName			=	"MAP";
	description			= 	"Note from Elena";
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
					Doc_PrintLines	( nDocID,  0, "A lot to do in the witchcraft. Shouldn't forget to get rid of my head. Well, but expanding healing magic will hardly have anyone who stumbles into our cave by chance.");
					Doc_PrintLine	( nDocID,  0, ""					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_Paper		(C_Item)
{
	name 				=	"slip";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	1;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	TEXT[5]		= Name_Value;		COUNT[5]		= value;
};

INSTANCE ItWr_HSAufzeichnung		(C_Item)
{
	name 				=	"recording";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
};

INSTANCE ItWr_Passierschein_HS		(C_Item)
{
	name 				=	"Pass";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
};

INSTANCE ItWr_HagenForHymir		(C_Item)
{
	name 				=	"sealed letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;

	description		= name;
	TEXT[0]			= "By Lord Hagen for Hymir";
};

INSTANCE ItWr_Rukhar_Wacholder		(C_Item)
{
	name 				=	"Letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRukhar_Wacholder;
	scemeName			=	"MAP";
	description			= 	"From Rukhar's inventory";
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
					Doc_PrintLines	( nDocID,  0, "Rukhar, you idiot! The theft has been noticed. Coragon must be looking for us by now! Sell the juniper to Thekla, the hostess of mercenaries, and make yourself thin. This concludes our cooperation!"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Kardif"					);

					Doc_Show		( nDocID );

	if (Mod_KnowsRukharWacholder == 0)
	{
		Mod_KnowsRukharWacholder = 1;

		B_LogEntry	(TOPIC_MOD_CORAGON_WACHOLDER, "Rukhar gave me a letter from Cardif. Kardif is also involved in this crime.");
	};

};

INSTANCE ItWr_CronosAbsorbKristall		(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseCronosAbsorbKristall;
	scemeName			=	"MAP";
	description			= 	"to summon a divine messenger";
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
					Doc_PrintLines	( nDocID,  0, "Bone of a skeleton, healing root, fire root, 500 gold, 1 chunk of ore, and the unknown ingredient - probably something edible."					);

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
	description			= 	"from Moe";
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
					Doc_PrintLines	( nDocID,  0, "We know where you live. We know what you betrayed (the name is smeared to the point of illegibility). You'll soon know how many grains of dust there are on the floor of the warehouse."					);

					Doc_Show		( nDocID );

	if (Mod_MoeDontTalk == 5)
	{
		Mod_MoeDontTalk = 6;
	};

};

INSTANCE ItWr_SnorresNotiz		(C_Item)
{
	name 				=	"Note";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseSnorresNotiz;
	scemeName			=	"MAP";
	description			= 	"from Snorre";
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
					Doc_PrintLines	( nDocID,  0, "Sorry, my dear Dragon, that after so many years under your knute I preferred to build my own existence. You won't mind if I use some of your stinking dragon treasures for that purpose. In the land of dreams, I'm going to make a nice Lenz with it."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Thank you very much indeed,"					);
					Doc_PrintLines	( nDocID,  0, "your highly regarded Snorre; O)"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Hahaha, nene nene nene..."					);
					
					Doc_Show		( nDocID );


};

INSTANCE ItWr_TodeslisteVonCanthar		(C_Item)
{
	name 				=	"Letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseTodeslisteVonCanthar;
	scemeName			=	"MAP";
	description			= 	"From the inventory of a club";
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
					Doc_PrintLines	( nDocID,  0, "Take Kuno at the pass before he gets wind of the matter. Then wait there... and lightens it around the case. And, very importantly: Silence Flora from the Upper Quarter! She might know something."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);

					Doc_Show		( nDocID );

	if (Moe_KnowsPort == 7)
	{
		Moe_KnowsPort = 8;

		B_LogEntry	(TOPIC_MOD_MOE_PORT, "I'm apparently unpopular.... at least somebody's trying to get me out of the way like Kuno. Maybe this flora from the Upper Quarter knows something about it. At least I should warn them.");
	};

};

INSTANCE ItWr_MagicPaper		(C_Item)
{
	name 				=	"Magic note";

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
					Doc_PrintLines	( nDocID,  0, "Stop anyone who follows our lead! Let me know immediately."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Kardif"					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_DragomirsNotiz		(C_Item)
{
	name 				=	"Note";

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
					Doc_PrintLines	( nDocID,  0, "If anything happens to us here, we'll meet again at Nandor. He set up a small camp near the stone circle in the dark forest, which seems to me to be reasonably safe."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Dragomir"					);

					Doc_Show		( nDocID );

	if (Mod_Drago == 1)
	{
		Mod_Drago = 2;

		Log_CreateTopic	(TOPIC_MOD_JG_LAGER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_JG_LAGER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_JG_LAGER, "Dragomir's camp is burned, he went to Nandor himself. I should go see him there.");
	};

};

INSTANCE ItWr_LorfornsBrief		(C_Item)
{
	name 				=	"Letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLorfornsBrief;
	scemeName			=	"MAP";
	description			= 	"Letter from Lorforn";
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
					Doc_PrintLines	( nDocID,  0, "Lorforn, with the enclosed spell roll you can create a large landslide that will cause the whole cave system in Tugettso to collapse. As a result, the goblins have to flee into the valley and will slowly but surely lead it to doom. However, make sure after using the saying role that no one approaches the matrons so that they can continue to produce offspring."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "P."					);

					Doc_Show		( nDocID );

		if (TUG_Lorforn == FALSE)
		{
			TUG_Lorforn = TRUE;

			B_LogEntry	(TOPIC_MOD_FERCO_GOBLIN, "I met a guy named Lorforn on the way to the Matrons, who's responsible for the earthquake. He's from a certain' P. 'was sent to you.");
		};

};

INSTANCE WilfriedsTagebuchseite		(C_Item)
{
	name 				=	"diary page";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseWilfriedsTagebuchseite;
	scemeName			=	"MAP";
	description			= 	"Diary page of Wilfried";
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
					Doc_PrintLines	( nDocID,  0, "What could be more beautiful than escaping the city, the noise, the dirt, the people? Since I discovered this small cave just outside the city, I have visited it frequently. I set it up so far that I could live there for years (you never know what happens). I am always looking forward to my golden chest. I love to touch with my hands the gold pieces that I have acquired and earned in the finest work. Maybe soon I'll really be ready to disappear without a trace.... but before that, there are some people I want to settle up with!"					);

					Doc_Show		( nDocID );

		if (Mod_WilfriedsQuest == 4)
		{
			Mod_WilfriedsQuest = 5;

			B_LogEntry	(TOPIC_MOD_WILFRIED_GOLD, "In one of Wilfried's chests I have found a diary page that mentions a cave near the city, which Wilfried has set up as his second home. Should I take a look in there?");
		};

};

INSTANCE ItMi_Bauanleitung		(C_Item)
{
	name 				=	"assembly instructions";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"Building instructions for swamp herb equipment";
};

INSTANCE ItWr_StahlkampfAnleitung		(C_Item)
{
	name 				=	"assembly instructions";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"Instruction manual for steel fighting staffs";
};

INSTANCE ItWr_WilfriedsListe		(C_Item)
{
	name 				=	"List";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"A list from Wilfried's cave";
};

INSTANCE ItWr_BuddlerNachrichtVonAL		(C_Item)
{
	name 				=	"Letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBuddlerNachrichtVonAL;
	scemeName			=	"MAP";
	description			= 	"Letter from Alissandro";
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
					Doc_PrintLines	( nDocID,  0, "I want you to go to the leader of the Demon Knights and offer to sign a contract for the old mine. The mine is rightfully ours and we have the right to demand a share of it. If he's interested, tell him to contact me. If that is not the case, tell him that we will be forced to take action."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Alissandro"					);

					Doc_Show		( nDocID );

	if (Hat_BuddlerNachrichtVonAL == FALSE)
	{
		Hat_BuddlerNachrichtVonAL = TRUE;

		Log_CreateTopic	(TOPIC_MOD_AL_MINE, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_AL_MINE, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_AL_MINE, "I got a message from Alissandro saying I should make an offer to the Demon Knights about the old mine.");

		if (!Npc_KnowsInfo(hero, Info_Mod_Elvrich_Liste))
		{
			Wld_InsertNpc	(Mod_1000_DMR_Kurgan_NW,	"BIGFARM");
		};

		B_StartOtherRoutine	(Mod_1000_DMR_Kurgan_NW, "ANGEBOT");
	};

};

INSTANCE ItWr_NandorToDragomir		(C_Item)
{
	name 				=	"Message";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseNandorToDragomir;
	scemeName			=	"MAP";
	description			= 	"Message from Nandor for Dragomir";
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
					Doc_PrintLines	( nDocID,  0, "I have found a suitable place and will prepare it as well as possible and continue to explore the area. I expect you in two weeks at the latest. The old camp has become too insecure."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Nandor"					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_KimonsBeleg		(C_Item)
{
	name 				=	"record";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseKimonsBeleg;
	scemeName			=	"MAP";
	description			= 	"Cover from Kimon";
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
					Doc_PrintLines	( nDocID,  0, "Proof of the sale of 50 grapes at a unit price of 20 gold coins. Total price corresponds to 1. 000 gold coins. On numbers of Fire Magician Serpentes."					);

					Doc_Show		( nDocID );

};

INSTANCE AL_PfeilNachricht		(C_Item)
{
	name 				=	"Letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAL_PfeilNachricht;
	scemeName			=	"MAP";
	description			= 	"A letter hanging from an arrow";
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
					Doc_PrintLines	( nDocID,  0, "I have information on the thefts. Can't disclose me openly. If you want to know more, go to the keep."					);

					Doc_Show		( nDocID );

			if (Mod_TemplerBeiThorus == 3)
			{
				Mod_TemplerBeiThorus = 4;
			};

};

INSTANCE ItWR_MessageAlvar		(C_Item)
{
	name 				=	"Letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseMessageAlvar;
	scemeName			=	"MAP";
	description			= 	"A letter hanging from an arrow";
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
					Doc_PrintLine	( nDocID,  0, "Greetings, stranger,"					);
					Doc_PrintLines	( nDocID,  0, "your mind does not seem blinded, like that of others, your urge to the truth is greater than the fear of your own advantage. Do you want to follow the path to the truth that you have taken? Then go behind the village and you will see a cave on your right. There you shall receive further answers...."					);

					Doc_Show		( nDocID );

			if (Mod_AlvarKristall == 4)
			{
				Mod_AlvarKristall = 5;

				B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "The unknown author of the message promises me further answers in a cave on the right hand side behind the village. I'm not quite sure what to think of it....");

				Wld_InsertItem	(ItWr_ErisKult, "FP_ITEM_BUCH_ERISKULT");
			};

};

INSTANCE AL_Aufstellung		(C_Item)
{
	name 				=	"layout";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"Formation of the guardsmen";
};

INSTANCE ItWr_HagenLares		(C_Item)
{
	name 				=	"message of peace";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"by Lord Hagen for Lares";
};

INSTANCE ItWr_TurnierUrkunde		(C_Item)
{
	name 				=	"charter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"Certificate for the winner of the militia tournament";
};

INSTANCE ItWr_DiebDokumente		(C_Item)
{
	name 				=	"Valuable documents about Khorata";

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
	description			= 	"Note from Fisk";
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
					Doc_PrintLines	( nDocID,  0, "Your stuff:"					);
					Doc_PrintLines	( nDocID,  0, "1x sleeping cradle"					);
					Doc_PrintLines	( nDocID,  0, "5x ore chunks"					);
					Doc_PrintLines	( nDocID,  0, "3x chunks of gold"					);
					Doc_PrintLines	( nDocID,  0, "1x guide rod"					);
					Doc_PrintLines	( nDocID,  0, "7x Stem Marsh Weed"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "marked Bloodvyn"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "PS: We have Cutter on our side."					);

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
	description			= 	"Alissandro's note from the Goblin Cave";
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
					Doc_PrintLines	( nDocID,  0, "Whoever reads this is safe."					);
					Doc_PrintLines	( nDocID,  0, "This is one of the shelters I had built for emergencies."					);
					Doc_PrintLines	( nDocID,  0, "Don't leave the sanctuary until you hear from me."					);
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
	name 				=	"List";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_ItWr_Alissandro_KillList;
	scemeName			=	"MAP";
	description			= 	"List of Alissandro";
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
					Doc_PrintLines	( nDocID,  0, "Fletcher, leader of the guardsmen"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Ian, leader of the Shadows"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Cathran, renegade member of the Royal Guard"					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_JuanNotiz		(C_Item)
{
	name 				=	"Note";

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
					Doc_PrintLines	( nDocID,  0, "You see, I didn't promise you too much. This merchant Juan has really hot stuff. Since even the bosses in the New Camp haven't seen a woman for years and they are not stoned non-stop, you will get a nice sum for it."					);
					Doc_PrintLine	( nDocID,  0, "Greetings, Antony"					);

					Doc_Show		( nDocID );

	if (Mod_JuanQuest == 3)
	{
		Mod_JuanQuest = 4;
	};

};

INSTANCE ItWr_AliBotschaft		(C_Item)
{
	name 				=	"Message";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_AliBotschaft;
	scemeName			=	"MAP";
	description			= 	"Message to Dexter";
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
					Doc_PrintLines	( nDocID,  0, "Our camp is in a bad way. Bartholo murdered Thorus and took over the camp. Therefore we ask the other camps to form an alliance with us. If we win the war over the camp, we offer a 10% share in the ore mining. If you are interested, you will receive all information from the ambassador."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "marked Alissandro"					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_DraganNachricht		(C_Item)
{
	name 				=	"Message";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_DraganNachricht;
	scemeName			=	"MAP";
	description			= 	"Message from the Unknown Man's Chest";
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
					Doc_PrintLines	( nDocID,  0, "if the idiots continue to have no suspicion, we'll make ourselves crazy at the arena. With the spell rolls we stole from these idiots, we can easily defeat any fighter. Just fight, I'll weaken your opponent with the little treasures here. I'm telling you, we have a golden future ahead of us."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "marked dragon"					);

					Doc_Show		( nDocID );

	if (Mod_GorKarantoSchwach == 5)
	|| (Mod_GorKarantoSchwach == 6)
	{
		B_LogEntry	(TOPIC_MOD_AL_ARENA, "Aha, the unknown and an accomplice have won their victories with tricks. I'll tell Thorus.");

		Mod_GorKarantoSchwach = 7;
	};

};

INSTANCE ItWr_Erfinderbrief		(C_Item)
{
	name 				=	"Letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErfinderbrief;
	scemeName			=	"MAP";
	description			= 	"A letter to the inventor";
};
func void UseErfinderbrief ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Dear inventor,"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Meet me behind City Hall at midnight. You better go with us voluntarily, otherwise the militia won't be able to help you!"					);
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
	name 				=	"Letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErfinderKolamsBrief;
	scemeName			=	"MAP";
	description			= 	"A letter to Larius";
};
func void UseErfinderKolamsBrief ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Everything is going according to plan!"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "The inventor is in my power. He'll work for us, I'll make sure of that."					);
					Doc_PrintLines	( nDocID,  0, "The sleeper is satisfied with you and will return soon, keep doing so!"					);
					Doc_PrintLine	( nDocID,  0, "The sleeper awakens!");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Cor Kolam");

					Doc_Show		( nDocID );

	if (Mod_MitLawrenceGesprochen == 12)
	{
		B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "It seems that a certain Cor Kolam is the leader of the fanatical sectarian nerds. He tries to reawaken the sleeper with the help of the inventor. If I want to solve the mystery, I'll have to find Cor Kolam. But I should speak to Lord Andre first.");

		Mod_MitLawrenceGesprochen = 13;
	};

};

INSTANCE ItWr_ErfinderLuteroNotiz		(C_Item)
{
	name 				=	"Note";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErfinderLuteroNotiz;
	scemeName			=	"MAP";
	description			= 	"A note from Lutero";
};
func void UseErfinderLuteroNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "order list"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "We need 20 cases of magic ore."					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");

					Doc_Show		( nDocID );

	if (Mod_MitLawrenceGesprochen == 9)
	{
		Mod_MitLawrenceGesprochen = 10;

		B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "I think it is now time to attend this meeting behind the town hall. That should be around midnight.");
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
	description			= 	"A note from Lawrence";
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
					Doc_PrintLines	( nDocID,  0, "Militia investigated disappearing the inventor. If anyone asks you, call you Junur! You're Lutero's brother, Lutero's gone. I'll meet you at midnight today, behind the city hall."					);
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
	name 				=	"Diary page 7";

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
					Doc_PrintLine	( nDocID,  0, "1. Day 3. month"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Finally I was called into their ranks by the Fire Magicians. My fathers are my brothers now.");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLine	(nDocID, 0, "5. Day 4. month");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLines	(nDocID, 0, "I have a lot of work to do, I hardly ever get around to keeping this book, let alone sleeping. But I like to do it for Innos.");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLine	(nDocID, 0, "23. Day 4. month");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLines	(nDocID, 0, "The upper fire magicians are all very excited. I heard two of them talk about' Patherion'. What the welfare may be?");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLine	(nDocID, 0, "25. Day 4. month");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLines	(nDocID, 0, "Today Pyrokar came to me. He told me about Patherion. An old fire magic stronghold now under siege. I'm supposed to go there and bring them a shipment of potions so they can get through this.");
					Doc_PrintLine	(nDocID, 0, "");
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_PatherionNachricht2		(C_Item)
{
	name 				=	"Diary page 8";

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
					Doc_PrintLine	(nDocID, 0, "1. Day of the 5th month");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLines	(nDocID, 0, "Arrived at Patherion today. Black magician... everywhere. Black warriors as far as the eye can see. I don't know if I can get to the monastery.");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLine	(nDocID, 0, "3. Day of the 5. month");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLines	(nDocID, 0, "Studied the entire property. From the exit of the chapel a cave is diagonally to the left. I'll try to sneak through there at night. There are many... Innos hold your protective fire over me.");

					Doc_Show		( nDocID );

};

INSTANCE ItWr_SektisTeleport1		(C_Item)
{
	name 				=	"half of the role";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	name;
};

INSTANCE ItWr_SektisTeleport2		(C_Item)
{
	name 				=	"half of the role";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	name;
};

INSTANCE ItWr_SektisTeleport3		(C_Item)
{
	name 				=	"spell roll";

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
	name 					=	"StandardBook";

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
					Doc_PrintLines	( nDocID,  0, "23. Day of the 4th round. Cycle 457"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Today I joined Long John Silver's Pirates. I had to swear an oath to Adanos to always be loyal to him."					);
					//Absatz
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			);
					Doc_PrintLines	( nDocID,  0, "7. Day of the 8th round. Cycle 459");
					Doc_SetFont	( nDocID,  0, FONT_Book);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "We boarded a royal jelly. Crew is dead, but a cook escaped. Tremendous treasure, but soon the royal fleet will come after us.");
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			);
					Doc_PrintLines	( nDocID,  0, "20. Day of the 8th round. Cycle 459");
					Doc_SetFont	( nDocID,  0, FONT_Book);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "We arrived on an island.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Rumors of mutiny are spreading. Don't have the courage to turn me against the mutineers."	);
					Doc_PrintLine	( nDocID,  1, ""					);
					//Absatz
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			);
					Doc_PrintLines	( nDocID,  1, "21. Day of the 8th round. Cycle 459");
					Doc_SetFont	( nDocID,  1, FONT_Book);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "The captain was hanged today. With his last breaths he cursed us and laughed at us:'Adanos will punish you! “");
					//Absatz
					Doc_PrintLine	( nDocID,  1, "");
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			);
					Doc_PrintLines	( nDocID,  1, "22. Day of the 8th round. Cycle 459");
					Doc_SetFont	( nDocID,  1, FONT_Book);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "HELP! HELP!!!!!!!!!!!!!!!!");
					Doc_Show		( nDocID );

		if (Mod_HatSkeletonBook_Gelesen == FALSE)
		{
			Mod_HatSkeletonBook_Gelesen = TRUE;
		};
};

var int Mod_REL_KhorataGeschichte;

INSTANCE ItWr_KhorataGeschichte (C_ITEM)
{
	name 					=	"book";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"NewBook_V1_2.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"The full truth about Khorata";
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
 					Doc_PrintLines	( nDocID,  0, "The full truth about Khorata"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "One of the four survivors from Jharkendar found his way to Relendel. Far away from his old problems he wanted to build a new life for himself. A little later a virtuous couple joined him, who was disgusted by life in Khorinis and wanted to found their own settlement. The woman's name was Eva and the husband Bernd. The three of them built a peaceful camp under a rock overhang, of which the blackened ruins are still standing today.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 
 					Doc_PrintLine	( nDocID,  1, ""					);	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Only a few decades later, this settlement had grown to an astonishing size. Old and young people lived a harmonious life, for they lacked nothing and there was no reason to argue. Then she put Beliar to the test by setting fire to a fire and charring their houses. Deeply shocked by this malice, but still full of hope in the heart, the community founded a new village called Khorata.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Please reopen to turn the page -");
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
					Doc_PrintLines	( nDocID,  0, "Some homeless people broke away from the others and moved on, hoping to escape Beliar's observation. They hid in a small valley and built up the royal household. Since there were only a few of them, the men loved their sisters, and the women loved their brothers, and so this genetic branch, as we can still see today, decayed.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 
 					Doc_PrintLine	( nDocID,  1, ""					);	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "But Khorata is still a flourishing city. Through skill and diligence alone, the population has succeeded in maintaining useful trade links to all parts of the island. With Adanos' protective hand, Beliar will not succeed in destroying the community.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Please reopen to turn the page -");
					Doc_Show		( nDocID );

			Mod_REL_KhorataGeschichte = 0;
		};
};

INSTANCE ItWr_HofstaatGeschichte03 (C_ITEM)
{
	name 					=	"The History of the Court State Part 3";

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
		Doc_PrintLines	( nDocID,  0, "After initial successes, a regression began in the pleasure-donor export when several rulers banned the drug for its powerful effect in their kingdoms. The Hofstaatler then launched an advertising campaign aimed at improving the reputation of their only production product.");
		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLine	( nDocID,  0, ""					);

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 
		Doc_PrintLine	( nDocID,  1, ""					);	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "The small-town of Khorata, which is located in front of the royal court, is certainly most strongly influenced by the abuse of pleasure-givers. According to their own historiography, both settlements originate from the same group of peoples. However, this has not yet been verified.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1, "");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_BeliarBibGruss (C_ITEM)
{
	name 					=	"birthday greeting";

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
		Doc_PrintLines	( nDocID,  0, "Happy birthday, you old rat. If you open this book, you'll know why I didn't show up for dinner this year. I have rather sent my little creations in advance, that they may destroy you and your wretched family once and for all from the face of this world. And then your fortress, which you so shamefully expose to decay, will finally be mine! And don't you dare open the book!");
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
	name 					=	"Hunting Secrets Volume V - Poisons";

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
		Doc_PrintLines	( nDocID,  0, "... or poisonous plants. To do this, however, the toxins must first be extracted at an alchemy table. The gained essence of the poison can then be applied to arrows and sharp/pointed weapons. Wild animals can thus be placed and killed much easier. However, the melee weapon will lose a portion of the applied poison with every stroke and stroke until it needs to be re-smeared with poisonous secretion."					);

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "It should also be noted that animals that use poison in combat have a high resistance to animal poison. The slightly weaker plant poison is the better choice in such cases. Other creatures, such demonic origin and hunters romping in hostile swamps have a certain resistance to all poisonous creatures. Again, poisons of any kind are completely ineffective for beings made of inanimate material and elements, equally undead creatures....");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_StadthalterChroniken (C_ITEM)
{
	name 					=	"Town keeper chronicles";

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
		Doc_PrintLines	( nDocID,  0, "14. Governor: Aurelian. Because he felt that he had been passed over to the new governor, he fought a mercenary army against the designated successor Quintillus, who had nothing to oppose him.");
		Doc_PrintLines	( nDocID,  0, "In the beginning, Aurelian's rule was not a good star. Hordes of Molerats devastated Relendel and even ventured to Khorata. The variety of molar meat recipes still known today originates from this period.");
		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLine	( nDocID,  0, ""					);

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 
		Doc_PrintLine	( nDocID,  1, ""					);	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Inside the city walls, too, there was unrest when the coin minters rebelled against a charge of corruption and threw gold at Aurelian, causing him to have several dents. As a counterbalance, the mayor had the rebels tortured and slowly killed. Since then, there have been no coin mines in Khorata.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1, "");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_BookLehmar (C_ITEM)
{
	name 					=	"Strange Book";

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
	name 					=	"three-sealed book";

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
	name 					=	"Book for Juan";

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

			AI_PrintScreen	("receive a note", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);
		};

		
};

INSTANCE ItWr_Chromanin3 (C_ITEM)
{
	name 					=	"chroman book";

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
			B_LogEntry	(TOPIC_MOD_NL_SIEGELBUCH, "Damn it! The chromanin book is empty. What will Xardas say?");
		};		
};

INSTANCE ItWr_AlvarTagebuch (C_ITEM)
{
	name 					=	"Diary";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V2_5.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	UseAlvarTagebuch;

	description				= 	name;
	TEXT[1]					=	"from Alvar";
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
		Doc_PrintLines	( nDocID,  0, "... yesterday at the hunt I met some of these ice ghosts again. Luckily I have my magic crystal hidden in my armor. They should never threaten me again.");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "The wood and the skins are quickly running low. Soon I'll have to go back to the woods to get new ones. Since the last time I was in trouble, nobody wants to sell me anything...");


		Doc_Show		( nDocID );	
	
		if (Mod_AlvarTagebuch == 1)
		{
			Mod_AlvarTagebuch = 2;

			B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "Hmm, I can't find anything on the last few pages that would make a confession. Sera wants me to take a closer look at the book.");
		};		
};

INSTANCE ItWr_AlvarTagebuch2 (C_ITEM)
{
	name 					=	"Diary";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V2_6.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	UseAlvarTagebuch2;

	description				= 	name;
	TEXT[1]					=	"from Alvar";
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
		Doc_PrintLines	( nDocID,  0, "Those bitches won't give themselves to me. I think I'll have to take a more forceful approach. And woe betide them, they betray me - then they shall suffer badly.");

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
	name 					=	"dusty diary";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_1.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	UseGorNaKoshsTagebuch1;

	description				= 	name;
	TEXT[1]					=	"from Gor Na Kosh";
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
		Doc_PrintLines	( nDocID,  0, "After all the years I spent here, the time has finally come. I'm being elevated to the status of a templar. I was sweating and I was suffering, but the pain that sweat and blood gave me could not completely wipe away the dried up trail of tears....");
 		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLines	( nDocID,  0, "And again I'm an inferior member of society. One of the older guardians told me that I will not become a full-fledged Templar until I have a guardian blade. However, it is almost impossible to find the raw materials needed to produce them. I have seen other Templars wiping or haggling over the guardian blades of older Templars, while others brought the wrong ingredients to the forge. I don't know what to do....");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "I spoke to Baal Ydran today. He gave me an old book containing some vague hints. Near the rock fortress there is said to be a hermit who could help me in my search.");


		Doc_Show		( nDocID );	
	
		if (Mod_TPL_HK_Ydran == 1)
		{
			Mod_TPL_HK_Ydran = 2;

			B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Gor Na Kosh seems to have set off in search of his ingredients to a hermit who is said to live near the rock fortress.");

			Wld_InsertItem	(ItWr_GorNaKoshsTagebuch2, "FP_ITEM_GORNAKOSH_BUCH2");
		};		
};

INSTANCE ItWr_GorNaKoshsTagebuch2 (C_ITEM)
{
	name 					=	"dusty diary";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_2.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	UseGorNaKoshsTagebuch2;

	description				= 	name;
	TEXT[1]					=	"from Gor Na Kosh";
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
		Doc_PrintLines	( nDocID,  0, "I found the hermit and he was actually able to help me. He told me about some places I should visit to find the raw materials I needed, including the Troll Gorge, a beach, the Fog Tower and an old monastery. I couldn't help him in return. When I left early in the evening, less than five minutes away from the hermit's camp, I heard screaming and howling.");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "I ran back, but I was already too late. A huge shadow runner bent over the old man and fed on his innards. I ran at the monster with a drawn gun and managed to drive it away. All I could do for the hermit was bury him properly. May he rest in peace.");


		Doc_Show		( nDocID );	
	
		if (Mod_TPL_HK_Ydran == 2)
		{
			Mod_TPL_HK_Ydran = 3;

			B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Gor Na Kosh seems to have found a lead. In his documents he mentions the Troll Gorge, a beach, the fog tower and an old monastery. Maybe I'll find another clue in one of these places.");

			Wld_InsertItem	(ItWr_GorNaKoshsTagebuch3, "FP_ITEM_GORNAKOSH_BUCH3");

			Npc_RemoveInvItems	(hero, ItWr_GorNaKoshsTagebuch1, 1);
		};		
};

INSTANCE ItWr_GorNaKoshsTagebuch3 (C_ITEM)
{
	name 					=	"dusty diary";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_3.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	UseGorNaKoshsTagebuch3;

	description				= 	name;
	TEXT[1]					=	"from Gor Na Kosh";
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
		Doc_PrintLines	( nDocID,  0, "Thank the hermit. I've really found all the ingredients after all these years of searching. My bones may have grown old and tired, my spirit still burns like it did when I was a young novice who was just raised to the level of a templar.");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "As soon as I go back to the camp, I will have my Keeper's Blade forged. But before then I will pass by the hermit's grave to thank him.");


		Doc_Show		( nDocID );	
	
		if (Mod_TPL_HK_Ydran == 3)
		{
			Mod_TPL_HK_Ydran = 4;

			B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Gor Na Kosh found all the ingredients and wanted to stop by the hermit's grave before returning to the camp.");

			Wld_InsertItem	(ItWr_GorNaKoshsTagebuch3, "FP_ITEM_GORNAKOSH_BUCH3");

			Npc_RemoveInvItems	(hero, ItWr_GorNaKoshsTagebuch2, 1);

			Wld_InsertNpc	(Shadowbeast_GorNaKosh, "FP_ROAM_GORNAKOSH_SHADOWBEAST");
		};		
};

INSTANCE Ryans_Almanach (C_ITEM)
{
	name 					=	"almanac";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_4.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	description				= 	"Almanac from Ryan's chest";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

INSTANCE ItWr_XardasAlmanach (C_ITEM)
{
	name 					=	"almanac";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_5.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	description				= 	"Almanac of an Orc";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

INSTANCE ItWr_BeliarBook (C_ITEM)
{
	name 					=	"necronomic";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_6.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	description				= 	"Book of Black Mages";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};


INSTANCE ItWr_BookFromSkeleton (C_ITEM)
{
	name 					=	"Diary";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_1.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Diary of the Pirate Zombies";
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
					Doc_PrintLines	( nDocID,  0, "23. Day of the 4th round. Cycle 457"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Today I joined Long John Silver's Pirates. I had to swear an oath to Adanos to always be loyal to him."					);
					//Absatz
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			);
					Doc_PrintLines	( nDocID,  0, "7. Day of the 8th round. Cycle 459");
					Doc_SetFont	( nDocID,  0, FONT_Book);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "We boarded a royal jelly. Crew is dead, but a cook escaped. Tremendous treasure, but soon the royal fleet will come after us.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			);
					Doc_PrintLines	( nDocID,  0, "20. Day of the 8th round. Cycle 459");
					Doc_SetFont	( nDocID,  0, FONT_Book);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "We arrived on an island.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "The captain wants to bury the treasure. Then he wants to drive further north to lift the treasure again at some point. Rumors of mutiny are spreading. Don't have the courage to turn me against the mutineers."	);
					Doc_PrintLine	( nDocID,  1, ""					);
					//Absatz
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			);
					Doc_PrintLines	( nDocID,  1, "21. Day of the 8th round. Cycle 459");
					Doc_SetFont	( nDocID,  1, FONT_Book);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "The captain was hanged today. With his last breaths he cursed us and laughed at us:'Adanos will punish you! “");
					//Absatz
					Doc_PrintLine	( nDocID,  1, "");
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			);
					Doc_PrintLines	( nDocID,  1, "22. Day of the 8th round. Cycle 459");
					Doc_SetFont	( nDocID,  1, FONT_Book);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "HELP! HELP!!!!!!!!!!!!!!!!");
					Doc_Show		( nDocID );

		if (Mod_HatSkeletonBook_Gelesen == FALSE)
		{
			Mod_HatSkeletonBook_Gelesen = TRUE;
		};
};

INSTANCE ItWr_EmerinsTagebuch (C_ITEM)
{
	name 					=	"Diary";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_2.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Diary of Emerin";
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
					Doc_PrintLines	( nDocID,  0, "Those damn orcs. I'm hearing them rumbling at the entrance again. I think I'll send some zombies there.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "I hear voices near me. I better see if this harpien idiot comes back, then I can finally give him the role of spell, after all I've finished it now.");
					Doc_Show		( nDocID );

		if (Mod_Hermy_KnowsQuest == 6)
		{
			Mod_Hermy_KnowsQuest = 7;

			B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "The orcs killed Emerin and took on the role of spell. I'll see if I can get the spell without bloodshed.");
		};
};

INSTANCE ItWr_MagicSecretsBand5 (C_ITEM)
{
	name 					=	"Old Book";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_3.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Mystery of Magic Band V - magically gifted undead";
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
					Doc_PrintLines	( nDocID,  0, "Remains of magically gifted creatures that have become undead, but without their own will and understanding. They follow diffuse impulses of magic, or a master, like ordinary undead, even if they can work magic themselves. There are also reports of those who have remained sane and, to some extent, even free will. Usually they are servant creatures of powerful magical creatures, like arch-demons.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Old sources even tell of a guild of undead magicians who could survive by binding their life force to an object in a complex magical process. Completely independent of other beings and exceedingly powerful, they could only be stopped by finding and destroying the object that contained their life force. These were usually well hidden at some distance from the mages. Otherwise there would have been the possibility that the object would have passed the life force back to the dead body, where it would have died out immediately....");
					Doc_Show		( nDocID );

		if (Mod_NL_Lich == 1)
		{
			Mod_NL_Lich = 2;

			Mod_NL_Dragon_KnowsLich = 1;

			B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Aha, a guild of undead magicians who have tied their life force to objects.");
		};
};

INSTANCE ItWr_MagicSecretsBand6 (C_ITEM)
{
	name 					=	"Old Book";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_4.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Secrets of Magic Volume VI - Deception and Camouflage";
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
					Doc_PrintLines	( nDocID,  0, "... it is also reported that witches have the ability to change their form, but not only in animal forms. They can embody everything from charming maiden to old woman. It is still controversial, however, whether it is a matter of pure metamorphosis magic, or whether the viewer's eye is simply deceived by the true form of the user.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "The art of camouflage and deception is said to have perfected some witches to such an extent that they are completely invisible to the viewer. However, the effect of this magic seems to be selective in nature. This magic does not seem to have any effect on creatures in which the magically gifted women see no danger for themselves. Also humans, who once succeeded to see through the camouflage of a witch, should no longer have been influenced by her magic...");
					Doc_Show		( nDocID );

		if (Knows_MagicSecretsBand6 == 0)
		{
			Knows_MagicSecretsBand6 = 1;

			B_LogEntry	(TOPIC_MOD_NL_MOORHEXE, "Hmm, hiding from the mighty... living creatures in which they saw no danger, no effect whatsoever...");
		};
};

INSTANCE ItWr_MagicMonsterBand7 (C_ITEM)
{
	name 					=	"book";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_5.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Secrets Of Types Volume VII - Magic Creatures";
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
					Doc_PrintLines	( nDocID,  0, "... remained on the globe for thousands of years. They were giants, dragons, goblins and gnomes. Many centuries ago, however, some disappeared so suddenly from the face of the earth that contemporary sources even argue that they ever existed.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Gaps in the source material that survived through time suggest a powerful magician as the reason for their sudden demise. How exactly this should have happened is not known. Only the extreme south of the globe, far from Myrtana, is said to have been spared from the magician's grip....");
					Doc_Show		( nDocID );

};

INSTANCE ItWr_Buddlerbuch (C_ITEM)
{
	name 					=	"Buddler book";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_6.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	description				= 	"from Costa";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

INSTANCE ItWr_Milizregeln (C_ITEM)
{
	name 					=	"book";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V2_1.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Principles of militia";
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
 					Doc_PrintLines	( nDocID,  0, "Principles of militia"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1. A good militia soldier always protects the weak."					);
					Doc_PrintLines	( nDocID,  0, "2. The threat of violence against an individual or the general public as such is a criminal offence."					);
					Doc_PrintLines	( nDocID,  0, "3. Militias are not allowed to perform unfair acts in their role model capacity."					);
					Doc_PrintLines	( nDocID,  0, "4. Law and order are bread and air of the true militia soldier."					);
					Doc_PrintLines	( nDocID,  0, "5. A militia soldier fights for the city, the country, the king and freedom."					);
					Doc_PrintLines	( nDocID,  0, "6. A militia soldier doesn't fight for his pay, he fights out of conviction."					);
					Doc_PrintLines	( nDocID,  0, "7. A militia soldier never raises the sword against a brother-in-arms under any circumstances."					);
					Doc_Show		( nDocID );

		if (Mod_PAL_HeroBot == 18)
		{
			Mod_PAL_HeroBot = 19;

			B_GivePlayerXP	(2000);
		};
};

INSTANCE ItWr_Innosklinge (C_ITEM)
{
	name 					=	"book";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V2_2.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Shredded book on the consecration of the sword";
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
					Doc_PrintLines	( nDocID,  0, "... It is said that the one who hears the warrior's call may walk on the paths of his Lord over different regions of the earth. At the places of prayer he lets it reverberate when the sun shines brightest. The light, the flaming ball, the fiery storm, the servant of fire and the scorching rain, he shall offer him as a sacrifice. If he sheds holy water over his blade every time, the steel is soaked with the power of Inno. From now on, the holy flame will guide and protect his faithful servant..."					);
					Doc_Show		( nDocID );

		if (Mod_AndreSchwert_Test == 1)
		{
			Mod_AndreSchwert_Test = 2;

			B_LogEntry	(TOPIC_MOD_MILIZ_INNOSKLINGE, "Hmm, very mysterious. 'He who hears the warrior's call to walk on his master's paths.' Maybe Harad will come up with something.");
			B_LogEntry(TOPIC_MOD_MILIZ_INNOSKLINGE, "At the places of prayer he lets it reverberate when the sun shines brightest.... That will mean I have to get to the shrine at noon. The light, the flaming ball, the fiery storm, the servant of fire and the scorching rain, he shall offer him as a sacrifice.... Do you mean magic?");
		};
};

INSTANCE ItWr_HSBook (C_ITEM)
{
	name 					=	"book";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V2_3.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Peculiarities of courtly urban women";
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
 					Doc_PrintLines	( nDocID,  0, "Peculiarities of courtly urban women"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Women who do not belong to the rabble generally only get involved with men who have met them outside the realm. Farmers should take care to court the wife of the current' royal dog food', as it will be single very soon. It is also important to make sure that they don't just take pleasure donors, as this significantly restricts sexual behaviour.");

					//2.Seite
					Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "It works best with a drug that is very common outside our realm. It is a liquid that is present in different concentrations in some beverages and breaks the will. The drunkard gets away with it, you should ask him about it.");
					Doc_Show		( nDocID );

		if (Mod_HSBook == 0)
		{
			Mod_HSBook = 1;
		};
};

INSTANCE ItWr_HSBook2 (C_ITEM)
{
	name 					=	"book";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V2_4.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Turning on and laughing";
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
 					Doc_PrintLines	( nDocID,  0, "Turning on and laughing"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "You look like my fourth girlfriend. She:'Oh, how many girlfriends have you had? 'Three. '");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "I'll tell you something: The thing in my pants is not a heavy branch. '");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "If I asked you to marry me, would it be the same answer to that question?' '");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Do you have a carrier pigeon? I promised to write to my mother as soon as I found my dream girl. '");
					Doc_Show		( nDocID );

		if (Mod_HSBook2 == 0)
		{
			Mod_HSBook2 = 1;
		};
};

INSTANCE ItWr_Advent1 (C_ITEM)
{
	name 					=	"book";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V2_5.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Peculiarities of courtly urban women";
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
		Doc_PrintLines	( nDocID,  0, "... I was finally accepted by the mercenaries. At least they don't care about the gods. The priests and warriors Innos' gratefully accept every helping hand in their dirty work, but when it comes to preserves, one is' not religious enough'. Pah, the club can be stolen!");

		//2.Seite
		Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "But enough of that. The new camp seems to have changed a lot since the sleeper thing; but many things are familiar to me...");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_Advent2 (C_ITEM)
{
	name 					=	"book";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V2_6.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Peculiarities of courtly urban women";
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
		Doc_PrintLines	( nDocID,  0, "As soon as I was there again, Fester hired me to' hunt' - we should shoot some scavengers and molerats, if he knew.... The broad grin on his face should have seemed suspicious to me, but I blamed it on his arrogance. Four of us went out, straight into one of the small caves directly in front of the rice fields.");

		//2.Seite
		Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "There the gentlemen were infected for the first time with their bogweed, which Fester only acknowledged with' Ahh, gorgeous'. I was then allowed to take care of the scavengers and molerats, while the other three were' on the lookout'. The prohibition of bogweed in the camp doesn't seem to really work....");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_Advent3 (C_ITEM)
{
	name 					=	"book";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_1.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Peculiarities of courtly urban women";
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
		Doc_PrintLines	( nDocID,  0, "After I had delivered the meat (they had almost forgotten why we had gone off in the first place), the boys wanted to' hunt' something else in another cave. The only one who was allowed to' kill' something was me again - a small group of young goblins who thought the drugged mercenaries were orcs.");

		//2.Seite
		Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Afterwards, the mercenaries wanted to practise alchemy in the cave, which smelled like a swampweed. After they had shot their joints, they went back to the camp. On the way there, one of the goblins was still hanging around, in front of which the tough guys took to the ground and shouted something of a' big bad orc'. The banning of bogweed has quite its justification seems to me, before the collapse of the barrier it went much more soberly to in the camp.");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_Advent4 (C_ITEM)
{
	name 					=	"book";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_2.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Peculiarities of courtly urban women";
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
		Doc_PrintLines	( nDocID,  0, "When I finally caught up with the three of them again, I got some ore and a few stems of herb as a reward - and the promise that Lee and Sylvio would be told about my help.");

		//2.Seite
		Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "However, I am not so sure that this is really good for my reputation; especially since I don't know if I had anything to do with that Sylvio...");
		Doc_Show		( nDocID );
};

var int ErisKult_Page;


INSTANCE ItWr_ErisKult (C_ITEM)
{
	name 					=	"book";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_3.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"The power of the Eriskult";
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
			Doc_PrintLines	( nDocID,  0, "The power of the Eriskult");
			Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLines	( nDocID,  0, "Eriskult is a sisterhood that is very close to witch cults. However, while other witch clans achieve transformation and deception solely through the use of magic, the art of the Eris sisters is to mislead their surroundings through the use of emotional self-portrayal and rhetorical means."					);

			Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
			Doc_PrintLine	( nDocID,  1, ""					);
			Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
			Doc_PrintLines	( nDocID,  1, "magic was the effectiveness of their means, but they are banal methods of communication which they use skillfully and perfidiously. Through intrigues, lies, deception and seduction, they can see dissension among people and at the same time strengthen their own influence on the environment.");

			ErisKult_Page = 1;
		}
		else if (ErisKult_Page == 1)
		{
			Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
			Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLines	( nDocID,  0, "When they have influenced a community long enough, people become completely dependent on them over time, like a drug. They will even be wide enough to follow the sisters of deception to self-sacrifice, to lie and deceive.... if they're asked to."					);

			Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
			Doc_PrintLine	( nDocID,  1, ""					);
			Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
			Doc_PrintLines	( nDocID,  1, "The only way to stop the Erisschwestern is in Inno's power. Far away from the large stone circle there is said to be a cave in a northwestern direction, which is different from the surrounding area of ice. Fire comes up to the ground and corrosive vapours make breathing difficult.");

			ErisKult_Page = 2;
		}
		else if (ErisKult_Page == 2)
		{
			Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
			Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLines	( nDocID,  0, "When Innos once shed his tears, some people are said to have found their way there. The unnatural conditions in the cave formed something new from them. They thrived to the crystals carrying the power of Inno."					);

			Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
			Doc_PrintLine	( nDocID,  1, ""					);
			Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
			Doc_PrintLines	( nDocID,  1, "They are said to force the tongues of those who base their power on deception to tell the truth. The wearer of such a' tear crystal' only has to record the conversation with a deceptive person...");

			ErisKult_Page = 3;
		}
		else if (ErisKult_Page == 3)
		{
			Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
			Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLines	( nDocID,  0, "Chapter. 2: First steps of Eris sisters to influence their surroundings");
			Doc_PrintLine	( nDocID,  0, "");
			Doc_PrintLines	( nDocID,  0, "The Eris sisters usually begin to flatter her. They convey to him the feeling that he feels that it is extraordinary, stand out from his surroundings. In this way they make themselves weighed to him and his willingness...");

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
	name 					=	"almanac";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_4.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Contains the 1. mystery";
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
					Doc_PrintLines	( nDocID,  0, "The axe of doom is well secured and hidden. Only those who are pure in heart and solve the mystery will attain it. Now hear the first words:"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "The first book is hidden, well secured and guarded!");
					Doc_PrintLines	( nDocID,  0, "Only those who descend into the depths of the bloody cave will get it!");
					Doc_PrintLines	( nDocID,  0, "Only those who overcome the runners of the shadows will get it!");
					Doc_PrintLines	( nDocID,  0, "Only those who solve the puzzle will get it!");
					
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
	name 					=	"almanac";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_5.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Contains the 2. mystery";
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
					Doc_PrintLines	( nDocID,  0, "The first book is now secure and opens the next puzzle. Follow the Innos' path and enter the cave of the blue light! The second book awaits you there!"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

		if (Almanach_01_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_01_Gelesen = TRUE;

			B_LogEntry_More	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_FIVEKNIGHTS, "I solved the first puzzle and now I know the second one. I should be on my way right away.", "Drach is dead now and won't cause me any more trouble.");

			Wld_InsertNpc	(GardeBeliars_1990_Jorjo, "BIGFARM");
		};
};

var int Almanach_02_Gelesen;


INSTANCE ItWr_AxtAlmanach_02 (C_ITEM)
{
	name 					=	"almanac";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V3_6.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Contains the 3. mystery";
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
					Doc_PrintLines	( nDocID,  0, "The second book is safe and you are getting closer to your goal! But remember four more puzzles you have to solve to get the axe. Now listen! Go to the circle in the forest where the sun is shining and recover the next almanac!");
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

		if (Almanach_02_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_02_Gelesen = TRUE;

			B_LogEntry_More	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_FIVEKNIGHTS, "The second puzzle was no problem either. Now I shall go to the circle in the forest where the sun is shining.", "Also the second warrior named Jorjo is now history.");

			Wld_InsertNpc	(GardeBeliars_1991_Fantrek, "BIGFARM");
		};
};

var int Almanach_03_Gelesen;


INSTANCE ItWr_AxtAlmanach_03 (C_ITEM)
{
	name 					=	"almanac";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_1.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Contains the 4. mystery";
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
					Doc_PrintLines	( nDocID,  0, "You're halfway there! Now listen to the next puzzle!");
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Go where sand and water meet!"					);
					
					Doc_Show		( nDocID );

		if (Almanach_03_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_03_Gelesen = TRUE;

			B_LogEntry_More	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_FIVEKNIGHTS, "Where sand and water meet...", "Three down, three to go. Fantrek wasn't much of a challenge.");

			Wld_InsertNpc	(GardeBeliars_1992_Reinhold, "SEPCIAL_FOR_REINHOLD");
		};
};

var int Almanach_04_Gelesen;


INSTANCE ItWr_AxtAlmanach_04 (C_ITEM)
{
	name 					=	"almanac";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_2.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Contains the 5. mystery";
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
					Doc_PrintLines	( nDocID,  0, "Now listen to the next words:");
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Enter into the darkness in which ore was once explored. Defeat the dark servants and save the fifth book!"					);
					
					Doc_Show		( nDocID );

		if (Almanach_04_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_04_Gelesen = TRUE;

			B_LogEntry_More	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_FIVEKNIGHTS, "prospected ore.... sounds like a mine. Fortunately, there aren't that many of them on this island.", "Another warrior down. If I go on like this, they'll die out soon.");

			Wld_InsertNpc	(GardeBeliars_1993_Gunram, "SEPCIAL_FOR_GUNRAM");
		};
};

var int Almanach_05_Gelesen;


INSTANCE ItWr_AxtAlmanach_05 (C_ITEM)
{
	name 					=	"almanac";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_3.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Contains the 6. mystery";
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
					Doc_PrintLines	( nDocID,  0, "Now you're almost there!");
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Return to the first place and finish the search, Seeker!"					);
					
					Doc_Show		( nDocID );

		if (Almanach_05_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_05_Gelesen = TRUE;

			B_LogEntry_More	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_FIVEKNIGHTS, "I'm supposed to go back to the first place.", "Gunram is history. Now there's only one of the six warriors left.");

			Wld_InsertNpc	(GardeBeliars_1994_Frowin, "BIGFARM");

			Wld_InsertItem	(ItWr_AxtAlmanach_06, "FP_STAND_DRACH");
		};
};

var int Almanach_06_Gelesen;


INSTANCE ItWr_AxtAlmanach_06 (C_ITEM)
{
	name 					=	"almanac";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"NewBook_V1_4.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Contains the 7. mystery";
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
					Doc_PrintLines	( nDocID,  0, "You did it! You did it! Now listen carefully to these words:");
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Go to Inubis's final resting place and dig the grave. Defeat the Dark Guardians and take the axe and use it wisely!"					);
					
					Doc_Show		( nDocID );

		if (Almanach_06_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_06_Gelesen = TRUE;

			B_LogEntry_More	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_FIVEKNIGHTS, "The final resting place of Inubis? I wonder where that is. Anyway, I'll find the axe there if Frowin can't beat me to it.", "Frowin escaped. I need to find him fast.");
		};
};

INSTANCE ItWr_DarrionTagebuch (C_ITEM)
{
	name 					=	"Darrion's Diary";

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
					Doc_PrintLines	( nDocID,  0, "The time has come, the old sea-bear has finally turned his back on the sea. I've waited so long for this moment. I'm tired of water. Greg is to take over the troop, the old promise that tied me to the ship has finally been fulfilled.");
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "I made myself comfortable in the old tower near the bay. I've been living on this beach for so long, and yet this island is almost unknown to me. Still. At least I don't have to be afraid of the creatures that roam around here anymore, thanks to the many years at sea.");
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "There are many ancient temples on this island. In a big swamp I came across some reptile-like creatures. Fight like the devil and taste like lazy fish. I also found a strange plant that glows bright red at night. Maybe this thing is worth something.");
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Today I found an old book in a temple in which I found a picture of this plant. I couldn't read a word after I gave the immigrant I met a little bit of mouldy cheese, he translated the whole thing for me. Apparently, the leaves of this flower mixed in tobacco are an incredible drug. That sounds interesting."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "I planted the plant in the valley near Pirate's Cove, but it just doesn't want to do anything. Not even the saltpetre with which I fertilize her seems to be working. The hermit said in the book that this plant can only grow in deep swamps. But I can forget to slaughter myself every day through these beasts of a lizard. It is high time for me to leave this country anyway. I'll find another nice spot somewhere."					);
					
					Doc_Show		( nDocID );
};
//////////////////////////////////////////////////////////////////////////////
//
//	MAPS
//
//////////////////////////////////////////////////////////////////////////////

instance ItWr_Map_NewWorld (C_Item)
{
	name 		= "Land Map of Khorinis";  // 

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
	name 		= "Map of the ice rink";  // 

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
	name 		= "Map of the ice rink";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_Eisgebiet.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_Eisgebiet_Richard;

	description	= name;
	TEXT[0]		= "Richard's whereabouts are marked";
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
	name 		= "Map of the ice rink";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_Eisgebiet.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_Eisgebiet_Keith;

	description	= name;
	TEXT[0]		= "Keith's hut is marked";
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
	name 		= "Map of Tugettso";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_Tugettso_Tempel;

	description	= name;
	TEXT[0]		= "The temple is marked";
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
	name 		= "Land Map of Khorinis";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_LageplanOrks;

	description	= "Some points are marked";
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
		B_LogEntry	(TOPIC_MOD_GAROND_ORKLAGER, "There was a map in the two Orc scouts' camp. On it are marked some places. I should show this card to Garond.");
	};
};

instance ItWr_Map_NewWorld_City (C_Item)
{
	name 		= "City Map of Khorinis";  // 

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
	name 		= "Map of the Valley of Mines";

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
	name 		= "Land Map of Khorinis";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_HagenAL;

	description	= name;
	TEXT[0]		= "Lord Hagen drew the lines,";
	TEXT[1]		= "where convicts are said to be from the Mine Valley";
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
	name 		= "Map of the Valley of Mines";

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
	name 		= "Treasure map";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_NicksMap;

	description	= name;
	TEXT[0]		= "from Nick";
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
	name 		= "Treasure map";

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
	name 		= "Translated treasure map";

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
	name 					=	"Art of Fighting";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	5000;

	visual 					=	"NewBook_V1_6.3DS";  					
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Southern Defense Art";
	
	TEXT[2] 				=  "A book on the art of";
	TEXT[3] 				=  "one-handed fighting";
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
					Doc_PrintLines	( nDocID,  0, "Southern Defense Art"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "A southerner uses less physical strength than a northerner, instead relying on agility. In the hot climate of his home he prefers light armor which permits him to move more freely. The southerner has therefore developed a style of fighting that is fundamentally different from what we are used to. "					);
					
					

					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Probably the most famous maneuver a southerner uses is the one-armed block and backstep. The backstep enables the fighter to weaken the blow from his assailant's attack, at the same time taking up a superb stance from which to counterattack."	);
					Doc_PrintLine	( nDocID,  1, ""					);
					
					
					Doc_Show		( nDocID );
};
//---------------------------------------------------------------------------------------------------------------------------
//						Zweihandkampf
//---------------------------------------------------------------------------------------------------------------------------
INSTANCE ItWr_ZweihandBuch (C_ITEM)
{
	name 					=	"Fighting Tactics ";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	5000;

	visual 					=	"NewBook_V2_1.3DS";  					
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Double Blocks";
	
	TEXT[2] 				=  "A book on the art of";
	TEXT[3] 				=  "two-handed fighting";
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
					Doc_PrintLines	( nDocID,  0, "Double Blocks"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Blocking the enemy's blade with a two-handed weapon is a method used by strong fighters to stop the impetus of attacks and force their assailants to abruptly end their assault combinations. "					);
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, ""	);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The usually resulting halt of the opponent's movement is an opportunity to take the initiative and defeat the enemy with skilled strokes.    "	);
					
					Doc_Show		( nDocID );
};
