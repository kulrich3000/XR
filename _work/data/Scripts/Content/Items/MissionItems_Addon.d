//****************************************************************************
//				Cavalorn's Brief an Vatras von Saturas
//			---------------------------------------------
//****************************************************************************
INSTANCE ItWr_SaturasFirstMessage_Addon_Sealed	(C_Item)
{
	name 				=	"Sealed Message";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_SaturasFirstMessage_Sealed;
	scemeName			=	"MAPSEALED";
	description			= 	name;
	TEXT[2]				=   "This message has been carefully sealed.";

};
var int Use_SaturasFirstMessage_OneTime;
func void Use_SaturasFirstMessage ()
{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  1 );                         
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 	); 
					Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   	);  
					Doc_PrintLine	( nDocID,  0, "Valuable Vatras,"					);
					Doc_PrintLines	( nDocID,  0, "We've reached the portal. You were right, though."					);
					Doc_PrintLines	( nDocID,  0, "It actually seems as if they were Adanos believers. I'm asking you to check that against my records."					);
					Doc_PrintLines	( nDocID,  0, "We haven't seen any of those strange creatures made of stone in days."					);
					Doc_PrintLines	( nDocID,  0, "Nevertheless, the earth is still trembling for undetectable reasons."					);
					Doc_PrintLines	( nDocID,  0, "I suspect that our studies will soon provide us with more information about this."					);
					Doc_PrintLines	( nDocID,  0, "The ornament that we have found has a far more important meaning than we first assumed. It seems to be an important key artifact. Unfortunately, this is not complete. We need to study it further."					);
					Doc_PrintLines	( nDocID,  0, "Send one of our children from the' Ring of Water' to bring it back to us. If you can, don't send Cavalorn."					);
					Doc_PrintLines	( nDocID,  0, "I instructed him to deliver this letter to you. I think he's done enough of that."					);
					Doc_PrintLines	( nDocID,  0, "I hope we're doing the right thing."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Saturas"					);
					Doc_Show		( nDocID );
		
		if (Use_SaturasFirstMessage_OneTime == FALSE)
		&& (MIS_Addon_Cavalorn_Letter2Vatras != LOG_SUCCESS)
		{
			Log_CreateTopic (TOPIC_Addon_KDW, LOG_MISSION);
			B_SetTopicStatus(TOPIC_Addon_KDW, LOG_RUNNING);
			B_LogEntry (TOPIC_Addon_KDW,"I took a message from a bandit that Cavalorn was to hand over to the water magician Vatras. Now it's my job."); 
			Use_SaturasFirstMessage_OneTime = TRUE;
		};

		if (SC_KnowsRanger == FALSE)
		{
			Log_CreateTopic (TOPIC_Addon_RingOfWater, LOG_MISSION);
			B_SetTopicStatus(TOPIC_Addon_RingOfWater, LOG_RUNNING);
			Log_AddEntry (TOPIC_Addon_RingOfWater,"There is a community called the' Ring of Water'. Water magicians seem to be the commanders of this community."); 
		};

		if (SC_IsRanger == FALSE)
		{
			Log_CreateTopic (TOPIC_Addon_RingOfWater, LOG_MISSION);
			B_SetTopicStatus(TOPIC_Addon_RingOfWater, LOG_RUNNING);
			Log_AddEntry (TOPIC_Addon_RingOfWater,"Cavalorn belongs to the' Ring of Water'."); 
		};
	
		SC_KnowsRanger = TRUE;
}; 
func void Use_SaturasFirstMessage_Sealed ()
{   
	CreateInvItems (self, ItWr_SaturasFirstMessage_Addon,1);
	SaturasFirstMessageOpened = TRUE;
	Use_SaturasFirstMessage ();
}; 

//****************************************************************************
//				Cavalorn's Brief an Vatras von Saturas
//				Das Siegel wurde geöffnet		
//			---------------------------------------------
//****************************************************************************
INSTANCE ItWr_SaturasFirstMessage_Addon	(C_Item)
{
	name 				=	"Opened Message";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_SaturasFirstMessage;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[2]				=   "Saturas' letter to Vatras";
};


//****************************************************************************
//				Portalschlüsselbruchstück
//			---------------------------------------------
//****************************************************************************

INSTANCE  ItMi_Ornament_Addon (C_ITEM)
{
	name 				=	"Ornament";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_PortalRing_05.3DS"; 
	material 			=	MAT_METAL;

	description			= 	name;

	TEXT	[0]			=	"Fragment of a large ornamental ring";

	INV_ZBIAS			= 	INVCAM_ENTF_MISC5_STANDARD;
};

INSTANCE  ItMi_Ornament_Priester (C_ITEM)
{
	name 				=	"Ornament";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItMi_PortalRing_05.3DS"; 
	material 			=	MAT_METAL;

	description			= 	name;

	TEXT	[0]			=	"Fragment of the Priest";

	INV_ZBIAS			= 	INVCAM_ENTF_MISC5_STANDARD;
};

INSTANCE  ItMi_Ornament_Heiler (C_ITEM)
{
	name 				=	"Ornament";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItMi_PortalRing_05.3DS"; 
	material 			=	MAT_METAL;

	description			= 	name;

	TEXT	[0]			=	"Fragment of the Healer";

	INV_ZBIAS			= 	INVCAM_ENTF_MISC5_STANDARD;
};

INSTANCE  ItMi_Ornament_Krieger (C_ITEM)
{
	name 				=	"Ornament";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItMi_PortalRing_05.3DS"; 
	material 			=	MAT_METAL;

	description			= 	name;

	TEXT	[0]			=	"Fragment of the Warrior";

	INV_ZBIAS			= 	INVCAM_ENTF_MISC5_STANDARD;
};

INSTANCE  ItMi_Ornament_Totenwaechter (C_ITEM)
{
	name 				=	"Ornament";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItMi_PortalRing_05.3DS"; 
	material 			=	MAT_METAL;

	description			= 	name;

	TEXT	[0]			=	"Fragment of the bodyguard";

	INV_ZBIAS			= 	INVCAM_ENTF_MISC5_STANDARD;
};

INSTANCE  ItMi_Ornament_Addon_Vatras (C_ITEM) //Joly:  gibt Vatras dem SC um ihn zu Lares zu bringen. Nur hiermit wird Saturas zufrieden gestellt -> erst dann Nefarius Auftrag!!!!!!!!!
{
	name 				=	"Ornament";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_PortalRing_05.3DS"; 
	material 			=	MAT_METAL;

	description			= 	name;

	TEXT	[0]			=	"Fragment of a large ornamental ring";

	INV_ZBIAS			= 	INVCAM_ENTF_MISC5_STANDARD;
};

//****************************************************************************
//				ItWr_Map_NewWorld_Ornaments_Addon
//			---------------------------------------------
//****************************************************************************


instance ItWr_Map_NewWorld_Ornaments_Addon (C_Item)
{
	name 		= "Nefarius' map";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_NewWorld_Ornaments;

	description	= name;
	TEXT[0]		= "on this map the places are marked";
	TEXT[1]		= "where Nefarius suspects the missing ornaments";
	TEXT[2]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_NewWorld_Ornaments()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_NewWorld_Ornaments_Addon);
		};

		SC_SAW_ORNAMENT_MAP = TRUE;

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_NewWorld_Ornaments.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

//****************************************************************************
//				ItWr_Map_NewWorld_Dexter
//			---------------------------------------------
//****************************************************************************

instance ItWr_Map_NewWorld_Dexter (C_Item)
{
	name 		= "Land Map of Khorinis";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 210;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_NewWorld_Dexter;

	description	= name;
	TEXT[0]		= "Skip marked the spot for me,";
	TEXT[1]		= "where I've got the head of the bandits";
	TEXT[2]		= "Dexter can find.";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_NewWorld_Dexter ()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_NewWorld_Dexter);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_NewWorld_Dexter.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};


//****************************************************************************
//				ItRi_Ranger_Addon
//			---------------------------------------------
//****************************************************************************

PROTOTYPE Rangerring_Prototype (C_ITEM)
{
	name 					=	"Aquamarine Ring";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING|ITEM_MISSION; //Joly:kein Multiitem. Die ringe sind individuell

	value 					=	Value_Ri_HpMana;

	visual 					=	"ItRi_Hp_Mana_01.3ds"; 

	visual_skin 			=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_ItRi_Ranger_Addon;
	on_unequip				=	UnEquip_ItRi_Ranger_Addon;

	description				= "Sign of the' Ring of Water'.";
	
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
		
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
	
};

FUNC VOID Equip_ItRi_Ranger_Addon()
{
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
		{
			if (ENTERED_ADDONWORLD == FALSE) //Joly:wegen Lance' Ring
			{
				if (Npc_HasItems (hero,ItRi_Ranger_Addon) == FALSE)
				{
					RangerRingIsLaresRing = TRUE;
				};
			};
			
			SCIsWearingRangerRing = TRUE;
			Print	(PRINT_Addon_SCIsWearingRangerRing);
		};
};

FUNC VOID UnEquip_ItRi_Ranger_Addon ()
{
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
		{
			if (SC_IsRanger == FALSE)
			{
				SCIsWearingRangerRing = FALSE;
			};
			RangerRingIsLaresRing = FALSE;
		};
};

//Lares Ring
INSTANCE ItRi_Ranger_Lares_Addon (Rangerring_Prototype)
{
	TEXT[1]					= "This ring belongs to Lares";
};

//PCs Ring
INSTANCE ItRi_Ranger_Addon (Rangerring_Prototype)
{
	TEXT[1]					= "This ring is mine";
};
//Lance Ring
INSTANCE ItRi_LanceRing (Rangerring_Prototype)
{
	TEXT[1]					= "This ring belongs to Lance.";
};



//****************************************************************************
//				ItMi_PortalRing_Addon
//			---------------------------------------------
//****************************************************************************

INSTANCE ItMi_PortalRing_Addon (C_Item)
{
	name 				=	"Ornamental ring";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_PortalRing_01.3DS"; 
	material 			=	MAT_STONE;

	description			= 	"This ring opens the portal";
	INV_ZBIAS			= 	INVCAM_ENTF_MISC3_STANDARD;
};

//**********************************************************************************
//	Empfehlungsschreiben für Andre, Miliz zu werden (von Martin)
//----------------------------------------------------------------------------------

INSTANCE ItWr_Martin_MilizEmpfehlung_Addon		(C_Item)
{
	name 				=	"Martin's letter of recommendation";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_MartinMilizEmpfehlung_Addon;
	scemeName			=	"MAP";
	description			=  	"Letter of recommendation for Lord Andre";
	
	TEXT[2]				= 	"this letter should help me with";
	TEXT[3]				= 	"of the militia.";

	
};
func void Use_MartinMilizEmpfehlung_Addon ()
{   
 
	var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  1);
					Doc_SetPage		(nDocID,  0, "letters.TGA", 0);
					Doc_SetFont		(nDocID, -1, FONT_Book);
					Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLines	(nDocID,  0, "Dear Lord Andre"								);
					Doc_PrintLines	(nDocID,  0, ""													);
					Doc_PrintLines	(nDocID,  0, "With this letter, I'm sending you a new recruit for our militia.");
					Doc_PrintLines	(nDocID,  0, "He has already made a name for himself with some difficult and professional services.");
					Doc_PrintLines	(nDocID,  0, "I am sure it is very well suited to protect the king and the well-being of the citizens of this city.");
					Doc_PrintLine	(nDocID,  0, "Innos bless the King."							);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, "     Supply Master Martin"						);
					Doc_Show		(nDocID);
		
};


//**********************************************************************************
//	Ravens Befehle an Dexter
//----------------------------------------------------------------------------------

INSTANCE ItWr_RavensKidnapperMission_Addon		(C_Item)
{
	name 				=	"Orders";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_RavensKidnapperMission_Addon;
	scemeName			=	"MAP";
	description			=  	name;
	
	TEXT[2]				= 	"I have this letter ";
	TEXT[3]				= 	"from the bandit Dexter.";

	
};
var int Use_RavensKidnapperMission_Addon_OneTime;
func void Use_RavensKidnapperMission_Addon ()
{   
 	if (Use_RavensKidnapperMission_Addon_OneTime == FALSE)
 	&& (MIS_Addon_Vatras_WhereAreMissingPeople != 0)
 	{
	 	Log_CreateTopic (TOPIC_Addon_WhoStolePeople, LOG_MISSION);
		B_SetTopicStatus(TOPIC_Addon_WhoStolePeople, LOG_RUNNING);
		B_LogEntry (TOPIC_Addon_WhoStolePeople,"Now I have it in writing. Raven, the former arch-baron is behind the kidnappings of the citizens of Khorinis. Raven has his hiding place somewhere behind the mountains in the mountains in the northeast of Khorinis. Vatras should take a look at this writing."); 
		Use_RavensKidnapperMission_Addon_OneTime = TRUE;
	};

 	SCKnowsMissingPeopleAreInAddonWorld = TRUE;

	var int nDocID;
		
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage		(nDocID,  0, "letters.TGA", 0);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLines	(nDocID,  0, "Dexter, you son of a bitch!");
				Doc_PrintLine	(nDocID,  0, ""														);
				Doc_PrintLines	(nDocID,  0, "When I was a baron, you weren't so unreliable.");
				Doc_PrintLines	(nDocID,  0, "If you don't manage to kidnap more citizens from the city and send them to me, we will soon have a real problem with the boys in our hiding place. ");
				Doc_PrintLines	(nDocID,  0, "I need more slaves here, or the boys will start another revolt. And I don't have to tell you what that means, do I?");
				Doc_PrintLines	(nDocID,  0, "I am about to enter the temple. I can't afford disturbances like this.");
				Doc_PrintLines	(nDocID,  0, "And another problem:"								);
				Doc_PrintLines	(nDocID,  0, "Sooner or later we have to find a way across the high mountains in the northeast of Khorinis. The pirates won't make the crossings for long if we don't pay them any more.");
				Doc_PrintLine	(nDocID,  0, ""														);
				Doc_PrintLine	(nDocID,  0, "     Raven"											);
				Doc_Show		(nDocID);
		
};

//**********************************************************************************
//	Empfehlungsschreiben für Pedro, ins Kloster eingelassen zu werden.
//----------------------------------------------------------------------------------

INSTANCE ItWr_Vatras_KDFEmpfehlung_Addon		(C_Item)
{
	name 				=	"Vatras' letter of recommendation";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_VatrasKDFEmpfehlung_Addon;
	scemeName			=	"MAP";
	description			=  	"Vatras Empfehlungsschreiben";
	
	TEXT[2]				= 	"this letter is supposed to help me without";
	TEXT[3]				= 	"Tribute to the Monastery of Fire Magicians";
	TEXT[4]				= 	"to be let in.";

	
};
func void Use_VatrasKDFEmpfehlung_Addon ()
{   
 
	var int nDocID;
		
			nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Brothers of Fire");
					Doc_PrintLines	( nDocID,  0, "");					
					Doc_PrintLines	( nDocID,  0, "I have just been told that it takes a tribute to be admitted to your lands.");
					Doc_PrintLines	( nDocID,  0, "With this letter I transmit a faithful man who wants to become a novice in your ranks."					);
					//Doc_PrintLine	( nDocID,  0, "Ich hoffe, dass ich nicht persönlich erscheinen muss ihm den Einlass ");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "     Vatras");
					Doc_Show		( nDocID );				
		
};

/******************************************************************************************/
INSTANCE ItMi_LostInnosStatue_Daron (C_Item)
{
	name 				=	"Valuable statue of Innos";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_InnosStatue;

	visual 				=	"ItMi_InnosStatue.3DS";
	material 			=	MAT_METAL ;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
};


//**********************************************************************************
//	Abschiedsbrief von Lucia an Elvrich
//----------------------------------------------------------------------------------

INSTANCE ItWr_LuciasLoveLetter_Addon		(C_Item)
{
	name 				=	"Lucia's farewell letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_LuciasLoveLetter_Addon;
	scemeName			=	"MAP";
	description			=  	name;
	
};
func void Use_LuciasLoveLetter_Addon ()
{   
 
	Log_CreateTopic (TOPIC_Addon_Lucia, LOG_MISSION);
	B_SetTopicStatus(TOPIC_Addon_Lucia, LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_Lucia,"Lucia wrote a suicide note to Elvrich. I'm sure he'll be interested."); 
	MIS_LuciasLetter = LOG_RUNNING;
	var int nDocID;
		
			nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Dearest Elvrich");
					Doc_PrintLines	( nDocID,  0, "");					
					Doc_PrintLines	( nDocID,  0, "I don't have the words to describe how sorry I am.");
					Doc_PrintLines	( nDocID,  0, "I know you won't understand, but I've come to the conclusion that it's better for both of us if you find yourself a more decent girl than me."					);
					Doc_PrintLines	( nDocID,  0, "From where I am going now, I will not return. Forget about me. A whore like me is nothing for an upright guy like you. Farewell. Goodbye.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "     Lucia");
					Doc_Show		( nDocID );				
};

//****************************************************************************
//				Effectitems
//			---------------------------------------------
//****************************************************************************

PROTOTYPE  EffectItemPrototype_Addon (C_Item)	
{
	name 				=	"Stone";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Coal;

	visual 				=	"ItMi_Coal.3ds";
	material 			=	MAT_STONE;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
	
	INV_ZBIAS			= INVCAM_ENTF_MISC_STANDARD;
	
};

INSTANCE ItMi_AmbossEffekt_Addon (EffectItemPrototype_Addon)
{
};
INSTANCE ItMi_OrnamentEffekt_FARM_Addon (EffectItemPrototype_Addon)
{
};
INSTANCE ItMi_OrnamentEffekt_FOREST_Addon (EffectItemPrototype_Addon)
{
};
INSTANCE ItMi_OrnamentEffekt_BIGFARM_Addon (EffectItemPrototype_Addon)
{
};
/******************************************************************************************/
// Hacke 
INSTANCE ItMi_Rake (C_Item)
{
	name 				=	"Pick";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Rake;

	visual 				=	"ItMi_Rake.3DS";
	material 			=	MAT_WOOD;

	scemeName			=	"RAKE";
	on_state[1]			= 	Use_Rake;
	description			= 	name;
	
	//TEXT[3]				=   "(Lässt sich bei geöffnetem Inventar benutzen)";
	//TEXT[4]				=   "('Aktionstaste' + 'Pfeil- Vorne' gedrückt halten)";
	
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
	
	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	//inv_rotx		= 180;
};
func void Use_Rake()
{
	//B_SCUsesRake (self); //Schatz ausgraben ist jetzt Mobsi mit itmw_2h_Axe_L_01
};

/******************************************************************************************/
INSTANCE ItRi_Addon_BanditTrader(C_Item)	//Händlergildenring
{
	name 					=	"Guild ring";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	5 ;

	visual 					=	"ItRi_Prot_Point_02.3ds";

	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				= 	"Engraved Ring";
	
	TEXT[2]					= 	"the Overseas Dealer Guild of Araxos";
	
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
		
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
};

//**********************************************************************************
//	ItWr_Addon_BanditTrader
//----------------------------------------------------------------------------------

INSTANCE ItWr_Addon_BanditTrader		(C_Item)
{
	name 				=	"Delivery";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_ItWr_Addon_BanditTrader;
	scemeName			=	"MAP";
	description			=  	name;
	
	TEXT[2]				= 	"I wrote this letter at";
	TEXT[3]				= 	"the bandits behind Sekob's yard.";

	
};
var int Use_ItWr_Addon_BanditTrader_OneTime;
func void Use_ItWr_Addon_BanditTrader ()
{   
 	BanditTrader_Lieferung_Gelesen = TRUE;
 	var int nDocID;
		
			nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "15 Short Swords");
					Doc_PrintLines	( nDocID,  0, "20 Epee"					);
					Doc_PrintLines	( nDocID,  0, "25 loaf of bread");
					Doc_PrintLines	( nDocID,  0, "15 bottles of wine"					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "That was the last time. "					);
					Doc_PrintLines	( nDocID,  0, "Things are getting too hot for me."					);
					Doc_PrintLines	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "     Fernando");
					Doc_Show		( nDocID );				
	
	if (MIS_Vatras_FindTheBanditTrader != 0)
	&& (Use_ItWr_Addon_BanditTrader_OneTime == FALSE)
	{
		B_LogEntry (TOPIC_Addon_BanditTrader,"I found a paper that can prove that Fernando is the arms dealer I'm looking for."); 
		Use_ItWr_Addon_BanditTrader_OneTime = TRUE;
	};
};

//****************************************************************************
//				Vatras schickt SC zu Saturas
//			---------------------------------------------
//****************************************************************************
INSTANCE ItWr_Vatras2Saturas_FindRaven	(C_Item)
{
	name 				=	"Message";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Vatras2Saturas_FindRaven_Sealed;
	scemeName			=	"MAPSEALED";
	description			= 	name;
	TEXT[2]				=   "Vatras Writing for Saturas";

};
func void Use_Vatras2Saturas_FindRaven ()
{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  1 );                         
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 	); 
					Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   	);  
					Doc_PrintLine	( nDocID,  0, "Valuable Saturas"					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "I hope you'll reach your destination soon. Our situation here in the city seems to be relaxing at the moment. But I'm afraid silence is deceiving. You guys better hurry up. I need you here."					);
					Doc_PrintLines	( nDocID,  0, "I've studied your notes and can confirm your suspicion. The characters actually point to a culture that believes in Adanos. Be careful not to be blinded by false prophets."					);
					Doc_PrintLines	( nDocID,  0, "The missing citizens of Khorinis were kidnapped by the former arch-baron Raven to the region where the portal will obviously lead."					);
					Doc_PrintLines	( nDocID,  0, "One more thing: I sent you guys some help. The messenger of this message is something very special. He has such a remarkable brilliance in his eyes. I'm not sure, but it could be HE, even if we imagined it differently."					);
					Doc_PrintLines	( nDocID,  0, "Check him out. I think I'm right."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "     Vatras"					);
					Doc_Show		( nDocID );
		
}; 

func void Use_Vatras2Saturas_FindRaven_Sealed ()
{   
	CreateInvItems (self, ItWr_Vatras2Saturas_FindRaven_opened,1);
	Vatras2Saturas_FindRaven_Open = TRUE;
	Use_Vatras2Saturas_FindRaven ();
}; 
INSTANCE ItWr_Vatras2Saturas_FindRaven_opened	(C_Item)
{
	name 				=	"Opened Message";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Vatras2Saturas_FindRaven;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[2]				=   "Vatras Writing for Saturas";
};

//------------------------------------------------------------------------------------------
// Amulett des suchenden Irrlichts
//------------------------------------------------------------------------------------------
	INSTANCE  ItAm_Addon_WispDetector (C_Item)  
{
	name 			=	"Ore amulet";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_DexStrg;

	visual 			=	"ItAm_Mana_01.3ds";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_WEAKGLIMMER_BLUE"; 

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_WispDetector;
	on_unequip		=	UnEquip_WispDetector;

	description		=  "Arch amulet of the searching Night Wisp";

	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	
};
	var int Equip_WispDetector_OneTime;

	FUNC VOID Equip_WispDetector()
	{
			if (Equip_WispDetector_OneTime == FALSE)
			{
				PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NF] = TRUE; //das erste Talent gibt's gratis
				WispSearching = WispSearch_NF;
				Equip_WispDetector_OneTime = TRUE;
			};
			
			var C_NPC DetWsp;
			DetWsp = Hlp_GetNpc (Wisp_Detector);
			AI_Teleport (DetWsp, "TOT");
			Wld_SpawnNpcRange	(self,	Wisp_Detector,	1,	500);
 			Wld_PlayEffect("spellFX_LIGHTSTAR_WHITE",  Wisp_Detector, Wisp_Detector, 0, 0, 0, FALSE );
			Snd_Play ("MFX_Transform_Cast");
			//Wld_PlayEffect("spellFX_SummonCreature_ORIGIN",  hero, hero, 0, 0, 0, FALSE );

			if (Mod_AlvarKristall == 2)
			{
				Mod_AlvarKristall = 3;

				Wld_PlayEffect("spellFX_LIGHTSTAR_WHITE",  hero, hero, 0, 0, 0, FALSE );
				Wld_PlayEffect("spellFX_LIGHTSTAR_WHITE",  Mod_7559_OUT_Serra_EIS, Mod_7559_OUT_Serra_EIS, 0, 0, 0, FALSE );
			};
	};


	FUNC VOID UnEquip_WispDetector()
	{
			
			var C_NPC DetWsp;
			DetWsp = Hlp_GetNpc (Wisp_Detector);

			if (Npc_IsDead(DetWsp) == FALSE)
			{
				Snd_Play ("WSP_Dead_A1");
			};

			AI_Teleport (DetWsp, "TOT");
			B_RemoveNpc (DetWsp);
			AI_Teleport (DetWsp, "TOT");
	};

//Alligatorfleisch
	
INSTANCE ItFo_Addon_Krokofleisch_Mission (C_Item)
{	
	name 				=	"Swamprat meat";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;
	
	value 				=	Value_RawMeat;
	
	visual 				=	"ItFoMuttonRaw.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"MEAT";
	
	description			= 	name;
	TEXT[1]				=	"Smells kind of fishy!";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	Value_RawMeat;

};

INSTANCE ItRi_Addon_MorgansRing_Mission (C_Item)
{	
	name 				=	"Morgan's ring";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING|ITEM_MISSION;
	
	value 				=	500;
	
	visual 				=	"ItRi_Prot_Total_02.3DS";
	material 			=	MAT_METAL;
	
	on_equip				=  	Equip_MorgansRing;
	on_unequip				= 	UnEquip_MorgansRing;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= name;
	
	
	TEXT[1]			= "The ring is decorated with fine runes.";
	TEXT[2]			= NAME_ADDON_BONUS_1H;
	COUNT[2]		= 10;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
		
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;

};

FUNC VOID Equip_MorgansRing()
{
	B_AddFightSkill (self, NPC_TALENT_1H, 10);
};

FUNC VOID UnEquip_MorgansRing()
{
	B_AddFightSkill (self, NPC_TALENT_1H, -10);
};


INSTANCE ItMi_Focus (C_Item)
{
	name 				=	"Focus stone";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;

};

INSTANCE ItMi_Focus_Pat (C_Item)
{
	name 				=	"Focus stone";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;

};

INSTANCE ItMi_Focus_Pat_01 (C_Item)
{
	name 				=	"Focus stone";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;
};

INSTANCE ItMi_Focus_Pat_02 (C_Item)
{
	name 				=	"Focus stone";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;
};

INSTANCE ItMi_Focus_Pat_03 (C_Item)
{
	name 				=	"Focus stone";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;
};

INSTANCE ItMi_Focus_Pat_04 (C_Item)
{
	name 				=	"Focus stone";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;
};

INSTANCE ItMi_Focus_Pat_05 (C_Item)
{
	name 				=	"Focus stone";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;
};

INSTANCE ItMi_Focus_Troll (C_Item)
{
	name 				=	"Focus from the Troll Canyon";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;

};

INSTANCE ItMi_Focus_Bergfestung (C_Item)
{
	name 				=	"Focus from the Mountain Fort";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;

};

INSTANCE ItMi_Focus_Kloster (C_Item)
{
	name 				=	"Focus from the Ruined Monastery";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;

};

INSTANCE ItMi_Focus_Stonehenge (C_Item)
{
	name 				=	"Focus under the Stonehenge";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;

};

INSTANCE ItMi_Focus_Meer (C_Item)
{
	name 				=	"Focus from the Ocean Cliff";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;

};

INSTANCE ItMi_Focus_Fake (C_Item)
{
	name 				=	"Focus of the sea cliff (faking)";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;

};

INSTANCE ItMi_Focus_Moor (C_Item)
{
	name 				=	"focus";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;

};
//---------------------------------------------------------------------------
//				Stahl Paket für Huno
//---------------------------------------------------------------------------
INSTANCE ItMi_Addon_Steel_Paket(C_Item)
{
	name 				=	"Steel package";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	300;

	visual 				=	"ItMi_Packet.3ds";
	
	material 			=	 MAT_LEATHER;
	
	description			= 	name;
	TEXT[2]				= 	"This package is REALLY difficult";
	TEXT[3]				=	"It contains a thick lump of steel";
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	value;

};

//------------------------------------------------------------------------------------------
// 	ItWr_StonePlateCommon_Addon
//------------------------------------------------------------------------------------------
instance ItWr_StonePlateCommon_Addon (C_Item)
{
	name 				=	"Old stone tablet";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	value_StonePlateCommon;

	visual 				=	"ItMi_StonePlate_Read_06.3ds"; 
	
	material 			=	 MAT_LEATHER;
	on_state[0]			=    Use_StonePlateCommon;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	description			= 	name;
	TEXT[2]				= 	"A grey stone tablet";
	TEXT[3]				=	"";
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	value_StonePlateCommon;
};
//---------------------------------------------------------------------------
func void Use_StonePlateCommon ()
{
	var int nDocID;
		
	
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		nDocID = 	Doc_Create();								//DocManager 
		Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
		Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_03.TGA"  , 0 	); 
		Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
		Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "The caste of warriors had conjured up the wrath of our God.");	
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "RHADEMES, the successor of QUAHODRON, was banned. But his evil power still reached us even from the place of his exile.");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "We were powerless against it.");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "ADANOS Zorn has met JHARKENDAR!");	
	}
	else //Spieler beherrscht Sprache nicht
	{
		nDocID = 	Doc_Create();								//DocManager 
		Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
		Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_02.TGA"  , 0 	); 
		/*
		Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
		Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "Oksefd nodnf Kwe. Erfjkemvfj Hwoqmnyhan ckh Sebnejbuwd Weinfiwjf Ihwqpjrnn.");	
		Doc_PrintLine	( nDocID,  0, "");	
		Doc_PrintLines	( nDocID,  0, "RHADEMES revfnbrebuiwe QUAHODRON ewohjfribwe wef Gkjsdhad smoelk. Ihdh Znshen Fjewheege Egdgsmkd Ygc slje smoelkor.");
		Doc_PrintLine	( nDocID,  0, "");	
		Doc_PrintLines	( nDocID,  0, "Esfjwedbwe ewzbfujbwe Iuhdfb");	
		Doc_PrintLine	( nDocID,  0, "");	
		Doc_PrintLines	( nDocID,  0, "ADANOS Ygc Egdgsmkd JHARKENDAR!");	
		*/
		B_Say (self, self, "$CANTREADTHIS");	
	};
		
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};

instance ItWr_StonePlate_Ritualinsel01 (C_Item)
{
	name 				=	"Old stone tablet";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	value_StonePlateCommon;

	visual 				=	"ItMi_StonePlate_Read_06.3ds"; 
	
	material 			=	 MAT_LEATHER;
	on_state[0]			=    Use_StonePlate_Ritualinsel01;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	description			= 	name;
	TEXT[2]				= 	"Contains the description of a location";
	TEXT[3]				=	"";
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	value_StonePlateCommon;
};

func void Use_StonePlate_Ritualinsel01 ()
{
	var int nDocID;
		
	
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		nDocID = 	Doc_Create();								//DocManager 
		Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
		Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_03.TGA"  , 0 	); 
		Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
		Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "... we buried Trimedron on the highest spot of the island. There he shall watch over the holy place for aeons... until one day the island disappears into the depths of the ocean. Every intruder gets to feel the wrath of the guard. (weathered) However, every friend knows that he has the following words for him... (weathered)");
	}
	else //Spieler beherrscht Sprache nicht
	{
		nDocID = 	Doc_Create();								//DocManager 
		Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
		Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_02.TGA"  , 0 	); 
		B_Say (self, self, "$CANTREADTHIS");	
	};
		
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );

	if (Mod_GDG_RitualTafel01 == 0)
	{
		Mod_GDG_RitualTafel01 = 1;

		B_LogEntry	(TOPIC_MOD_URIZIEL, "I see, the text refers to a holy place. It is said to be on the highest point of the island, where it is guarded by a ghost who is supposed to attack any intruder. The text wants to go into some specific words, which one must address to him, but is then unfortunately weathered.");
	};
};

instance ItWr_StonePlate_Ritualinsel02 (C_Item)
{
	name 				=	"Old stone tablet";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	value_StonePlateCommon;

	visual 				=	"ItMi_StonePlate_Read_06.3ds"; 
	
	material 			=	 MAT_LEATHER;
	on_state[0]			=    Use_StonePlate_Ritualinsel02;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	description			= 	name;
	TEXT[2]				= 	"Contains a formula";
	TEXT[3]				=	"";
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	value_StonePlateCommon;
};

func void Use_StonePlate_Ritualinsel02 ()
{
	var int nDocID;
		
	
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		nDocID = 	Doc_Create();								//DocManager 
		Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
		Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_03.TGA"  , 0 	); 
		Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
		Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "If the priest wants to appease the Spirit and win his hearing, he must pronounce the words' pod audmeu athuk'. Once this is done, he can approach the Guardian's spirit and express his concern without hesitation.");
	}
	else //Spieler beherrscht Sprache nicht
	{
		nDocID = 	Doc_Create();								//DocManager 
		Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
		Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_02.TGA"  , 0 	); 
		B_Say (self, self, "$CANTREADTHIS");	
	};
		
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );

	if (Mod_GDG_RitualTafel02 == 0)
	{
		Mod_GDG_RitualTafel02 = 1;

		B_LogEntry	(TOPIC_MOD_URIZIEL, "Pod audmeu athuk. With these words I could start a conversation with the Spirit and finally learn how to proceed.");
	};
};

//------------------------------------------------------------------------------------------
// 	ItWr_StonePlateCommon_Addon
//------------------------------------------------------------------------------------------
instance ItMi_SteinkreisTafel (C_Item)
{
	name 				=	"Old stone tablet";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	value_StonePlateCommon;

	visual 				=	"ItMi_StonePlate_Read_06.3ds"; 
	
	material 			=	 MAT_LEATHER;
	on_state[0]			=    Use_SteinkreisTafel;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	description			= 	name;
	TEXT[2]				= 	"Has a magical aura";
	TEXT[3]				=	"Can only be used in stone circles";
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	value_StonePlateCommon;
};
//---------------------------------------------------------------------------
func void Use_SteinkreisTafel ()
{
	if (Npc_GetDistToWP(hero, "WP_STEINKREIS_01") < 500)
	|| (Npc_GetDistToWP(hero, "WP_STEINKREIS_02") < 500)
	|| (Npc_GetDistToWP(hero, "WP_STEINKREIS_03") < 500)
	|| (Npc_GetDistToWP(hero, "WP_STEINKREIS_04") < 500)
	|| (Npc_GetDistToWP(hero, "WP_STEINKREIS_05") < 500)
	|| (Npc_GetDistToWP(hero, "WP_STEINKREIS_06") < 500)
	|| (Npc_GetDistToWP(hero, "WP_STEINKREIS_07") < 500)
	|| (Npc_GetDistToWP(hero, "WP_STEINKREIS_08") < 500)
	|| (Npc_GetDistToWP(hero, "OLDWORLDBERGE_50") < 500)
	|| (Npc_GetDistToWP(hero, "EIS_01") < 800)
	{
		if (Mod_TeleportSteinkreis_Funzt == 0)
		{
			Mod_TeleportSteinkreis_Funzt = 1;

			AI_Teleport	(hero, "WP_TO_EIS");
		}
		else
		{
			var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
			if  (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
			{	
				PLAYER_MOBSI_PRODUCTION	=	MOBSI_TeleportSteinkreisTafel;
				Ai_ProcessInfos (her);
			};
		};
	}
	else
	{
		Print	("You can't do that here!");
	};
};

instance ItWr_VerwitterteSteintafel (C_Item)
{
	name 				=	"Weathered stone tablet";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	value_StonePlateCommon;

	visual 				=	"ItMi_StonePlate_Read_06.3ds"; 
	
	material 			=	 MAT_LEATHER;
	on_state[0]			=    Use_VerwitterteSteintafel;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	description			= 	name;
	TEXT[3]				=	"";
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	value_StonePlateCommon;
};

var int Mod_VerwitterteSteintafel;

func void Use_VerwitterteSteintafel ()
{
	var int nDocID;
		
	
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		nDocID = 	Doc_Create();								//DocManager 
		Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
		Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_03.TGA"  , 0 	); 
		Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
		Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "(weathered, weathered) Sheep... (weathered, weathered, weathered) mighty magician and warrior (weathered) enemy (weathered, weathered, weathered) everything destroyed, killed (weathered, weathered)  almost no one (weathered), except me (weathered, weathered)");	

		if (Mod_VerwitterteSteintafel == FALSE)
		{
			Mod_VerwitterteSteintafel = TRUE;

			B_GivePlayerXP	(150);
		};
	}
	else
	{
		nDocID = 	Doc_Create();								//DocManager 
		Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
		Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_02.TGA"  , 0 	); 
		/*
		Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
		Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "Oksefd nodnf Kwe. Erfjkemvfj Hwoqmnyhan ckh Sebnejbuwd Weinfiwjf Ihwqpjrnn.");	
		Doc_PrintLine	( nDocID,  0, "");	
		Doc_PrintLines	( nDocID,  0, "RHADEMES revfnbrebuiwe QUAHODRON ewohjfribwe wef Gkjsdhad smoelk. Ihdh Znshen Fjewheege Egdgsmkd Ygc slje smoelkor.");
		Doc_PrintLine	( nDocID,  0, "");	
		Doc_PrintLines	( nDocID,  0, "Esfjwedbwe ewzbfujbwe Iuhdfb");	
		Doc_PrintLine	( nDocID,  0, "");	
		Doc_PrintLines	( nDocID,  0, "ADANOS Ygc Egdgsmkd JHARKENDAR!");	
		*/
		B_Say (self, self, "$CANTREADTHIS");	
	};
		
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};

instance ItWr_BotschekTafel (C_Item)
{
	name 				=	"Bochek's magic stone plaque";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	value_StonePlateCommon;

	visual 				=	"ItMi_StonePlate_Read_06.3ds"; 
	
	material 			=	 MAT_LEATHER;
	on_state[0]			=    Use_BotschekTafel;
	scemeName			=	"MAPSEALED";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	description			= 	name;
	TEXT[3]				=	"";
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	value_StonePlateCommon;
};

func void Use_BotschekTafel ()
{
	B_GivePlayerXP	(200);

	hero.protection[PROT_EDGE] += 10000;
	hero.protection[PROT_BLUNT] += 10000;
	hero.protection[PROT_POINT] += 10000;
	hero.protection[PROT_FIRE] += 10;
	hero.protection[PROT_MAGIC] += 10;

	if (Gift < 3)
	{
		Gift += 1;
	};
	if (Krankheit < 4)
	{
		Krankheit += 1;
	};
};
//---------------------------------------------------------------------------
//				Die 5 Steintafeln  
//---------------------------------------------------------------------------

INSTANCE ItMi_Addon_Stone_01(C_Item) //Esteban und Thorus  //Joly:Die Banditen benutzen diese Steintafeln als Zahlungsmittel.
{
	name 				=	"Red stone tablet";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_StonePlate_Read_03.3ds"; 
	
	material 			=	 MAT_STONE;
	on_state[0]			=    Use_Addon_Stone_01;
	scemeName			=	"MAP";

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	
	description			= 	name;
	TEXT[2]				= 	"A red stone board";
	TEXT[3]				=	"";
};
//---------------------------------------------------------------------------
FUNC VOID Use_Addon_Stone_01()
{
	var int nDocID;
		
	nDocID = 	Doc_Create();								//DocManager 
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Adanos_Stoneplate_02.TGA"  , 0 	); 
	Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
	Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
	Doc_PrintLine	( nDocID,  0, "");
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		Doc_PrintLines	( nDocID,  0, "We, the last three leaders of the Council of the Five, have set traps in the chambers of the temple and hidden the entrance that the sword never saw again.");
	}
	else
	{
		Doc_PrintLines	( nDocID,  0, "Erfjkemvfj Hwoqmnyhan ckh. Ygc slje asdkjhnead Gkjsdhad Uhndter rygilliambwe ewzbfujbwe Iuhdfb. Revfnbrebuiwe ewohjfribwe wef. Sebnejbuwd Weinfiwjf Ihwqpjrnn.");
		B_Say (self, self, "$CANTREADTHIS");
	};
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};
//---------------------------------------------------------------------------
//		Steintafel 5		
//---------------------------------------------------------------------------
INSTANCE ItMi_Addon_Stone_05(C_Item) //Valley - Totenwächter
{
	name 				=	"Yellow stone tablet"; 

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_StonePlate_Read_04.3ds"; 
	
	material 			=	 MAT_STONE;
	on_state[0]			=    Use_Addon_Stone_05;
	scemeName			=	"MAP";

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	description			= 	name;
	TEXT[2]				= 	"A yellow stone board";
	TEXT[3]				=	"";
};
//---------------------------------------------------------------------------
FUNC VOID Use_Addon_Stone_05()
{
	var int nDocID;
		
	nDocID = 	Doc_Create();								//DocManager 
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Adanos_Stoneplate_01.TGA"  , 0 	); 
	Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
	Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
	Doc_PrintLine	( nDocID,  0, "");
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		Doc_PrintLines	( nDocID,  0, "I, who had opposed the decision of the three, built the first trap. And only I know the right gate.");
	}
	else
	{
		Doc_PrintLines	( nDocID,  0, "Egdgsmkd Ygc slje asdkjhnead Gkjsdhad Uhnd Esfjwedbwe ewzbfujbwe Iuhdfb. Sebnejbuwd Weinfiwjf Ihwqpjrnn. Erfjkemvfj Hwoqmnyhan ckh.");
		B_Say (self, self, "$CANTREADTHIS");
	};
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};
//---------------------------------------------------------------------------
//		Steintafel 3		
//---------------------------------------------------------------------------
INSTANCE ItMi_Addon_Stone_03(C_Item) //Valley - Priester
{
	name 				=	"Blue stone tablet";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_StonePlate_Read_05.3ds"; 
	
	material 			=	 MAT_STONE;
	on_state[0]			=    Use_Addon_Stone_03;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";
	
	description			= 	name;
	TEXT[2]				= 	"A blue stone tablet";
	TEXT[3]				=	"";
};
//---------------------------------------------------------------------------
FUNC VOID Use_Addon_Stone_03()
{
	var int nDocID;
		
	nDocID = 	Doc_Create();								//DocManager 
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Adanos_Stoneplate_03.TGA"  , 0 	); 
	Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
	Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
	Doc_PrintLine	( nDocID,  0, "");
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		Doc_PrintLines	( nDocID,  0, "KHARDIMON invented the second trap. And only those who walk the path of light to the end will reach the third chamber.");
	}
	else
	{
		Doc_PrintLines	( nDocID,  0, "KHARDIMON Weinfiwjf Ihwqpjrnn. Erfjkemvfj Hwoqmnyhan ckh. Gkjsdhad Uhnd Esfjwedbwe ewzbfujbwe.");
		B_Say (self, self, "$CANTREADTHIS");
	};
	Doc_PrintLine	( nDocID,  0, "");
	Doc_PrintLines	( nDocID,  0, "");
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};
//---------------------------------------------------------------------------
//		Steintafel 4		
//---------------------------------------------------------------------------
INSTANCE ItMi_Addon_Stone_04(C_Item)  //DAS DING AUS DEM SENAT /SUMPF  //Joly: Haus der Heiler
{
	name 				=	"Green stone tablet"; 

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_StonePlate_Read_01.3ds"; 
	
	material 			=	 MAT_STONE;
	on_state[0]			=    Use_Addon_Stone_04;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";
	
	description			= 	name;
	TEXT[2]				= 	"A green stone tablet";
	TEXT[3]				=	"";
};
//---------------------------------------------------------------------------
FUNC VOID Use_Addon_Stone_04()
{
	var int nDocID;
		
	nDocID = 	Doc_Create();								//DocManager 
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Adanos_Stoneplate_04.TGA"  , 0 	); 
	Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
	Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
	Doc_PrintLine	( nDocID,  0, "");
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		Doc_PrintLines	( nDocID,  0, "The third trap was built by QUARHODRON, and only he knows how to open the gate.");
	}
	else
	{
		Doc_PrintLines	( nDocID,  0, "Esfjwedbwe ewzbfujbwe. Fjewheege QUARHODRON Ygc slje asdkjhnead. Sebnejbuwd Weinfiwjf Ihwqpjrnn. Gkjsdhad Uhnd.");
		B_Say (self, self, "$CANTREADTHIS");
	};
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};
//---------------------------------------------------------------------------
//		Steintafel 5		
//---------------------------------------------------------------------------
INSTANCE ItMi_Addon_Stone_02(C_Item) //Bibliothek der Erbauer.
{
	name 				=	"Purple stone tablet"; 

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_StonePlate_Read_02.3ds"; 
	
	material 			=	 MAT_STONE;
	on_state[0]			=    Use_Addon_Stone_02;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";
	
	description			= 	name;
	TEXT[2]				= 	"A purple stone tablet";
	TEXT[3]				=	"";
};
//---------------------------------------------------------------------------
FUNC VOID Use_Addon_Stone_02()
{
	var int nDocID;
		
	nDocID = 	Doc_Create();								//DocManager 
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Adanos_Stoneplate_05.TGA"  , 0 	); 
	Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
	Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
	Doc_PrintLine	( nDocID,  0, "");
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		Doc_PrintLines	( nDocID,  0, "It was also QUARHODRON who, with the help of KHARDIMON, sealed the outer gate to the temple. Neither of them survived the ritual.");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "I was the only one left to tell the story.");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "I hope RHADEMES will rot in the temple forever!");
	}
	else
	{
		Doc_PrintLines	( nDocID,  0, "QUARHODRON Ygc slje asdkjhnead. KHARDIMON Weinfiwjf Ihwqpjrnn. Erfjkemvfj Hwoqmnyhan ckh. Fjewheege Egdgsmkd Esfjwedbwe asdkjhnead. Gkjsdhad Uhnd.");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "Revfnbrebuiwe ewohjfribwe wef. Sebnejbuwd Weinfiwjf Ihwqpjrnn.");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "Erfjkemvfj RHADEMES Fjewheege Egdgsmkd!");
		B_Say (self, self, "$CANTREADTHIS");
	};
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};




//*******************************************
//		Der goldene Kompass
//*******************************************

INSTANCE ItMI_Addon_Kompass_Mis (C_Item)
{
	name 				=	"Golden Compass";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	500;

	visual 				=	"ItMi_Compass_01.3DS";
	material 			=	MAT_STONE;

	description			= 	name;

};

//*******************************************
//			Morgans Schatz
//*******************************************

INSTANCE ItSE_Addon_FrancisChest	(C_Item)
{
	name 				=	"Treasure Chest";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	200;

	visual 				=	"ItMi_GoldChest.3ds";
	scemename			=	"MAPSEALED";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   FrancisChest;
	
	description			= 	"A treasure chest";
	
	TEXT[0]				= 	"The box pretty heavy.";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[4]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

FUNC VOID FrancisChest ()
{
		
		CreateInvItems (hero,ItMi_GoldChest,1);
		CreateInvItems (hero,ItMw_FrancisDagger_Mis,1);
		CreateInvItems (hero,Itmi_Gold,153);
		CreateInvItems (hero,ItMi_GoldCup,1);
		CreateInvItems (hero,ItMi_SilverNecklace,1);
		CreateInvItems (hero,ITWR_Addon_FrancisAbrechnung_Mis,1);
		
		Snd_Play ("Geldbeutel");
		Print ("Get a bunch of stuff!");
};

INSTANCE ITWR_Addon_FrancisAbrechnung_Mis (C_ITEM)
{
	name 					=	"Paybook";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"NewBook_V1_1.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	NAME;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseFrancisAbrechnung_Mis;
};

	FUNC VOID UseFrancisAbrechnung_Mis()
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
					Doc_PrintLine	( nDocID,  0, "Merchants' mermaid"	);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Loot total: 14560 Gold");
					Doc_PrintLine	( nDocID,  0, "-----------------------"	);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Team: 9840 ");
					Doc_PrintLine	( nDocID,  0, " ");
					Doc_PrintLine	( nDocID,  0, " ");
					Doc_PrintLine	( nDocID,  0, "-----------------------"	);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Own share: 2220");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Distance trader' Miriam'."	);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Loot total: 4890 Gold");
					Doc_PrintLine	( nDocID,  0, "-----------------------"	);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Team: 2390 ");
					Doc_PrintLine	( nDocID,  0, " ");
					Doc_PrintLine	( nDocID,  0, " ");
					Doc_PrintLine	( nDocID,  0, "----------------------"	);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Own share: 1000 ");
					Doc_PrintLine	( nDocID,  0, "");
	

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, "Merchant ship' Nico"	);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, "Booty total: 9970 ");
					Doc_PrintLine	( nDocID,  1, "----------------------"	);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "Team: 5610 ");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "----------------------"	);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "Own share: 1860");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "Merchants' Maria' s"	);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, "Loot total: 7851 Gold");
					Doc_PrintLine	( nDocID,  1, "----------------------"	);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "Team: 4400 ");
					Doc_PrintLine	( nDocID,  1, " ");
					Doc_PrintLine	( nDocID,  1, " ");
					Doc_PrintLine	( nDocID,  1, "----------------------"	);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "Own share: 1701 ");
					Doc_PrintLine	( nDocID,  1, "");
					
					Francis_HasProof = TRUE;
					
					Doc_Show		( nDocID );
					
					B_Say (self, self, "$ADDON_THISLITTLEBASTARD");	   

};

//-----------------------------------------------------------------------
//		Gregs Logbuch
//-----------------------------------------------------------------------

INSTANCE ITWR_Addon_GregsLogbuch_Mis (C_ITEM)
{
	name 					=	"Log book";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"NewBook_V1_2.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Greg's Logbook";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseGregsLogbuch;
};

	FUNC VOID UseGregsLogbuch()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "I can't see this beach anymore. Sand everywhere. I can't sleep well anymore, because it itches everywhere. It's time for Raven to push the gold over for the prisoners and put us back to sea. I suppose you'll have to speak a serious word with the pompous chick.");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "What's that asshole doing? Made me get rid of his stinking henchmen at the gate. He'll get to know me! I'll process his sycophant Bloodwyn myself into fish food."	);
					Doc_PrintLines	( nDocID,  0, "If he doesn't pay soon, I'm gonna wind up different sides. ");
					

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "The bandits are starting to get defiant. They still haven't paid for the last shipment. We just don't have enough information. I need to find out what Raven's doing here."	);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "I'll take most of the crew to the mainland and bring the ore to safety. Francis stays here with a couple of men and fortifies the camp. "	);
					Doc_PrintLines	( nDocID,  1, "To make sure time doesn't pass by unused, I gave Bones the armor. He'll sneak into bandit camp for me and find out what Raven's up to.");
					
					Greg_GaveArmorToBones = TRUE;
					
					Doc_Show		( nDocID );
};
//-----------------------------------------------------------------------
//Bloodwyns Truhenschlüssel - Schwere Garderüstung
//-----------------------------------------------------------------------
INSTANCE ITKE_Addon_Bloodwyn_01 (C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Bloodwyn's key";
	
	TEXT[2]				=	"Fits a chest";
	TEXT[3]				=   "";
	
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
//-----------------------------------------------------------------------
//Heiler Truhenschlüssel - 
//-----------------------------------------------------------------------
INSTANCE ITKE_Addon_Heiler (C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Key of a stone guard";
	
	TEXT[2]				=	"Fits a chest";
	TEXT[3]				=   "In a strange old building in the swamp";
	
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};




INSTANCE  ItMi_TempelTorKey (C_ITEM)
{	
	name 				=	"Stone tablet of Quarhodron";
	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_StonePlate_Read_06.3ds";	 
	material 			=	MAT_STONE;
	scemeName			=	"MAP";
	on_state[0]			=	Use_TempelTorKey;

	TEXT[2]		= "The key to Adano's temple.";

};
func void Use_TempelTorKey ()
{	
	var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_03.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					//Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					//Doc_PrintLines	( nDocID,  0, "  Eligam Shameris"					); 
				
					Doc_PrintLine	( nDocID,  0, "  Jhehedra Akhantar"					); 
 
 					Doc_Show		( nDocID ); 
};
//-----------------------------------------------------------------------
//	Bloodwyns Kopf
//-----------------------------------------------------------------------
INSTANCE ItMi_Addon_Bloodwyn_Kopf (C_Item)
{
	name 				=	"Hooked head";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Head_Bloodwyn_01.3ds";
	material 			=	MAT_LEATHER;

	description			= 	name;
	
	TEXT[2]				=	"";
	TEXT[3]				=   "";
	
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
//-----------------------------------------------------------------------
//	Bloodwyns Kopf
//-----------------------------------------------------------------------
INSTANCE ItAt_KhorgorKopf (C_Item)
{
	name 				=	"Khorgor's head";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Head_Bloodwyn_01.3ds";
	material 			=	MAT_LEATHER;

	description			= 	name;
	
	TEXT[2]				=	"";
	TEXT[3]				=   "";
	
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
//-----------------------------------------------------------------------
//	Nicks Kopf
//-----------------------------------------------------------------------
INSTANCE ItMi_NicksKopf (C_Item)
{
	name 				=	"Nick's head";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Head_Bloodwyn_01.3ds";
	material 			=	MAT_LEATHER;

	description			= 	name;
	
	TEXT[2]				=	"";
	TEXT[3]				=   "";
	
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
//-----------------------------------------------------------------------
//	Iwans Kopf
//-----------------------------------------------------------------------
INSTANCE ItAt_IwansKopf (C_Item)
{
	name 				=	"Iwan's head";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Head_Bloodwyn_01.3ds";
	material 			=	MAT_LEATHER;

	description			= 	name;
	
	TEXT[2]				=	"";
	TEXT[3]				=   "";
	
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
//-----------------------------------------------------------------------
//	Iwans Kopf
//-----------------------------------------------------------------------
INSTANCE ItMi_AkahaschKopf (C_Item)
{
	name 				=	"Akahash's Head";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Head_Bloodwyn_01.3ds";
	material 			=	MAT_LEATHER;

	description			= 	name;
	
	TEXT[2]				=	"";
	TEXT[3]				=   "";
	
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
//------------------------------------------------------------------------

instance ItWR_Addon_TreasureMap (C_Item)
{
	name 		= "Treasure map"; 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_TreasureMap;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "On the map some spots are marked.";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_TreasureMap()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Addon_TreasureMap);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_AddonWorld_Treasures.tga", TRUE);  // TRUE = scale to fullscreen
				    Doc_Show			(Document);
	};


//------------------------------------------------------------------------

INSTANCE ItMi_Addon_GregsTreasureBottle_MIS	(C_Item)
{
	name 				=	"Message in a bottle";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItFo_Water.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_GregsBottle;
	scemeName			=	"MAPSEALED";
	description			= 	name;
	TEXT[2]				=   "There's a piece of paper in the bottle.";

};
func void Use_GregsBottle ()
{
	B_PlayerFindItem (ItWR_Addon_TreasureMap,1);
};

/******************************************************************************************/
INSTANCE ItMi_ErolsKelch (C_Item)
{
	name 				=	"Scratched silver bowl";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	125;

	visual 				=	"ItMi_SilverChalice.3DS";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= 	value;
};
