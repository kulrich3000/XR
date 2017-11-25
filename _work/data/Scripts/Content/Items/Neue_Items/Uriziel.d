instance Uriziel_2H (C_Item) 
{	
	name 				=	"Uriziel";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD|ITEM_MISSION;	
	material 			=	MAT_METAL;

	value 				=	100000;

	damageType				=	DAM_FIRE|DAM_EDGE; //Wegen den 3 G�tterwaffen
	damage[DAM_INDEX_EDGE]	=	  300;						
	damage[DAM_INDEX_FIRE]	=	 200;
	
	range    			=  	200;		
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	0;
	visual 				=	"ItMw_2H_Sword_Sleeper_02.3DS";
	description			= 	name;
	TEXT[0]				=	"Jest to miecz Uriziel.";
	TEXT[1]				= 	"Zostala wykonana z 3 bozych mieczy.";
	TEXT[3]				=	"uszkodzenie";			COUNT[3]	=	damage[DAM_INDEX_FIRE];
	TEXT[5]				=	NAME_Value;				COUNT[5]	=	value;
};

instance Uriziel_1H (C_Item) 
{	
	name 				=	"Uriziel";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD|ITEM_MISSION;	
	material 			=	MAT_METAL;

	value 				=	100000;

	damageType				=	DAM_FIRE|DAM_EDGE; //Wegen den 3 G�tterwaffen
	damage[DAM_INDEX_EDGE]	=	  300;						
	damage[DAM_INDEX_FIRE]	=	 200;
	
	range    			=  	200;		
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	0;
	visual 				=	"ItMw_1H_Uriziel.3DS";
	description			= 	name;
	TEXT[0]				=	"Jest to miecz Uriziel.";
	TEXT[1]				= 	"Zostala wykonana z 3 bozych mieczy.";
	TEXT[3]				=	"uszkodzenie";			COUNT[3]	=	damage[DAM_INDEX_FIRE];
	TEXT[5]				=	NAME_Value;				COUNT[5]	=	value;
};
