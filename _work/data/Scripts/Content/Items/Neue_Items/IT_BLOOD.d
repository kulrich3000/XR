var int Blutcounter;

INSTANCE ItPo_Blood (C_Item)	//DAs Blut zum Trinken
{
	name 			=	"ludzki";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	10;	

	visual 			=	"ItPo_Perm_Health.3ds";
	material 		=	MAT_GLAS;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	name;
	
	TEXT[3]			= 	"Ludzka krew";				

	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

INSTANCE ItPo_HexenBlood (C_Item)	//DAs Blut zum Trinken
{
	name 			=	"krew czarownicy";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	10;	

	visual 			=	"ItPo_Perm_Health.3ds";
	material 		=	MAT_GLAS;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	name;				

	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};
