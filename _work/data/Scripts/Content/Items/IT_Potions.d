// ************************************************************************************************
// Wirkung und Kosten von Tränken
// ************************************************************************************************
const int	Value_Hp05			=	15;			const int	HP_05		=	35;
const int	Value_Hp06			=	20;			const int	HP_06		=	45;
const int	Value_HpEssenz			=	25;			const int	HP_Essenz		=	50;
const int	Value_HpExtrakt			=	35;			const int	HP_Extrakt		=	70;
const int	Value_HpElixier			=	50;			const int	HP_Elixier		=	100;

const int	Value_Mana05			=	18;			const int	Mana_05		=	40;
const int	Value_ManaEssenz		=	25;			const int	Mana_Essenz		=	50;
const int	Value_ManaExtrakt		=	40;			const int	Mana_Extrakt	=	75;
const int	Value_ManaElixier		=	60;			const int	Mana_Elixier	=	100;


const int	Value_StrElixier		=	800;		const int	STR_Elixier		=	3;
const int	Value_DexElixier		=	800;		const int	DEX_Elixier		=	3;
const int	Value_HpMaxElixier		=	1500;		const int	HPMax_Elixier	=	10;
const int	Value_AdanosWohltat		=	3000;		const int	HPAdanosWohltat	=	40;
const int	Value_ManaMaxElixier		=	1500;		const int	ManaMax_Elixier	=	5;
const int	Value_MegaDrink			=	1800;		const int	STRorDEX_MegaDrink = 15; //Joly: MegaBoost am Ende des Spiels!!!!!!!!

const int	Value_Speed			=	200;		const int	Time_Speed		=	300000;	// 5 min

//ADDON
const int 	Value_ManaTrunk			=   200;		
const int 	Value_HpTrunk			=   150;

/******************************************************************************************/
//	MANATRÄNKE																			//
/******************************************************************************************/
INSTANCE ItPo_Mana_01(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_ManaEssenz;	

	visual 			=	"ItPo_Mana_01.3ds";
	material 		=	MAT_GLAS;

	on_state[0]		=	UseItPo_Mana_01;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION";

	description		= 	"Mana Essence";
	
	TEXT[1]			= 	NAME_Bonus_Mana;				
	COUNT[1]		= 	Mana_Essenz;

	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_ManaEssenz;

};

	FUNC VOID UseItPo_Mana_01()
	{		
		Npc_ChangeAttribute	(self,	ATR_MANA, Mana_Essenz);

		if (Npc_IsPlayer(self))
		&& (Seele_unterwegs == TRUE)
		{
			Npc_ChangeAttribute	(Seele,	ATR_MANA, Mana_Essenz);
		};

		B_HealGift (10, 0);
	};

/******************************************************************************************/
INSTANCE ItPo_Mana_05(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_Mana05;	

	visual 			=	"ItPo_Mana_01.3ds";
	material 		=	MAT_GLAS;

	on_state[0]		=	UseItPo_Mana_05;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION";

	description		= 	"Light mana potion";
	
	TEXT[1]			= 	NAME_Bonus_Mana;				
	COUNT[1]		= 	Mana_05;

	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_Mana05;

};

	FUNC VOID UseItPo_Mana_05()
	{		
		Npc_ChangeAttribute	(self,	ATR_MANA, Mana_05);

		if (Npc_IsPlayer(self))
		&& (Seele_unterwegs == TRUE)
		{
			Npc_ChangeAttribute	(Seele,	ATR_MANA, Mana_05);
		};

		B_HealGift (10, 0);
	};

/******************************************************************************************/
INSTANCE ItPo_Mana_06(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_Mana05;	

	visual 			=	"ItPo_Mana_01.3ds";
	material 		=	MAT_GLAS;

	on_state[0]		=	UseItPo_Mana_06;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION";

	description		= 	"Drink of light mana";
	
	TEXT[1]			= 	NAME_Bonus_Mana;				
	COUNT[1]		= 	Mana_05;

	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_Mana05;

};

	FUNC VOID UseItPo_Mana_06()
	{		
		Npc_ChangeAttribute	(self,	ATR_MANA, Mana_05);

		if (Npc_IsPlayer(self))
		&& (Seele_unterwegs == TRUE)
		{
			Npc_ChangeAttribute	(Seele,	ATR_MANA, Mana_05);
		};

		B_HealGift (10, 0);
	};

/******************************************************************************************/
INSTANCE ItPo_Mana_02(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_ManaExtrakt;	

	visual 			=	"ItPo_Mana_02.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Mana_02;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION";

	description		= 	"Mana Extract";
	
	TEXT[1]			= 	NAME_Bonus_Mana;			
	COUNT[1]		= 	Mana_Extrakt;
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_ManaExtrakt;

};

	FUNC VOID UseItPo_Mana_02()
	{		
		Npc_ChangeAttribute	(self,	ATR_MANA,	Mana_Extrakt);

		if (Npc_IsPlayer(self))
		&& (Seele_unterwegs == TRUE)
		{
			Npc_ChangeAttribute	(Seele,	ATR_MANA, Mana_Extrakt);
		};

		B_HealGift (20, 0);
	};

/******************************************************************************************/
INSTANCE ItPo_Mana_03(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_ManaElixier;	

	visual 			=	"ItPo_Mana_03.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Mana_03;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION";

	description		= 	"Mana Elixir";
	
	TEXT[1]			= 	NAME_Bonus_Mana;				
	COUNT[1]		= 	Mana_Elixier;
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_ManaElixier;
};

	FUNC VOID UseItPo_Mana_03()
	{		
		Npc_ChangeAttribute	(self,	ATR_MANA,	Mana_Elixier);

		if (Npc_IsPlayer(self))
		&& (Seele_unterwegs == TRUE)
		{
			Npc_ChangeAttribute	(Seele,	ATR_MANA, Mana_Elixier);
		};

		B_HealGift (30, 0);
	};
/******************************************************************************************/
//	HEILTRÄNKE																			//
/******************************************************************************************/
INSTANCE ItPo_Health_01(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_HpEssenz;	

	visual 			=	"ItPo_Health_01.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Health_01;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_HEALTHPOTION"; 

	description		= 	"Essence of Healing";
	
	TEXT[1]			= 	NAME_Bonus_HP;				
	COUNT[1]		= 	HP_Essenz;
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_HpEssenz;
};

	FUNC VOID UseItPo_Health_01()
	{
		Npc_ChangeAttribute	(self, ATR_HITPOINTS, HP_Essenz);

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];

		if (Npc_IsPlayer(self))
		&& (Seele_unterwegs == TRUE)
		{
			Npc_ChangeAttribute	(Seele,	ATR_HITPOINTS, HP_Essenz);

			Seele.aivar[AIV_Damage] = Seele.attribute[ATR_HITPOINTS];
		};

		B_HealGift (10, 60);
	};

/******************************************************************************************/	
INSTANCE ItPo_Health_02(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_HpExtrakt;	

	visual 			=	"ItPo_Health_02.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Health_02;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_HEALTHPOTION"; 

	description		= 	"Extract of Healing";
	
	TEXT[1]			= 	NAME_Bonus_HP;				
	COUNT[1]		= 	HP_Extrakt;
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_HpExtrakt;
};

	FUNC VOID UseItPo_Health_02()
	{		
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Extrakt);

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];

		if (Npc_IsPlayer(self))
		&& (Seele_unterwegs == TRUE)
		{
			Npc_ChangeAttribute	(Seele,	ATR_HITPOINTS, HP_Extrakt);

			Seele.aivar[AIV_Damage] = Seele.attribute[ATR_HITPOINTS];
		};

		B_HealGift (20, 120);
	};

/******************************************************************************************/	
INSTANCE ItPo_SekobMedizin (C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI|ITEM_SHOW;

	value 			=	0;	

	visual 			=	"ItPo_Health_02.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_SekobMedizin;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_HEALTHPOTION"; 

	description		= 	"Medicine for Sekob";
	
	TEXT[1]			= 	NAME_Bonus_HP;				
	COUNT[1]		= 	HP_Extrakt;
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	0;
};

	FUNC VOID UseItPo_SekobMedizin()
	{		
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Extrakt);

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];

		if (Npc_IsPlayer(self))
		&& (Seele_unterwegs == TRUE)
		{
			Npc_ChangeAttribute	(Seele,	ATR_HITPOINTS, HP_Extrakt);

			Seele.aivar[AIV_Damage] = Seele.attribute[ATR_HITPOINTS];
		};

		B_HealGift (20, 120);
	};

/******************************************************************************************/	
INSTANCE ItPo_Health_03(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_HpElixier;	

	visual 			=	"ItPo_Health_03.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Health_03;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_HEALTHPOTION"; 

	description		= 	"Elixir of Healing";
	
	TEXT[1]			= 	NAME_Bonus_HP;				
	COUNT[1]		= 	HP_Elixier;
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_HpElixier;
};

	FUNC VOID UseItPo_Health_03()
	{		
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Elixier);

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];

		if (Npc_IsPlayer(self))
		&& (Seele_unterwegs == TRUE)
		{
			Npc_ChangeAttribute	(Seele,	ATR_HITPOINTS, HP_Elixier);

			Seele.aivar[AIV_Damage] = Seele.attribute[ATR_HITPOINTS];
		};

		B_HealGift (30, 180);
	};

/******************************************************************************************/	
INSTANCE ItPo_Health_05(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_Hp05;	

	visual 			=	"ItPo_Health_01.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Health_05;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_HEALTHPOTION"; 

	description		= 	"Drink of fast healing";
	
	TEXT[1]			= 	NAME_Bonus_HP;				
	COUNT[1]		= 	HP_05;
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_Hp05;
};

	FUNC VOID UseItPo_Health_05()
	{		
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_05);

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];

		if (Npc_IsPlayer(self))
		&& (Seele_unterwegs == TRUE)
		{
			Npc_ChangeAttribute	(Seele,	ATR_HITPOINTS, HP_05);

			Seele.aivar[AIV_Damage] = Seele.attribute[ATR_HITPOINTS];
		};

		B_HealGift (10, 30);
	};

/******************************************************************************************/	
INSTANCE ItPo_Health_06(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_Hp06;	

	visual 			=	"ItPo_Health_01.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Health_06;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_HEALTHPOTION"; 

	description		= 	"Light healing potion";
	
	TEXT[1]			= 	NAME_Bonus_HP;				
	COUNT[1]		= 	HP_06;
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_Hp06;
};

	FUNC VOID UseItPo_Health_06()
	{		
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_06);

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];

		if (Npc_IsPlayer(self))
		&& (Seele_unterwegs == TRUE)
		{
			Npc_ChangeAttribute	(Seele,	ATR_HITPOINTS, HP_06);

			Seele.aivar[AIV_Damage] = Seele.attribute[ATR_HITPOINTS];
		};

		B_HealGift (10, 30);
	};

/******************************************************************************************/	
INSTANCE ItPo_Health_07(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_Hp06;	

	visual 			=	"ItPo_Health_01.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Health_07;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_HEALTHPOTION"; 

	description		= 	"Drink of light healing";
	
	TEXT[1]			= 	NAME_Bonus_HP;				
	COUNT[1]		= 	HP_06;
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_Hp06;
};

	FUNC VOID UseItPo_Health_07()
	{		
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_06);

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];

		if (Npc_IsPlayer(self))
		&& (Seele_unterwegs == TRUE)
		{
			Npc_ChangeAttribute	(Seele,	ATR_HITPOINTS, HP_06);

			Seele.aivar[AIV_Damage] = Seele.attribute[ATR_HITPOINTS];
		};

		B_HealGift (10, 30);
	};
/******************************************************************************************/
// TRÄNKE FÜR PERMANENTE ATTRIBUT-ÄNDERUNGEN!
/******************************************************************************************/
INSTANCE ItPo_Perm_STR(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_StrElixier;	

	visual 			=	"ItPo_Perm_STR.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Perm_STR;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	"Elixir of Strength";
	
	TEXT[1]			= 	NAME_Bonus_Str;				
	COUNT[1]		= 	STR_Elixier;
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_StrElixier;
};

	FUNC VOID UseItPo_Perm_STR()
	{ 
		B_RaiseAttribute_Rest	(self, ATR_STRENGTH,	STR_Elixier);

		B_HealGift (20, 0);
	};
/******************************************************************************************/		
INSTANCE ItPo_Perm_DEX(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_DexElixier;	

	visual 			=	"ItPo_Perm_DEX.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Perm_DEX;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	"Elixir of Dexterity";
	TEXT[1]			= 	NAME_Bonus_Dex;
	COUNT[1]		= 	DEX_Elixier;
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_DexElixier;
};
	FUNC VOID UseItPo_Perm_DEX()
	{ 
		B_RaiseAttribute_Rest	(self, ATR_DEXTERITY,	DEX_Elixier);

		B_HealGift (20, 0);
	};
/******************************************************************************************/		
INSTANCE ItPo_Perm_DEX_Salandril(C_Item)
{
	name 			=	"Precious potion";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_DexElixier;	

	visual 			=	"ItPo_Perm_DEX.3ds";
	material 		=	MAT_GLAS;
	
	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	name;
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_DexElixier;
};
/******************************************************************************************/
INSTANCE ItPo_Perm_Health(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_HpMaxElixier;	

	visual 			=	"ItPo_Perm_Health.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Perm_Health;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_HEALTHPOTION"; 

	description		= 	"Elixir of Life";
	
	TEXT[1]			= 	NAME_Bonus_HpMax;				
	COUNT[1]		= 	HPMax_Elixier;
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_HpMaxElixier;
};

	FUNC VOID UseItPo_Perm_Health()
	{
		B_RaiseAttribute_Rest	(self, ATR_HITPOINTS_MAX,	HPMax_Elixier);	
		Npc_ChangeAttribute	(self, ATR_HITPOINTS,	HPMax_Elixier);

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];

		B_HealGift (20, 0);
	
	};
/******************************************************************************************/
INSTANCE ItPo_PermHealth_Gut(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	0;	

	visual 			=	"ItPo_Perm_Health.3ds";
	material 		=	MAT_GLAS;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_HEALTHPOTION"; 

	description		= 	"Elixir of Life (still closed)";
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	0;
};
/******************************************************************************************/
INSTANCE ItPo_PermHealth_Schlecht(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	0;	

	visual 			=	"ItPo_Perm_Health.3ds";
	material 		=	MAT_GLAS;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_HEALTHPOTION"; 

	description		= 	"Elixir of Life (still closed)";
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	0;
};
/******************************************************************************************/
INSTANCE ItPo_PermHealth_Mist(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	0;	

	visual 			=	"ItPo_Perm_Health.3ds";
	material 		=	MAT_GLAS;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_HEALTHPOTION"; 

	description		= 	"Elixir of Life";

	TEXT[1]			=	"Stinks like a pig";
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	0;
};
/******************************************************************************************/
INSTANCE ItPo_AdanosWohltat(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_AdanosWohltat;	

	visual 			=	"ItPo_Perm_Health.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_AdanosWohltat;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_HEALTHPOTION"; 

	description		= 	"Adanos' blessing";
	
	TEXT[1]			= 	NAME_Bonus_HpMax;				
	COUNT[1]		= 	HPAdanosWohltat;
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_AdanosWohltat;
};

	FUNC VOID UseItPo_AdanosWohltat()
	{
		B_RaiseAttribute_Rest	(self, ATR_HITPOINTS_MAX,	HPAdanosWohltat);	
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];

		B_HealGift (20, 0);
	
	};
/******************************************************************************************/
INSTANCE ItPo_Regeneration(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	50;	

	visual 			=	"ItPo_Perm_Health.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Regeneration;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_HEALTHPOTION"; 

	description		= 	"regeneration potion";
	
	TEXT[1]			= 	"2% HP and Mana for 1 minute";
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

	FUNC VOID UseItPo_Regeneration()
	{
		Mod_Regenerationstrank_Counter += 60;
	};
/******************************************************************************************/
INSTANCE ItPo_Perm_Mana(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_ManaMaxElixier;	

	visual 			=	"ItPo_Perm_Mana.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Perm_Mana;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description		= 	"Elixir of Spirit";
	TEXT[1]			= 	NAME_Bonus_ManaMax;			
	COUNT[1]		= 	ManaMax_Elixier;
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_ManaMaxElixier;
};

	FUNC VOID UseItPo_Perm_Mana()
	{
		B_RaiseAttribute_Rest	(self, ATR_MANA_MAX,	ManaMax_Elixier);
		Npc_ChangeAttribute	(self, ATR_MANA,	ManaMax_Elixier);

		B_HealGift (20, 0);
	};

INSTANCE ItPo_Geist(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_ManaMaxElixier*2;	

	visual 			=	"ItPo_Perm_Mana.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Perm_Mana2;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description		= 	"potion of the spirit";
	TEXT[1]			= 	NAME_Bonus_ManaMax;			
	COUNT[1]		= 	ManaMax_Elixier*2;
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_ManaMaxElixier*2;
};

	FUNC VOID UseItPo_Perm_Mana2()
	{
		B_RaiseAttribute_Rest	(self, ATR_MANA_MAX,	ManaMax_Elixier*2);
		Npc_ChangeAttribute	(self, ATR_MANA,	ManaMax_Elixier*2);

		B_HealGift (20, 0);
	};

INSTANCE ItPo_Wissen(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_ManaMaxElixier*2;	

	visual 			=	"ItPo_Perm_Mana.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Wissen;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description		= 	"potion of knowledge";
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_ManaMaxElixier*2;
};

	FUNC VOID UseItPo_Wissen()
	{
		B_GivePlayerXP	(30000);

		B_HealGift (20, 0);
	};

/******************************************************************************************/
//	SPEED-POTIONS																	      //
/******************************************************************************************/
INSTANCE ItPo_Speed(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_Speed;	

	visual 			=	"ItPo_Speed.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Speed;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	"Speed Potion";
	TEXT[1]			= 	"Temporarily boosts speed ";
	
	TEXT[3]			= 	NAME_Duration;				
	COUNT[3]		= 	Time_Speed/60000;
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

	FUNC VOID UseItPo_Speed()
	{
		Mdl_ApplyOverlayMDSTimed	(self, "HUMANS_SPRINT.MDS", Time_Speed);

		B_HealGift (10, 0);
		
	};

INSTANCE ItPo_Speed_Andre (C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_Speed;	

	visual 			=	"ItPo_Speed.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Speed_Andre;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	"Speed Potion";
	TEXT[1]			= 	"Allows long-term sprinting ";
	
	TEXT[3]			= 	NAME_Duration;	
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

	FUNC VOID UseItPo_Speed_Andre()
	{
		Mdl_ApplyOverlayMDS	(self, "HUMANS_SPRINT.MDS");

		B_HealGift (10, 0);
		
	};

INSTANCE ItPo_Gift(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_Speed;	

	visual 			=	"ItPo_Speed.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Gift;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	"poison potion";
	TEXT[1]			= 	"Poisons the drinker";
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

	FUNC VOID UseItPo_Gift()
	{
		HeroIstVergiftet = 1;
		
	};

INSTANCE ItPo_KamalGift(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_Speed;	

	visual 			=	"ItPo_Speed.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_KamalGift;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	"poison potion";
	TEXT[1]			= 	"by Kamal for the judge";
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

	FUNC VOID UseItPo_KamalGift()
	{
		
		
	};

INSTANCE ItPo_FreudenspenderSuppe (C_Item)
{
	name 			=	"Pleasure-giver-like slobber";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_Speed;	

	visual 			=	"ItPo_Speed.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseFreudenspenderSuppe;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	name;
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

	FUNC VOID UseFreudenspenderSuppe()
	{
		hero.attribute[ATR_HITPOINTS] = 1;

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];

		Npc_ClearAIQueue	(hero);
		AI_StartState		(hero, ZS_MagicSleep, 0, "");
		
	};

INSTANCE ItPo_OnarsTrank(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_Speed;	

	visual 			=	"ItPo_Speed.3ds";
	material 		=	MAT_GLAS;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	"mixed herbs";
	TEXT[1]			= 	"From Sagitta for Onar";
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

INSTANCE ItPo_Gegengift (C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	100;	

	visual 			=	"XR_GOLDFLASCHE.3DS";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Gegengift;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	"antidote";
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

	FUNC VOID UseItPo_Gegengift()
	{
		Mod_Fliegenpilzgift_MSG = 0;
		Mod_Fliegenpilzgift = 0;
		Mod_Fliegenpilzgift_Counter = 0;

		B_HealGift (-1, 60);
	};

INSTANCE ItPo_Genesung (C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	100;	

	visual 			=	"XR_GOLDFLASCHE.3DS";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Genesung;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	"Drink of Recovery";
	
	TEXT[1]			= 	"alleviates diseases";	
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

	FUNC VOID UseItPo_Genesung()
	{
		B_HealGift (0, 1000000);
	};

INSTANCE ItPo_Mischgift (C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	100;	

	visual 			=	"XR_GOLDFLASCHE.3DS";
	material 		=	MAT_GLAS;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	"mixed poison";
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

INSTANCE ItPo_GiftNeutralisierer (C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	600;	

	visual 			=	"XR_SILBERFLASCHE.3DS";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_GiftNeutralisierer;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	"Potion of temporary toxic immunity";

	TEXT[1]			=	"Makes 10 minutes immune to any toxins";
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

	FUNC VOID UseItPo_GiftNeutralisierer()
	{
		Mod_GiftNeutralisierung = 600;
	};
/******************************************************************************************/
//	MegaDrink	Kapitel 6																      //
/******************************************************************************************/

INSTANCE ItPo_MegaDrink (C_Item)	//Joly: Megatrank aus Dracheneiern auf der Dracheninsel -> Kapitel 6 kurz vor´m Endgegner
{
	name 			=	"Embarla Firgasto";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_MegaDrink;	

	visual 			=	"ItPo_Perm_Mana.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_MegaDrink;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	name;
	
	TEXT[3]			= 	"Effects unknown";				

	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

	FUNC VOID UseItPo_MegaDrink()
		{
			if (self.attribute[ATR_STRENGTH] < self.attribute[ATR_DEXTERITY])
				{
					B_RaiseAttribute_Rest	(self, ATR_DEXTERITY,	STRorDEX_MegaDrink);
				}
			else
				{
					B_RaiseAttribute_Rest	(self, ATR_STRENGTH,	STRorDEX_MegaDrink);
				};
	
			Npc_ChangeAttribute	(self,	ATR_MANA, - ATR_MANA); //Joly: gemäß des Rezeptes
			Snd_Play ("DEM_Warn");
		};

INSTANCE ItPo_Drachensud (C_Item)	//Joly: Megatrank aus Dracheneiern auf der Dracheninsel -> Kapitel 6 kurz vor´m Endgegner
{
	name 			=	"Dragon soup of mana combustion";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_MegaDrink;	

	visual 			=	"ItPo_Perm_Mana.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseDrachensud;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	name;
	
	TEXT[3]			= 	"Effects unknown";				

	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

FUNC VOID UseDrachensud()
{
	hero.protection[PROT_FIRE] += 20;
	hero.protection[PROT_EDGE] += 10000;
	hero.protection[PROT_BLUNT] += 10000;
	hero.protection[PROT_POINT] += 10000;
	hero.protection[PROT_MAGIC] += 10;

	Print	("Arms values permanently increased!");

	Mod_NL_DrachensudIntus = 1;
};

INSTANCE ItPo_ZufallsDrink (C_Item)
{
	name 			=	"potion of chance";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_MegaDrink;	

	visual 			=	"ItPo_Perm_Mana.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_ZufallsDrink;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	name;
	
	TEXT[3]			= 	"Effects unknown";				

	TEXT[2]			= 	"Effect duration (in minutes):";	
	COUNT[2]		= 	10;
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

FUNC VOID UseItPo_ZufallsDrink()
{
	if (Mod_Zufallsdrink_Intus == FALSE)
	{
		Mod_ZufallsDrink_Counter = 0;

		var int Random;
		Random = Hlp_Random(100);

		if (Random <= 25)
		{
			B_RaiseAttribute_Rest	(self, ATR_DEXTERITY,	10);

			Mod_Zufallsdrink_Att = ATR_DEXTERITY;
		}
		else if (Random <= 50)
		{
			B_RaiseAttribute_Rest	(self, ATR_STRENGTH,	10);

			Mod_Zufallsdrink_Att = ATR_STRENGTH;
		}
		else if (Random <= 75)
		{
			B_RaiseAttribute_Rest	(self, ATR_MANA_MAX,	10);

			Mod_Zufallsdrink_Att = ATR_MANA_MAX;
		}
		else if (Random <= 100)
		{
			B_RaiseAttribute_Rest	(self, ATR_HITPOINTS_MAX,	10);

			Mod_Zufallsdrink_Att = ATR_HITPOINTS_MAX;
		};

		Mod_Zufallsdrink_Intus = TRUE;
	}
	else
	{
		CreateInvItems	(hero, ItPo_ZufallsDrink, 1);
	};
};

INSTANCE ItFo_Bruehe (C_Item)
{
	name 			=	"potion";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	10;	

	visual 			=	"ItMi_Flask.3ds";
	material 		=	MAT_GLAS;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	"broth";

	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

INSTANCE ItPo_Weisenchronik (C_Item)
{
	name 			=	"Wise Chronicle";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_MegaDrink;	

	visual 			=	"ItFo_Potion_Elixier_Egg.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_Weisenchronik;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	name;
	
	TEXT[3]			= 	"Effects unknown";	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

FUNC VOID UseItPo_Weisenchronik()
{
	if (Mod_Weisenchronik_Intus == FALSE)
	{
		hero.attribute[ATR_MANA] -= 10;
		hero.attribute[ATR_STRENGTH] -= 10;
		hero.attribute[ATR_DEXTERITY] -= 10;

		Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, FALSE);

		PrintScreen	("You feel tired!", -1, -1, FONT_SCREEN, 2);

		Mod_Weisenchronik_Intus = TRUE;
	}
	else
	{
		CreateInvItems	(hero, ItPo_Weisenchronik, 1);
	};
};

INSTANCE ItPo_FolgsamkeitSnapper (C_Item)
{
	name 			=	"Drink of the snapper's obedience";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_MegaDrink;	

	visual 			=	"ItFo_Potion_Elixier_Egg.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_FolgsamkeitSnapper;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	name;
	
	TEXT[3]			= 	"Effects unknown";	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

FUNC VOID UseItPo_FolgsamkeitSnapper()
{
	if (Mod_FolgsamkeitSnapper_Intus == FALSE)
	{
		hero.attribute[ATR_STRENGTH] += 20;
		hero.attribute[ATR_DEXTERITY] += 20;

		hero.protection[PROT_EDGE] += 30000;
		hero.protection[PROT_BLUNT] += 30000;
		hero.protection[PROT_POINT] += 30000;
		hero.protection[PROT_MAGIC] += 30;
		hero.protection[PROT_FIRE] += 30;

		hero.guild = GIL_SNAPPER;

		AI_UnequipArmor	(hero);

		Mdl_SetVisualBody (hero, "hum_body_naked0", 1,				0,			"Hum_Head_Dragonsnapper", 	FACE_N_Player,	0, 			NO_Armor);

		Mod_FolgsamKeitSnapper_Time = 300;

		Mod_FolgsamkeitSnapper_Intus = TRUE;
	}
	else
	{
		CreateInvItems	(hero, ItPo_Weisenchronik, 1);
	};
};

INSTANCE ItPo_Purpurmond(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_MegaDrink;	

	visual 			=	"Purpurmond.3ds";
	material 		=	MAT_GLAS;

	on_state[0]		=	UseItPo_Purpurmond;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_HEALTHPOTION";

	description		= 	"purple moon";

	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;

};

	FUNC VOID UseItPo_Purpurmond()
	{		
		if (Npc_IsPlayer(self))
		{
			if (Mod_Purpurmond_Intus == 0)
			{
				hero.attribute[ATR_STRENGTH] -= 10;
				hero.attribute[ATR_DEXTERITY] -= 10;
				hero.attribute[ATR_MANA_MAX] -= 10;
				hero.attribute[ATR_MANA] -= 10;

				PrintScreen	("You feel tired!", -1, -1, FONT_SCREEN, 2);

				Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, FALSE);

				B_GivePlayerXP	(200);

				Mod_Purpurmond_Intus = 1;

				Mod_Purpurmond_Intus_Time = 3600;
			}
			else
			{
				PrintScreen	("You exaggerated!", -1, -1, FONT_SCREEN, 2);

				if (hero.attribute[ATR_HITPOINTS] > (hero.attribute[ATR_HITPOINTS_MAX]*2)/5)
				{
					hero.attribute[ATR_HITPOINTS] = (hero.attribute[ATR_HITPOINTS_MAX]*2)/5;
				};
				if (hero.attribute[ATR_MANA] > (hero.attribute[ATR_MANA_MAX]*2)/5)
				{
					hero.attribute[ATR_MANA] = (hero.attribute[ATR_MANA_MAX]*2)/5;
				};

				NeuBetrunken = 1;

				Mod_Betrunken = 1;
			};
		};
	};
