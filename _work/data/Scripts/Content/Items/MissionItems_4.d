
const int Value_Dragonegg 		= 200;//Joly: nicht �ndern
const int Value_OrcEliteRing 	= 130;//Joly: nicht �ndern
/******************************************************************************************/
// Angars Amulett
/******************************************************************************************/
	INSTANCE  ItAm_Mana_Angar_MIS(C_Item)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET|ITEM_MISSION;

	value 			=	Value_Am_Mana;

	visual 			=	"ItAm_Mana_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_Mana_Angar;
	on_unequip		=	UnEquip_ItAm_Mana_Angar;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Magiczny amulet Angara.";
	
	TEXT[2]			= NAME_Bonus_Mana;
	COUNT[2]		= 10;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_ItAm_Mana_Angar()
	{
		self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + Am_Mana;
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + Am_Mana;
	};

	FUNC VOID UnEquip_ItAm_Mana_Angar ()
	{
		self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - Am_Mana;
		if (self.attribute[ATR_MANA] > (Am_Mana))
		{
			self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - Am_Mana;
		}
		else
		{
			self.attribute[ATR_MANA] = 0;
		};	
	}; 
	
//**************************************************************
//	Ferros Schwert
//**************************************************************

INSTANCE ItMW_1H_FerrosSword_Mis (C_Item) 
{	
	name 				=	"Feord Sword";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD|ITEM_MISSION;
	material 			=	MAT_METAL;

	value 				=	Value_Special_1H_2;

	damageTotal			= 	Damage_Special_1H_2;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Special_1H_2;	

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Special_1H_2;
	visual 				=	"ItMw_060_1h_Sword_smith_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMi_KerolothsGeldbeutel_MIS(C_Item)
{
	name 				=	"Torebka sk�rzana na sk�re.";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Pocket.3ds";
	scemename			=	"MAPSEALED";	
	material 			=	MAT_METAL;
	on_state[0]			=   UseKerolothsGeldbeutel;
	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

FUNC VOID UseKerolothsGeldbeutel ()
{
	CreateInvItems (self,ItMi_Gold,300);	
	CreateInvItems (self,ItMi_KerolothsGeldbeutelLeer_MIS,1);	
	Print 	(PRINT_KerolothsGeldBeutel);
	Snd_Play ("Geldbeutel");
};

INSTANCE ItMi_KerolothsGeldbeutelLeer_MIS(C_Item)
{
	name 				=	"Torebka sk�rzana na sk�re.";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Pocket.3ds";
	//scemename			=	"MAPSEALED";	
	material 			=	MAT_METAL;
	//on_state[0]		=   UseKerolothsGeldbeutel;
	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItRw_SengrathsArmbrust_MIS(C_Item)
{
	name 				=	"Sengratty Crossbowowice";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;

	value 				=	Value_MilArmbrust;

	damageTotal			= 	Damage_MilArmbrust;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Bolt;
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_MilArmbrust;
	visual 				=	"ItRw_Mil_Crossbow.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};


//Tabins Lurkerh�ute von Engrom

INSTANCE ItAt_TalbinsLurkerSkin (C_Item)
{
	name 				=	"blona sluzowa";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	Value_ReptileSkin;

	visual 				=	"ItAt_LurkerSkin.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"W srodku wypalona jest nazwa Valley?";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

//---------------------------------------------------------------------
//	Drachen-Ei	(f�r DJG only Ambient auftrag)
//---------------------------------------------------------------------
INSTANCE ItAt_DragonEgg_MIS	(C_ITEM)
{	
	name 					=	"Jajko smocze";
	
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MISSION|ITEM_MULTI;	

	value 					=	Value_Dragonegg;

	visual 					=	"ItAt_DragonEgg.3ds"; 
	material 				=	MAT_LEATHER;

	description				=	name;
	TEXT[0]					=	"Jajko jest cieple i od wewnatrz";
	TEXT[1]					=	"slyszysz miekkie zarysowania";
	TEXT[2]					=	"";
	TEXT[3]					=	"";
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItAt_DragonEgg_Giftdrache	(C_ITEM)
{	
	name 					=	"Jajko smoka trujacego";
	
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MISSION|ITEM_MULTI;	

	value 					=	Value_Dragonegg;

	visual 					=	"ItAt_DragonEgg.3ds"; 
	material 				=	MAT_LEATHER;

	description				=	name;
	TEXT[0]					=	"Jajko jest cieple i od wewnatrz";
	TEXT[1]					=	"slyszysz miekkie zarysowania";
	TEXT[2]					=	"";
	TEXT[3]					=	"";
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

//---------------------------------------------------------------------
//	OrcEliteRing (f�r PAL only Ambient auftrag)
//---------------------------------------------------------------------

INSTANCE ItRi_OrcEliteRing(C_Item)
{
	name 					=	"Pierscien orkiestrowych watazk�w";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_MISSION|ITEM_RING|ITEM_MULTI; //Joly: Mu� so bleiben, sonst XP und Gold Exploit (Lord Hagen die Dinger bringen!)

	value 					=	Value_OrcEliteRing;

	visual 					=	"ItRi_Str_02.3ds";

	visual_skin 			=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_OrcEliteRing;
	on_unequip				=	UnEquip_OrcEliteRing;

	description				= 	name;

	TEXT[0]					=	"Pierscien jest szorstki i promieniuje";
	TEXT[1]					=	"dziwne zimno";
	TEXT[2]					=	"";
	TEXT[3]					=	"";
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_WEAKGLIMMER"; 

	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
	
};

	FUNC VOID Equip_OrcEliteRing ()
	{
		Npc_ChangeAttribute  (self, ATR_STRENGTH, - 20);
		Print	(PRINT_OrcEliteRingEquip);
	};

	FUNC VOID UnEquip_OrcEliteRing()
	{
		Npc_ChangeAttribute	 (self,	ATR_STRENGTH, + 20);
	};

INSTANCE ItRi_SkinnersRing(C_Item)
{
	name 					=	"Wytrzymale na dzialanie czynnik�w atmosferycznych Karczowanie";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_MISSION|ITEM_RING|ITEM_MULTI; //Joly: Mu� so bleiben, sonst XP und Gold Exploit (Lord Hagen die Dinger bringen!)

	value 					=	1;

	visual 					=	"ItRi_Str_02.3ds";

	visual_skin 			=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_SkinnersRing;
	on_unequip				=	UnEquip_SkinnersRing;

	description				= 	name;

	TEXT[0]					=	"Pierscien jest szorstki i promieniuje";
	TEXT[1]					=	"dziwne zimno";
	TEXT[2]					=	"";
	TEXT[3]					=	"";
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_WEAKGLIMMER"; 

	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
	
};

	FUNC VOID Equip_SkinnersRing ()
	{
		Npc_ChangeAttribute  (self, ATR_STRENGTH, - 25);
		Npc_ChangeAttribute  (self, ATR_HITPOINTS, - 60);
		Npc_ChangeAttribute  (self, ATR_HITPOINTS_MAX, - 60);

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];
	};

	FUNC VOID UnEquip_SkinnersRing()
	{
		Npc_ChangeAttribute	 (self,	ATR_STRENGTH, + 25);
		Npc_ChangeAttribute  (self, ATR_HITPOINTS_MAX, + 60);
		Npc_ChangeAttribute  (self, ATR_HITPOINTS, + 60);

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];
	};

INSTANCE ItRi_SkinnersRing_Gold(C_Item)
{
	name 					=	"Zloty blyszczacy rabek";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_MISSION|ITEM_RING|ITEM_MULTI; //Joly: Mu� so bleiben, sonst XP und Gold Exploit (Lord Hagen die Dinger bringen!)

	value 					=	400;

	visual 					=	"ItMi_GoldRing.3DS";

	visual_skin 			=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_SkinnersRing_Gold;
	on_unequip				=	UnEquip_SkinnersRing_Gold;

	description				= 	name;

	TEXT[0]					=	"Pierscien jest szorstki i promieniuje";
	TEXT[1]					=	"dziwne zimno";
	TEXT[2]					=	"";
	TEXT[3]					=	"";
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_WEAKGLIMMER"; 

	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
	
};

	FUNC VOID Equip_SkinnersRing_Gold ()
	{
		Npc_ChangeAttribute  (self, ATR_STRENGTH, - 25);
		Npc_ChangeAttribute  (self, ATR_HITPOINTS, - 60);
		Npc_ChangeAttribute  (self, ATR_HITPOINTS_MAX, - 60);

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];
	};

	FUNC VOID UnEquip_SkinnersRing_Gold()
	{
		Npc_ChangeAttribute	 (self,	ATR_STRENGTH, + 25);
		Npc_ChangeAttribute  (self, ATR_HITPOINTS_MAX, + 60);
		Npc_ChangeAttribute  (self, ATR_HITPOINTS, + 60);

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];
	};

/******************************************************************************************/	

var int Neoras_SCUsedDragonEggDrink;
INSTANCE ItPo_DragonEggDrinkNeoras_MIS (C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_HpElixier;	

	visual 			=	"ItPo_Perm_STR.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	Use_DragonEggDrinkNeoras;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	"Smokowy nap�j z lodem";
	
	TEXT[3]			= 	"Efekt nieznany";				
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

	FUNC VOID Use_DragonEggDrinkNeoras()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Elixier);
		B_RaiseAttribute_Rest (self, ATR_STRENGTH, + 3);
		Snd_Play ("DEM_Warn");
		Neoras_SCUsedDragonEggDrink = TRUE;

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];
	};


//////////////////////////////////////////////////////////////////////////////
//
//	MAP Der Orcelite
//
//////////////////////////////////////////////////////////////////////////////

instance ItWr_Map_Orcelite_MIS (C_Item)
{
	name 		= "Wojenna mapa ork�w";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_NewWorld_Orcelite_MIS;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};
var int Use_Map_NewWorld_Orcelite_MIS_OneTime;
	func void Use_Map_NewWorld_Orcelite_MIS()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_Orcelite_MIS);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_NewWorld_Orcelite.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	
		if (Use_Map_NewWorld_Orcelite_MIS_OneTime == FALSE)
		&& (MIS_KillOrkOberst != 0)
		{
			B_LogEntry (TOPIC_OrcElite,"Znalazlem dziwna mape w domu pulkownika Orkiewskiego. Wyglada to na strategiczna mape wojenna ork�w."); 
			Use_Map_NewWorld_Orcelite_MIS_OneTime = TRUE;
		};
	};
	
//////////////////////////////////////////////////////////////////////////////
//
//	Caves Map
//
//////////////////////////////////////////////////////////////////////////////

instance ItWr_Map_Caves_MIS (C_Item)
{
	name 		= "Jaskinie w Khorinisie";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 200;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_NewWorld_Caves_MIS;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_NewWorld_Caves_MIS()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_Caves_MIS);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_NewWorld_Caves.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};
