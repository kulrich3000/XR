// Kilgorin

INSTANCE ItMw_Kilgorin (C_Item)
{	
	name 				=	"kilgorin";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2700;

	damageTotal			= 	155;
	damagetype 			= 	DAM_EDGE;
	range    			=  	100;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;	

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	140;
	visual 				=	"Kilgo.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Kilgorin_Geschaerft (C_Item)
{	
	name 				=	"Kilgorin (sharpened)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2700;

	damageTotal			= 	160;
	damagetype 			= 	DAM_EDGE;
	range    			=  	100;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;	

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	140;
	visual 				=	"Kilgo.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

// H�ter - Zweih�nder

INSTANCE ItMw_XRSchwert_02 (C_Item)
{	
	name 				=	"Keeper - Two-handed";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	5000;

	damageTotal			= 	190;
	damagetype 			= 	DAM_EDGE;
	range    			=  	120;	

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	160;
	visual 				=	"XRSChwert_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_XRSChwert_02_Geschaerft (C_Item)
{	
	name 				=	"Keeper - Two-handed (sharpened)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	5000;

	damageTotal			= 	200;
	damagetype 			= 	DAM_EDGE;
	range    			=  	120;	

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	160;
	visual 				=	"XRSChwert_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
