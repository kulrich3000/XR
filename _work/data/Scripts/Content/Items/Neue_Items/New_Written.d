var int Mod_Ritualplatz_Used;

INSTANCE ItWr_BookForFaris (C_ITEM)
{
	name 					=	"Old Book";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	5000;

	visual 					=	"NewBook_V1_5.3DS";  					
	material 				=	MAT_LEATHER;

	description				= 	"";
	
	TEXT[2] 				=  "An old book";
	TEXT[3] 				=  "It's magically locked";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

INSTANCE Mod_XardasBriefAnKarras (C_ITEM)
{
	name		=	"Xardas' Embassy";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_02.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_XardasBriefAnKarras_Versiegelt;
	scemeName	=	"MAPSEALED";
	description	=	name;
	TEXT[2]		=	"This message was carefully sealed.";
};
var int Use_XardasBriefAnKarras_OneTime;
FUNC VOID Use_XardasBriefAnKarras()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Dear Karras,"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "I actually did it. The magic we found in the book has saved the sleeper's life.");
		Doc_PrintLines	( nDocID, 0, "He lives and will bring you this message. Give him the book and send him to me with it. But don't forget to seal the book.");
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, "Xardas"		);
		Doc_Show	( nDocID );

	if (Use_XardasBriefAnKarras_OneTime	==	FALSE)
	{
		Use_XardasBriefAnKarras_OneTime	=	TRUE;
	};
};

FUNC VOID Use_XardasBriefAnKarras_Versiegelt()
{
	CreateInvItems	(self, Mod_XardasBriefAnKarras_Geoeffnet, 1);
	XardasBriefAnKarrasOpened	=	TRUE;
	Use_XardasBriefAnKarras();
};

INSTANCE ItWr_OleForAndre (C_ITEM)
{
	name		=	"Ole's letter to Lord Andre";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_02.3DS";
	material	=	MAT_LEATHER;
	description	=	name;
	TEXT[2]		=	"This message was carefully sealed.";
};

INSTANCE ItWr_NamibForBeliar (C_ITEM)
{
	name		=	"Namib's letter";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_02.3DS";
	material	=	MAT_LEATHER;
	description	=	name;
	TEXT[2]		=	"This message was carefully sealed.";
};

INSTANCE ItWr_GDG_Almanach (C_ITEM)
{
	name 					=	"Old Book";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	5000;

	visual 					=	"NewBook_V1_6.3DS";  					
	material 				=	MAT_LEATHER;

	description				= 	"";
	
	TEXT[2] 				=  "An old book";
	TEXT[3] 				=  "It's magically locked";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

INSTANCE ItWr_GDG_Almanach_Offen (C_ITEM)
{
	name 					=	"Old Book";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	5000;

	visual 					=	"NewBook_V1_6.3DS";  					
	material 				=	MAT_LEATHER;

	on_state[0]	=	Use_GDGAlmanach;
	scemeName	=	"MAP";

	description				= 	"";
	
	TEXT[2] 				=  "An old book";
	TEXT[3] 				=  "It's magically locked";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

FUNC VOID Use_GDGAlmanach()
{
	var int nDocID;

	if (Mod_Gilde == 3)
	{
		nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Improvement of armor"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "To improve the armor of a paladin you have to connect three white tiger skins and a paladin scaffolding to an anvil.");
		Doc_PrintLines	( nDocID, 0, "");
		Doc_PrintLines	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );
	}
	else if (Mod_Gilde == 5)
	{
		nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Improvement of armor"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "To further improve a dragon hunter's armor, you need to connect three silver troll skins and a heavy dragon hunter's armor to an anvil.");
		Doc_PrintLines	( nDocID, 0, "");
		Doc_PrintLines	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );
	}
	else if (Mod_Gilde == 8)
	{
		nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Improvement of a robe"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "To improve the robe of a religious priest you have to connect three white tiger skins and a religious priest robe at a rune table.");
		Doc_PrintLines	( nDocID, 0, "");
		Doc_PrintLines	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );
	}
	else if (Mod_Gilde == 11)
	{
		nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Improvement of a robe"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "In order to further improve the robe of a judge, you have to connect three water skins and a judge's robe to a rune table.");
		Doc_PrintLines	( nDocID, 0, "");
		Doc_PrintLines	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );
	}
	else if (Mod_Gilde == 14)
	{
		nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Improvement of a robe"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "To further enhance a demon summoner's robe, you need to connect three lindworm skins and a demon summoner robe to a rune table.");
		Doc_PrintLines	( nDocID, 0, "");
		Doc_PrintLines	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );
	}
	else if (Mod_Gilde == 16)
	{
		nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Improvement of armor"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "To further improve the armor of a demon knight, you need to connect three lindworm skins and a demon knight's armor to an anvil.");
		Doc_PrintLines	( nDocID, 0, "");
		Doc_PrintLines	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );
	}
	else if (Mod_Gilde == 18)
	{
		nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Improvement of armor"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "To further improve a keeper's armor, you need to connect three water skins and a guard's armor to an anvil.");
		Doc_PrintLines	( nDocID, 0, "");
		Doc_PrintLines	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );
	};

	Mod_Almanach_Geheimnis_Gelesen = 1;
};

INSTANCE ItWr_ZombieToHuman (C_ITEM)
{
	name 					=	"Old Book";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	500;

	visual 					=	"NewBook_V2_1.3DS";  					
	material 				=	MAT_LEATHER;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	on_state[0]	=	Use_ZombieToHuman;
	scemeName	=	"MAP";

	description				= 	"";
	
	TEXT[2] 				=  "Power of ancient warfare";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

var int ZombieToHuman;

FUNC VOID Use_ZombieToHuman()
{
	var int nDocID;

	
		nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite
		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "aura spells"	);
		Doc_PrintLine	( nDocID,  0, "---------");
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "Ancient traditions indicate an art of working magic, which was already able to equip entire armies with supernatural resilience and power by simple application. Some of the spells are said to have given resistance to magic, fire or weapons for a short period of time, accelerated and strengthened their movements many times over, or even given the power to provide the environment with fire and ice through their mere presence."					);
					
		//2.Seite
		Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Converting magical energy from artifact to carrier"					);
		Doc_PrintLine	( nDocID,  1, "---------");
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Another method of powerful warfare is said to have been in the transfer of magical energy from artifacts to their carriers. Swords and armour made of magical ore are said to have been coupled with runes, which gave the wearers incredible resistance and strength in battle. Thus, the simple phrase of the formula' atoic onectos' allowed all the wounds of the wearer to be closed if he wore a healing rune of weapon or armor.");
		Doc_Show		( nDocID );

	if (ZombieToHuman == FALSE)
	{
		CreateInvItems	(hero, ItWr_OTZauberformel, 1);

		B_LogEntry	(TOPIC_MOD_ANFANG, "That's interesting. Apparently, armour made of magical ore can be combined with a healing rune by saying a magic formula to give the wearer healing.");

		ZombieToHuman = TRUE;
	};

};

INSTANCE Mod_XardasBriefAnKarras_Geoeffnet (C_ITEM)
{
	name		=	"Xardas' Embassy (open)";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_XardasBriefAnKarras;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"Xardas' letter to Karras";
};

INSTANCE Mod_MattheusBotschaft (C_ITEM)
{
	name		=	"Message from Pyrokar";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION|ITEM_SHOW;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_MattheusBotschaft;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"Botschaft";
};

FUNC VOID Use_MattheusBotschaft()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Dear Paladin Hagen,"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "As you may know, Beliar's followers are still causing us a lot of headaches.");
		Doc_PrintLines	( nDocID, 0, "Our Holy Hammer has now been stolen from us. Also Gorax was stolen a shipment of wine and we lost further income.");
		Doc_PrintLines	( nDocID, 0, "I'll write you this letter to ask you to put some guards at my disposal."			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "Inno's archer you, Pyrokar");
		Doc_Show	( nDocID );
};

INSTANCE ItWr_CantharZettel_Valentino (C_ITEM)
{
	name		=	"chit";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_CantharZettel_Valentino;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"from the tent that Valentino was in";
};

var int Knows_CantharZettel_Valentino;

FUNC VOID Use_CantharZettel_Valentino()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLines	( nDocID, 0, "If you have him, take him to the house where Kuno used to live. There one of my students will' interrogate' him until I return. With Valentino you can do as you wish, as long as he can't open his mouth so far after that."			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "C.");
		Doc_Show	( nDocID );

	if (Knows_CantharZettel_Valentino == FALSE)
	{
		Knows_CantharZettel_Valentino = TRUE;

		B_LogEntry	(TOPIC_MOD_CANTHAR_GESCHAEFTE, "Canthar's followers found shelter in the former Kunos house near the Minental pass. I should smoke out the robber's nest.");

		Wld_InsertNpc	(Mod_7033_OUT_Allievo_NW, "TAVERNE");
	};
};

INSTANCE ItWr_TofuRezept (C_ITEM)
{
	name		=	"Recipe";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_TofuRezept;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"Recipe for To-Fu";
};

FUNC VOID Use_TofuRezept()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "To-Fu recipe"		);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLines	( nDocID, 0, "For normal portion you collect 30 pods of So-Ja plant. Take the beans out of the pods and put them briefly in water, then squeeze them all out. Pour salt into the squeezed juice, then squeeze in the So-Ja press. So you get To-Fu."			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_Show	( nDocID );
};

INSTANCE ItWr_SoerensPBrief (C_ITEM)
{
	name		=	"chit";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION|ITEM_SHOW;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_SoerensPBrief;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"from Sören";
};

var int Knows_SoerensPBrief;

FUNC VOID Use_SoerensPBrief()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLines	( nDocID, 0, "Now that Lorforn has failed miserably, I'm putting you on the map. Tugettso must go down. You'd better try and cuddle up to one of the chiefs. Make something up. If you enjoy their trust, try by all means to set them against each other. And try to get hold of a specimen of this rare medicinal plant that only grows there."			);
		Doc_PrintLines	( nDocID, 0, "Oh, if you find that pompous moron who broke Lorforn, get rid of him."		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_PrintLine	( nDocID, 0, "P.");
		Doc_Show	( nDocID );

	if (Mod_VMG_FaiceGifty_Gift == 7)
	{
		Mod_VMG_FaiceGifty_Gift = 8;

		B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "I had to cut Sören down and found out that he was responsible for this' P. just like Lorforn. I should tell Genn.");
	};
};

var int XardasLetterForHeroOT;

INSTANCE ItWr_XardasLetterForHeroOT (C_ITEM)
{
	name		=	"Message from Xardas";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_XardasLetterForHeroOT;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"Botschaft";
};

FUNC VOID Use_XardasLetterForHeroOT()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLines	( nDocID, 0, "The sleeper seems to be banished, but even after several days I still cannot feel any life under the rubble of this place. Therefore, I must assume that you have found death against all expectations and prophecies. In any case, I leave this teleport saying role here, which will take you safely to my tower, should my servants rescue you alive from the rubble. Since the teleport takes place over a relatively long distance, you should not carry too much ballast with you."			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "Xardas");
		Doc_Show	( nDocID );

	if (XardasLetterForHeroOT == FALSE)
	{
		B_LogEntry	(TOPIC_MOD_ANFANG, "Xardas left the temple after he had to assume my death. In any case, however, he left behind a teleport role that was supposed to transport me - with not too much luggage - to him.");

		XardasLetterForHeroOT = TRUE;
	};
};

INSTANCE ItWr_OTZauberformel (C_ITEM)
{
	name		=	"formula";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_OTZauberformel;
	scemeName	=	"MAPSEALED";
	description	=	name;
};

FUNC VOID Use_OTZauberformel()
{
	if (Npc_HasItems(hero, Erzrüstung) == 1)
	&& (Npc_HasItems(hero, ItRu_LightHeal) == 1)
	{
		Wld_PlayEffect("spellFX_LIGHTSTAR_RingRitual",  hero, hero, 0, 0, 0, FALSE );

		Npc_RemoveInvItems	(hero, ItWr_OTZauberformel, 1);

		AI_UnequipArmor	(hero);

		Npc_RemoveInvItems	(hero, Erzrüstung, 1);
		Npc_RemoveInvItems	(hero, ItRu_LightHeal, 1);

		B_SetHeroNormalStart();

		HeroIstKeinZombie = TRUE;

		B_LogEntry	(TOPIC_MOD_ANFANG, "It worked! I'm actually back among the living! However, the process has consumed so much magical energy in my decaying body that it has disintegrated armor and lost many of the things I carried with me.");

		B_InitMonsterAttitudes();

		HeroLook();

		B_RemoveNpc	(Monster_11055_Skelett_OT);
		B_RemoveNpc	(Monster_11056_Skelett_OT);

		Autosave_Counter = Mod_Autosave*600;
	} else {
		B_Say(hero, NULL, "$MISSINGITEM");
		CreateInvItems	(hero, ItWr_OTZauberformel, 1);
		if (Npc_HasItems(hero, ItRu_LightHeal) == 0) {
			Print ("Healer is missing.");
		} else {
			Print ("No ore armament.");
		};
	};
};

INSTANCE ItWr_HymirsLetterForHagen (C_ITEM)
{
	name		=	"Hymir's message";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_02.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_HymirsLetterForHagen;
	scemeName	=	"MAP";
	description	=	name;
};

FUNC VOID Use_HymirsLetterForHagen()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Dear Lord Hagen,"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "I managed to put the abandoned mine back into operation. The messenger who brings you this message was not uninvolved. He will provide pickaxes for us so that we can mine the ore. We'll get the ore into town as soon as possible.");
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, "Hymir"		);
		Doc_Show	( nDocID );
};

INSTANCE Mod_SamuelsGrogRezept (C_ITEM)
{
	name		=	"Note";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_SamuelsGrogRezept;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"";
};

FUNC VOID Use_SamuelsGrogRezept()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, ""	);
		Doc_PrintLine	( nDocID, 0, "From rum you have to brew it"			);
		Doc_PrintLine	( nDocID, 0, "and add sugar.");
		Doc_PrintLine	( nDocID, 0, "it is fired together with water");
		Doc_PrintLine	( nDocID, 0, "it's called Grog."			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );

	Mod_PCKenntGrogRezept = 1;
};

INSTANCE ItWr_AL_GebrandtDokumente (C_ITEM)
{
	name		=	"document";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_ItWr_AL_GebrandtDokumente;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"by Gebrandt";
};

FUNC VOID Use_ItWr_AL_GebrandtDokumente()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, ""	);
		Doc_PrintLine	( nDocID, 0, "Member list:"			);
		Doc_PrintLines	( nDocID, 0, "Gerbrandt, Valentino, Fernando, Cornelius");
		Doc_PrintLine	( nDocID, 0, "");
		Doc_PrintLine	( nDocID, 0, "Group records:"			);
		Doc_PrintLine	( nDocID, 0, "Diego has been removed"		);
		Doc_PrintLine	( nDocID, 0, "Morgahard has been removed");
		Doc_PrintLines	( nDocID, 0, "Leon had to be killed because he could have given too much information,");
		Doc_Show	( nDocID );
};

INSTANCE ItWr_Ritualplatz (C_ITEM)
{
	name		=	"Note";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_Ritualplatz;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"Contains the formula to open the ritual place";
};

FUNC VOID Use_Ritualplatz()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, ""	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, "Aperires Meo");
		Doc_PrintLine	( nDocID, 0, "");
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );

		if (Npc_GetDistToWP(hero, "WIL_LAGERER_22") < 300)
		&& (Mod_Ritualplatz_Used == FALSE)
		{
			Wld_SendTrigger	("RITUAL");

			Npc_RemoveInvItems	(hero, ItWr_Ritualplatz, 1);

			Mod_Ritualplatz_Used = TRUE;
		};
};

INSTANCE Mod_DiegosRaubListe (C_ITEM)
{
	name		=	"List of Diego";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_DiegosRaubListe;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"Liste von Diego";
};

FUNC VOID Use_DiegosRaubListe()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "The following items are to be procured:"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, "3 gold goblets");
		Doc_PrintLine	( nDocID, 0, "3000 gold coins");
		Doc_PrintLine	( nDocID, 0, "1 Ring of Skill"			);
		Doc_PrintLine	( nDocID, 0, "2 master swordsmen"		);
		Doc_Show	( nDocID );
};

INSTANCE Mod_BillsRumRezept (C_ITEM)
{
	name		=	"Note";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_BillsRumRezept;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"";
};

FUNC VOID Use_BillsRumRezept()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, ""	);
		Doc_PrintLines	( nDocID, 0, "It's important that you buy up all the molasses so the new guy doesn't get any more of this stuff. I don't want to go on this treasure hunt, because we almost got killed in the last one. You can make rum from the molasses if you want. Mix the molasses with water so that two bottles of water are added to one glass of molasses. Then heat the whole thing and let it cool again and you have your rum.");
		Doc_PrintLine	( nDocID, 0, "");
		Doc_PrintLine	( nDocID, 0, "Bill"			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );

	Mod_BillsRezeptGelesen = 1;
};

INSTANCE XardasLetterForSaturas (C_ITEM)
{
	name		=	"Xardas' Embassy";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_02.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_XardasLetterForSaturas_Versiegelt;
	scemeName	=	"MAPSEALED";
	description	=	name;
	TEXT[2]		=	"This message was carefully sealed.";
	TEXT[3]		=	"I am to deliver them to Saturnas.";
};
var int Use_XardasLetterForSaturas_OneTime;
FUNC VOID Use_XardasLetterForSaturas()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "An Saturas, the supreme water magician"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "I'll send you a messenger to tell you something important. I'm afraid there's a new threat. She'll be worse than the sleeper, and only my messenger can avert danger. You have to give him access to the portal.");
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, "Xardas"		);
		Doc_Show	( nDocID );

	if (Use_XardasLetterForSaturas_OneTime	==	FALSE)
	{
		Use_XardasLetterForSaturas_OneTime	=	TRUE;
	};
};

FUNC VOID Use_XardasLetterForSaturas_Versiegelt()
{
	CreateInvItems	(self, XardasLetterForSaturas_Geoeffnet, 1);
	XardasLetterForSaturasOpened	=	TRUE;
	Use_XardasLetterForSaturas();
};

INSTANCE XardasLetterForSaturas_Geoeffnet (C_ITEM)
{
	name		=	"Xardas' Embassy (open)";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_XardasLetterForSaturas;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"Xardas' letter to Saturas";
};

INSTANCE Mod_Sklavenliste_DMR (C_ITEM)
{
	name		=	"A list of names";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_Sklavenliste;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"Eine Liste mit Namen";
};

var int Sklavenliste_OneTime;

FUNC VOID Use_Sklavenliste()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "List of slaves:"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "Fred."	);
		Doc_PrintLines	( nDocID, 0, "Jorgen  (X)"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, "Elvrich ()"		);
		Doc_Show	( nDocID );

	if (Sklavenliste_OneTime	==	FALSE)
	{
		B_LogEntry	(TOPIC_MOD_VERMISSTE, "I found a list of names near Fred's cabin. Fred was the first one. It seems to be a list of those caught by the unknown. Next up is Elvrich. I should report to Vatra.");

		Sklavenliste_OneTime	=	TRUE;
	};
};

INSTANCE MatteoFlugblaetter (C_ITEM)
{
	name		=	"Matteos leaflet";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION|ITEM_MULTI;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_MatteoFlugblatt;
	scemeName	=	"MAP";
	description	=	name;
};

FUNC VOID Use_MatteoFlugblatt()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "You're hungry and you don't have much money."	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "Then go to Matteo, the best grocery retailer in town.");
		Doc_PrintLines	( nDocID, 0, "No matter what you need, milk or bread, at Matteo you can buy everything you need to survive.");
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, "Only available for a short time: Cheese"		);
		Doc_Show	( nDocID );
	
		if (Mod_AngebotMatteo	==	0)
		{
			Mod_AngebotMatteo	=	1;
		};
};

INSTANCE Mod_ConstantinosZutatenliste (C_ITEM)
{
	name		=	"Constantinos Ingredients List";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION|ITEM_MULTI;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_ConstantinosZutatenliste;
	scemeName	=	"MAPSEALED";
	description	=	name;
	TEXT[2]		=	"These ingredients are needed for a new drink";
};

FUNC VOID Use_ConstantinosZutatenliste()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA", 0);
		Doc_SetFont	( nDocID, -1, FONT_Book);
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1);
		Doc_PrintLine	( nDocID, 0, "Ingredients for the Drink of Power");
		Doc_PrintLine	( nDocID, 0, "--------------------------------------");
		Doc_PrintLine	( nDocID, 0, "");
		Doc_PrintLine	( nDocID, 0, "Strong minecrawler secretary (2x)");
		Doc_PrintLine	( nDocID, 0, "Twin mandrel (1x)");
		Doc_PrintLine	( nDocID, 0, "Marsh herb plant (4x)");
		Doc_PrintLine	( nDocID, 0, "Blood fly spine (1x)");
		Doc_Show	( nDocID );

	if (Mod_MinecrawlerEi	==	0)
	{
		Mod_MinecrawlerEi	=	1;

		B_LogEntry	(TOPIC_MOD_CONSTANTINOSZUTATEN, "Constantino needs: 2x strong minecrawler-secret, 1x twin spine, 4x swamp herb and 1x blood fly spine.");
	};
};

INSTANCE ItWr_ConstantinosZauberwasserliste (C_ITEM)
{
	name		=	"Constantino's Ingredients List";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION|ITEM_MULTI;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_ConstantinosZauberwasserliste;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"These ingredients are needed for magic water";
};

FUNC VOID Use_ConstantinosZauberwasserliste()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA", 0);
		Doc_SetFont	( nDocID, -1, FONT_Book);
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1);
		Doc_PrintLine	( nDocID, 0, "Ingredients for Magic Water");
		Doc_PrintLine	( nDocID, 0, "-----------------------------");
		Doc_PrintLine	( nDocID, 0, "");
		Doc_PrintLine	( nDocID, 0, "Water (10x)");
		Doc_PrintLine	( nDocID, 0, "Saltwater (2x)");
		Doc_PrintLine	( nDocID, 0, "Fire nettles (5x)");
		Doc_PrintLine	( nDocID, 0, "Medicinal plants (5x)");
		Doc_PrintLine	( nDocID, 0, "Blue Songs (3x)");
		Doc_PrintLine	( nDocID, 0, "knotweed (1x)");
		Doc_Show	( nDocID );
};

INSTANCE Mod_XardasZauberbuch (C_ITEM)
{
	name		=	"Old Book";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;
	
	visual		=	"NewBook_V2_2.3DS";
	material	=	MAT_LEATHER;

	description	=	name;
	TEXT[2]		=	"This book is very old.";
	TEXT[3]		=	"It seems magical.";
};

var int riddle1;
var int riddle2;
var int riddle3;
var int riddle4;
var int riddle5;
var int riddle6;

INSTANCE theriddle1(C_Item)
{	
	name 					=	"Old Book";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION|ITEM_SHOW;

	value 					=	50;

	visual 					=	"NewBook_V2_4.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "chromanin";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	Usetheriddle1;
};

	FUNC VOID Usetheriddle1()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
   					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "chromanin"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "He who is willing to renounce all earthly vices and walk on the paths of the righteous shall know where the source of my power lies hidden. May he use it to break the chains of this world and prove himself worthy to receive chromanin.");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "The sage begins at the place from which he left to search.");
					Doc_Show		( nDocID );
				
					if (riddle1 == FALSE)
					{
						Log_CreateTopic		(TOPIC_MOD_THERIDDLE,		LOG_MISSION);
						B_SetTopicStatus	(TOPIC_MOD_THERIDDLE,		LOG_RUNNING);
						B_LogEntry			(TOPIC_MOD_THERIDDLE,		"I took a very strange book from the skeleton magician in the Fog Tower. Chromanin! It seems to be a mystery that a mysterious stranger of the world has confronted:.... The sage begins at the place from which he left to search.... Mmmh! You think he means my place of departure? I should go to the mountain fortress sometime...."); 
						//Wld_InsertItem			(theriddle2,"FP_FELSENFESTUNG_CHROMANIN_BAND_2");
					
						riddle1 = TRUE;

						if (Mod_Import_Fremde)
						{
							B_Say (hero, NULL, "$KNOWSRIDDLER");
						};
					
					};
	};

INSTANCE theriddle2(C_Item)
{	
	name 					=	"Old Book";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION|ITEM_SHOW;

	value 					=	50;

	visual 					=	"NewBook_V2_4.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Chromanin 2";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	Usetheriddle2;
};

	FUNC VOID Usetheriddle2()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "chromanin"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Carried by the tides, Chromanin's visions of the future have opened my eyes. No price is high enough to give up believing in it. It moved me too much.");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Almost full of water and still air to breathe.");
					Doc_Show		( nDocID );
					
					if (riddle2 == FALSE)
					{					
						B_GivePlayerXP (300);
						B_LogEntry			(TOPIC_MOD_THERIDDLE,		"I found a second book called Chromanin. And once again, it's a mystery to me.... Almost full of water and still air to breathe......."); 
						Snd_Play 		("FoundRiddlersBook");
						Wld_InsertItem			(theriddle3,"FP_ALTESLAGERHOEHLE_CHROMANIN_BAND_3");
					
						riddle2  =  TRUE;
					
					};
	
	};
INSTANCE theriddle3(C_Item)
{	
	name 					=	"Old Book";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION|ITEM_SHOW;

	value 					=	50;

	visual 					=	"NewBook_V2_4.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Chromanin 3";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	Usetheriddle3;
};

	FUNC VOID Usetheriddle3()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
   					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "chromanin"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Oh, gods of the old days. Can it be that a human being, like me, who is just knitted and unworthy, may attain such a great legacy. The fear is great to lose everything through a small word of fluctuation.");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "A wise fisherman doesn't fish there.");
					Doc_Show		( nDocID );



					if (riddle3 == FALSE)
					{		
						B_GivePlayerXP (500);
						B_LogEntry			(TOPIC_MOD_THERIDDLE,		"I found the third book. I think I'm beginning to understand how this is going on.... A wise fisherman doesn't fish there...."); 
						Snd_Play 		("FoundRiddlersBook");

						if (hero.guild == GIL_MIL)
						{
							Mod_NL_UDS_Spawn = 1;
						}
						else
						{
							Wld_InsertItem			(theriddle4, "FP_SUMPF_CHROMANIN_BAND_4");
						};
						
						riddle3   =  TRUE;
					
					};
					
					
	};
				
				
INSTANCE theriddle4(C_Item)
{	
	name 					=	"Old Book";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION|ITEM_SHOW;

	value 					=	50;

	visual 					=	"NewBook_V2_4.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Chromanin 4";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	Usetheriddle4;
};

	FUNC VOID Usetheriddle4()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "chromanin"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "I don't dare to hope one day to experience chromanin for myself. Gone are the days of waste and sound. This is how easy it will be to achieve complete perfection. I'm not far from it.");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Forgotten are the deeds of those who were once on board.");
					Doc_Show		( nDocID );
					

					if (riddle4 == FALSE)
					{	
						if (CurrentLevel == MINENTAL_ZEN)
						{				
							B_GivePlayerXP (700);
							B_LogEntry			(TOPIC_MOD_THERIDDLE,		"Number four. I'm starting to wonder why I let this guy give me the runaround..... Forgotten are the deeds of those who were once on board..."); 
							Snd_Play 		("FoundRiddlersBook");					
							//Wld_InsertItem			(theriddle5,"FP_ITEM_THERIDDLE_05");

							Wld_InsertNpc	(Monster_11059_Kobold_MT,	"OW_PATH_201");
					
					
							riddle4 = TRUE;
						};
					
					};
					
					
					
	};
								
INSTANCE theriddle5(C_Item)
{	
	name 					=	"Old Book";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION|ITEM_SHOW;

	value 					=	50;

	visual 					=	"NewBook_V2_4.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Chromanin 5";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	Usetheriddle5;
};

	FUNC VOID Usetheriddle5()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "chromanin"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "But I should not go down this road alone. This honour may be granted to me. I must submit and share the power that resides in me with the worthy ones who will come to find me. Hopefully they'll come soon....");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Where your search began, you shall find me.");
					Doc_Show		( nDocID );




					if (riddle5 == FALSE)
					{
						B_GivePlayerXP (850);
						B_LogEntry			(TOPIC_MOD_THERIDDLE,		"This seems to be the last one. I am curious to know who I will face.... Where it all began, you shall find me... So I have to go back to the caves under the fog tower..."); 
						Snd_Play 		("FoundRiddlersBook");				
						Wld_InsertNpc				(Bau_989_Riddler,"");
						var C_NPC riddler; riddler = Hlp_GetNpc(Bau_989_Riddler);
						Npc_ChangeAttribute	(riddler, ATR_HITPOINTS, -riddler.attribute[ATR_HITPOINTS_MAX]);

						riddle5  =  TRUE;
					
					};
	};

INSTANCE theriddle6(C_Item)
{	
	name 					=	"Old Book";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION|ITEM_SHOW;

	value 					=	50;

	visual 					=	"NewBook_V2_4.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Chromanin 6";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	Usetheriddle6;
};

	FUNC VOID Usetheriddle6()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "chromanin"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "");
				
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_Show		( nDocID );

					if (riddle6 == FALSE)
					{
						B_GivePlayerXP (1000);
						B_LogEntry			(TOPIC_MOD_THERIDDLE,		"The mysterious stranger is dead. These demons killed him. Something seems to have connected him to these creatures of hell. Otherwise he wouldn't have returned to this godforsaken place. He took the secret he wanted to share with me to his grave."); 
						B_SetTopicStatus	(TOPIC_MOD_THERIDDLE,		LOG_SUCCESS);
						Snd_Play 		("FoundRiddler");
						
						if (!Hlp_IsValidNpc(Bau_989_Riddler)) {
							Wld_InsertNpc(Bau_989_Riddler, "PC_HERO");
						};
						AI_Teleport	(Bau_989_Riddler, "PC_HERO");
						Npc_ChangeAttribute	(Bau_989_Riddler, ATR_HITPOINTS, +Bau_989_Riddler.attribute[ATR_HITPOINTS_MAX]);
						Wld_PlayEffect("SFX_Circle",  Bau_989_Riddler, Bau_989_Riddler, 0, 0, 0, FALSE);

						riddle6 = TRUE;
					
					};
	};

INSTANCE TondralsBuch_01(C_Item)
{	
	name 					=	"The Shame of the Gods - Part I";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	50;

	visual 					=	"NewBook_V2_5.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= name;
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseTondralsBuch01;
};

	FUNC VOID UseTondralsBuch01()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
   					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "The shame of the gods"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Tell me, which gods are the gods who made us to die in war. How can Innos call himself the God of righteousness, when it is only important to him to destroy the followers of Beliar? What is Adano's equilibrium worth if it consists only in maintaining this eternal massacre and destroying the people who benefit?");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "What use does Beliar accomplish, which causes nothing but destruction and chaos and enchants itself with it. Who created the orcs that hunt and slaughter men? We are all just chess pieces for those beings who call themselves gods but are nothing more than sadistic warlords. Who take advantage of us to achieve their goals and to whom our lives are worthless. The desire to be worshipped by us, for them to take advantage of us like their characters.");
					Doc_Show		( nDocID );
	};

INSTANCE TondralsBuch_02(C_Item)
{	
	name 					=	"The Shame of the Gods - Part II";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	50;

	visual 					=	"NewBook_V2_6.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= name;
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseTondralsBuch02;
};

	FUNC VOID UseTondralsBuch02()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
   					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Who are the king, the magicians and the paladins? Nothing but puppets carrying out the will of their so-called gods. Those who take the right to rule over us in the name of those filthy warlords! Therefore I say fight against the gods, burn their temples, destroy their statues and kill their followers for a life that is not determined by the senseless war of Innos, Beliar and Adanos!");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "");
					Doc_Show		( nDocID );
	};

INSTANCE ItWr_HeiligeWaffen (C_Item)
{	
	name 					=	"Holy Weapons";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	50;

	visual 					=	"NewBook_V3_1.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= name;
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseItWr_HeiligeWaffen;
};

	FUNC VOID UseItWr_HeiligeWaffen()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
   					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Heilige Waffen"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Holy weapons come in different forms... blessed blade, magic or tincture. They are directed against demonic creatures and undead beings, which are directed by demonic magic.");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "In particular, it is the power of Inno that gives birth to these weapons. The blades of his warriors are often blessed and particularly effective against demons and undead alike, the magic they have been bestowed.... so the sacred arrow and more powerful spells. It is even said that even the mere rays of holy light can reduce the resistance of sinister beings...");
					Doc_Show		( nDocID );
	};

INSTANCE ItWr_Flueche (C_Item)
{	
	name 					=	"curses";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	50;

	visual 					=	"NewBook_V3_2.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= name;
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseItWr_Flueche;
};

	FUNC VOID UseItWr_Flueche()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
   					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Flüche"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Curses spring from the magic of the dark god and demonic beings. They can influence a single creature, or even whole groups of beings, and in the hands of a knowledgeable magician they can unfold great power.");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "There are reports of those who paralyze victims, deprive them of their vital energy or reduce their resistance. Usually in the form of magic sayings, lore also mentions swords whose blade can curse a stricken creature.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Undead creatures, however, even guided by dark magic, are no longer fully influenced by curses, while demonic creatures can even reduce any curse to a fraction of its effect.");
					Doc_Show		( nDocID );
	};
