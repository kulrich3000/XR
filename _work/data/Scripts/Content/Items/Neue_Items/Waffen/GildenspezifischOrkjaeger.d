// Orkschlächter

INSTANCE ItMw_Orkschlaechter (C_Item)
{	
	name 				=	"Orc Slayer";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2000;

	damageTotal  		= 	130;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	120;
	visual 				=	"ItMw_065_1h_sword_bastard_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Orkschlaechter_Geschaerft (C_Item)
{	
	name 				=	"Orcslaughterers (sharpened)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2000;

	damageTotal  		= 	135;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	120;
	visual 				=	"ItMw_065_1h_sword_bastard_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};


INSTANCE ItMw_1H_Special_03 (C_Item) 
{	
	name 				=	"Ore Battle Blade";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2250;

	damageTotal			= 	150;
	damagetype			=	DAM_EDGE;
	range    			=  	100;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_075_1h_sword_smith_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;	
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_1H_Special_03_Geschaerft (C_Item) 
{	
	name 				=	"Ore Battle Blade (sharpened)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2250;

	damageTotal			= 	160;
	damagetype			=	DAM_EDGE;
	range    			=  	100;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_075_1h_sword_smith_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;	
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_2H_Special_03 (C_Item) 
{	
	name 				=	"Heavy Ore Battle Blade";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	2500;

	damageTotal			= 	160;
	damagetype			=	DAM_EDGE;
	range    			=  	130;	
	
	on_equip			=	Equip_2H_10;
	on_unequip			=	UnEquip_2H_10;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	150;
	visual 				=	"ItMw_090_2h_sword_smith_04.3DS";

	description			= name;
	
	TEXT[0]				= NAME_Damage;					COUNT[0]	= damageTotal;
	
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_2H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_2H_Special_03_Geschaerft (C_Item) 
{	
	name 				=	"Heavy Ore Battle Blade (Sharpened)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	2500;

	damageTotal			= 	170;
	damagetype			=	DAM_EDGE;
	range    			=  	130;	
	
	on_equip			=	Equip_2H_10;
	on_unequip			=	UnEquip_2H_10;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	150;
	visual 				=	"ItMw_090_2h_sword_smith_04.3DS";

	description			= name;
	
	TEXT[0]				= NAME_Damage;					COUNT[0]	= damageTotal;
	
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_2H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

// Orkpickser

INSTANCE ItMw_Orkpickser (C_Item)
{	
	name 				=	"orcish piper";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2000;

	damageTotal  		= 	130;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;	

	cond_atr[2]   		=	ATR_DEXTERITY;
	cond_value[2]  		=	80;
	visual 				=	"ItMw_065_1h_SwordCane_02.3ds";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Orkpickser_Geschaerft (C_Item)
{	
	name 				=	"Orcpiekser (sharpened)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2000;

	damageTotal  		= 	135;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;		

	cond_atr[2]   		=	ATR_DEXTERITY;
	cond_value[2]  		=	80;
	visual 				=	"ItMw_065_1h_SwordCane_02.3ds";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

// Erz-Schlachtstecher

INSTANCE ItMw_1H_Special_03_Dex (C_Item) 
{	
	name 				=	"Ore butcher";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2250;

	damageTotal			= 	150;
	damagetype			=	DAM_EDGE;
	range    			=  	100;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;
	
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_065_1h_sword_bastard_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;	
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_1H_Special_03_Dex_Geschaerft (C_Item) 
{	
	name 				=	"Ore butcher's knife (sharpened)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2250;

	damageTotal			= 	160;
	damagetype			=	DAM_EDGE;
	range    			=  	100;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;
	
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_065_1h_sword_bastard_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;	
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

// ... des Wasserhiebes

INSTANCE ItMw_Orkschlaechter_Wasser (C_Item)
{	
	name 				=	"Orcslaughterer of the Water Slash";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2000;

	damageTotal  		= 	140;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	120;
	visual 				=	"ItMw_065_1h_sword_bastard_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Orkschlaechter_Wasser_Geschaerft (C_Item)
{	
	name 				=	"Orcslaughterers of the Water Slash (sharpened)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2000;

	damageTotal  		= 	150;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	120;
	visual 				=	"ItMw_065_1h_sword_bastard_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};


INSTANCE ItMw_1H_Special_03_Wasser (C_Item) 
{	
	name 				=	"Water Slash Ore Battle Blade";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2250;

	damageTotal  		= 	160;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_075_1h_sword_smith_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;	
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_1H_Special_03_Wasser_Geschaerft (C_Item) 
{	
	name 				=	"Water Blade Ore Battle Blade (Sharpened)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2250;

	damageTotal  		= 	170;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_075_1h_sword_smith_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;	
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_2H_Special_03_Wasser (C_Item) 
{	
	name 				=	"Heavy Ore Battle Blade of Water Slash";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	2500;

	damageTotal  		= 	170;
	damagetype 			=	DAM_EDGE;
	range    			=  	130;	
	
	on_equip			=	Equip_2H_10;
	on_unequip			=	UnEquip_2H_10;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	150;
	visual 				=	"ItMw_090_2h_sword_smith_04.3DS";

	description			= name;
	
	TEXT[0]				= NAME_Damage;					COUNT[0]	= damageTotal;
	
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_2H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_2H_Special_03_Wasser_Geschaerft (C_Item) 
{	
	name 				=	"Heavy Ore Battle Blade of Water Slash (Sharpened)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	2500;

	damageTotal  		= 	180;
	damagetype 			=	DAM_EDGE;
	range    			=  	130;	
	
	on_equip			=	Equip_2H_10;
	on_unequip			=	UnEquip_2H_10;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	150;
	visual 				=	"ItMw_090_2h_sword_smith_04.3DS";

	description			= name;
	
	TEXT[0]				= NAME_Damage;					COUNT[0]	= damageTotal;
	
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_2H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Orkpickser_Wasser (C_Item)
{	
	name 				=	"Orkpiekser of the Water Slash";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2000;

	damageTotal  		= 	140;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;	

	cond_atr[2]   		=	ATR_DEXTERITY;
	cond_value[2]  		=	80;
	visual 				=	"ItMw_065_1h_SwordCane_02.3ds";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Orkpickser_Wasser_Geschaerft (C_Item)
{	
	name 				=	"Orkpiekser of the water stroke (sharpened)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2000;

	damageTotal  		= 	150;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;	

	cond_atr[2]   		=	ATR_DEXTERITY;
	cond_value[2]  		=	80;
	visual 				=	"ItMw_065_1h_SwordCane_02.3ds";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_1H_Special_03_Dex_Wasser (C_Item) 
{	
	name 				=	"Ore butcher's knife of the water cut";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2250;

	damageTotal  		= 	160;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;
	
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_065_1h_sword_bastard_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;	
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_1H_Special_03_Dex_Wasser_Geschaerft (C_Item) 
{	
	name 				=	"Ore butcher's knife of the water cut (sharpened)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2250;

	damageTotal  		= 	170;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;
	
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_065_1h_sword_bastard_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;	
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

// ... des Versengens

INSTANCE ItMw_Orkschlaechter_Feuer (C_Item)
{	
	name 				=	"scorching orc butcher";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2000;

	damageTotal  		= 	140;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	120;
	visual 				=	"ItMw_065_1h_sword_bastard_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Orkschlaechter_Feuer_Geschaerft (C_Item)
{	
	name 				=	"Orcslaughterer of scorching (sharpened)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2000;

	damageTotal  		= 	150;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	120;
	visual 				=	"ItMw_065_1h_sword_bastard_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};


INSTANCE ItMw_1H_Special_03_Feuer (C_Item) 
{	
	name 				=	"Searing Ore Battle Blade";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2250;

	damageTotal  		= 	160;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_075_1h_sword_smith_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;	
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_1H_Special_03_Feuer_Geschaerft (C_Item) 
{	
	name 				=	"Battle ore blade of scorching (sharpened)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2250;

	damageTotal  		= 	170;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_075_1h_sword_smith_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;	
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_2H_Special_03_Feuer (C_Item) 
{	
	name 				=	"Heavy Ore Battle Blade of Searing";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	2500;

	damageTotal  		= 	170;
	damagetype 			=	DAM_EDGE;
	range    			=  	130;	
	
	on_equip			=	Equip_2H_10;
	on_unequip			=	UnEquip_2H_10;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	150;
	visual 				=	"ItMw_090_2h_sword_smith_04.3DS";

	description			= name;
	
	TEXT[0]				= NAME_Damage;					COUNT[0]	= damageTotal;
	
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_2H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_2H_Special_03_Feuer_Geschaerft (C_Item) 
{	
	name 				=	"Heavy Searing Ore Battle Blade (Sharpened)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	2500;

	damageTotal  		= 	180;
	damagetype 			=	DAM_EDGE;
	range    			=  	130;	
	
	on_equip			=	Equip_2H_10;
	on_unequip			=	UnEquip_2H_10;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	150;
	visual 				=	"ItMw_090_2h_sword_smith_04.3DS";

	description			= name;
	
	TEXT[0]				= NAME_Damage;					COUNT[0]	= damageTotal;
	
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_2H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Orkpickser_Feuer (C_Item)
{	
	name 				=	"scorchers";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2000;

	damageTotal  		= 	140;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;	

	cond_atr[2]   		=	ATR_DEXTERITY;
	cond_value[2]  		=	80;
	visual 				=	"ItMw_065_1h_SwordCane_02.3ds";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Orkpickser_Feuer_Geschaerft (C_Item)
{	
	name 				=	"Orcpiekser of scorching (sharpened)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2000;

	damageTotal  		= 	150;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;	

	cond_atr[2]   		=	ATR_DEXTERITY;
	cond_value[2]  		=	80;
	visual 				=	"ItMw_065_1h_SwordCane_02.3ds";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_1H_Special_03_Dex_Feuer (C_Item) 
{	
	name 				=	"Scorching ore butcher's knife";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2250;

	damageTotal  		= 	160;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;
	
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_065_1h_sword_bastard_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;	
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_1H_Special_03_Dex_Feuer_Geschaerft (C_Item) 
{	
	name 				=	"Ore butcher's knife of scorching (sharpened)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	2250;

	damageTotal  		= 	170;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;
	
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_065_1h_sword_bastard_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;	
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
