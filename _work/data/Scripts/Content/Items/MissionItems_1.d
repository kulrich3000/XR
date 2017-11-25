//****************************************************************************
//			Schlüssel für Xardas Truhe
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_Xardas(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"A key to a chest";
	TEXT[3]				=   "from Xardas";
	
};
//**********************************************************************************
//	Canthars Kompromittierender Brief für Sarah die Händlerin
//----------------------------------------------------------------------------------

INSTANCE ItWr_Canthars_KomproBrief_MIS		(C_Item)
{
	name 				=	"Letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Canthars_KomproBrief;
	scemeName			=	"MAP";
	description			= 	"Canthar's letter for the retailer Sarah";
};
func void Use_Canthars_KomproBrief ()
{   
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  1);
					Doc_SetPage		(nDocID,  0, "letters.TGA", 0);
					Doc_SetFont		(nDocID, -1, FONT_Book);
					Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, " Last Warning"								);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_SetFont		(nDocID,  0, FONT_Book);
					Doc_PrintLine	(nDocID,  0, " I have already reminded you several"				);
					Doc_PrintLine	(nDocID,  0, " times in the friendliest"				);
					Doc_PrintLine	(nDocID,  0, " terms that I urgently require the"				);
					Doc_PrintLine	(nDocID,  0, " weapons I ordered from you a week"			);
					Doc_PrintLine	(nDocID,  0, " ago."										);
					Doc_PrintLine	(nDocID,  0, " If I don't hear from you very soon,"		);
					Doc_PrintLine	(nDocID,  0, " Sarah, I will be forced to change my"			);
					Doc_PrintLine	(nDocID,  0, " attitude to you. I hope we understand"			);
					Doc_PrintLine	(nDocID,  0, " each other!!!!!!!!!!!!"					);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, "     Onar"										);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_SetMargins	(nDocID, -1, 200, 50, 50, 50, 1);
					Doc_Show		(nDocID);
					
	
}; 
//****************************************************************************
//			Rods Schwert
//			---------------------------------------------
//****************************************************************************
INSTANCE ItMw_2h_Rod (C_Item)
{	
	name 				=	"Rod's Two-Hander";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;
	material 			=	MAT_METAL;

	value 				=	Value_Sld2hSchwert;

	damageTotal  		= 	Damage_Rod;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Sld2hSchwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Rod;
	visual 				=	"ItMw_035_2h_sld_sword_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//***************
//Coragons Silber
//***************
INSTANCE ItMi_CoragonsSilber (C_Item)
{
	name 				=	"Coragon's Silver";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_SilverCup;

	visual 				=	"ItMi_SilverCup.3DS";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[3]				= 	"";	
	TEXT[4]				= 	"";	
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
};

//*******************************
//Päckchen für Thekla von Sagitta
//*******************************
INSTANCE ItMi_TheklasPaket (C_Item)
{
	name 				=	"Thekla's Parcel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION |ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Packet.3ds";
	scemename			=	"MAPSEALED";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_TheklasPacket;
	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

FUNC VOID Use_TheklasPacket ()
{
	CreateInvItems (hero,ItPl_Mana_Herb_01 ,3);
	CreateInvItems (hero,ItPl_Health_Herb_02 ,1);
	CreateInvItems (hero,ItPl_Speed_Herb_01 ,1);
	CreateInvItems (hero,ItPl_Blueplant ,2);

	Print (PRINT_GotPlants);
};

//*******************************
//Valentinos Ring
//*******************************

INSTANCE ItRi_ValentinosRing(C_Item) //bei Cassia als Belohnung
{
	name 					=	NAME_Ring;

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	Value_Ri_ProtEdge;

	visual 					=	"ItRi_Prot_Edge_01.3ds";

	visual_skin 			=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_ValentinosRing;
	on_unequip				=	UnEquip_ValentinosRing;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description				= "Valentino's Ring";

	TEXT[2]					= NAME_Prot_Edge;
	COUNT[2]				= Ri_ProtEdge;
	
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
		
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
	
};

	FUNC VOID Equip_ValentinosRing()
	{
		self.protection [PROT_EDGE] 		+=  Ri_ProtEdge*1000;
		self.protection [PROT_BLUNT]		+=  Ri_ProtEdge*1000;
	};

	FUNC VOID UnEquip_ValentinosRing()
	{
		self.protection [PROT_EDGE] 		-=  Ri_ProtEdge*1000;
		self.protection [PROT_BLUNT]		-=  Ri_ProtEdge*1000;
	};

//****************************************************************************
//			Schlüssel für Dexter Truhe
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_Dexter(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_03.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"A key to a chest";
	TEXT[3]				=   "from Dexter";
	
};
//**********************************************************************************
//	Constantinos Kräuterliste
//----------------------------------------------------------------------------------

INSTANCE ItWr_Kraeuterliste (C_Item)
{
	name 				=	"List";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Kraeuterliste;
	scemeName			=	"MAP";
	description			= 	"Constantinos Herbal List";
};
func void Use_Kraeuterliste ()
{   
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
	
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Alchemical Herbs"	);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Heilpflanze"	);
					Doc_PrintLine	( nDocID,  0, "Heilkraut"	);
					Doc_PrintLine	( nDocID,  0, "Heilwurzel"    );
					Doc_PrintLine	( nDocID,  0, "Feuernessel"  );
					Doc_PrintLine	( nDocID,  0, "Feuerkraut"  );
					Doc_PrintLine	( nDocID,  0, "Feuerwurzel"  );
					Doc_PrintLine	( nDocID,  0, "Goblin Berry"     );
					Doc_PrintLine	( nDocID,  0, "Drachenwurzel");
					Doc_PrintLine	( nDocID,  0, "Snapperkraut"   );
					Doc_PrintLine	( nDocID,  0, "Feldknöterich"      	);
					Doc_PrintLine	( nDocID,  0, "King's Sorrel"       );
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Note: Let a potential apprentice fetch the plants for you. That way you'll know if he's any good. "						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Regards, Zuris."						);
					Doc_SetMargins	( nDocID, -1, 200, 50, 50, 50, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus
				
					Doc_Show		( nDocID );
}; 
//**********************************************************************************
//Neoras Mana Rezept
//----------------------------------------------------------------------------------

INSTANCE ItWr_ManaRezept (C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	20;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_ManaRezept;
	scemeName			=	"MAP";
	description			= 	"Recipe of the magic essence";
};
func void Use_ManaRezept ()
{   
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
	
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Magic Potions"	);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "To brew magic potions, a skilled alchemist needs:");
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Feuernessel");
					Doc_PrintLine	( nDocID,  0, "Feuerkraut");
					Doc_PrintLine	( nDocID,  0, "Feuerwurzel");
					Doc_PrintLines	( nDocID,  0, "He also requires a plant of "						);
					Doc_PrintLine	( nDocID,  0, "Feldknöterich"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Master Neoras "						);
					Doc_SetMargins	( nDocID, -1, 200, 50, 50, 50, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus
				
					Doc_Show		( nDocID );
}; 


// **************************************************************************************

INSTANCE ItWr_Passierschein	(C_Item)
{
	name 				=	"Pass";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	50;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UsePassierschein;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[3]				=	"These papers permit me to";
	TEXT[4]				=   "I pass the city guards.";
};
func void UsePassierschein ()
{   
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  1 );
					Doc_SetPage		(nDocID,  0, "letters.TGA", 0);
					Doc_SetFont		(nDocID, -1, FONT_BookHeadline);
					Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, "     Passierschein"								);
					Doc_PrintLine	(nDocID,  0, "         Khorinis"								);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_SetFont		(nDocID,  0, FONT_Book);
					Doc_PrintLine	(nDocID,  0, " This document entitles the"					);
					Doc_PrintLine	(nDocID,  0, " bearer to move freely in the lower areas"		);
					Doc_PrintLine	(nDocID,  0, " of Khorinis for an unlimited time period."		);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, "     Larius"										);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, "     the King's governor"						);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_SetMargins	(nDocID, -1, 200, 50, 50, 50, 1);
					Doc_Show		(nDocID);
};

//****************************************************************************
//				Kraut Paket für MIS_ANDRE_WAREHOUSE 
//			---------------------------------------------
//****************************************************************************
INSTANCE ItMi_HerbPaket(C_Item)
{
	name 				=	"herb package";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION | ITEM_SHOW;

	value 				=	200;

	visual 				=	"ItMi_Packet.3ds";
	
	material 			=	 MAT_LEATHER;
	
	description			= 	name;
	TEXT[2]				= 	"A heavy, sticky package that";
	TEXT[3]				=	"that reeks of bogweed.";
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	200;
	
};
//****************************************************************************
//				Lagerhaus Schlüssel für MIS_ANDRE_WAREHOUSE 
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_Storage(C_Item)
{
	name 				=	"warehouse key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"The key to the harbor";
	TEXT[3]				=   "Warehouse at the harbour";
	
};
const int HP_Hering = 20;
//****************************************************************************
//				Alternativer Fish - danke Levelbereich !
//			---------------------------------------------
//****************************************************************************
INSTANCE ItFo_SmellyFish (C_Item)
{	
	name 				=	"Herring";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MISSION|ITEM_MULTI;
	
	value 				=	0;
	
	visual 				=	"ItFo_Fish.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"FOOD";
	on_state[0]			=	Use_SmellyFish;

	description			= 	"A herring";
	TEXT[1]				= 	NAME_Bonus_HP;		COUNT[1]	= HP_Hering;
	TEXT[5]				= 	NAME_Value;			COUNT[5]	= Value_Fish;
};

	FUNC VOID Use_SmellyFish()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Hering);

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];
	};
//****************************************
//	Alriks Schwert
//****************************************

INSTANCE ItMw_AlriksSword_Mis (C_Item)
{	
	name 				=	"Alrik's Sword";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_MISSION|ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	value_Alrik;

	damageTotal  		= 	damage_Alrik;
	damagetype 			=	DAM_EDGE;
	range    			=  	range_Alrik;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Alrik;
	visual 				=	"ItMw_025_1h_Sld_Sword_01.3DS";
	
	on_equip			=	Equip_AlriksSword;
	on_unequip			=	UnEquip_AlriksSword;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
	
	func void Equip_AlriksSword()
	{
		B_AddFightSkill (self, NPC_TALENT_1H, 10);

		if Npc_IsPlayer (self)
		{ 
			B_MeleeWeaponChange(10, 0, 0);
		};
	};
	
	func void UnEquip_AlriksSword()
	{
		if (!Npc_IsPlayer (self))
		{ 
			B_AddFightSkill (self, NPC_TALENT_1H, -10);
		};

		if (Npc_IsPlayer (self) && (meleeWeaponChangedHero || scriptPatchWeaponChange == FALSE))
		{ 
			B_AddFightSkill (self, NPC_TALENT_1H, -10);
			B_MeleeWeaponUndoChange();
		};
	};

//****************************************************************************
//				Botschaft von Vatras an die Magier des Feuers
//			---------------------------------------------
//****************************************************************************
INSTANCE ItWr_VatrasMessage	(C_Item)
{
	name 				=	"Sealed Message";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseVatrasMessage;
	scemeName			=	"MAPSEALED";
	description			= 	name;
	TEXT[2]				=   "A message from Vatras";
	TEXT[3]				=   "for the magicians of fire";
};
func void UseVatrasMessage ()
{   
		
		CreateInvItems (self, ItWr_VatrasMessage_Open,1);
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  1 );                         
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 	); 
					Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   	);  
					Doc_PrintLine	( nDocID,  0, "Dear Isgaroth,"					);
					Doc_PrintLines	( nDocID,  0, "I feel more and more the presence of another power."					);
					Doc_PrintLines	( nDocID,  0, "A power that is not unknown to us. May it be that servants are near to Beliars?"					);
					Doc_PrintLines	( nDocID,  0, "Maybe I'm wrong, but I think it would be appropriate for Father Pyrokar to deal with the matter. "					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "May our prayers be answered."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Vatras"					);
					Doc_Show		( nDocID );
}; 
//****************************************************************************
//				Botschaft von Vatras an die Magier des Feuers
//				Das Siegel wurde geöffnet		
//			---------------------------------------------
//****************************************************************************
INSTANCE ItWr_VatrasMessage_Open	(C_Item)
{
	name 				=	"Message";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseVatrasMessageOpen;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[2]				=   "A message from Vatras";
	TEXT[3]				=   "for the magicians of fire";
	TEXT[4]				=   "The seal is broken";
};
func void UseVatrasMessageOpen ()
{   
	var int nDocID;
		
		
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  1 );                         
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 	); 
					Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   	);  
					Doc_PrintLine	( nDocID,  0, "Dear Isgaroth,"					);
					Doc_PrintLines	( nDocID,  0, "I feel more and more the presence of another power."					);
					Doc_PrintLines	( nDocID,  0, "A power that is not unknown to us. May it be that servants are near to Beliars?"					);
					Doc_PrintLines	( nDocID,  0, "Maybe I'm wrong, but I think it would be appropriate for Father Pyrokar to deal with the matter. "					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "May our prayers be answered."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Vatras"					);
					Doc_Show		( nDocID );
}; 
//****************************************************
//		Hotelschlüssel
//****************************************************
INSTANCE ItKe_Hotel(C_Item)
{
	name 				=	"Room Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"The room key";
	TEXT[3]				=   "from the hotel";
	
};
//****************************************************
//		Schlüssel zur Diebesgilde
//****************************************************
INSTANCE ItKe_ThiefGuildKey_MIS (C_Item)
{
	name 				=	"Rusty Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Sea salt has corroded this key.";
	
};
//****************************************************
//		Schlüssel zur Diebesgilde vom Hotel
//****************************************************
INSTANCE ItKe_ThiefGuildKey_Hotel_MIS (C_Item)
{
	name 				=	"Rusty Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"The cellar key of the hotel";
	
};
//****************************************************
//		Pfortenschlüssel Tempel von Innos
//****************************************************
INSTANCE ItKe_Innos_MIS(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"The key to the gate";
	TEXT[3]				=   "of the Innos Monastery";
	
};
//****************************************************************************
//			Schlüssel Vorratskammer Kloster
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_KlosterSchatz(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"The key to ";
	TEXT[3]				=   "Treasury in the monastery";
	
};
//****************************************************************************
//			Schlüssel Vorratskammer Kloster
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_KlosterStore(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"The key to ";
	TEXT[3]				=   "pantry in the monastery";
	
};
//****************************************************************************
//			Schlüssel Schlafgemach Player
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_KDFPlayer(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"The key to the ";
	TEXT[3]				=   "Cloister in the monastery";
	
};
//****************************************************************************
//			Schlüssel Bibliothek Kloster
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_KlosterBibliothek(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"The key to ";
	TEXT[3]				=   "Library in the monastery";
	
};
//****************************************************************************
//			Extra Wurst Gorax Mission
//			---------------------------------------------
//****************************************************************************
INSTANCE ItFo_Schafswurst (C_Item)
{	
	name 				=	"Sheep Sausage";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;
	
	value 				=	Value_Sausage;
	
	visual 				=	"ItFo_Sausage.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"FOOD";
	on_state[0]			=	Use_Schafswurst;

	description			= 	name;
	TEXT[1]				= 	NAME_Bonus_HP;		COUNT[1]	= HP_Sausage;
	TEXT[5]				= 	NAME_Value;			COUNT[5]	= Value_Sausage;

};

	FUNC VOID Use_Schafswurst()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Sausage);

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];
	};
/******************************************************************************************/
INSTANCE ItPo_Perm_LittleMana(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	150;	

	visual 			=	"ItPo_Perm_Mana.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_LittleMana;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description		= 	"Essence of the Spirit";
	TEXT[1]			= 	NAME_Bonus_ManaMax;			
	COUNT[1]		= 	3;
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value;
};

	FUNC VOID UseItPo_LittleMana()
	{
		B_RaiseAttribute	(self, ATR_MANA_MAX,	3);
		Npc_ChangeAttribute	(self, ATR_MANA,	3);
	};
//****************************************************
//		Hammer Innos, für Golem Prüfung 
//****************************************************
INSTANCE Holy_Hammer_MIS (C_Item)
{	
	name 				=	"Sacred Hammer";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_MISSION |ITEM_2HD_AXE ;	
	material 			=	MAT_METAL;

	value 				=	Value_HolyHammer;

	damageTotal  		= 	Damage_HolyHammer;
	damagetype 			=	DAM_BLUNT;
	range    			=  	Range_HolyHammer;		
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_HolyHammer;
	visual 				=	"ItMw_030_2h_kdf_hammer_01.3DS";
	
	on_equip			=	Equip_2H_Max;
	on_unequip			=	UnEquip_2H_Max;

	description			=  name;
	//FIXME_Noki: TAB
	TEXT[2]				=  "Damage to:?";
	TEXT[3] 			=  "Required thickness:?";
	TEXT[4] 			=  "Two-Handed Weapon             ";
	TEXT[5]				=  "Value:  cannot be estimated";					
	/*
	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
	
	
	Die Konstanten stehen in der Tuning_Melee_Weapons.d M.F.
	*/
};

//****************************************************************************
//			Schlüssel für die Truhe in der Magierhöhle
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_MagicChest(C_Item)
{
	name 				=	"Old Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION |ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"An old iron key.";
	TEXT[3]				=   "He could go to a hospital. ";
	TEXT[4]				=	"padlock.";
};
//****************************************************************************
//			gefälschter Passierschein von Lee 
//			---------------------------------------------
//****************************************************************************
INSTANCE ItWr_Passage_MIS	(C_Item)
{
	name 				=	"Peace Offer for the Paladins";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UsePassage;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[3]				=	"With this bill, ";
	TEXT[4]				=   "Lord Hagen will be admitted";
};
func void UsePassage ()
{   
		var int nDocID;
		
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels

					Doc_PrintLine	( nDocID,  0, ""								);
					Doc_PrintLine	( nDocID,  0, "Honorable Lord Hagen,"			);
					Doc_PrintLine	( nDocID,  0, ""								);
					Doc_PrintLines	( nDocID,  0, "We both know the situation you're in. I therefore propose the following trade: " 	);
					Doc_PrintLines	( nDocID,  0, "You give me and all my men a general absolution from Innos and the king. "				);
					Doc_PrintLines	( nDocID,  0, "In return, we offer our services for the defence of the city and the surrounding countryside. " );
					Doc_PrintLines	( nDocID,  0, "I will also see to it that my men stay away from the surrounding courtyards - except, of course, the Onar courtyard, where we will continue to be stationed." );
					Doc_PrintLines	( nDocID,  0, "I know that there is still room for me and some of my men on the ship with which you will leave for the mainland. When you set sail, I want to be on board." );
					Doc_PrintLines	( nDocID,  0, "I beseech you, make your decision with all the wisdom given to you. " );
					Doc_PrintLine	( nDocID,  0, ""								);
					Doc_PrintLine	( nDocID,  0, ""		);
					Doc_SetMargins	( nDocID, -1, 200, 50, 50, 50, 1   				);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus
				
					Doc_Show		( nDocID );
		
}; 
//****************************************************************************
//			Nachricht des Banditen -> Plot Wo ist die Armee?
//			---------------------------------------------
//****************************************************************************

INSTANCE ItWr_BanditLetter_MIS	(C_Item)
{
	name 				=	"Message";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBanditLetter;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[3]				=	"";
	TEXT[4]				=   "";
};
func void UseBanditLetter ()
{   
		var int nDocID;
	
		/*
		if (Bdt13_Dexter_verraten == FALSE)
		{
			Bdt13_Dexter_verraten = TRUE;
		
			Log_CreateTopic (Topic_Bandits,LOG_MISSION);
			B_SetTopicStatus (Topic_Bandits,LOG_RUNNING);
			B_LogEntry (Topic_Bandits,"Der Anführer der Banditen ist Dexter. Er versteckt sich bei einer Mine, beim Großbauer.");
			MIS_Steckbriefe = LOG_RUNNING;
		};
		*/
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  1);
					Doc_SetPage		(nDocID,  0, "letters.TGA", 0); 
					Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_SetFont		(nDocID,  0, FONT_Book);
					Doc_PrintLine	(nDocID,  0, "Stop all men, "							);
					Doc_PrintLine	(nDocID,  0, " coming from the mountains."						);
					Doc_PrintLine	(nDocID,  0, "In case someone comes along the pass, "				);
					Doc_PrintLine	(nDocID,  0, " it's probably an old man."			);
					Doc_PrintLine	(nDocID,  0, "Don't let him fool you - "				);
					Doc_PrintLine	(nDocID,  0, " he's a dangerous sorcerer.   "				);
					Doc_PrintLine	(nDocID,  0, "Keep an eye on the guy."						);
					Doc_PrintLine	(nDocID,  0, "     "											);
					Doc_PrintLine	(nDocID,  0, "It's a good thing the guy we're looking for, "		);
					Doc_PrintLine	(nDocID,  0, " to get in touch with him. "						);
					Doc_PrintLine	(nDocID,  0, "With this letter I send you "				);
					Doc_PrintLine	(nDocID,  0, " Thirty pieces of gold. "							);
					Doc_PrintLine	(nDocID,  0, "They get thirty more, "				);
					Doc_PrintLine	(nDocID,  0, " who kills the man. "							);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, "Take his head to the old mine, the big farmer's.");
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, "..... D."											);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_SetMargins	(nDocID, -1, 200, 50, 50, 50, 1);
					Doc_Show		(nDocID);
}; 
//****************************************************************************
//			Steckbrief vom Spieler
//			---------------------------------------------
//****************************************************************************
INSTANCE ItWr_Poster_MIS	(C_Item)
{
	name 				=	"Wanted Note";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MULTI|ITEM_MISSION ;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UsePoster;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[3]				=	"A picture of me!";
	TEXT[4]				=   "";
};
FUNC VOID UsePoster()
{
	var int nDocID;
	nDocID 	= 	Doc_Create() ;		
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Gesucht.TGA"  , 0 		); 	
	Doc_Show (nDocID);
};
INSTANCE ItWr_Anschlag	(C_Item)
{
	name 				=	"fence";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MULTI|ITEM_MISSION ;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAnschlag;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[3]				=	"";
	TEXT[4]				=   "";
};
FUNC VOID UseAnschlag()
{
	var int nDocID;
	nDocID 	= 	Doc_Create() ;		
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Gesucht.TGA"  , 0 		); 	
	Doc_Show (nDocID);

	if (Mod_MoeDontTalk == 2)
	{
		Mod_MoeDontTalk = 3;
	};
};

INSTANCE ItWr_Anschlag_Bengar	(C_Item)
{
	name 				=	"fence";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MULTI|ITEM_MISSION ;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	description			= 	name;
	TEXT[3]				=	"";
	TEXT[4]				=   "";
};

INSTANCE ItWr_Anschlag_Lobart	(C_Item)
{
	name 				=	"fence";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MULTI|ITEM_MISSION ;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	description			= 	name;
	TEXT[3]				=	"";
	TEXT[4]				=   "";
};

INSTANCE ItWr_Anschlag_Onar	(C_Item)
{
	name 				=	"fence";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MULTI|ITEM_MISSION ;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	description			= 	name;
	TEXT[3]				=	"";
	TEXT[4]				=   "";
};

INSTANCE ItWr_Anschlag_Kloster	(C_Item)
{
	name 				=	"fence";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MULTI|ITEM_MISSION ;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	description			= 	name;
	TEXT[3]				=	"";
	TEXT[4]				=   "";
};

INSTANCE ItWr_Anschlag_City	(C_Item)
{
	name 				=	"fence";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MULTI|ITEM_MISSION ;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	description			= 	name;
	TEXT[3]				=	"";
	TEXT[4]				=   "";
};
//****************************************************************************
//				Banditen Truhen Schlüssel 
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_Bandit(C_Item)
{
	name 				=	"Chest Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"The key";
	TEXT[3]				=   "belonged to a bandit";
	
};

//****************************************************************************
//				Bospers Jagdbogen
//			---------------------------------------------
//****************************************************************************
INSTANCE ItRw_Bow_L_03_MIS (C_Item)
{
	name 				=	"Hunting Bow";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW|ITEM_MISSION;
	material 			=	MAT_WOOD;

	value 				=	Value_Jagdbogen;

	damageTotal			=	Damage_Jagdbogen;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_Jagdbogen;
	visual 				=	"ItRw_Bow_L_03.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= "Bosper's hunting bow";
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
//****************************************************************************
//				Constantinos Schutzring
//			---------------------------------------------
//****************************************************************************
INSTANCE ItRi_Prot_Point_01_MIS(C_Item)
{
	name 					=	"Constantinos Ring";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING|ITEM_MISSION;

	value 					=	Value_Ri_ProtPoint ;

	visual 					=	"ItRi_Prot_Point_01.3ds";

	visual_skin 			=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_ItRi_Prot_Point_01_MIS;
	on_unequip				=	UnEquip_ItRi_Prot_Point_01_MIS;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description				=  "Protection of wood ";
	
	TEXT[2]					= NAME_Prot_Point;
	COUNT[2]				= Ri_ProtPoint;
	
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
	
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
		
};

	FUNC VOID Equip_ItRi_Prot_Point_01_MIS()
	{
	self.protection [PROT_POINT] 		+=  Ri_ProtPoint*1000;
	};

	FUNC VOID UnEquip_ItRi_Prot_Point_01_MIS()
	{
	self.protection [PROT_POINT] 		-=  Ri_ProtPoint*1000;
	};

//****************************************************************************
//				Eddas Statue
//			---------------------------------------------
//****************************************************************************
INSTANCE ItMi_EddasStatue (C_Item)
{
	name 				=	"Statue of Innos";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI| ITEM_MISSION ;

	value 				=	50;

	visual 				=	"ItMi_InnosStatue.3DS";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				= 	"Innos Lord of Justice ";
	TEXT[3]				= 	"bless and keep me";
	TEXT[4]				= 	"to which no evil shall befall me";
	
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
};

//****************************************************************************
//				Crypta-Schlüssel
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_EVT_CRYPT_01(C_Item)
{
	name 				=	"Old Brass Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"The Key of the Skeleton in Room 1";
	
};

INSTANCE ItKe_EVT_CRYPT_02(C_Item)
{
	name 				=	"Old Brass Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"The Key of the Skeleton in Room 2";
	
};

INSTANCE ItKe_EVT_CRYPT_03(C_Item)
{
	name 				=	"Old Brass Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"The Key of the Skeleton Room 3";
	
};

const int VALUE_ITAR_PAL_SKEL	= 500;

INSTANCE ITAR_PAL_SKEL (C_Item)
{
	name 					=	"Old Knight's Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	100000;
	protection [PROT_BLUNT] = 	100000;
	protection [PROT_POINT] = 	100000;
	protection [PROT_FIRE] 	= 	50;
	protection [PROT_MAGIC] = 	50;

	value 					=	VALUE_ITAR_PAL_SKEL;

	wear 					=	WEAR_TORSO;

	visual 					=	"ItAr_Pal_H.3ds";
	visual_change 			=	"Armor_Pal_Skeleton.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE]/1000;
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT]/1000;
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};

//****************************************************************************
//				Schlüssel zu Valentinos Truhe
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_Valentino(C_Item)
{
	name 				=	"Chest Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"The chest key";
	TEXT[3]				=   "from Valentino";
	
};
//****************************************************************************
//				Schlüssel zur Truhe OV Noname Typen
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_Buerger(C_Item)
{
	name 				=	"Chest Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Was laying around on a window sill";
	TEXT[3]				=   "";
	
};
//****************************************************************************
//				Schlüssel Richter Truhe
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_Richter(C_Item)
{
	name 				=	"Chest Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"The chest key";
	TEXT[3]				=   "of the judge";
	
};
//****************************************************************************
//				Schlüssel Salandril
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_Salandril(C_Item)
{
	name 				=	"Chest Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"by Salandril the alchemist";
	TEXT[3]				=   "";
	
};

//****************************************************************************
//				Schlüssel Truhe ...wo die Paladine schlafen
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_PaladinTruhe(C_Item)
{
	name 				=	"Chest Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"A small brass key";
	TEXT[3]				=   "from the House of the Paladins";
	
};
//****************************************************************************
//				Diebsgilde Schatz (Insel)
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_ThiefTreasure(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_03.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"A small key";
};
//****************************************************************************
//				Diebsgilde Fingers Tür
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_Fingers(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_03.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"A rusty door wrench";
	TEXT[3]				=   "from the sewerage system";
	
};
//**********************************************************************************
//	Lehmars Schuldenbuch
//**********************************************************************************

INSTANCE ItWr_Schuldenbuch (C_ITEM)
{	
	name 					=	"Book of Debts";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"NewBook_V2_4.3DS";  					
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Lehmar's debt book";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseSchuldBuch;
};

	FUNC VOID UseSchuldBuch()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;								
					Doc_SetPages	( nDocID,  2 );                         

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); 
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels 					
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages 
 					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "Transactions and debts"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "I Master Thorben, carpenter of Khorinis, owe 200 gold coins to the honourable Mr. Lehmar.");
					Doc_PrintLine	( nDocID,  0, ""					);		
					Doc_PrintLine	( nDocID,  0, "             Thorben");
					Doc_PrintLine	( nDocID,  0, ""					);	
					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "I Coragon, landlord in Khorinis, owe the honourable Mr. Lehmar 150 gold coins");
					Doc_PrintLine	( nDocID,  0, ""					);		
					Doc_PrintLine	( nDocID,  0, "             Coragon");										
					//Absatz
					Doc_PrintLine	( nDocID,  0, ""					);

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					//Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages 
					//Doc_PrintLine	( nDocID,  1, ""					);										
					//Doc_PrintLines( nDocID,  1, "StandardBuch Seite 2"	);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "I, Hanna, owner of the hotel in Khorinis, owe Mr. Lehmar 250 gold coins.");
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, "               Hanna");
					//Absatz
					Doc_PrintLines	( nDocID,  1, "");
					Doc_Show		( nDocID );
};

//**********************************************************************************
//	Lehmars Schuldenbuch
//**********************************************************************************

INSTANCE ItPl_Sagitta_Herb_MIS (C_Item)
{	
	name 				=	"Sun Aloe";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Strength_Herb_01;

	visual 				=	"ItPl_Strength_Herb_01.3DS";
	material 			=	MAT_WOOD;

	scemeName			=	"FOOD";

	description			= 	name;
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	Value_Strength_Herb_01;
};


//****************************************************************************
//			Schlüssel für die obernen Schlafzimmer in der Taverne (MITTE DER WELT!)
//			---------------------------------------------
//****************************************************************************
INSTANCE ITKE_ORLAN_HOTELZIMMER(C_Item)
{
	name 				=	"Room Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"To the dead harpie?";
	TEXT[3]				=   "";
	
};

INSTANCE ItRw_DragomirsArmbrust_MIS (C_Item)
{
	name 				=	"Dragomirs Crossbow";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;

	value 				=	Value_LeichteArmbrust;

	damageTotal			= 	Damage_LeichteArmbrust;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Bolt;
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_LeichteArmbrust;
	visual 				=	"ItRw_Crossbow_L_02.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_STR_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
