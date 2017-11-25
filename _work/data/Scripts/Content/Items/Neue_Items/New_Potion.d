INSTANCE ItFo_Potion_Elixier_Zange(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	100;	

	visual 			=	"ItFo_Potion_Elixier_Egg.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseZangenElixier;
	scemeName		=	"POTIONFAST";

	description			= "Minecrawler secretary";
	TEXT[1]				= NAME_Bonus_ManaMax;			COUNT[1]	= 1;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	func void  UseZangenElixier ()
	{
 		Npc_ChangeAttribute	(self, ATR_MANA_MAX,	1);
		PrintScreen	(PRINT_LearnMANA1, -1, 45, FONT_SCREEN, 2);
	};

INSTANCE ItFo_Potion_Elixier_Egg(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	200;	

	visual 			=	"ItFo_Potion_Elixier_Egg.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseEggElixier;
	scemeName		=	"POTIONFAST";

	description			= "Strong minecrawler secretion";
	TEXT[1]				= NAME_Bonus_ManaMax;			COUNT[1]	= 3;
	TEXT[5]				= NAME_Value;					COUNT[5]	= 200;
};

	func void  UseEggElixier ()
	{
 		Npc_ChangeAttribute	(self, ATR_MANA_MAX,	3);
		PrintScreen	(PRINT_LearnMANA3, -1, 45, FONT_SCREEN, 2);
	};

INSTANCE ItPo_KalomsTrank(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	200;	

	visual 			=	"ItFo_Potion_Elixier_Egg.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseKalomsTrank;
	scemeName		=	"POTIONFAST";

	description			= "Potion of Dexter";
	TEXT[5]				= NAME_Value;					COUNT[5]	= 200;
};

	func void  UseKalomsTrank ()
	{
 		Mod_CrazyRabbit = 1;
	};

INSTANCE ItFo_Potion_Blutfliege(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	100;	

	visual 			=	"ItFo_Potion_Elixier_Egg.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseBlutfliegeElixier;
	scemeName		=	"POTIONFAST";

	description			= "blood fly secretary";
	TEXT[1]				= NAME_Bonus_Hp;			COUNT[1]	= 15;
	TEXT[5]				= NAME_Value;				COUNT[5]	= value;
};

	func void  UseBlutfliegeElixier ()
	{
 		Npc_ChangeAttribute	(self, ATR_HITPOINTS, 15);

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];

		B_HealGift (10, 30);
	};

INSTANCE NeorasTrankVonMilten(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	100;	

	visual 			=	"ItPo_Mana_01.3ds";
	material 		=	MAT_GLAS;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION";

	description		= 	"Neora's potion";
	
	TEXT[1]			= 	"Effect:????";				
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;

};

INSTANCE ItPo_MiguelForDar (C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	100;	

	visual 			=	"ItFo_Potion_Elixier_Egg.3ds";
	material 		=	MAT_GLAS;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION";

	description		= 	"Miguel's potion for Dar";
	
	TEXT[1]			= 	"Effect:????";				
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

INSTANCE ItPo_Feldraeubertrank(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	200;	

	visual 			=	"ItPo_Mana_01.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseFeldraeubertrank;
	scemeName		=	"POTIONFAST";

	description			= "Dragomirs field predator aroma";
	TEXT[5]				= NAME_Value;					COUNT[5]	= 200;
};

	func void  UseFeldraeubertrank ()
	{
 		Feldraeubertrank_Used = TRUE;
	};

INSTANCE ItPo_Tiergift (C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	100;	

	visual 			=	"XR_TIERGIFTFLASCHE_1.3DS";
	material 		=	MAT_GLAS;

	description			= "animal poison";
	TEXT[1]				= "can be used to poison arrows and weapons";
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
	
	inv_roty = 360;
};

INSTANCE ItPo_Pflanzengift (C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	100;	

	visual 			=	"XR_Giftflasche_1.3DS";
	material 		=	MAT_GLAS;

	description			= "herbicide";
	TEXT[1]				= "can be used to poison arrows and weapons";
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
	
	inv_roty = 360;
};
