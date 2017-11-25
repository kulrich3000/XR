// *************************
// unbenutzte Item - Visuals
// *************************

//ItRw_Bow_War_04	// D�monenbogen, Todbringer
//ItRw_Bow_War_03	// Sturmbogen
//ItRw_Bow_War_02	// Orkhetzer
//ItRw_Bow_War_01	// Kriegsbogen
//ItRw_Bow_Long_08	// Nimroder, Hornbogen
//ItRw_Bow_Long_07	// Armeebogen
//ItRw_Bow_Long_06	// Windbrecher
//ItRw_Bow_Long_05	// Wolfsfetzer
//ItRw_Bow_Long_04	// Eichenbogen
//ItRw_Bow_Long_03	// Weidenbogen
//ItRw_Bow_Long_02	// Heckenbogen
//ItRw_Bow_Long_01	// Langbogen
//ItRw_Bow_Small_05	// Knochenbogen
//ItRw_Bow_Small_04	// Jagdbogen
//ItRw_Bow_Small_03	// Feldbogen
//ItRw_Bow_Small_02	// Reiterbogen
//ItRw_Bow_Small_01	// Kurzbogen 



//Munition

INSTANCE ItRw_Arrow(C_Item)
{
	name 				=	"strzalka";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_BOW|ITEM_MULTI;

	value 				=	Value_Pfeil;

	visual 				=	"ItRw_Arrow.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_WiderhakenArrow(C_Item)
{
	name 				=	"Straszny";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_BOW|ITEM_MULTI;

	value 				=	Value_Pfeil;

	visual 				=	"ItRw_Arrow.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_PraezisionsArrow(C_Item)
{
	name 				=	"strzalka precyzyjna";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_BOW|ITEM_MULTI;

	value 				=	Value_Pfeil;

	visual 				=	"ItRw_Arrow.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_SprengstoffArrow(C_Item)
{
	name 				=	"strzalka wybuchu";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_BOW|ITEM_MULTI;

	value 				=	Value_Pfeil;

	visual 				=	"ItRw_Arrow.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_RueckverwandlungsArrow(C_Item)
{
	name 				=	"tylna strzalka przeksztalcania";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_BOW|ITEM_MULTI;

	value 				=	Value_Pfeil;

	visual 				=	"ItRw_Arrow.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_GoldErzArrow(C_Item)
{
	name 				=	"Strzalka z konc�wka rudy zlota";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_BOW|ITEM_MULTI;

	value 				=	Value_Pfeil;
	damageTotal	= 10;

	visual 				=	"ItRw_Arrow.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_GoldErzBlutArrow(C_Item)
{
	name 				=	"Strzalka z rudo-krewetowa konc�wka zlota";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_BOW|ITEM_MULTI;

	value 				=	Value_Pfeil;
	damageTotal	= 20;

	visual 				=	"ItRw_Arrow.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_HolyArrow(C_Item)
{
	name 				=	"Swieta strzala";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_BOW|ITEM_MULTI;

	value 				=	Value_Pfeil;

	visual 				=	"ItRw_Arrow.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_TiergiftArrow(C_Item)
{
	name 				=	"trucizna zwierzeca rzutka";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_BOW|ITEM_MULTI;

	value 				=	Value_Pfeil;

	visual 				=	"ItRw_Arrow.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_GewaechsgiftArrow(C_Item)
{
	name 				=	"trucizna roslinna rzutka";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_BOW|ITEM_MULTI;

	value 				=	Value_Pfeil;

	visual 				=	"ItRw_Arrow.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_SchmetterArrow(C_Item)
{
	name 				=	"strzalka motylkowa";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_BOW|ITEM_MULTI;

	value 				=	Value_Pfeil;

	visual 				=	"ItRw_SchmetterArrow.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_Bolt(C_Item)
{
	name 				=	"sworznie";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_CROSSBOW|ITEM_MULTI;

	value 				=	Value_Bolzen;

	visual 				=	"ItRw_Bolt.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_WiderhakenBolt(C_Item)
{
	name 				=	"Stluczki";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_CROSSBOW|ITEM_MULTI;

	value 				=	Value_Bolzen;

	visual 				=	"ItRw_Bolt.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_PraezisionsBolt(C_Item)
{
	name 				=	"precyzyjne sruby";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_CROSSBOW|ITEM_MULTI;

	value 				=	Value_Bolzen;

	visual 				=	"ItRw_Bolt.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_SprengstoffBolt(C_Item)
{
	name 				=	"sworzen wybuchowy";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_CROSSBOW|ITEM_MULTI;

	value 				=	Value_Bolzen;

	visual 				=	"ItRw_Bolt.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_RueckverwandlungsBolt(C_Item)
{
	name 				=	"sworznie przeksztalcajace";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_CROSSBOW|ITEM_MULTI;

	value 				=	Value_Bolzen;

	visual 				=	"ItRw_Bolt.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_GoldErzBolt(C_Item)
{
	name 				=	"Sruba z konc�wka rudy zlota";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_CROSSBOW|ITEM_MULTI;

	value 				=	Value_Bolzen;
	damageTotal	= 10;

	visual 				=	"ItRw_Bolt.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_GoldErzBlutBolt(C_Item)
{
	name 				=	"Bolc�wka z konc�wka z rudy zlota";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_CROSSBOW|ITEM_MULTI;

	value 				=	Value_Bolzen;
	damageTotal	= 20;

	visual 				=	"ItRw_Bolt.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_HolyBolt(C_Item)
{
	name 				=	"Swiety Bolczyk";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_CROSSBOW|ITEM_MULTI;

	value 				=	Value_Bolzen;

	visual 				=	"ItRw_Bolt.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_TiergiftBolt(C_Item)
{
	name 				=	"sworzen trucizny zwierzecej";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_CROSSBOW|ITEM_MULTI;

	value 				=	Value_Bolzen;

	visual 				=	"ItRw_Bolt.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_GewaechsgiftBolt(C_Item)
{
	name 				=	"sworznie trucizny roslinnej";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_CROSSBOW|ITEM_MULTI;

	value 				=	Value_Bolzen;

	visual 				=	"ItRw_Bolt.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

INSTANCE ItRw_SchmetterBolt(C_Item)
{
	name 				=	"sworzen motylkowy";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_CROSSBOW|ITEM_MULTI;

	value 				=	Value_Bolzen;

	visual 				=	"ItRw_SchmetterBolt.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

instance ItRw_Addon_MagicCrossbow (C_Item)
{
	name 				=	"Magic Crossowow '.";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;

	wear				=	WEAR_EFFECT;
	effect				=	"SPELLFX_CROSSBOW";

	value 				=	Value_MagicCrossbow;

	damageTotal			= 	Damage_MagicCrossbow;
	damagetype			=	DAM_MAGIC;
	munition			=	ItRw_Addon_MagicBolt;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_MagicCrossbow;
	visual 				=	"ItRw_Crossbow_H_01.mms";

	range		= 3000;
	
	on_equip	=	munichange_cb;
	on_unequip	=	munichange_cb_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};


instance ItRw_Addon_FireBow (C_Item)
{
	name 				=	"pozar";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_FireBow;

	damageTotal			=	Damage_FireBow;
	damagetype			=	DAM_FIRE;
	munition			=	ItRw_Addon_FireArrow;

	wear				=	WEAR_EFFECT;
	effect				=	"SPELLFX_FIREBOW";

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_FireBow;
	visual 				=	"ItRw_Bow_H_04.mms";

	range		= 3000;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//NSC Waffen

INSTANCE ItRw_Mil_Crossbow(C_Item)
{
	name 				=	"kusza";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW | ITEM_MULTI;
	material 			=	MAT_WOOD;

	value 				=	Value_MilArmbrust;

	damageTotal			= 	Damage_MilArmbrust;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Bolt;
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_MilArmbrust;
	visual 				=	"ItRw_Mil_Crossbow.mms";

	range		= 2500;
	
	on_equip	=	munichange_cb;
	on_unequip	=	munichange_cb_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_Holzarmbrust(C_Item)
{
	name 				=	"drewniane ramie";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW | ITEM_MULTI;
	material 			=	MAT_WOOD;

	value 				=	Value_Holzarmbrust;

	damageTotal			= 	Damage_Holzarmbrust;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Bolt;
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Holzarmbrust;
	visual 				=	"ITRW_CROSSBOW_SLD_01.mms";

	range		= 2500;
	
	on_equip	=	munichange_cb;
	on_unequip	=	munichange_cb_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_Goldarmbrust(C_Item)
{
	name 				=	"zlota bransoletka";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW | ITEM_MULTI;
	material 			=	MAT_WOOD;

	value 				=	Value_Goldarmbrust;

	damageTotal			= 	Damage_Goldarmbrust;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Bolt;
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Goldarmbrust;
	visual 				=	"ITRW_GOLDARMBRUST_L.mms";

	range		= 2500;
	
	on_equip	=	munichange_cb;
	on_unequip	=	munichange_cb_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_EchsenArmbrust (C_Item)
{
	name 				=	"kusza jaszczurka";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW | ITEM_MULTI;
	material 			=	MAT_WOOD;

	value 				=	Value_MilArmbrust;

	damageTotal			= 	50;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Bolt;
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	30;
	visual 				=	"ItRw_Mil_Crossbow.mms";

	range		= 2000;
	
	on_equip	=	munichange_cb;
	on_unequip	=	munichange_cb_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_Mil_Crossbow_Schmetter (C_Item)
{
	name 				=	"kusza";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW | ITEM_MULTI;
	material 			=	MAT_WOOD;

	value 				=	Value_MilArmbrust;

	damageTotal			= 	Damage_MilArmbrust;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_SchmetterBolt;
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_MilArmbrust;
	visual 				=	"ItRw_Mil_Crossbow.mms";

	range		= 2500;
	
	on_equip	=	munichange_cb;
	on_unequip	=	munichange_cb_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};


instance ItRw_Addon_MagicBow (C_Item)
{
	name 				=	"Magiczny bow";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_MagicBow;

	damageTotal			=	Damage_MagicBow;
	damagetype			=	DAM_MAGIC;
	munition			=	ItRw_Addon_MagicArrow;

	wear				=	WEAR_EFFECT;
	effect				=	"SPELLFX_BOW";

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_MagicBow;
	visual 				=	"ItRw_Bow_H_04.mms";

	range		= 3000;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_Sld_Bow(C_Item)
{
	name 				=	"zakret";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_Sldbogen;

	damageTotal			=	Damage_Sldbogen;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_Sldbogen;

	range		= 2500;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;
	visual 				=	"ItRw_Sld_Bow.mms";

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_Sld_Bow_Schmetter (C_Item)
{
	name 				=	"zakret";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_Sldbogen;

	damageTotal			=	Damage_Sldbogen;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_SchmetterArrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_Sldbogen;

	range		= 2500;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;
	visual 				=	"ItRw_Sld_Bow.mms";

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};


//B�gen
//Kapitel 1
instance ItRw_Bow_L_01(C_Item)
{
	name 				=	"kr�tki";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_Kurzbogen;

	damageTotal			=	Damage_Kurzbogen;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_Kurzbogen;

	range		= 1500;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;
	visual 				=	"ItRw_Bow_L_01.mms";

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

instance ItRw_EchsenBogen (C_Item)
{
	name 				=	"jaszczurka";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_Kurzbogen;

	damageTotal			=	50;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	30;

	range		= 1800;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;
	visual 				=	"ItRw_Bow_L_01.mms";

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Bow_War_02 (C_Item)
{
	name 				=	"huragan";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	1360;//340;

	damageTotal			=	100;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	80;
	visual 				=	"ItRw_Bow_War_02.mms";

	range		= 2600;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Bow_War_03 (C_Item)
{
	name 				=	"luk burzy";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	1440;//360;

	damageTotal			=	120;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	100;
	visual 				=	"ItRw_Bow_War_03.mms";

	range		= 2700;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Snapperbogen (C_Item)
{
	name 				=	"luk";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	1000;//360;

	damageTotal			=	77;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	70;
	visual 				=	"ItRw_Bow_War_03.mms";

	range		= 3500;
	
	on_equip	=	Equip_Snapperbogen;
	on_unequip	=	UnEquip_Snapperbogen;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_BOW;			COUNT[4]	= Waffenbonus_20;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

FUNC VOID Equip_Snapperbogen()
{
	if (Npc_IsPlayer (self))
	{ 
		B_AddFightSkill (self, NPC_TALENT_BOW, Waffenbonus_20);
	};

	MEM_Call(munichange);
};

FUNC VOID UnEquip_Snapperbogen()
{
	if (Npc_IsPlayer (self))
	{ 
		B_AddFightSkill (self, NPC_TALENT_BOW, -Waffenbonus_20);
	};

	MEM_Call(munichange_e);
};

/******************************************************************************************/
INSTANCE ItRw_Bow_War_04 (C_Item)
{
	name 				=	"demon";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	1520;//380;

	damageTotal			=	130;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	110;
	visual 				=	"ItRw_Bow_War_04.mms";

	range		= 2800;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Bow_War_05 (C_Item)
{
	name 				=	"smiertelnik";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	2000;//500;

	damageTotal			=	140;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	120;
	visual 				=	"ItRw_Bow_War_04.mms";

	range		= 2900;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Bow_War_05_Schmetter (C_Item)
{
	name 				=	"smiertelnik";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	2000;//500;

	damageTotal			=	140;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_SchmetterArrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	120;
	visual 				=	"ItRw_Bow_War_04.mms";

	range		= 2900;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_Bow_L_02 (C_Item)
{
	name 				=	"wierzba";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_Weidenbogen;

	damageTotal			=	Damage_Weidenbogen;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_Weidenbogen;
	visual 				=	"ItRw_Bow_L_02.mms";

	range		= 1800;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//Kapitel 2
instance ItRw_Bow_L_03 (C_Item)
{
	name 				=	"lowiectwo";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_Jagdbogen;

	damageTotal			=	Damage_Jagdbogen;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_Jagdbogen;
	visual 				=	"ItRw_Bow_M_01.mms";

	range		= 2000;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

instance ItRw_Bow_L_03_Zelar (C_Item)
{
	name 				=	"lowiectwo";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_Jagdbogen;

	damageTotal			=	Damage_Jagdbogen;
	damagetype			=	DAM_MAGIC;
	munition			=	ItRw_Addon_MagicArrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_Jagdbogen;
	visual 				=	"ItRw_Bow_M_01.mms";

	range		= 2000;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

instance ItRw_Bow_L_04 (C_Item)
{
	name 				=	"luk wiazowy";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_Ulmenbogen;

	damageTotal			=	Damage_Ulmenbogen;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_Ulmenbogen;
	visual 				=	"ItRw_Bow_M_02.mms";

	range		= 2200;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//Kapitel 3

INSTANCE ItRw_Bow_M_01 (C_Item)
{
	name 				=	"luk";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_Kompositbogen;

	damageTotal			=	Damage_Kompositbogen;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_Kompositbogen;
	visual 				=	"ItRw_Bow_M_01.mms";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	range		= 2400;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_Bow_M_02 (C_Item)
{
	name 				=	"jesion";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_Eschenbogen;

	damageTotal			=	Damage_Eschenbogen;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_Eschenbogen;
	visual 				=	"ItRw_Bow_M_02.mms";

	range		= 2500;

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//Kapitel 4

INSTANCE ItRw_Bow_M_03 (C_Item)
{
	name 				=	"sciega";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_Langbogen;

	damageTotal			=	Damage_Langbogen;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_Langbogen;
	visual 				=	"ItRw_Bow_M_03.mms";

	range		= 2500;

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_Bow_M_04 (C_Item)
{
	name 				=	"arkusz bukowy";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_Buchenbogen;

	damageTotal			=	Damage_Buchenbogen;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_Buchenbogen;
	visual 				=	"ItRw_Bow_M_04.mms";

	range		= 2500;

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//Kapitel 5

INSTANCE ItRw_Bow_H_01 (C_Item)
{
	name 				=	"kosc";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_Knochenbogen;

	damageTotal			=	Damage_Knochenbogen;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_Knochenbogen;
	visual 				=	"ItRw_Bow_H_01.mms";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	range		= 2500;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_Geisterbogen (C_Item)
{
	name 				=	"duch";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_Knochenbogen;

	damageTotal			=	Damage_Knochenbogen;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_Knochenbogen;
	visual 				=	"ItRw_Bow_H_01.mms";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	range		= 2500;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[0]				= "50% wiecej szk�d dla nieumarlych";
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_Bow_H_02 (C_Item)
{
	name 				=	"debowy luk";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_Eichenbogen;

	damageTotal			=	Damage_Eichenbogen;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_Eichenbogen;
	visual 				=	"ItRw_Bow_H_02.mms";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	range		= 2700;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//Kapitel 6

INSTANCE ItRw_Bow_H_03 (C_Item)
{
	name 				=	"wojna";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_Kriegsbogen;

	damageTotal			=	Damage_Kriegsbogen;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_Kriegsbogen;
	visual 				=	"ItRw_Bow_H_03.mms";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	range		= 3000;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_Bow_H_04 (C_Item)
{
	name 				=	"luk smok";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_Drachenbogen;

	damageTotal			=	170;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	160;
	visual 				=	"ItRw_Bow_H_04.mms";

	range		= 3000;

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_Bow_H_04_Eigen (C_Item)
{
	name 				=	"Smoczy uklon (samowybudowany)";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	Value_Drachenbogen;

	damageTotal			=	180;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	150;
	visual 				=	"ItRw_Bow_H_04.mms";

	range		= 3000;

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;
	
	on_equip	=	munichange;
	on_unequip	=	munichange_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//Armbr�ste

//Kapitel 1

INSTANCE ItRw_Crossbow_L_01(C_Item)
{
	name 				=	"kusza";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW | ITEM_MULTI;
	material 			=	MAT_WOOD;

	value 				=	Value_Jagdarmbrust;

	damageTotal			= 	Damage_Jagdarmbrust;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Bolt;
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Jagdarmbrust;
	visual 				=	"ItRw_Crossbow_L_01.mms";

	range		= 1800;
	
	on_equip	=	munichange_cb;
	on_unequip	=	munichange_cb_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//Kapitel 2

INSTANCE ItRw_Crossbow_L_02(C_Item)
{
	name 				=	"Kusza swietlna";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW | ITEM_MULTI;
	material 			=	MAT_WOOD;

	value 				=	Value_LeichteArmbrust;

	damageTotal			= 	Damage_LeichteArmbrust;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Bolt;
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_LeichteArmbrust;
	visual 				=	"ItRw_Crossbow_L_02.mms";

	range		= 1900;
	
	on_equip	=	munichange_cb;
	//on_unequip	=	munichange_cb_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//Kapitel 3

INSTANCE ItRw_Crossbow_M_01(C_Item)
{
	name 				=	"kusza";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW | ITEM_MULTI;
	material 			=	MAT_WOOD;

	value 				=	Value_Armbrust;

	damageTotal			= 	Damage_Armbrust;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Bolt;
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Armbrust;
	visual 				=	"ItRw_Crossbow_M_01.mms";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	range		= 2000;
	
	on_equip	=	munichange_cb;
	on_unequip	=	munichange_cb_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//Kapitel 4

INSTANCE ItRw_Crossbow_M_02(C_Item)
{
	name 				=	"kusza";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW | ITEM_MULTI;
	material 			=	MAT_WOOD;

	value 				=	Value_Kriegsarmbrust;

	damageTotal			= 	Damage_Kriegsarmbrust;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Bolt;
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Kriegsarmbrust;
	visual 				=	"ItRw_Crossbow_M_02.mms";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	range		= 2500;
	
	on_equip	=	munichange_cb;
	on_unequip	=	munichange_cb_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//Kapitel 5

INSTANCE ItRw_Crossbow_H_01(C_Item)
{
	name 				=	"Ciezki crossbow";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW | ITEM_MULTI;
	material 			=	MAT_WOOD;

	value 				=	Value_SchwereArmbrust;

	damageTotal			= 	Damage_SchwereArmbrust;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Bolt;
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_SchwereArmbrust;
	visual 				=	"ItRw_Crossbow_H_01.mms";

	range		= 2600;

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;
	
	on_equip	=	munichange_cb;
	on_unequip	=	munichange_cb_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//Kapitel 5

INSTANCE ItRw_Crossbow_Orc(C_Item)
{
	name 				=	"krzyz�wka ramienia huraganu";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW | ITEM_MULTI;
	material 			=	MAT_WOOD;

	value 				=	Value_SchwereArmbrust;

	damageTotal			= 	Damage_SchwereArmbrust-30;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Bolt;
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_SchwereArmbrust-30;
	visual 				=	"ItRw_Crossbow_H_01.mms";

	range		= 2600;
	
	on_equip	=	munichange_cb;
	on_unequip	=	munichange_cb_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//Kapitel 6

INSTANCE ItRw_Crossbow_H_02(C_Item)
{
	name 				=	"Smok kusza";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW | ITEM_MULTI;
	material 			=	MAT_WOOD;

	value 				=	Value_Drachenjaegerarmbrust;

	damageTotal			= 	180;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Bolt;
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	165;
	visual 				=	"ItRw_Crossbow_H_02.mms";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	range		= 3000;
	
	on_equip	=	munichange_cb;
	on_unequip	=	munichange_cb_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_Crossbow_H_02_Eigen(C_Item)
{
	name 				=	"Pokusa smokowfighter (samobudowana)";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW | ITEM_MULTI;
	material 			=	MAT_WOOD;

	damageTotal			= 	190;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Bolt;
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	155;
	visual 				=	"ItRw_Crossbow_H_02.mms";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	range		= 3000;
	
	on_equip	=	munichange_cb;
	on_unequip	=	munichange_cb_e;

	description			= name;
	TEXT[1]				= NAME_Range;					COUNT[1]	= range/100;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

FUNC VOID munichange()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))//Wenn der Benutzer der held ist...
	{ 
		Wld_StopEffect("SLOW_MOTION_1");
		Wld_StopEffect("SLOW_MOTION_2");
		Wld_StopEffect("SLOW_MOTION_3");
		Wld_StopEffect("SLOW_MOTION_4");
		Wld_StopEffect("SLOW_MOTION_5");
		Wld_StopEffect("SLOW_MOTION_6");

		B_SetAivar(self, AIV_INVINCIBLE, TRUE); //Gegner greifen nicht an, solange der Held im Auswahlmodus ist

		PLAYER_MOBSI_PRODUCTION = MOBSI_Bow; //Der Mobsi BOw ist aktiv
		AI_ProcessInfos (her); //Dialog wird gestartet
	};

};

FUNC VOID munichange_e()
{

};

INSTANCE PC_Arrow_Eis (C_INFO)
{
	nr 		= 1;
	npc 		= PC_Hero;
	condition 	= PC_Arrow_Eis_Condition;
	information 	= PC_Arrow_Eis_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Eispfeil"; 
};

FUNC INT PC_Arrow_Eis_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_Bow))
	&& (Npc_HasItems (hero, ItRw_IceArrow) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Arrow_Eis_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_IceArrow; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Strzalka lodowa wybrana jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Arrow_Sprengstoff (C_INFO)
{
	nr 		= 2;
	npc 		= PC_Hero;
	condition 	= PC_Arrow_Sprengstoff_Condition;
	information 	= PC_Arrow_Sprengstoff_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Explosionspfeil"; 
};

FUNC INT PC_Arrow_Sprengstoff_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_Bow))
	&& (Npc_HasItems (hero, ItRw_SprengstoffArrow) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Arrow_Sprengstoff_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_SprengstoffArrow; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Strzalka wybuchowa wybrana jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Arrow_Feuer (C_INFO)
{
	nr 		= 3;
	npc 		= PC_Hero;
	condition 	= PC_Arrow_Feuer_Condition;
	information 	= PC_Arrow_Feuer_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Feuerpfeil"; 
};

FUNC INT PC_Arrow_Feuer_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_Bow))
	&& (Npc_HasItems (hero, ItRw_Addon_FireArrow) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Arrow_Feuer_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_Addon_FireArrow; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Strzalka ognia wybrana jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Arrow_Gewaechsgift (C_INFO)
{
	nr 		= 4;
	npc 		= PC_Hero;
	condition 	= PC_Arrow_Gewaechsgift_Condition;
	information 	= PC_Arrow_Gewaechsgift_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Pflanzengiftpfeil"; 
};

FUNC INT PC_Arrow_Gewaechsgift_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_Bow))
	&& (Npc_HasItems (hero, ItRw_GewaechsgiftArrow) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Arrow_Gewaechsgift_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_GewaechsgiftArrow; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Strzalka wzrostu wybrana jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Arrow_Holy (C_INFO)
{
	nr 		= 5;
	npc 		= PC_Hero;
	condition 	= PC_Arrow_Holy_Condition;
	information 	= PC_Arrow_Holy_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Heiliger Pfeil"; 
};

FUNC INT PC_Arrow_Holy_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_Bow))
	&& (Npc_HasItems (hero, ItRw_HolyArrow) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Arrow_Holy_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_HolyArrow; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Swieta strzala wybrana jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Arrow_Magic (C_INFO)
{
	nr 		= 6;
	npc 		= PC_Hero;
	condition 	= PC_Arrow_Magic_Condition;
	information 	= PC_Arrow_Magic_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Magischer Pfeil"; 
};

FUNC INT PC_Arrow_Magic_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_Bow))
	&& (Npc_HasItems (hero, ItRw_Addon_MagicArrow) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Arrow_Magic_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_Addon_MagicArrow; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Strzalka magiczna wybrana jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Arrow_Normal (C_INFO)
{
	nr 		= 7;
	npc 		= PC_Hero;
	condition 	= PC_Arrow_Normal_Condition;
	information 	= PC_Arrow_Normal_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Normalna strzalka"; 
};

FUNC INT PC_Arrow_Normal_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_Bow))
	&& (Npc_HasItems (hero, ItRw_Arrow) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Arrow_Normal_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_Arrow; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Zwykla strzalka wybrana jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Arrow_GoldErz (C_INFO)
{
	nr 		= 8;
	npc 		= PC_Hero;
	condition 	= PC_Arrow_GoldErz_Condition;
	information 	= PC_Arrow_GoldErz_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Pfeil mit Gold-Erz-Spitze"; 
};

FUNC INT PC_Arrow_GoldErz_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_Bow))
	&& (Npc_HasItems (hero, ItRw_GoldErzArrow) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Arrow_GoldErz_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_GoldErzArrow; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Strzalka z konc�wka rudy zlota wybrana jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Arrow_GoldErzBlut (C_INFO)
{
	nr 		= 9;
	npc 		= PC_Hero;
	condition 	= PC_Arrow_GoldErzBlut_Condition;
	information 	= PC_Arrow_GoldErzBlut_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Pfeil mit Gold-Erz-Blut-Spitze"; 
};

FUNC INT PC_Arrow_GoldErzBlut_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_Bow))
	&& (Npc_HasItems (hero, ItRw_GoldErzBlutArrow) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Arrow_GoldErzBlut_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_GoldErzBlutArrow; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Strzalka z rudokrwista konc�wka zlota jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Arrow_Widerhaken (C_INFO)
{
	nr 		= 10;
	npc 		= PC_Hero;
	condition 	= PC_Arrow_Widerhaken_Condition;
	information 	= PC_Arrow_Widerhaken_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Pfeil mit Widerhaken"; 
};

FUNC INT PC_Arrow_Widerhaken_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_Bow))
	&& (Npc_HasItems (hero, ItRw_WiderhakenArrow) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Arrow_Widerhaken_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_WiderhakenArrow; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Strzalka z kotwami wybranymi jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Arrow_Praezision (C_INFO)
{
	nr 		= 11;
	npc 		= PC_Hero;
	condition 	= PC_Arrow_Praezision_Condition;
	information 	= PC_Arrow_Praezision_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Pr�zisionspfeil"; 
};

FUNC INT PC_Arrow_Praezision_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_Bow))
	&& (Npc_HasItems (hero, ItRw_PraezisionsArrow) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Arrow_Praezision_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_PraezisionsArrow; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Strzalka precyzyjna wybrana jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Arrow_Rueckverwandlungs (C_INFO)
{
	nr 		= 12;
	npc 		= PC_Hero;
	condition 	= PC_Arrow_Rueckverwandlungs_Condition;
	information 	= PC_Arrow_Rueckverwandlungs_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "R�ckverwandlungspfeil"; 
};

FUNC INT PC_Arrow_Rueckverwandlungs_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_Bow))
	&& (Npc_HasItems (hero, ItRw_RueckverwandlungsArrow) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Arrow_Rueckverwandlungs_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_RueckverwandlungsArrow;
	waffe.damagetype = DAM_POINT;

	Print	("Strzalka rekonwersji wybrana jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Arrow_Schmetter (C_INFO)
{
	nr 		= 13;
	npc 		= PC_Hero;
	condition 	= PC_Arrow_Schmetter_Condition;
	information 	= PC_Arrow_Schmetter_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Schmetterpfeil"; 
};

FUNC INT PC_Arrow_Schmetter_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_Bow))
	&& (Npc_HasItems (hero, ItRw_SchmetterArrow) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Arrow_Schmetter_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_SchmetterArrow;
	waffe.damagetype = DAM_BLUNT;

	Print	("Strzalka motylkowa wybrana jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Arrow_Tiergift (C_INFO)
{
	nr 		= 14;
	npc 		= PC_Hero;
	condition 	= PC_Arrow_Tiergift_Condition;
	information 	= PC_Arrow_Tiergift_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Tiergiftpfeil"; 
};

FUNC INT PC_Arrow_Tiergift_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_Bow))
	&& (Npc_HasItems (hero, ItRw_TiergiftArrow) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Arrow_Tiergift_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_TiergiftArrow; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Trucizna zwierzeca wybrana jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Bow_End (C_Info)
{
	npc 		= PC_Hero;
	nr 		= 999;
	condition 	= PC_Bow_End_Condition;
	information 	= PC_Bow_End_Info;
	permanent 	= 1;
	important	= 0;
	description 	= DIALOG_ENDE; 
};

FUNC INT PC_Bow_End_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Bow) //Wenn Bow-Mobsi aktiv
	{ 
		return 1;
	};
};

FUNC VOID PC_Bow_End_Info()
{
	B_ENDPRODUCTIONDIALOG (); //Beendet das Dialogmen�
};

FUNC VOID munichange_cb()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))//Wenn der Benutzer der held ist...
	{ 
		B_SetAivar(self, AIV_INVINCIBLE, TRUE); //Gegner greifen nicht an, solange der Held im Auswahlmodus ist
		PLAYER_MOBSI_PRODUCTION = MOBSI_CBow; //Der Mobsi BOw ist aktiv
		AI_ProcessInfos (her); //Dialog wird gestartet
	};

};

FUNC VOID munichange_cb_e()
{

};

INSTANCE PC_Bolt_GoldErz (C_INFO)
{
	nr 		= 1;
	npc 		= PC_Hero;
	condition 	= PC_Bolt_GoldErz_Condition;
	information 	= PC_Bolt_GoldErz_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Bolzen mit Gold-Erz-Spitze"; 
};

FUNC INT PC_Bolt_GoldErz_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_CBow))
	&& (Npc_HasItems (hero, ItRw_GoldErzBolt) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Bolt_GoldErz_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_GoldErzBolt; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Bolce z konc�wka rudy zlota wybrane jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Bolt_GoldErzBlut (C_INFO)
{
	nr 		= 2;
	npc 		= PC_Hero;
	condition 	= PC_Bolt_GoldErzBlut_Condition;
	information 	= PC_Bolt_GoldErzBlut_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Bolzen mit Gold-Erz-Blut-Spitze"; 
};

FUNC INT PC_Bolt_GoldErzBlut_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_CBow))
	&& (Npc_HasItems (hero, ItRw_GoldErzBlutBolt) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Bolt_GoldErzBlut_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_GoldErzBlutBolt; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Bolce ze zlotem, ruda i punktami krwi wybranymi jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Bolt_Widerhaken (C_INFO)
{
	nr 		= 3;
	npc 		= PC_Hero;
	condition 	= PC_Bolt_Widerhaken_Condition;
	information 	= PC_Bolt_Widerhaken_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Bolzen mit Widerhaken"; 
};

FUNC INT PC_Bolt_Widerhaken_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_CBow))
	&& (Npc_HasItems (hero, ItRw_WiderhakenBolt) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Bolt_Widerhaken_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_WiderhakenBolt; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Sruby z kotwami wyselekcjonowanymi jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Bolt_Eis (C_INFO)
{
	nr 		= 4;
	npc 		= PC_Hero;
	condition 	= PC_Bolt_Eis_Condition;
	information 	= PC_Bolt_Eis_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Eisbolzen"; 
};

FUNC INT PC_Bolt_Eis_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_CBow))
	&& (Npc_HasItems (hero, ItRw_IceBolt) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Bolt_Eis_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_IceBolt; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Sruby lodowe wybrane jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Bolt_Sprengstoff (C_INFO)
{
	nr 		= 5;
	npc 		= PC_Hero;
	condition 	= PC_Bolt_Sprengstoff_Condition;
	information 	= PC_Bolt_Sprengstoff_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Explosionsbolzen"; 
};

FUNC INT PC_Bolt_Sprengstoff_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_CBow))
	&& (Npc_HasItems (hero, ItRw_SprengstoffBolt) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Bolt_Sprengstoff_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_SprengstoffBolt; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Sruba wybuchowa wybrana jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Bolt_Feuer (C_INFO)
{
	nr 		= 6;
	npc 		= PC_Hero;
	condition 	= PC_Bolt_Feuer_Condition;
	information 	= PC_Bolt_Feuer_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Feuerbolzen"; 
};

FUNC INT PC_Bolt_Feuer_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_CBow))
	&& (Npc_HasItems (hero, ItRw_Addon_FireBolt) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Bolt_Feuer_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_Addon_FireBolt; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Sruby ognia wybrane jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Bolt_Gewaechsgift (C_INFO)
{
	nr 		= 7;
	npc 		= PC_Hero;
	condition 	= PC_Bolt_Gewaechsgift_Condition;
	information 	= PC_Bolt_Gewaechsgift_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Pflanzengiftbolzen"; 
};

FUNC INT PC_Bolt_Gewaechsgift_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_CBow))
	&& (Npc_HasItems (hero, ItRw_GewaechsgiftBolt) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Bolt_Gewaechsgift_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_GewaechsgiftBolt; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Fitotoksyczne stadniny wybrane jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Bolt_Holy (C_INFO)
{
	nr 		= 8;
	npc 		= PC_Hero;
	condition 	= PC_Bolt_Holy_Condition;
	information 	= PC_Bolt_Holy_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Heiliger Bolzen"; 
};

FUNC INT PC_Bolt_Holy_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_CBow))
	&& (Npc_HasItems (hero, ItRw_HolyBolt) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Bolt_Holy_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_HolyBolt; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Swieci rodzice wybrani jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Bolt_Magic (C_INFO)
{
	nr 		= 9;
	npc 		= PC_Hero;
	condition 	= PC_Bolt_Magic_Condition;
	information 	= PC_Bolt_Magic_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Magischer Bolzen"; 
};

FUNC INT PC_Bolt_Magic_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_CBow))
	&& (Npc_HasItems (hero, ItRw_Addon_MagicBolt) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Bolt_Magic_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_Addon_MagicBolt; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Magic Bolt wybrany jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Bolt_Normal (C_INFO)
{
	nr 		= 10;
	npc 		= PC_Hero;
	condition 	= PC_Bolt_Normal_Condition;
	information 	= PC_Bolt_Normal_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Sruba zwykla"; 
};

FUNC INT PC_Bolt_Normal_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_CBow))
	&& (Npc_HasItems (hero, ItRw_Bolt) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Bolt_Normal_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_Bolt; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Sruba normalna wybrana jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Bolt_Praezision (C_INFO)
{
	nr 		= 11;
	npc 		= PC_Hero;
	condition 	= PC_Bolt_Praezision_Condition;
	information 	= PC_Bolt_Praezision_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Pr�zisionsbolzen"; 
};

FUNC INT PC_Bolt_Praezision_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_CBow))
	&& (Npc_HasItems (hero, ItRw_PraezisionsBolt) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Bolt_Praezision_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_PraezisionsBolt; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Sruby precyzyjne wybrane jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Bolt_Rueckverwandlungs (C_INFO)
{
	nr 		= 12;
	npc 		= PC_Hero;
	condition 	= PC_Bolt_Rueckverwandlungs_Condition;
	information 	= PC_Bolt_Rueckverwandlungs_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "R�ckverwandlungsbolzen"; 
};

FUNC INT PC_Bolt_Rueckverwandlungs_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_CBow))
	&& (Npc_HasItems (hero, ItRw_RueckverwandlungsBolt) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Bolt_Rueckverwandlungs_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_RueckverwandlungsBolt; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Sruby rekonwersyjne wybrane jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Bolt_Schmetter (C_INFO)
{
	nr 		= 13;
	npc 		= PC_Hero;
	condition 	= PC_Bolt_Schmetter_Condition;
	information 	= PC_Bolt_Schmetter_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Schmetterbolzen"; 
};

FUNC INT PC_Bolt_Schmetter_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_CBow))
	&& (Npc_HasItems (hero, ItRw_SchmetterBolt) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Bolt_Schmetter_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_SchmetterBolt; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_BLUNT;

	Print	("Sworzen motylkowy wybrany jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Bolt_Tiergift (C_INFO)
{
	nr 		= 14;
	npc 		= PC_Hero;
	condition 	= PC_Bolt_Tiergift_Condition;
	information 	= PC_Bolt_Tiergift_Info;
	permanent 	= 1;
	important	= 0;
	description 	= "Tiergiftbolzen"; 
};

FUNC INT PC_Bolt_Tiergift_Condition()
{ 
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_CBow))
	&& (Npc_HasItems (hero, ItRw_TiergiftBolt) >= 1) //Hat der Held �berhaupt Pfeile von dieser Sorte?
	{ 
		return 1;
	};
};

FUNC VOID PC_Bolt_Tiergift_Info ()
{ 
	var C_ITEM waffe;
	Waffe =Npc_GetEquippedRangedWeapon(hero); //Aktuelle Waffe des Helden wird ermittelt

	waffe.munition = ItRw_TiergiftBolt; //Neuer Munitionstyp wird festgelegt
	waffe.damagetype = DAM_POINT;

	Print	("Sruby trucizny zwierzecej wybrane jako amunicja!");

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_CBow_End (C_Info)
{
	npc 		= PC_Hero;
	nr 		= 999;
	condition 	= PC_CBow_End_Condition;
	information 	= PC_CBow_End_Info;
	permanent 	= 1;
	important	= 0;
	description 	= DIALOG_ENDE; 
};

FUNC INT PC_CBow_End_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_CBow) //Wenn Bow-Mobsi aktiv
	{ 
		return 1;
	};
};

FUNC VOID PC_CBow_End_Info()
{
	B_ENDPRODUCTIONDIALOG (); //Beendet das Dialogmen�
};
