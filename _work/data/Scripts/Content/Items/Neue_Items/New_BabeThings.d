INSTANCE ItMiBrush(C_Item)
{
	name 				=	"Brush";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	2;

	visual				=	"ItMi_Brush_01.3ds";
	material 			=	MAT_GLAS;
	scemeName			=	"BRUSH";

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/
// F�r Babe-Luftzuf�cheln
INSTANCE ItMiWedel(C_Item)
{
	name 				=	"palm frond";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	2;

	visual				=	"ItMi_Wedel_01.3ds";
	material 			=	MAT_LEATHER;
	scemeName			=	"COOLAIR";

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
