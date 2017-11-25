// *************************
// unbenutzte Item - Visuals
// *************************

//ItMw_2H_Sword_Sleeper_01	// Uriziel ungeladen
//ItMw_2H_Sword_Sleeper_02	// Uriziel geladen

//ItMw_2H_Axe_Old_03		// alter Richter
//ItMw_2H_Axe_Old_01		// alte Streitaxt

//ItMw_1H_Sword_Broad_01 	// Breitschwert 1h
//ItMw_1H_Sword_Long_03		// Hassbringer
//ItMw_1H_Sword_05			// Kriegsschwert
//ItMw_1H_Sword_04			// Kampfschwert
//ItMw_1H_Sword_02			// Richtschwert
//ItMw_2H_Staff_02			// Richtstab
//ItMw_2H_Staff_01			// Kampfstab
//ItMw_1H_Scythe_01			// Schnitter
//ItMw_1H_Sword_Short_02	// Bauernwehr
//ItMw_1H_Sword_Short_01	// Kurzschwert

//ItMw_1H_Poker_01			// Sch�rhaken

// *****************************************************
// Waffen in der Welt (ab Kapitel 1)
// ---------------------------------
// Hier alle Waffen, die bei mortal-NSCs 
// oder in die Welt objektiert zu finden sind
// Alle haben sehr geringen Wert
// Alle k�nnen (theoretisch) in Kapitel 1 erlangt werden
// *****************************************************
INSTANCE ItMw_1H_Mace_02 (C_Item)
{	
	name 				=	"zad";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	65*10;

	damageTotal			=   50;
	damagetype			=	DAM_BLUNT;
	range    			=  	100;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	35;
	visual 				=	"ItMw_1H_Mace_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Brot (C_Item)
{	
	name 				=	"Chleb zaczarowany";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_WOOD;

	value 				=	65*10;

	damageTotal			=   30;
	damagetype			=	DAM_BLUNT;
	range    			=  	100;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	10;
	visual 				=	"ItMw_Bread.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_EchsenKriegerDolch (C_Item)
{	
	name 				=	"wojownik";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	104*10;

	damageTotal			= 	64;
	damagetype 			= 	DAM_EDGE;
	range    			=  	100;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	55;
	visual 				=	"ItMw_Kriegerdolch.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_1H_Sword_03 (C_Item)
{	
	name 				=	"miecz ogrodowy";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	104*10;

	damageTotal			= 	64;
	damagetype 			= 	DAM_EDGE;
	range    			=  	100;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	55;
	visual 				=	"ItMw_1H_Sword_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1H_Sword_03_Geschaerft (C_Item)
{	
	name 				=	"Miecz ogrodowy (wyostrzony)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	104*10;

	damageTotal			= 	64+10;
	damagetype 			= 	DAM_EDGE;
	range    			=  	100;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	55;
	visual 				=	"ItMw_1H_Sword_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_1H_Sword_Long_04 (C_Item)
{	
	name 				=	"zdobywca";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	860*10;//430;//214

	damageTotal			= 	150;
	damagetype 			= 	DAM_EDGE;
	range    			=  	120;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_1H_Sword_Long_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1H_Sword_Long_04_Geschaerft (C_Item)
{	
	name 				=	"Pielegniarka (o ostrzeniu)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	860*10;//430;//214

	damageTotal			= 	150+10;
	damagetype 			= 	DAM_EDGE;
	range    			=  	120;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_1H_Sword_Long_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_1H_Sword_Long_05 (C_Item)
{	
	name 				=	"smiertelnik";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	920*10;//460;//232

	damageTotal			= 	160;
	damagetype 			= 	DAM_EDGE;
	range    			=  	120;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	140;
	visual 				=	"ItMw_1H_Sword_Long_05.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1H_Sword_Long_05_Geschaerft (C_Item)
{	
	name 				=	"Smierc czlowieka (ostrozony)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	920*10;//460;//232

	damageTotal			= 	160+10;
	damagetype 			= 	DAM_EDGE;
	range    			=  	120;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	140;
	visual 				=	"ItMw_1H_Sword_Long_05.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_1H_Sword_Broad_04 (C_Item) 
{	
	name 				=	"dlon straznika";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	1400*4;//700;//349

	damageTotal			= 	167;
	damagetype 			= 	DAM_EDGE;
	range    			=  	130;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	149;
	visual 				=	"ItMw_1H_Sword_Broad_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1H_Sword_Broad_04_Geschaerft (C_Item) 
{	
	name 				=	"Reka straznicza (otwarta)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	1400*4;//700;//349

	damageTotal			= 	167+10;
	damagetype 			= 	DAM_EDGE;
	range    			=  	130;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	149;
	visual 				=	"ItMw_1H_Sword_Broad_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_1H_Sword_Bastard_03 (C_Item) 
{	
	name 				=	"wykonawca";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	1720*5;//860;//430

	damageTotal			= 	170;
	damagetype 			= 	DAM_EDGE;
	range    			=  	130;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	154;
	visual 				=	"ItMw_1H_Sword_Bastard_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1H_Sword_Bastard_03_Geschaerft (C_Item) 
{	
	name 				=	"Egzemplarz (wyostrzony)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	1720*5;//860;//430

	damageTotal			= 	170+10;
	damagetype 			= 	DAM_EDGE;
	range    			=  	130;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	154;
	visual 				=	"ItMw_1H_Sword_Bastard_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_2H_Axe_Old_02 (C_Item)
{	
	name 				=	"hemofilia";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	1840*4;//920;//466
	
	damageTotal			= 	167;
	damagetype			=	DAM_EDGE;
	range    			=  	150;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	165;
	visual 				=	"ItMw_2H_Axe_Old_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_2H_Axe_Old_02_Geschaerft (C_Item)
{	
	name 				=	"Hemofiliak (ostrzony)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	1840*4;//920;//466
	
	damageTotal			= 	167+10;
	damagetype			=	DAM_EDGE;
	range    			=  	150;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	165;
	visual 				=	"ItMw_2H_Axe_Old_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_2H_Sword_Light_02 (C_Item) 
{	
	name 				=	"templariusz";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	1950;

	damageTotal			= 	142;
	damagetype			=	DAM_EDGE;
	range    			=  	150;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_2H_Sword_Light_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_2H_Sword_Light_02_Geschaerft (C_Item) 
{	
	name 				=	"Szablon ostrzony";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	1950;

	damageTotal			= 	142+10;
	damagetype			=	DAM_EDGE;
	range    			=  	150;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_2H_Sword_Light_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_AlteHueterklinge_1H (C_Item) 
{	
	name 				=	"Stary Ostrzyk Opiekun";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	1050;

	damageTotal			= 	80;
	damagetype			=	DAM_EDGE;
	range    			=  	120;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	70;
	visual 				=	"ItMw_2H_Sword_Light_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_AlteHueterklinge_1H_Geschaerft (C_Item) 
{	
	name 				=	"Stare ostrze stary ostrze (ostre)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	1050;

	damageTotal			= 	90;
	damagetype			=	DAM_EDGE;
	range    			=  	120;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	70;
	visual 				=	"ItMw_2H_Sword_Light_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_AlteHueterklinge_2H (C_Item) 
{	
	name 				=	"Stary Ostrzyk Opiekun";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	1050;

	damageTotal			= 	100;
	damagetype			=	DAM_EDGE;
	range    			=  	120;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	90;
	visual 				=	"ItMw_2H_Sword_Light_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_AlteHueterklinge_2H_Geschaerft (C_Item) 
{	
	name 				=	"Stare ostrze stary ostrze (ostre)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	1050;

	damageTotal			= 	110;
	damagetype			=	DAM_EDGE;
	range    			=  	120;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	90;
	visual 				=	"ItMw_2H_Sword_Light_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_FalscheHueterklinge_1H (C_Item) 
{	
	name 				=	"Nieprawidlowe przechowywanie ostrza";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	1550;

	damageTotal			= 	110;
	damagetype			=	DAM_EDGE;
	range    			=  	120;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	100;
	visual 				=	"ItMw_2H_Sword_Light_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_FalscheHueterklinge_1H_Geschaerft (C_Item) 
{	
	name 				=	"Niewlasciwe ostrze straznika (ostre)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	1550;

	damageTotal			= 	120;
	damagetype			=	DAM_EDGE;
	range    			=  	120;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	100;
	visual 				=	"ItMw_2H_Sword_Light_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_FalscheHueterklinge_2H (C_Item) 
{	
	name 				=	"Nieprawidlowe przechowywanie ostrza";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	1550;

	damageTotal			= 	130;
	damagetype			=	DAM_EDGE;
	range    			=  	120;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_2H_Sword_Light_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_FalscheHueterklinge_2H_Geschaerft (C_Item) 
{	
	name 				=	"Niewlasciwe ostrze straznika (ostre)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	1550;

	damageTotal			= 	140;
	damagetype			=	DAM_EDGE;
	range    			=  	120;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_2H_Sword_Light_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Hueterklinge_1H (C_Item) 
{	
	name 				=	"ostrze straznika";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	1950;

	damageTotal			= 	140;
	damagetype			=	DAM_EDGE;
	range    			=  	120;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_2H_Sword_Light_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Hueterklinge_1H_Geschaerft (C_Item) 
{	
	name 				=	"Ostrza straznicze (ostrzone)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	1950;

	damageTotal			= 	150;
	damagetype			=	DAM_EDGE;
	range    			=  	120;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	130;
	visual 				=	"ItMw_2H_Sword_Light_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Hueterklinge_2H (C_Item) 
{	
	name 				=	"ostrze straznika";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	1950;

	damageTotal			= 	160;
	damagetype			=	DAM_EDGE;
	range    			=  	120;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	150;
	visual 				=	"ItMw_2H_Sword_Light_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Hueterklinge_2H_Geschaerft (C_Item) 
{	
	name 				=	"Ostrza straznicze (ostrzone)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	1950;

	damageTotal			= 	170;
	damagetype			=	DAM_EDGE;
	range    			=  	120;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	150;
	visual 				=	"ItMw_2H_Sword_Light_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE Delirium_Dolch (C_Item)
{	
	name 				=	"sztylet";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	6000;

	damageTotal  		= 	50;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_VLKDolch;		
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_VLKDolch;
	visual 				=	"Itmw_005_1h_dagger_01.3DS";

	description			= name;
	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Andramo (C_Item)
{	
	name 				=	"Andramo";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	600;

	damageTotal  		= 	75;
	damagetype 			=	DAM_EDGE;
	range    			=  	95;		
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	58;
	visual 				=	"Andramo.3DS";

	description			= name;
	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_1H_Mace_L_01 (C_Item)
{	
	name 				=	"poker";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	Value_Schuerhaken;

	damageTotal  		= 	Damage_Schuerhaken;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Schuerhaken;		
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schuerhaken;
	visual 				=	"Itmw_005_1h_poker_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1H_Mace_L_01_Geschaerft (C_Item)
{	
	name 				=	"Poker (ostrzony)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	Value_Schuerhaken;

	damageTotal  		= 	Damage_Schuerhaken+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Schuerhaken;		
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schuerhaken;
	visual 				=	"Itmw_005_1h_poker_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_1h_Bau_Axe (C_Item)
{	
	name 				=	"sierp";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_BauAxe;

	damageTotal  		= 	Damage_BauAxe;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_BauAxe;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_BauAxe;
	visual 				=	"Itmw_007_1h_sickle_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1h_Bau_Axe_Geschaerft (C_Item)
{	
	name 				=	"Lekkie (poddane ostrzeniu)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_BauAxe;

	damageTotal  		= 	Damage_BauAxe+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_BauAxe;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_BauAxe;
	visual 				=	"Itmw_007_1h_sickle_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_1h_Vlk_Mace (C_Item)
{	
	name 				=	"chodzenie";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	Value_VLKMace;

	damageTotal  		= 	Damage_VLKMace;
	damagetype 			=	DAM_BLUNT;
	range    			=  	RANGE_VLKMace;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_VLKMace;
	visual 				=	"Itmw_008_1h_pole_01.3ds";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_Schlagstock (C_Item)
{	
	name 				=	"nocnik";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	1;

	damageTotal  		= 	5;
	damagetype 			=	DAM_BLUNT;
	range    			=  	RANGE_VLKMace;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_VLKMace;
	visual 				=	"Itmw_008_1h_pole_01.3ds";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_1H_Mace_L_03 (C_Item)
{	
	name 				=	"plakietka";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	Value_Belegnagel;

	damageTotal  		= 	Damage_Belegnagel;
	damagetype 			=	DAM_BLUNT;
	range    			=  	Range_Belegnagel;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Belegnagel;
	visual 				=	"ItMw_008_1h_mace_light_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_1h_Vlk_Axe (C_Item)
{	
	name 				=	"siekiera";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_VLKAxe;

	damageTotal  		= 	Damage_VLKAxe;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_VLKAxe;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_VLKAxe;
	visual 				=	"Itmw_010_1h_vlk_hatchet_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1h_Vlk_Axe_Geschaerft (C_Item)
{	
	name 				=	"Hatchet (szlifowany)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_VLKAxe;

	damageTotal  		= 	Damage_VLKAxe+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_VLKAxe;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_VLKAxe;
	visual 				=	"Itmw_010_1h_vlk_hatchet_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_1H_Mace_L_04 (C_Item)
{	
	name 				=	"odkuwka";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Schmiedehammer;

	damageTotal  		= 	Damage_Schmiedehammer;
	damagetype 			=	DAM_BLUNT;
	range    			=  	Range_Schmiedehammer;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schmiedehammer;
	visual 				=	"ItMw_010_1h_sledgehammer_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_FeurigerHammer (C_Item)
{	
	name 				=	"Mlotek ogniotrwaly";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE | ITEM_SHOW;	
	material 			=	MAT_METAL;

	value 				=	Value_Schmiedehammer;

	damageTotal  		= 	Damage_Schmiedehammer;
	damagetype 			=	DAM_BLUNT;
	range    			=  	Range_Schmiedehammer;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schmiedehammer;
	visual 				=	"ItMw_010_1h_sledgehammer_01.3DS";

	description			= name;
	TEXT[1]				= "pozar";				COUNT[1]	= 3;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_Stadthammer (C_Item)
{	
	name 				=	"mlotek miejski";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Schmiedehammer;

	damageTotal  		= 	Damage_Schmiedehammer;
	damagetype 			=	DAM_BLUNT;
	range    			=  	Range_Schmiedehammer;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schmiedehammer;
	visual 				=	"ItMw_010_1h_sledgehammer_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_ShortSword1 (C_Item)
{	
	name 				=	"Kr�tki miecz milicji";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_ShortSword1;

	damageTotal  		= 	Damage_ShortSword1;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_ShortSword1;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ShortSword1;
	visual 				=	"ItMw_010_1h_Sword_short_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_ShortSword1_Geschaerft (C_Item)
{	
	name 				=	"Kr�tki miecz milicji (ostrzony)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_ShortSword1;

	damageTotal  		= 	Damage_ShortSword1+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_ShortSword1;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ShortSword1;
	visual 				=	"ItMw_010_1h_Sword_short_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_EchsenSchwertStr (C_Item)
{	
	name 				=	"jaszczurka";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_ShortSword1;

	damageTotal  		= 	50;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_ShortSword1;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	30;
	visual 				=	"ItMw_010_1h_Sword_short_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_Nagelknueppel (C_Item)
{	
	name 				=	"palka";  //f�r Banditen

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	Value_Nagelknueppel;

	damageTotal  		= 	Damage_Nagelknueppel;
	damagetype 			=	DAM_BLUNT;
	range    			=  	Range_Nagelknueppel;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Nagelknueppel;
	visual 				=	"ItMw_012_1h_Nailmace_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_1H_Sword_L_03 (C_Item)
{	
	name 				=	"ostrze wilka";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Wolfsklinge;

	damageTotal  		= 	Damage_Wolfsklinge;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Wolfsklinge;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Wolfsklinge;
	visual 				=	"ItMw_012_1h_Knife_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1H_Sword_L_03_Geschaerft (C_Item)
{	
	name 				=	"Ostrze Wolf (ostrzone)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Wolfsklinge;

	damageTotal  		= 	Damage_Wolfsklinge+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Wolfsklinge;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Wolfsklinge;
	visual 				=	"ItMw_012_1h_Knife_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_ShortSword2 (C_Item)
{	
	name 				=	"Gruby, kr�tki miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_ShortSword2;

	damageTotal  		= 	Damage_ShortSword2;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_ShortSword2;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ShortSword2;
	visual 				=	"ItMw_012_1h_Sword_short_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_ShortSword2_Geschaerft (C_Item)
{	
	name 				=	"Kr�tki, gruboziarnisty miecz (ostry)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_ShortSword2;

	damageTotal  		= 	Damage_ShortSword2+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_ShortSword2;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ShortSword2;
	visual 				=	"ItMw_012_1h_Sword_short_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_FurtsSchwert (C_Item)
{	
	name 				=	"Miecz Furtowy";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_ShortSword2;

	damageTotal  		= 	Damage_ShortSword2;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_ShortSword2;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ShortSword2;
	visual 				=	"ItMw_012_1h_Sword_short_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_Sense (C_Item)
{	
	name 				=	"Mala kosa";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Sense;

	damageTotal  		= 	Damage_Sense;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Sense;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Sense;
	visual 				=	"ItMw_012_1h_Scythe_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Sense_Geschaerft (C_Item)
{	
	name 				=	"Mala kosa wlosia (oslodzona)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Sense;

	damageTotal  		= 	Damage_Sense+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Sense;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Sense;
	visual 				=	"ItMw_012_1h_Scythe_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_1h_Nov_Mace (C_Item)
{	
	name 				=	"Sztab Bojowy Nowicjuszy Pozarniczych";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	value 				=	Value_NovMace;

	damagetype 			=	DAM_BLUNT|DAM_MAGIC;
	damage[DAM_INDEX_BLUNT]	=	  60;						
	damage[DAM_INDEX_MAGIC]	=	 5;
	range    			=  	RANGE_NovMace;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	30;
	visual 				=	"ItMw_020_2h_Nov_Staff_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 60;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_1h_SNov_Mace (C_Item)
{	
	name 				=	"Kadra pracownik�w czarnych nowicjuszy";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	value 				=	Value_NovMace;

	damagetype 			=	DAM_BLUNT|DAM_MAGIC;
	damage[DAM_INDEX_BLUNT]	=	  60;						
	damage[DAM_INDEX_MAGIC]	=	 5;
	range    			=  	RANGE_NovMace;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	30;
	visual 				=	"ItMw_020_2h_Nov_Staff_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 60;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_2h_Bau_Axe (C_Item)
{	
	name 				=	"drwal";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	Value_Bau2hAxt;

	damageTotal  		= 	Damage_Bau2hAxt;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Bau2hAxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Bau2hAxt;
	visual 				=	"ItMw_020_2h_Axe_Lumberjack_01.3ds";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_2h_Bau_Axe_Geschaerft (C_Item)
{	
	name 				=	"Osie drwala (oslony ostrzone)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	Value_Bau2hAxt;

	damageTotal  		= 	Damage_Bau2hAxt+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Bau2hAxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Bau2hAxt;
	visual 				=	"ItMw_020_2h_Axe_Lumberjack_01.3ds";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
// *****************************************************
// *****************************************************
INSTANCE ItMw_1h_Misc_Axe (C_Item)
{	
	name 				=	"Rustysta Axy";  //STANDARDOBJEKTIERUNG

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_MiscAxe;

	damageTotal  		= 	Damage_MiscAxe;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_MiscAxe;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_MiscAxe;
	visual 				=	"ItMw_025_2h_Misc_Axe_old_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1h_Misc_Axe_Geschaerft (C_Item)
{	
	name 				=	"Aksamitna rdza (ostrozona)";  //STANDARDOBJEKTIERUNG

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_MiscAxe;

	damageTotal  		= 	Damage_MiscAxe+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_MiscAxe;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_MiscAxe;
	visual 				=	"ItMw_025_2h_Misc_Axe_old_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************

// *****************************************************
INSTANCE ItMw_1h_Mil_Sword (C_Item)
{	
	name 				=	"Haslo szerokie grube";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_MilSchwert;

	damageTotal  		= 	Damage_MilSchwert;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_MilSchwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_MilSchwert;
	visual 				=	"Itmw_025_1h_Mil_Sword_broad_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1h_Mil_Sword_Geschaerft (C_Item)
{	
	name 				=	"Haslo szerokie (do ostrzenia)";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_MilSchwert;

	damageTotal  		= 	Damage_MilSchwert+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_MilSchwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_MilSchwert;
	visual 				=	"Itmw_025_1h_Mil_Sword_broad_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_1h_Sld_Axe (C_Item)
{	
	name 				=	"Szorstka siekiera";  //S�LDNER

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Sld1hAxt;

	damageTotal  		= 	Damage_Sld1hAxt;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Sld1hAxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Sld1hAxt;
	visual 				=	"ItMw_025_1h_sld_axe_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1h_Sld_Axe_Geschaerft (C_Item)
{	
	name 				=	"siekiera gruboziarnista (oslodzona)";  //S�LDNER

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Sld1hAxt;

	damageTotal  		= 	Damage_Sld1hAxt+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Sld1hAxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Sld1hAxt;
	visual 				=	"ItMw_025_1h_sld_axe_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_1h_Sld_Sword (C_Item)
{	
	name 				=	"Gruby miecz";  //S�LDNER

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Sld1hSchwert;

	damageTotal  		= 	Damage_Sld1hSchwert;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Sld1hSchwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Sld1hSchwert;
	visual 				=	"ItMw_025_1h_sld_sword_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1h_Sld_Sword_Geschaerft (C_Item)
{	
	name 				=	"Miecz szorstki (ostrozony)";  //S�LDNER

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Sld1hSchwert;

	damageTotal  		= 	Damage_Sld1hSchwert+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Sld1hSchwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Sld1hSchwert;
	visual 				=	"ItMw_025_1h_sld_sword_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_EchsenZweihaender (C_Item)
{	
	name 				=	"jaszczurka dwureczna";  //S�LDNER

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Sld1hSchwert;

	damageTotal  		= 	65;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Sld2hSchwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	40;
	visual 				=	"ItMw_035_2h_sld_sword_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
// ****** folgende Waffen sind eigentlich zu gut f�r Kapitel 1, NSCs sind aber noch VIEL zu stark ******
INSTANCE ItMw_2h_Sld_Axe (C_Item)
{	
	name 				=	"Gruba wojna";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Sld2hAxe;

	damageTotal  		= 	Damage_Sld2hAxe;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Sld2hAxe;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Sld2hAxe;
	visual 				=	"ItMw_035_2h_sld_axe_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_2h_Sld_Axe_Geschaerft (C_Item)
{	
	name 				=	"Grube waraxe (ostre ostrzone)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Sld2hAxe;

	damageTotal  		= 	Damage_Sld2hAxe+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Sld2hAxe;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Sld2hAxe;
	visual 				=	"ItMw_035_2h_sld_axe_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_2h_Sld_Sword (C_Item)
{	
	name 				=	"Szorstka reka obureczna";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;
	material 			=	MAT_METAL;

	value 				=	Value_Sld2hSchwert;

	damageTotal  		= 	Damage_Sld2hSchwert;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Sld2hSchwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Sld2hSchwert;
	visual 				=	"ItMw_035_2h_sld_sword_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_2h_Sld_Sword_Geschaerft (C_Item)
{	
	name 				=	"Szorstka, dwureczna (ostrozona)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;
	material 			=	MAT_METAL;

	value 				=	Value_Sld2hSchwert;

	damageTotal  		= 	Damage_Sld2hSchwert+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Sld2hSchwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Sld2hSchwert;
	visual 				=	"ItMw_035_2h_sld_sword_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_1h_Pal_Sword (C_Item)
{	
	name 				=	"paladyn";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_PalSchwert;

	damageTotal  		= 	Damage_PalSchwert;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_PalSchwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_PalSchwert;
	visual 				=	"ItMw_030_1h_PAL_Sword_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1h_Pal_Sword_Geschaerft (C_Item)
{	
	name 				=	"Miecz paladynowy (wyostrzony)";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_PalSchwert;

	damageTotal  		= 	Damage_PalSchwert+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_PalSchwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_PalSchwert;
	visual 				=	"ItMw_030_1h_PAL_Sword_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_2h_Pal_Sword (C_Item)
{	
	name 				=	"Paladyn paladyn dwureczny";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_PalZweihaender;

	damageTotal  		= 	Damage_PalZweihaender;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_PalZweihaender;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_PalZweihaender;
	visual 				=	"ItMw_040_2h_PAL_Sword_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_2h_Pal_Sword_Geschaerft (C_Item)
{	
	name 				=	"Paladyn dwureczna paladynowa (otwarta)";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_PalZweihaender;

	damageTotal  		= 	Damage_PalZweihaender+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_PalZweihaender;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_PalZweihaender;
	visual 				=	"ItMw_040_2h_PAL_Sword_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
// ************************************
// Ork- und Echsenmenschenwaffen
// -----------------------------
// ACHTUNG: Orkwaffen k�nnen auch schon 
// in Kapitel 1 erlangt werden!
// ************************************
INSTANCE ItMw_2H_OrcAxe_01 (C_Item)
{	
	name 				=	"Krusz Pach Pacha";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Orkaxt_01;

	damageTotal			= 	Damage_Orkaxt_01;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Orkaxt_01;		

	cond_atr[2]   		=   ATR_STRENGTH;
	cond_value[2]  		=   Condition_Orkaxt_01;
	visual 				=	"ItMw_2H_OrcAxe_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_2H_OrcAxe_01_Geschaerft (C_Item)
{	
	name 				=	"Krush Pach (utwardzony)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Orkaxt_01;

	damageTotal			= 	Damage_Orkaxt_01+10;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Orkaxt_01;		

	cond_atr[2]   		=   ATR_STRENGTH;
	cond_value[2]  		=   Condition_Orkaxt_01;
	visual 				=	"ItMw_2H_OrcAxe_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_2H_OrcAxe_02 (C_Item)
{	
	name 				=	"Krush UrRok";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Orkaxt_02;

	damageTotal			= 	Damage_Orkaxt_02;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Orkaxt_02;		

	cond_atr[2]   		=  	ATR_STRENGTH;
	cond_value[2]  		=  	Condition_Orkaxt_02;
	visual 				=	"ItMw_2H_OrcAxe_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_2H_OrcAxe_02_Geschaerft (C_Item)
{	
	name 				=	"Krush UrRok (utwardzony)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Orkaxt_02;

	damageTotal			= 	Damage_Orkaxt_02+10;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Orkaxt_02;		

	cond_atr[2]   		=  	ATR_STRENGTH;
	cond_value[2]  		=  	Condition_Orkaxt_02;
	visual 				=	"ItMw_2H_OrcAxe_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_2H_OrcAxe_03 (C_Item)
{	
	name 				=	"Krusz Agash";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Orkaxt_03;

	damageTotal			= 	Damage_Orkaxt_03;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Orkaxt_03;		

	cond_atr[2]   		=   ATR_STRENGTH;
	cond_value[2]  		=   Condition_Orkaxt_03;
	visual 				= "ItMw_2H_OrcAxe_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_2H_OrcAxe_03_Geschaerft (C_Item)
{	
	name 				=	"Krush Agash (wyostrzony)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Orkaxt_03;

	damageTotal			= 	Damage_Orkaxt_03+10;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Orkaxt_03;		

	cond_atr[2]   		=   ATR_STRENGTH;
	cond_value[2]  		=   Condition_Orkaxt_03;
	visual 				= "ItMw_2H_OrcAxe_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_2H_OrcAxe_04 (C_Item)
{	
	name 				=	"Krush BrokDar";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Orkaxt_04;

	damageTotal			= 	Damage_Orkaxt_04;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Orkaxt_04;		

	cond_atr[2]   		=   ATR_STRENGTH;
	cond_value[2]  		=   Condition_Orkaxt_04;
	visual 				=	"ItMw_2H_OrcAxe_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_2H_OrcAxe_04_Geschaerft (C_Item)
{	
	name 				=	"Krush BrokDar (wyostrzony)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Orkaxt_04;

	damageTotal			= 	Damage_Orkaxt_04+10;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Orkaxt_04;		

	cond_atr[2]   		=   ATR_STRENGTH;
	cond_value[2]  		=   Condition_Orkaxt_04;
	visual 				=	"ItMw_2H_OrcAxe_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_2H_OrcSword_01 (C_Item) // *** f�r Drakonier!!! ***
{	
	name 				=	"Krusz Warrok"; 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Orkschwert;

	damageTotal			= 	Damage_Orkschwert;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Orkschwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Orkschwert;
	visual 				=	"ItMw_2H_OrcSword_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_2H_OrcSword_01_Geschaerft (C_Item) // *** f�r Drakonier!!! ***
{	
	name 				=	"Krush Varrok (utwardzony)"; 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Orkschwert;

	damageTotal			= 	Damage_Orkschwert+10;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Orkschwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Orkschwert;
	visual 				=	"ItMw_2H_OrcSword_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_2H_OrcSword_02 (C_Item) // *** f�r Orcritter!!! ***
{	
	name 				=	"Orkiszowy miecz wojenny"; 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Orkschwert_01;

	damageTotal			= 	Damage_Orkschwert_01;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Orkschwert_01;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Orkschwert_01;
	visual 				=	"ItMw_2H_OrcSword_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_2H_OrcSword_02_Geschaerft (C_Item) // *** f�r Orcritter!!! ***
{	
	name 				=	"Orkiszowy miecz wojenny (utwardzony)"; 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Orkschwert_01;

	damageTotal			= 	Damage_Orkschwert_01+10;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Orkschwert_01;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Orkschwert_01;
	visual 				=	"ItMw_2H_OrcSword_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/

// *******************
// Kapitel 1 - H�ndler
// *******************
INSTANCE ItMw_ShortSword3 (C_Item)
{	
	name 				=	"kr�tki miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_ShortSword3;

	damageTotal  		= 	Damage_ShortSword3;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_ShortSword3;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ShortSword3;
	visual 				=	"ItMw_016_1h_Sword_short_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_ShortSword3_Geschaerft (C_Item)
{	
	name 				=	"Kr�tki miecz (wyostrzony)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_ShortSword3;

	damageTotal  		= 	Damage_ShortSword3+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_ShortSword3;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ShortSword3;
	visual 				=	"ItMw_016_1h_Sword_short_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Nagelkeule (C_Item)
{	
	name 				=	"noga paznokci";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	Value_Nagelkeule;

	damageTotal  		= 	Damage_Nagelkeule;
	damagetype 			=	DAM_BLUNT;
	range    			=  	Range_Nagelkeule;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Nagelkeule;
	visual 				=	"ItMw_018_1h_Mace_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_ShortSword4 (C_Item)
{	
	name 				=	"wilk";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_ShortSword4;

	damageTotal  		= 	Damage_ShortSword4;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_ShortSword4;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ShortSword4;
	visual 				=	"ItMw_020_1h_Sword_short_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_ShortSword4_Geschaerft (C_Item)
{	
	name 				=	"Wilgotny zab (ostrzony)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_ShortSword4;

	damageTotal  		= 	Damage_ShortSword4+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_ShortSword4;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ShortSword4;
	visual 				=	"ItMw_020_1h_Sword_short_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Kriegskeule (C_Item)
{	
	name 				=	"klub wojenny";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	Value_Kriegskeule;

	damageTotal  		= 	Damage_Kriegskeule;
	damagetype 			=	DAM_BLUNT;
	range    			=  	Range_Kriegskeule;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Kriegskeule;
	visual 				=	"ItMw_022_1h_mace_war_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Richtstab (C_Item)
{	
	name 				=	"pret prostujacy";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	value 				=	Value_Richtstab;

	damageTotal  		= 	Damage_Richtstab;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Richtstab;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Richtstab;
	visual 				=	"ItMw_025_2h_Staff_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Richtstab_Geschaerft (C_Item)
{	
	name 				=	"Prostownik (utwardzony)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	value 				=	Value_Richtstab;

	damageTotal  		= 	Damage_Richtstab+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Richtstab;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Richtstab;
	visual 				=	"ItMw_025_2h_Staff_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_ShortSword5 (C_Item)
{	
	name 				=	"szlachetny, kr�tki miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_ShortSword5;

	damageTotal  		= 	Damage_ShortSword5;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_ShortSword5;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ShortSword5;
	visual 				=	"ItMw_025_1h_Sword_short_05.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_ShortSword5_Geschaerft (C_Item)
{	
	name 				=	"szlachetny, kr�tki miecz (ostry)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_ShortSword5;

	damageTotal  		= 	Damage_ShortSword5+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_ShortSword5;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ShortSword5;
	visual 				=	"ItMw_025_1h_Sword_short_05.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Kriegshammer1 (C_Item) 
{	
	name 				=	"rozgrzewacz";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Kriegshammer1;

	damageTotal			= 	Damage_Kriegshammer1;
	damagetype			=	DAM_BLUNT;
	range    			=  	Range_Kriegshammer1;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Kriegshammer1;
	visual 				=	"ItMw_028_1h_warhammer_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Hellebarde (C_Item) 
{	
	name 				=	"halbert";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Hellebarde;

	damageTotal			= 	Damage_Hellebarde;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Hellebarde;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Hellebarde;
	visual 				=	"itmw_028_2h_halberd_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Hellebarde_Geschaerft (C_Item) 
{	
	name 				=	"Halberd (wyostrzony)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Hellebarde;

	damageTotal			= 	Damage_Hellebarde+10;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Hellebarde;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Hellebarde;
	visual 				=	"itmw_028_2h_halberd_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Nagelkeule2 (C_Item)
{	
	name 				=	"Ciezka noga paznokciowa";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	Value_Nagelkeule2;

	damageTotal  		= 	Damage_Nagelkeule2;
	damagetype 			=	DAM_BLUNT;
	range    			=  	Range_Nagelkeule2;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Nagelkeule2;
	visual 				=	"ItMw_018_1h_Mace_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Schiffsaxt (C_Item)
{	
	name 				=	"top�r statku";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Schiffsaxt;

	damageTotal  		= 	Damage_Schiffsaxt;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schiffsaxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schiffsaxt;
	visual 				=	"ItMw_030_1h_axe_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schiffsaxt_Geschaerft (C_Item)
{	
	name 				=	"Axe okretowe (osie ostrzone)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Schiffsaxt;

	damageTotal  		= 	Damage_Schiffsaxt+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schiffsaxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schiffsaxt;
	visual 				=	"ItMw_030_1h_axe_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Piratensaebel (C_Item)
{	
	name 				=	"szable pirackie";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Piratensaebel;

	damageTotal  		= 	Damage_Piratensaebel;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Piratensaebel;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Piratensaebel;
	visual 				=	"ItMw_030_1h_sword_03.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Piratensaebel_Geschaerft (C_Item)
{	
	name 				=	"Szabla piracka (oslabiona)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Piratensaebel;

	damageTotal  		= 	Damage_Piratensaebel+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Piratensaebel;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Piratensaebel;
	visual 				=	"ItMw_030_1h_sword_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Piratensaebel_Greg (C_Item)
{	
	name 				=	"Greki stary szabla pirat�w";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD | ITEM_SHOW;	
	material 			=	MAT_METAL;

	value 				=	Value_Piratensaebel / 2;

	damageTotal  		= 	Damage_Piratensaebel / 2;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Piratensaebel - 40;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Piratensaebel - 10;
	visual 				=	"ItMw_030_1h_sword_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Piratensaebel_Greg_Gut (C_Item)
{	
	name 				=	"Greki szable pirackie";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Piratensaebel;

	damageTotal  		= 	Damage_Piratensaebel;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Piratensaebel;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Piratensaebel;
	visual 				=	"ItMw_030_1h_sword_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Schwert (C_Item)
{	
	name 				=	"Gruby dlugi miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert;

	damageTotal  		= 	Damage_Schwert;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert;
	visual 				=	"ItMw_030_1h_sword_long_01.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert_Geschaerft (C_Item)
{	
	name 				=	"Szorstki miecz dlugi (ostry ostrzony)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert;

	damageTotal  		= 	Damage_Schwert+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert;
	visual 				=	"ItMw_030_1h_sword_long_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_HakonSchwert_01 (C_Item)
{	
	name 				=	"Gruby miecz od Hakon.";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert;

	damageTotal  		= 	Damage_Schwert;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert;
	visual 				=	"ItMw_030_1h_sword_long_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_HakonSchwert_02 (C_Item)
{	
	name 				=	"Gruby miecz od Hakon.";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert;

	damageTotal  		= 	180;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert;
	visual 				=	"ItMw_030_1h_sword_long_01.3DS";

	description			= name;
	//TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
// ****************************
// Schmieden Kapitel 1 (Common)
// ****************************
INSTANCE ItMw_1H_Common_01 (C_Item) 
{	
	name 				=	NAME_ItMw_1H_Common_01;

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Common1;

	damageTotal			= 	Damage_Common1;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Common1;	

	on_equip			=	Equip_1H_05;
	on_unequip			=	UnEquip_1H_05;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Common1;
	visual 				=	"ItMw_030_1h_Common_Sword_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_05;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1H_Common_01_Stark (C_Item) 
{	
	name 				=	NAME_ItMw_1H_Common_01;

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Common1;

	damageTotal			= 	(Damage_Common1*3)/2;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Common1;	

	on_equip			=	Equip_1H_05;
	on_unequip			=	UnEquip_1H_05;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Common1;
	visual 				=	"ItMw_030_1h_Common_Sword_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_05;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1H_Common_01_Bonus (C_Item) 
{	
	name 				=	NAME_ItMw_1H_Common_01;

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Common1;

	damageTotal			= 	Damage_Common1;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Common1;	

	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Common1;
	visual 				=	"ItMw_030_1h_Common_Sword_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1H_Common_01_BonusMeisterschmied (C_Item) 
{	
	name 				=	NAME_ItMw_1H_Common_01;

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Common1;

	damageTotal			= 	Damage_Common1+20;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Common1;	

	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Common1;
	visual 				=	"ItMw_030_1h_Common_Sword_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1H_Common_01_Meisterschmied (C_Item) 
{	
	name 				=	NAME_ItMw_1H_Common_01;

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Common1;

	damageTotal			= 	Damage_Common1+20;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Common1;	

	on_equip			=	Equip_1H_05;
	on_unequip			=	UnEquip_1H_05;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Common1;
	visual 				=	"ItMw_030_1h_Common_Sword_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_05;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1H_Common_01_StarkBonus (C_Item) 
{	
	name 				=	NAME_ItMw_1H_Common_01;

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Common1;

	damageTotal			= 	(Damage_Common1*3)/2;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Common1;	

	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Common1;
	visual 				=	"ItMw_030_1h_Common_Sword_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1H_Common_01_StarkBonusMeisterschmied (C_Item) 
{	
	name 				=	NAME_ItMw_1H_Common_01;

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Common1;

	damageTotal			= 	((Damage_Common1+20)*3)/2;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Common1;	

	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Common1;
	visual 				=	"ItMw_030_1h_Common_Sword_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1H_Common_01_StarkMeisterschmied (C_Item) 
{	
	name 				=	NAME_ItMw_1H_Common_01;

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Common1;

	damageTotal			= 	((Damage_Common1+20)*3)/2;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Common1;	

	on_equip			=	Equip_1H_05;
	on_unequip			=	UnEquip_1H_05;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Common1;
	visual 				=	"ItMw_030_1h_Common_Sword_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_05;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_HaradSchwert (C_Item) 
{	
	name 				=	"Miecz Harada";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD|ITEM_SHOW;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal			= 	25;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Common1;	

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	15;
	visual 				=	"ItMw_030_1h_Common_Sword_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
// *******************
// Kapitel 2 - H�ndler
// *******************
INSTANCE ItMw_Stabkeule (C_Item) 
{	
	name 				=	"bar";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	Value_Stabkeule;

	damageTotal			= 	Damage_Stabkeule;
	damagetype			=	DAM_BLUNT;
	range    			=  	Range_Stabkeule;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Stabkeule;
	visual 				=	"ItMw_032_2h_staff_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Zweihaender1 (C_Item) 
{	
	name 				=	"Lekki, obureczny";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Zweihaender1;

	damageTotal			= 	Damage_Zweihaender1;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Zweihaender1;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Zweihaender1;
	visual 				=	"ItMw_032_2h_sword_light_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Zweihaender1_Geschaerft (C_Item) 
{	
	name 				=	"Lekkie dwie rece (ostre)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Zweihaender1;

	damageTotal			= 	Damage_Zweihaender1+10;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Zweihaender1;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Zweihaender1;
	visual 				=	"ItMw_032_2h_sword_light_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_2H_Sword_Light_01 (C_Item) 
{	
	name 				=	"Lekki, obureczny";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Zweihaender1;

	damageTotal			= 	Damage_Zweihaender1;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Zweihaender1;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Zweihaender1;
	visual 				=	"ItMw_032_2h_sword_light_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_2H_Sword_Light_01_Geschaerft (C_Item) 
{	
	name 				=	"Lekkie dwie rece (ostre)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Zweihaender1;

	damageTotal			= 	Damage_Zweihaender1+10;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Zweihaender1;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Zweihaender1;
	visual 				=	"ItMw_032_2h_sword_light_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Steinbrecher (C_Item)
{	
	name 				=	"kruszarka do kamienia";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	Value_Steinbrecher;

	damageTotal  		= 	Damage_Steinbrecher;
	damagetype 			=	DAM_BLUNT;
	range    			=  	Range_Steinbrecher;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Steinbrecher;
	visual 				=	"ItMw_035_1h_mace_war_02.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Spicker (C_Item)
{	
	name 				=	"Pobornik czaszkowy";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	Value_Spicker;

	damageTotal  		= 	Damage_Spicker;
	damagetype 			=	DAM_BLUNT;	//Point Schaden f�hrt direkt zum Tod!!
	range    			=  	Range_Spicker;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Spicker;
	visual 				=	"ItMw_035_1h_mace_03.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Streitaxt1 (C_Item) 
{	
	name 				=	"Lekka boj�wka";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Streitaxt1;

	damageTotal			= 	Damage_Streitaxt1;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Streitaxt1;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Streitaxt1;
	visual 				=	"ItMw_035_2h_Axe_light_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Streitaxt1_Geschaerft (C_Item) 
{	
	name 				=	"Lekkie osie bitewne (utwardzone)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Streitaxt1;

	damageTotal			= 	Damage_Streitaxt1+10;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Streitaxt1;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Streitaxt1;
	visual 				=	"ItMw_035_2h_Axe_light_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Schwert1 (C_Item)
{	
	name 				=	"Szlachetny miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert1;

	damageTotal  		= 	Damage_Schwert1;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert1;		

	on_equip			=	Equip_1H_05;
	on_unequip			=	UnEquip_1H_05;
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert1;
	visual 				=	"ItMw_035_1h_Sword_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_05;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert1_Geschaerft (C_Item)
{	
	name 				=	"Szlachetny miecz (wyostrzony)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert1;

	damageTotal  		= 	Damage_Schwert1+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert1;		

	on_equip			=	Equip_1H_05;
	on_unequip			=	UnEquip_1H_05;
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert1;
	visual 				=	"ItMw_035_1h_Sword_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_05;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert1_Stark (C_Item)
{	
	name 				=	"Szlachetny miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert1;

	damageTotal  		= 	(Damage_Schwert1*3)/2;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert1;		

	on_equip			=	Equip_1H_05;
	on_unequip			=	UnEquip_1H_05;
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert1;
	visual 				=	"ItMw_035_1h_Sword_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_05;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert1_Bonus (C_Item)
{	
	name 				=	"Szlachetny miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert1;

	damageTotal  		= 	Damage_Schwert1;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert1;		

	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert1;
	visual 				=	"ItMw_035_1h_Sword_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert1_BonusMeisterschmied (C_Item)
{	
	name 				=	"Szlachetny miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert1;

	damageTotal  		= 	Damage_Schwert1+20;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert1;		

	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert1;
	visual 				=	"ItMw_035_1h_Sword_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert1_Meisterschmied (C_Item)
{	
	name 				=	"Szlachetny miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert1;

	damageTotal  		= 	Damage_Schwert1+20;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert1;		

	on_equip			=	Equip_1H_05;
	on_unequip			=	UnEquip_1H_05;
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert1;
	visual 				=	"ItMw_035_1h_Sword_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_05;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert1_StarkBonus (C_Item)
{	
	name 				=	"Szlachetny miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert1;

	damageTotal  		= 	Damage_Schwert1+20;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert1;		

	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert1;
	visual 				=	"ItMw_035_1h_Sword_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert1_StarkMeisterschmied (C_Item)
{	
	name 				=	"Szlachetny miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert1;

	damageTotal  		= 	((Damage_Schwert1+20)*3)/2;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert1;		

	on_equip			=	Equip_1H_05;
	on_unequip			=	UnEquip_1H_05;
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert1;
	visual 				=	"ItMw_035_1h_Sword_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_05;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert1_StarkBonusMeisterschmied (C_Item)
{	
	name 				=	"Szlachetny miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert1;

	damageTotal  		= 	((Damage_Schwert1+20)*3)/2;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert1;		

	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert1;
	visual 				=	"ItMw_035_1h_Sword_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Schwert2 (C_Item)
{	
	name 				=	"dlugopisy";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert2;

	damageTotal  		= 	Damage_Schwert2;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert2;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert2;
	visual 				=	"ItMw_037_1h_sword_long_02.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert2_Geschaerft (C_Item)
{	
	name 				=	"Dlugi miecz (wyostrzony)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert2;

	damageTotal  		= 	Damage_Schwert2+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert2;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert2;
	visual 				=	"ItMw_037_1h_sword_long_02.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Doppelaxt (C_Item) 
{	
	name 				=	"podw�jna siekiera";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Doppelaxt;

	damageTotal			= 	Damage_Doppelaxt;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Doppelaxt;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Doppelaxt;
	visual 				=	"ItMw_040_1h_Axe_02.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Doppelaxt_Geschaerft (C_Item) 
{	
	name 				=	"Podw�jna os (o ostrzone)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Doppelaxt;

	damageTotal			= 	Damage_Doppelaxt+10;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Doppelaxt;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Doppelaxt;
	visual 				=	"ItMw_040_1h_Axe_02.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Bartaxt (C_Item) 
{	
	name 				=	"siekiera brody";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Bartaxt;

	damageTotal			= 	Damage_Bartaxt;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Bartaxt;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Bartaxt;
	visual 				=	"ItMw_040_1h_axe_03.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Bartaxt_Geschaerft (C_Item) 
{	
	name 				=	"Osie brody (ostrozone)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Bartaxt;

	damageTotal			= 	Damage_Bartaxt+10;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Bartaxt;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Bartaxt;
	visual 				=	"ItMw_040_1h_axe_03.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Morgenstern (C_Item)
{	
	name 				=	"poranek";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	Value_Morgenstern;

	damageTotal  		= 	Damage_Morgenstern;
	damagetype 			=	DAM_BLUNT;
	range    			=  	Range_Morgenstern;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Morgenstern;
	visual 				=	"ItMW_045_1h_mace_04.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Schwert3 (C_Item)
{	
	name 				=	"Szorstki miecz lakowy";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert3;

	damageTotal  		= 	Damage_Schwert3;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Schwert3;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert3;
	visual 				=	"ItMw_045_1h_Sword_Bastard_01.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert3_Geschaerft (C_Item)
{	
	name 				=	"Szorstki miecz kanardonowy (ostry)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert3;

	damageTotal  		= 	Damage_Schwert3+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Schwert3;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert3;
	visual 				=	"ItMw_045_1h_Sword_Bastard_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Schwert4 (C_Item)
{	
	name 				=	"Dlugi, dlugi miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert4;

	damageTotal  		= 	Damage_Schwert4;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Schwert4;		

	on_equip			=	Equip_1H_06;
	on_unequip			=	UnEquip_1H_06;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert4;
	visual 				=	"ItMw_045_1h_Sword_long_04.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_06;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert4_Geschaerft (C_Item)
{	
	name 				=	"Szorstki dlugi miecz (ostrozony)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert4;

	damageTotal  		= 	Damage_Schwert4+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Schwert4;		

	on_equip			=	Equip_1H_06;
	on_unequip			=	UnEquip_1H_06;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert4;
	visual 				=	"ItMw_045_1h_Sword_long_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_06;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert4_Stark (C_Item)
{	
	name 				=	"Dlugi, dlugi miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert4;

	damageTotal  		= 	(Damage_Schwert4*3)/2;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Schwert4;		

	on_equip			=	Equip_1H_06;
	on_unequip			=	UnEquip_1H_06;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert4;
	visual 				=	"ItMw_045_1h_Sword_long_04.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_06;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert4_Bonus (C_Item)
{	
	name 				=	"Dlugi, dlugi miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert4;

	damageTotal  		= 	Damage_Schwert4;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Schwert4;		

	on_equip			=	Equip_1H_11;
	on_unequip			=	UnEquip_1H_11;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert4;
	visual 				=	"ItMw_045_1h_Sword_long_04.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_11;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert4_BonusMeisterschmied (C_Item)
{	
	name 				=	"Dlugi, dlugi miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert4;

	damageTotal  		= 	Damage_Schwert4+20;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Schwert4;		

	on_equip			=	Equip_1H_11;
	on_unequip			=	UnEquip_1H_11;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert4;
	visual 				=	"ItMw_045_1h_Sword_long_04.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_11;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert4_Meisterschmied (C_Item)
{	
	name 				=	"Dlugi, dlugi miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert4;

	damageTotal  		= 	Damage_Schwert4+20;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Schwert4;		

	on_equip			=	Equip_1H_06;
	on_unequip			=	UnEquip_1H_06;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert4;
	visual 				=	"ItMw_045_1h_Sword_long_04.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_06;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert4_StarkBonus (C_Item)
{	
	name 				=	"Dlugi, dlugi miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert4;

	damageTotal  		= 	(Damage_Schwert4*3)/2;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Schwert4;		

	on_equip			=	Equip_1H_11;
	on_unequip			=	UnEquip_1H_11;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert4;
	visual 				=	"ItMw_045_1h_Sword_long_04.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_11;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert4_StarkMeisterschmied (C_Item)
{	
	name 				=	"Dlugi, dlugi miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert4;

	damageTotal  		= 	((Damage_Schwert4+20)*3)/2;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Schwert4;		

	on_equip			=	Equip_1H_06;
	on_unequip			=	UnEquip_1H_06;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert4;
	visual 				=	"ItMw_045_1h_Sword_long_04.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_06;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert4_StarkBonusMeisterschmied (C_Item)
{	
	name 				=	"Dlugi, dlugi miecz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert4;

	damageTotal  		= 	((Damage_Schwert4+20)*3)/2;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Schwert4;		

	on_equip			=	Equip_1H_11;
	on_unequip			=	UnEquip_1H_11;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert4;
	visual 				=	"ItMw_045_1h_Sword_long_04.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_11;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
// *******************
// Schmieden Kapitel 2
// *******************
INSTANCE ItMw_1H_Special_01 (C_Item) 
{	
	name 				=	NAME_ItMw_1H_Special_01;

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Special_1H_1;
	
	damageTotal			= 	Damage_Special_1H_1;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Special_1H_1;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Special_1H_1;
	visual 				=	"ItMw_045_1h_Sword_smith_02.3DS";

	description			= name;
	
	TEXT[0]				= NAME_Damage;					COUNT[0]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[2]				= NAME_ADDON_BONUS_1H;			COUNT[2]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_2H_Special_01 (C_Item) 
{	
	name 				=	NAME_ItMw_2H_Special_01;

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Special_2H_1;

	damageTotal			= 	Damage_Special_2H_1;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Special_2H_1;	
	
	on_equip			=	Equip_2H_10;
	on_unequip			=	UnEquip_2H_10;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Special_2H_1;
	visual 				=	"ItMw_050_2h_Sword_smith_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[2]				= NAME_ADDON_BONUS_2H;			COUNT[2]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
// *******************
// Kapitel 3 - H�ndler
// *******************
INSTANCE ItMw_Rapier (C_Item) 
{	
	name 				=	"rapier";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Rapier;

	damageTotal			= 	Damage_Rapier;
	damagetype			=	DAM_EDGE;		
	range    			=  	Range_Rapier;	

	on_equip			=	Equip_1H_08;
	on_unequip			=	UnEquip_1H_08;
	
	cond_atr[2]   		= 	ATR_DEXTERITY;  //!!!
	cond_value[2]  		= 	Condition_Rapier;
	visual 				=	"ItMw_050_1h_Sword_Rapier_01.3ds";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_08;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Rapier_Geschaerft (C_Item) 
{	
	name 				=	"Szybszy (szlifowany)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Rapier;

	damageTotal			= 	Damage_Rapier+10;
	damagetype			=	DAM_EDGE;		
	range    			=  	Range_Rapier;	

	on_equip			=	Equip_1H_08;
	on_unequip			=	UnEquip_1H_08;
	
	cond_atr[2]   		= 	ATR_DEXTERITY;  //!!!
	cond_value[2]  		= 	Condition_Rapier;
	visual 				=	"ItMw_050_1h_Sword_Rapier_01.3ds";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_08;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Rubinklinge (C_Item) 
{	
	name 				=	"ostrze rubinowe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Rubinklinge;

	damageTotal			= 	Damage_Rubinklinge;
	damagetype			=	DAM_EDGE;		
	range    			=  	Range_Rubinklinge;	

	on_equip			=	Equip_1H_07;
	on_unequip			=	UnEquip_1H_07;

	cond_atr[2]   		= 	ATR_STRENGTH;  
	cond_value[2]  		= 	Condition_Rubinklinge;
	visual 				=	"ItMw_050_1h_sword_05.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_07;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Rubinklinge_Geschaerft (C_Item) 
{	
	name 				=	"Ostre ostrze r�zyczkowe (wyostrzone)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Rubinklinge;

	damageTotal			= 	Damage_Rubinklinge+10;
	damagetype			=	DAM_EDGE;		
	range    			=  	Range_Rubinklinge;	

	on_equip			=	Equip_1H_07;
	on_unequip			=	UnEquip_1H_07;

	cond_atr[2]   		= 	ATR_STRENGTH;  
	cond_value[2]  		= 	Condition_Rubinklinge;
	visual 				=	"ItMw_050_1h_sword_05.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_07;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Rubinklinge_Stark (C_Item) 
{	
	name 				=	"ostrze rubinowe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Rubinklinge;

	damageTotal			= 	(Damage_Rubinklinge*3)/2;
	damagetype			=	DAM_EDGE;		
	range    			=  	Range_Rubinklinge;	

	on_equip			=	Equip_1H_07;
	on_unequip			=	UnEquip_1H_07;

	cond_atr[2]   		= 	ATR_STRENGTH;  
	cond_value[2]  		= 	Condition_Rubinklinge;
	visual 				=	"ItMw_050_1h_sword_05.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_07;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Rubinklinge_Bonus (C_Item) 
{	
	name 				=	"ostrze rubinowe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Rubinklinge;

	damageTotal			= 	Damage_Rubinklinge;
	damagetype			=	DAM_EDGE;		
	range    			=  	Range_Rubinklinge;	

	on_equip			=	Equip_1H_12;
	on_unequip			=	UnEquip_1H_12;

	cond_atr[2]   		= 	ATR_STRENGTH;  
	cond_value[2]  		= 	Condition_Rubinklinge;
	visual 				=	"ItMw_050_1h_sword_05.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_12;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Rubinklinge_BonusMeisterschmied (C_Item) 
{	
	name 				=	"ostrze rubinowe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Rubinklinge;

	damageTotal			= 	Damage_Rubinklinge+20;
	damagetype			=	DAM_EDGE;		
	range    			=  	Range_Rubinklinge;	

	on_equip			=	Equip_1H_12;
	on_unequip			=	UnEquip_1H_12;

	cond_atr[2]   		= 	ATR_STRENGTH;  
	cond_value[2]  		= 	Condition_Rubinklinge;
	visual 				=	"ItMw_050_1h_sword_05.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_12;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Rubinklinge_Meisterschmied (C_Item) 
{	
	name 				=	"ostrze rubinowe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Rubinklinge;

	damageTotal			= 	Damage_Rubinklinge+20;
	damagetype			=	DAM_EDGE;		
	range    			=  	Range_Rubinklinge;	

	on_equip			=	Equip_1H_07;
	on_unequip			=	UnEquip_1H_07;

	cond_atr[2]   		= 	ATR_STRENGTH;  
	cond_value[2]  		= 	Condition_Rubinklinge;
	visual 				=	"ItMw_050_1h_sword_05.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_07;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Rubinklinge_StarkBonus (C_Item) 
{	
	name 				=	"ostrze rubinowe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Rubinklinge;

	damageTotal			= 	(Damage_Rubinklinge*3)/2;
	damagetype			=	DAM_EDGE;		
	range    			=  	Range_Rubinklinge;	

	on_equip			=	Equip_1H_12;
	on_unequip			=	UnEquip_1H_12;

	cond_atr[2]   		= 	ATR_STRENGTH;  
	cond_value[2]  		= 	Condition_Rubinklinge;
	visual 				=	"ItMw_050_1h_sword_05.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_12;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Rubinklinge_StarkMeisterschmied (C_Item) 
{	
	name 				=	"ostrze rubinowe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Rubinklinge;

	damageTotal			= 	((Damage_Rubinklinge+20)*3)/2;
	damagetype			=	DAM_EDGE;		
	range    			=  	Range_Rubinklinge;	

	on_equip			=	Equip_1H_07;
	on_unequip			=	UnEquip_1H_07;

	cond_atr[2]   		= 	ATR_STRENGTH;  
	cond_value[2]  		= 	Condition_Rubinklinge;
	visual 				=	"ItMw_050_1h_sword_05.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_07;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Rubinklinge_StarkBonusMeisterschmied (C_Item) 
{	
	name 				=	"ostrze rubinowe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Rubinklinge;

	damageTotal			= 	((Damage_Rubinklinge+20)*3)/2;
	damagetype			=	DAM_EDGE;		
	range    			=  	Range_Rubinklinge;	

	on_equip			=	Equip_1H_12;
	on_unequip			=	UnEquip_1H_12;

	cond_atr[2]   		= 	ATR_STRENGTH;  
	cond_value[2]  		= 	Condition_Rubinklinge;
	visual 				=	"ItMw_050_1h_sword_05.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_12;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Prunkschwert (C_Item) 
{	
	name 				=	"miecz swietnosci";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Rubinklinge;

	damageTotal			= 	Damage_Rubinklinge;
	damagetype			=	DAM_EDGE;		
	range    			=  	Range_Rubinklinge;	

	on_equip			=	Equip_1H_07;
	on_unequip			=	UnEquip_1H_07;

	cond_atr[2]   		= 	ATR_STRENGTH;  
	cond_value[2]  		= 	Condition_Rubinklinge;
	visual 				=	"ItMw_050_1h_sword_05.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_07;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Streitkolben (C_Item)
{	
	name 				=	"maces";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Streitkolben;

	damageTotal  		= 	Damage_Streitkolben;
	damagetype 			=	DAM_BLUNT;
	range    			=  	Range_Streitkolben;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Streitkolben;
	visual 				=	"ItMw_050_1h_mace_war_03.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Zweihaender2 (C_Item) 
{	
	name 				=	"osoba dwureczna";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Zweihaender2;

	damageTotal			= 	Damage_Zweihaender2;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Zweihaender2;	

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Zweihaender2;
	visual 				=	"ItMw_055_2h_sword_light_05.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Zweihaender2_Geschaerft (C_Item) 
{	
	name 				=	"Dwuosobowa (ostrzona)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Zweihaender2;

	damageTotal			= 	Damage_Zweihaender2+10;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Zweihaender2;	

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Zweihaender2;
	visual 				=	"ItMw_055_2h_sword_light_05.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Runenschwert (C_Item)
{	
	name 				=	"miecz runowy";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Runenschwert;

	damageTotal  		= 	Damage_Runenschwert;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Runenschwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Runenschwert;
	visual 				=	"ItMw_055_1h_sword_long_05.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Runenschwert_Geschaerft (C_Item)
{	
	name 				=	"Runesaber (naostrzony)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Runenschwert;

	damageTotal  		= 	Damage_Runenschwert+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Runenschwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Runenschwert;
	visual 				=	"ItMw_055_1h_sword_long_05.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Rabenschnabel (C_Item)
{	
	name 				=	"Eumpill";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Rabenschnabel;

	damageTotal  		= 	Damage_Rabenschnabel;
	damagetype 			=	DAM_BLUNT;
	range    			=  	Range_Rabenschnabel;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Rabenschnabel;
	visual 				=	"ItMw_058_1h_warhammer_02.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Schwert5 (C_Item)
{	
	name 				=	"Szlachetny miecz kanardowy";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert5;

	damageTotal  		= 	Damage_Schwert5;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert5;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert5;
	visual 				=	"ItMw_058_1h_Sword_Bastard_02.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schwert5_Geschaerft (C_Item)
{	
	name 				=	"Szlachecki miecz bastardowy (wyostrzony)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Schwert5;

	damageTotal  		= 	Damage_Schwert5+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert5;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schwert5;
	visual 				=	"ItMw_058_1h_Sword_Bastard_02.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Inquisitor (C_Item)
{	
	name 				=	"inkwizytor";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Inquisitor;

	damageTotal  		= 	Damage_Inquisitor;
	damagetype 			=	DAM_EDGE;	//!!!
	range    			=  	Range_Inquisitor;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Inquisitor;
	visual 				=	"ItMw_060_1h_mace_war_04.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Streitaxt2 (C_Item)
{	
	name 				=	"bitaksja";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Streitaxt2;

	damageTotal  		= 	Damage_Streitaxt2;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Streitaxt2;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Streitaxt2;
	visual 				=	"ItMw_060_2h_axe_heavy_01.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Streitaxt2_Geschaerft (C_Item)
{	
	name 				=	"Osie bojowe gorace";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Streitaxt2;

	damageTotal  		= 	Damage_Streitaxt2+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Streitaxt2;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Streitaxt2;
	visual 				=	"ItMw_060_2h_axe_heavy_01.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Zweihaender3 (C_Item)
{	
	name 				=	"moc pobiegla";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Zweihaender3;

	damageTotal  		= 	Damage_Zweihaender3;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Zweihaender3;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Zweihaender3;
	visual 				=	"ItMw_060_2h_sword_01.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Zweihaender3_Geschaerft (C_Item)
{	
	name 				=	"Uzywanie statk�w do sztauowania (naostrzone)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Zweihaender3;

	damageTotal  		= 	Damage_Zweihaender3+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Zweihaender3;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Zweihaender3;
	visual 				=	"ItMw_060_2h_sword_01.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
// *******************
// Schmieden Kapitel 3
// *******************
INSTANCE ItMw_1H_Special_02 (C_Item) 
{	
	name 				=	NAME_ItMw_1H_Special_02;

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Special_1H_2;

	damageTotal			= 	Damage_Special_1H_2;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Special_1H_2;	
	
	on_equip			=	Equip_1H_10;
	on_unequip			=	UnEquip_1H_10;
		
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Special_1H_2;
	visual 				=	"ItMw_060_1h_Sword_smith_03.3DS";

	description			= name;
	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_10;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_2H_Special_02 (C_Item) 
{	
	name 				=	NAME_ItMw_2H_Special_02;

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Special_2H_2;

	damageTotal			= 	Damage_Special_2H_2;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Special_2H_2;	
	
	on_equip			=	Equip_2H_10;
	on_unequip			=	UnEquip_2H_10;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Special_2H_2;
	visual 				=	"ItMw_070_2h_Sword_smith_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_2H;			COUNT[4]	= Waffenbonus_10;	
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
// *******************
// Kapitel 4 - H�ndler
// *******************
INSTANCE ItMw_ElBastardo (C_Item)
{	
	name 				=	"El Bastardo";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_ElBastardo;

	damageTotal  		= 	Damage_ElBastardo;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_ElBastardo;		
	
	on_equip			=	Equip_1H_08;
	on_unequip			=	UnEquip_1H_08;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ElBastardo;
	visual 				=	"ItMw_065_1h_sword_bastard_03.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_08;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_ElBastardo_Geschaerft (C_Item)
{	
	name 				=	"El Bastardo (wyostrzone)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_ElBastardo;

	damageTotal  		= 	Damage_ElBastardo+10;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_ElBastardo;		
	
	on_equip			=	Equip_1H_08;
	on_unequip			=	UnEquip_1H_08;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ElBastardo;
	visual 				=	"ItMw_065_1h_sword_bastard_03.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_08;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_ElBastardo_Stark (C_Item)
{	
	name 				=	"El Bastardo";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_ElBastardo;

	damageTotal  		= 	(Damage_ElBastardo*3)/2;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_ElBastardo;		
	
	on_equip			=	Equip_1H_08;
	on_unequip			=	UnEquip_1H_08;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ElBastardo;
	visual 				=	"ItMw_065_1h_sword_bastard_03.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_08;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_ElBastardo_Bonus (C_Item)
{	
	name 				=	"El Bastardo";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_ElBastardo;

	damageTotal  		= 	Damage_ElBastardo;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_ElBastardo;		
	
	on_equip			=	Equip_1H_13;
	on_unequip			=	UnEquip_1H_13;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ElBastardo;
	visual 				=	"ItMw_065_1h_sword_bastard_03.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_13;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_ElBastardo_BonusMeisterschmied (C_Item)
{	
	name 				=	"El Bastardo";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_ElBastardo;

	damageTotal  		= 	Damage_ElBastardo+20;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_ElBastardo;		
	
	on_equip			=	Equip_1H_13;
	on_unequip			=	UnEquip_1H_13;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ElBastardo;
	visual 				=	"ItMw_065_1h_sword_bastard_03.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_13;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_ElBastardo_StarkBonus (C_Item)
{	
	name 				=	"El Bastardo";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_ElBastardo;

	damageTotal  		= 	(Damage_ElBastardo*3)/2;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_ElBastardo;		
	
	on_equip			=	Equip_1H_13;
	on_unequip			=	UnEquip_1H_13;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ElBastardo;
	visual 				=	"ItMw_065_1h_sword_bastard_03.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_13;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_ElBastardo_StarkMeisterschmied (C_Item)
{	
	name 				=	"El Bastardo";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_ElBastardo;

	damageTotal  		= 	((Damage_ElBastardo+20)*3)/2;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_ElBastardo;		
	
	on_equip			=	Equip_1H_08;
	on_unequip			=	UnEquip_1H_08;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ElBastardo;
	visual 				=	"ItMw_065_1h_sword_bastard_03.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_08;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_ElBastardo_StarkBonusMeisterschmied (C_Item)
{	
	name 				=	"El Bastardo";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_ElBastardo;

	damageTotal  		= 	((Damage_ElBastardo+20)*3)/2;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_ElBastardo;		
	
	on_equip			=	Equip_1H_13;
	on_unequip			=	UnEquip_1H_13;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ElBastardo;
	visual 				=	"ItMw_065_1h_sword_bastard_03.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_13;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_ElBastardo_Meisterschmied (C_Item)
{	
	name 				=	"El Bastardo";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_ElBastardo;

	damageTotal  		= 	Damage_ElBastardo+20;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_ElBastardo;		
	
	on_equip			=	Equip_1H_08;
	on_unequip			=	UnEquip_1H_08;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_ElBastardo;
	visual 				=	"ItMw_065_1h_sword_bastard_03.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_ADDON_BONUS_1H;			COUNT[4]	= Waffenbonus_08;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Kriegshammer2 (C_Item)
{	
	name 				=	"Ciezki rozgrzewacz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Kriegshammer2;

	damageTotal  		= 	Damage_Kriegshammer2;
	damagetype 			=	DAM_BLUNT;	
	range    			=  	Range_Kriegshammer2;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Kriegshammer2;
	visual 				=	"ItMw_065_1h_warhammer_03.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Folteraxt (C_Item)
{	
	name 				=	"top�r tortur";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Folteraxt;

	damageTotal  		= 	Damage_Folteraxt;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_Folteraxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Folteraxt;
	visual 				=	"ItMw_065_2h_greataxe_01.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Folteraxt_Geschaerft (C_Item)
{	
	name 				=	"Osie tortur (ostrozone)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Folteraxt;

	damageTotal  		= 	Damage_Folteraxt+10;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_Folteraxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Folteraxt;
	visual 				=	"ItMw_065_2h_greataxe_01.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Zweihaender4 (C_Item)
{	
	name 				=	"Ciezki, dwurzedowy";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Zweihaender4;

	damageTotal  		= 	Damage_Zweihaender4;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Zweihaender4;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Zweihaender4;
	visual 				=	"ItMw_068_2h_sword_02.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Zweihaender4_Geschaerft (C_Item)
{	
	name 				=	"Ciezka, dwureczna (utwardzona)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Zweihaender4;

	damageTotal  		= 	Damage_Zweihaender4+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Zweihaender4;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Zweihaender4;
	visual 				=	"ItMw_068_2h_sword_02.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Schlachtaxt (C_Item)
{	
	name 				=	"top�r bojowy";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Schlachtaxt;

	damageTotal  		= 	Damage_Schlachtaxt;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_Schlachtaxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schlachtaxt;
	visual 				=	"ItMw_070_2h_axe_heavy_03.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Schlachtaxt_Geschaerft (C_Item)
{	
	name 				=	"Osie rzezne (o ostrzone)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Schlachtaxt;

	damageTotal  		= 	Damage_Schlachtaxt+10;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_Schlachtaxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schlachtaxt;
	visual 				=	"ItMw_070_2h_axe_heavy_03.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Krummschwert (C_Item)
{	
	name 				=	"scimitor";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Scimitar;

	damageTotal  		= 	Damage_Scimitar;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Scimitar;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Scimitar;
	visual 				=	"ItMw_070_2h_sword_09.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Krummschwert_Geschaerft (C_Item)
{	
	name 				=	"Miecz krzywoliniowy (ostrzony)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Scimitar;

	damageTotal  		= 	Damage_Scimitar+10;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Scimitar;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Scimitar;
	visual 				=	"ItMw_070_2h_sword_09.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_Barbarenstreitaxt (C_Item)
{	
	name 				=	"bitwa barbarzynska";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Barbarenstreitaxt;

	damageTotal  		= 	Damage_Barbarenstreitaxt;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_Barbarenstreitaxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Barbarenstreitaxt;
	visual 				=	"ItMw_075_2h_axe_heavy_04.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Barbarenstreitaxt_Geschaerft (C_Item)
{	
	name 				=	"Bitwy barbarzynskie (ostrozone)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Barbarenstreitaxt;

	damageTotal  		= 	Damage_Barbarenstreitaxt+10;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_Barbarenstreitaxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Barbarenstreitaxt;
	visual 				=	"ItMw_075_2h_axe_heavy_04.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/

/********************************************************************************/
// *******************
// Schmieden Kapitel 4
// *******************
/********************************************************************************/
// *******************
// Kapitel 5 - H�ndler
// *******************
INSTANCE ItMw_Berserkeraxt (C_Item)//Joly:Auf Dracheninsel beim Schwarzmagiernovizen
{	
	name 				=	"siekiera berserkera";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Berserkeraxt;

	damageTotal  		= 	Damage_Berserkeraxt;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_Berserkeraxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Berserkeraxt;
	visual 				=	"ItMw_080_2h_axe_heavy_02.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_Berserkeraxt_Geschaerft (C_Item)//Joly:Auf Dracheninsel beim Schwarzmagiernovizen
{	
	name 				=	"Berserkeraxt (oslodzony)";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_Berserkeraxt;

	damageTotal  		= 	Damage_Berserkeraxt+10;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_Berserkeraxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Berserkeraxt;
	visual 				=	"ItMw_080_2h_axe_heavy_02.3DS";

	value 				=	damageTotal*20 + (damageTotal-cond_Value[2])*20;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
// ************************
// Gesegnete Paladin-Waffen
// ************************
INSTANCE ItMw_1H_Blessed_01 (C_Item) 
{	
	name 				=	"Brzeszczot rudy rudy surowej";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD | ITEM_MISSION;	
	material 			=	MAT_METAL;

	value 				=	Value_Blessed_1H_1;

	damageTotal			= 	Damage_Blessed_1H_1;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Blessed_1H_1;	

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Blessed_1H_1;
	visual 				=	"itmw_030_1h_PAL_sword_bastard_RAW_01.3ds";

	description			= name;
	TEXT[1]				= "Premia od demon�w i nieumarlych";		COUNT[1]	= 30;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_1H_Blessed_02 (C_Item) 
{	
	name 				=	"Brazowy n�z rudy rudy";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD | ITEM_MISSION;	
	material 			=	MAT_METAL;

	value 				=	Value_Blessed_1H_2;

	damageTotal			= 	Damage_Blessed_1H_2;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Blessed_1H_2;	

	effect = "SPELLFX_MAGESTAFF2";

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Blessed_1H_2;
	visual 				=	"ItMw_030_1h_PAL_sword_bastard_RAW_01.3DS";

	description			= name;
	TEXT[1]				= "Premia od demon�w i nieumarlych";		COUNT[1]	= 40;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_1H_Blessed_03 (C_Item) 
{	
	name 				=	"Brazowy n�z rudy rudy";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD | ITEM_MISSION;	
	material 			=	MAT_METAL;

	value 				=	Value_Blessed_1H_3;

	damageTotal			= 	Damage_Blessed_1H_3;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Blessed_1H_3;	

	effect = "SPELLFX_MAGESTAFF1";

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Blessed_1H_3;
	visual 				=	"ItMw_030_1h_PAL_sword_bastard_RAW_01.3DS";

	description			= name;
	TEXT[1]				= "Premia od demon�w i nieumarlych";		COUNT[1]	= 50;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_1H_Blessed_03_Geschaerft (C_Item) 
{	
	name 				=	"Gniew Innos (ostrozony)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD | ITEM_MISSION;	
	material 			=	MAT_METAL;

	value 				=	Value_Blessed_1H_3;

	damageTotal			= 	Damage_Blessed_1H_3+10;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Blessed_1H_3;	

	effect = "SPELLFX_MAGESTAFF1";

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Blessed_1H_3;
	visual 				=	"ItMw_030_1h_PAL_sword_bastard_RAW_01.3DS";

	description			= name;
	TEXT[1]				= "Premia od demon�w i nieumarlych";		COUNT[1]	= 50;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_2H_Blessed_01 (C_Item) 
{	
	name 				=	"Brzeszczot rudy rudy surowej";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Blessed_2H_1;

	damageTotal			= 	Damage_Blessed_2H_1;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Blessed_2H_1;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Blessed_2H_1;
	visual 				=	"ItMw_040_2h_PAL_sword_heavy_RAW_01.3DS";

	description			= name;
	TEXT[1]				= "Premia od demon�w i nieumarlych";		COUNT[1]	= 30;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_2H_Blessed_02 (C_Item) 
{	
	name 				=	"miecz religijny";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Blessed_2H_2;

	damageTotal			= 	Damage_Blessed_2H_2;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Blessed_2H_2;		

	effect = "SPELLFX_MAGESTAFF2";

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Blessed_2H_2;
	visual 				=	"ItMw_040_2h_PAL_sword_heavy_RAW_01.3DS";

	description			= name;
	TEXT[1]				= "Premia od demon�w i nieumarlych";		COUNT[1]	= 40;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
INSTANCE ItMw_2H_Blessed_03 (C_Item) 
{	
	name 				=	"Wykonawca Swiety";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Blessed_2H_3;

	damageTotal			= 	Damage_Blessed_2H_3;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Blessed_2H_3;		

	effect = "SPELLFX_MAGESTAFF1";

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_Blessed_2H_3;
	visual 				=	"ItMw_040_2h_PAL_sword_heavy_RAW_01.3DS";

	description			= name;
	TEXT[1]				= "Premia od demon�w i nieumarlych";		COUNT[1]	= 50;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/********************************************************************************/
