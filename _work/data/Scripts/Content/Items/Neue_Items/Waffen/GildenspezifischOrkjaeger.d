// Orkschlächter

INSTANCE ItMw_Orkschlaechter (C_Item)
{	
	name 				=	"Orksilaki";  

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
	name 				=	"Luki rzeznicze (oslodzone)";  

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
	name 				=	"Ostrza bitewne rudy";

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
	name 				=	"Ruda Ostrze do walki (ostrzone)";

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
	name 				=	"Ostrze do walki z ostrzem ciezkiej rudy";

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
	name 				=	"Ostrze bojowe ciezkiej rudy (utwardzone)";

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
	name 				=	"orkisz";  

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
	name 				=	"Orcpiekser (wyostrzany)";  

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
	name 				=	"Rzeznik z rudy";

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
	name 				=	"Nóz rzeznika rudego (ostrozony)";

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
	name 				=	"Orcslaughterer zakladu mleczarstwa wodnego";  

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
	name 				=	"Ork rzeznicy luków kaszki wodnej (utwardzonej)";  

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
	name 				=	"Bojowe ostrze bitewne z kruszcu wodnego";

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
	name 				=	"Brzeszczot wodny z ostrzem bitewnym rudy (hartowany)";

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
	name 				=	"Ostrze bitewne ciezkiej rudy olotu wodnego";

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
	name 				=	"Bojowe ostrze bitewne ciezkiej rudy olsniewacze wodne (utwardzone)";

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
	name 				=	"Orkpiekser rzazu wodnego";  

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
	name 				=	"Orkpiekser skoku wody (ostrozony)";  

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
	name 				=	"Rudny nóz rzeznika do krojenia wody.";

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
	name 				=	"Rudny nóz rzeznika do krojenia wody (ostrozony)";

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
	name 				=	"wypalanie orkowego rzeznika";  

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
	name 				=	"Orksluch rzeznik spalajacy (utwardzony)";  

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
	name 				=	"Lopatka bojowa rudy sluchowej";

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
	name 				=	"Ostrza rudy bojowej (utwardzone)";

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
	name 				=	"Ostrze bitewne ciezkiej rudy z unoszacym sie ramieniem";

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
	name 				=	"Ostrze bitewne z ostrzem hartowniczym (otwarte)";

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
	name 				=	"skrobaki";  

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
	name 				=	"Orkiestra wypalania (utwardzona)";  

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
	name 				=	"Spalanie noza rzeznika rudy";

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
	name 				=	"Rudny nóz rzeznika do wypalania (ostrozony)";

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
