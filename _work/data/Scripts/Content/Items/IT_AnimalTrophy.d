// ************************************************************************************************
// Wert von Tiertroph�en
// ************************************************************************************************

//Addon
const int	Value_BCKopf				=   50;

const int	Value_Meatbugflesh			=	10;
const int	Value_SheepFur				=	10;
const int	Value_SheepFur_Rein			=	13;
const int	Value_SheepFur_Feuer			=	3;
const int	Value_ZiegenFur				=	10;
const int	Value_ZiegenFur_Rein			=	13;
const int	Value_ZiegenFur_Feuer			=	3;
const int	Value_WolfFur				=	10;
const int	Value_WolfFur_Rein			=	13;
const int	Value_WolfFur_Feuer			=	3;
const int	Value_BugMandibles			=	15;	
const int	Value_Claw					=	15;
const int	Value_LurkerClaw			=	15;	
const int	Value_Teeth					=	15;
const int	Value_KeilerHauer					=	20;
const int	Value_ErzdemonTooth					=	500;
const int	Value_CrawlerMandibles		=	15;	
const int	Value_Wing					=	20;
const int	Value_Sting					=	25;
const int	Value_ReptileSkin			=	25;
const int 	Value_WargFur				=	25;
const int 	Value_WargFur_Rein			=	33;
const int 	Value_WargFur_Feuer			=	8;
const int 	Value_BlackwolfFur				=	15;
const int 	Value_BlackwolfFur_Rein			=	23;
const int 	Value_BlackwolfFur_Feuer			=	5;
const int	Value_DrgSnapperHorn		=	100;
const int	Value_CrawlerPlate			=	50;
const int	Value_ShadowFur				=	250;
const int	Value_ShadowFur_Rein			=	330;
const int	Value_ShadowFur_Feuer			=	80;
const int	Value_SharkSkin				=	200;
const int	Value_TrollFur				=	300;
const int	Value_TrollFur_Rein			=	400;
const int	Value_TrollFur_Feuer			=	100;
const int	Value_WaranFiretongue		=	300;
const int	Value_ShadowHorn			=	300;
const int	Value_SharkTeeth			=	300;
const int	Value_TrollTooth			=	300;
const int	Value_TrollBlackFur			=	350;
const int	Value_TrollBlackFur_Rein		=	466;
const int	Value_TrollBlackFur_Feuer		=	116;

const int	Value_GoblinBone			=	10;
const int	Value_SkeletonBone			=	10;
const int	Value_DemonHeart			=	300;
const int	Value_StoneGolemHeart		=	300;
const int	Value_FireGolemHeart		=	300;
const int	Value_IceGolemHeart			=	300;

const int	Value_UndeadDragonSoulStone	=	400;
const int	Value_IcedragonHeart		=	400;
const int	Value_FiredragonHeart		=	400;
const int	Value_SwampdragonHeart		=	400;
const int	Value_RockdragonHeart		=	400;

const int	Value_DragonBlood			=	200;
const int	Value_DragonScale			=	200;

const int	Value_Keilerfur				= 	 15;	
const int	Value_Keilerfur_Rein			= 	 20;
const int	Value_Keilerfur_Feuer			= 	 5;

const int	Value_Pumafur				= 	 100;	
const int	Value_Pumafur_Rein			= 	 130;
const int	Value_Pumafur_Feuer			= 	 30;
/*****************ADDON*************************************************************************/
INSTANCE ItAt_Addon_BCKopf (C_Item)
{
	name 				=	"kierownik";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_BCKopf;

	visual 				=	"ItAt_Blattcrawler_01.3DS"; 
	material 			=	MAT_LEATHER;
	

	description			= 	"Szef mantyzy";
	TEXT[0]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_Meatbugflesh (C_Item)
{
	name 				=	"pluskwa";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Meatbugflesh;

	visual 				=	"ItAt_Meatbugflesh.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"FOODHUGE";
	on_state[0]			=	Use_Meatbugflesh;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	NAME_Bonus_HP; COUNT[1] = 10;
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

	FUNC VOID Use_Meatbugflesh()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS, 10);

		self.aivar[AIV_Damage] += 10;

		if (self.aivar[AIV_Damage] > self.attribute[ATR_HITPOINTS_MAX])
		{
			self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS_MAX];
		};
	};

/******************************************************************************************/
INSTANCE ItAt_SheepFur (C_Item)
{
	name 				=	"kozuch";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_SheepFur;

	visual 				=	"ItAt_SheepFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItAt_SheepFur_Rein (C_Item)
{
	name 				=	"nieuszkodzona sk�ra kozucha";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_SheepFur_Rein;

	visual 				=	"ItAt_SheepFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItAt_SheepFur_Feuer (C_Item)
{
	name 				=	"wypalona sk�ra kozucha";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_SheepFur_Feuer;

	visual 				=	"ItAt_SheepFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItAt_ZiegenFur (C_Item)
{
	name 				=	"kozia sk�ra";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ZiegenFur;

	visual 				=	"ItAt_SheepFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItAt_ZiegenFur_Rein (C_Item)
{
	name 				=	"nienaruszona sk�ra kozia";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ZiegenFur_Rein;

	visual 				=	"ItAt_SheepFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItAt_ZiegenFur_Feuer (C_Item)
{
	name 				=	"wypalona kozia sk�ra";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ZiegenFur_Feuer;

	visual 				=	"ItAt_SheepFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_WolfFur (C_Item)
{
	name 				=	"futro z wilka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_WolfFur;

	visual 				=	"ItAt_WolfFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_WolfFur_Rein (C_Item)
{
	name 				=	"nieuszkodzone futro z wilka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_WolfFur_Rein;

	visual 				=	"ItAt_WolfFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_WolfFur_Feuer (C_Item)
{
	name 				=	"wypalone futro z wilka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_WolfFur_Feuer;

	visual 				=	"ItAt_WolfFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_TigerFur (C_Item)
{
	name 				=	"biala sk�ra tygrysa";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	1000;

	visual 				=	"ItAt_TigerFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_TigerFur_Rein (C_Item)
{
	name 				=	"Nieuszkodzona biala sk�ra tygrysa";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	1000;

	visual 				=	"ItAt_TigerFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_TigerFur_Feuer (C_Item)
{
	name 				=	"wypalona biala sk�ra tygrysa";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	1000;

	visual 				=	"ItAt_TigerFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_StonePumaFur (C_Item)
{
	name 				=	"dynia";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_PumaFur;

	visual 				=	"ItAt_StonePumaFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_StonePumaFur_Rein (C_Item)
{
	name 				=	"Dynia kamienna nieuszkodzona";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_PumaFur_Rein;

	visual 				=	"ItAt_StonePumaFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_StonePumaFur_Feuer (C_Item)
{
	name 				=	"opalona dynia kamienna";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_PumaFur_Feuer;

	visual 				=	"ItAt_StonePumaFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_PumaFur (C_Item)
{
	name 				=	"futro z paczki";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_PumaFur;

	visual 				=	"ItAt_PumaFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_PumaFur_Rein (C_Item)
{
	name 				=	"Sk�ra futra nieuszkodzona";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_PumaFur_Rein;

	visual 				=	"ItAt_PumaFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_PumaFur_Feuer (C_Item)
{
	name 				=	"wypalone futro";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_PumaFur_Feuer;

	visual 				=	"ItAt_PumaFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_BugMandibles (C_Item)
{
	name 				=	"szczypce polowe";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_BugMandibles;

	visual 				=	"ItAt_BugMandibles.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_Claw (C_Item)
{
	name 				=	"szpony";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Claw;

	visual 				=	"ItAt_Claw.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_AlligatorClaw (C_Item)
{
	name 				=	"pazury";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Claw;

	visual 				=	"ItAt_Claw.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_DragonClaw (C_Item)
{
	name 				=	"pazury smoka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Claw;

	visual 				=	"ItAt_Claw.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_DragonSehne (C_Item)
{
	name 				=	"smok";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Claw;

	visual 				=	"DB_ItMi_Sehnen.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_DrachensnapperSehne (C_Item)
{
	name 				=	"sciagacz smoczy";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Claw;

	visual 				=	"DB_ItMi_Sehnen.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItMi_Moleratstreifen (C_Item)
{
	name 				=	"paski trzonowe";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Claw;

	visual 				=	"DB_ItMi_Sehnen.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_Wirbelsaeule (C_Item)
{
	name 				=	"Spin kregoslupa gasienicy bagiennej";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Claw;

	visual 				=	"ItAt_Wirbelsaeule.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_LurkerClaw (C_Item)
{
	name 				=	"pazur purkera";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_LurkerClaw;

	visual 				=	"ItAt_LurkerClaw.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_Teeth (C_Item)
{
	name 				=	"zeby";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Teeth;

	visual 				=	"ItAt_Teeth.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_Teeth_Wolf (C_Item)
{
	name 				=	"Zeby wilka, kt�re zlamaly zeby wlasnej matki";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_SHOW;

	value 				=	Value_Teeth;

	visual 				=	"ItAt_Teeth.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_ErzdemonTooth (C_Item)
{
	name 				=	"Zeby demona archipelagowego";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ErzdemonTooth;

	visual 				=	"ItAt_Teeth.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_CrawlerMandibles (C_Item)
{
	name 				=	"Szczypce do ciagnik�w Minecrawler";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_CrawlerMandibles;

	visual 				=	"ItAt_CrawlerMandibles.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"FOOD";
	on_state[0]			=	Use_Mandibles;
	
	description			= 	name;
	
	TEXT[0]				= 	"Szczypce mozna otworzyc, ";
	TEXT[1]				= 	"i wydzielanie w niej.";
	TEXT[2]				= 	"Odtwarza moc magii.";
	TEXT[3]				= 	"Z czasem traci swoja skutecznosc.";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
FUNC VOID Use_Mandibles()
{
	if (Mandibles_Bonus <= 9)
	{
		Npc_ChangeAttribute	(self,	ATR_MANA, self.attribute[ATR_MANA_MAX] );
		
		Mandibles_Bonus = (Mandibles_Bonus +1);
	}
	else
	{
		PrintScreen		(PRINT_Mandibles, -1, YPOS_LEVELUP, FONT_ScreenSmall, 2);
	};
};
/******************************************************************************************/
INSTANCE ItAt_SpiderMandibles (C_Item)
{
	name 				=	"szczypce pajakowe";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_CrawlerMandibles;

	visual 				=	"ItAt_CrawlerMandibles.3DS";
	material 			=	MAT_LEATHER;
	
	description			= 	name;
	
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_DalmaZange (C_Item)
{
	name 				=	"Szczypce Dalmy";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_CrawlerMandibles*20;

	visual 				=	"ItAt_CrawlerMandibles.3DS";
	material 			=	MAT_LEATHER;
	
	description			= 	name;
	
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItAt_Wing (C_Item)
{
	name 				=	"fortepiany";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Wing;
	
	visual 				=	"ItAt_Wing.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_FleischflyWing (C_Item)
{
	name 				=	"fortepiany";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Wing;
	
	visual 				=	"ItAt_FleischflyWing.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_Sting (C_Item)
{
	name 				=	"uklucie";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sting;
	scemeName			=	"FOOD";
	
	on_state[0]			=	Use_Sting;
	
	visual 				=	"ItAt_Sting.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"Sting";
	TEXT[2]				= 	"Zawiera toksyczna wydzieline";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
FUNC VOID Use_Sting()
{
	if (Knows_Bloodfly == TRUE)
	{
		if (Bloodfly_Bonus <= 10)
		{
			Npc_ChangeAttribute (self, ATR_HITPOINTS, self.attribute[ATR_HITPOINTS_MAX]);

			self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS_MAX];

			Print (PRINT_FullyHealed);
			
			Bloodfly_Bonus = (Bloodfly_Bonus+1);
		}
		else
		{
			Print (PRINT_Mandibles);
		};
	}
	else
	{
		Print (PRINT_Bloodfly);
		
		if (self.attribute[ATR_HITPOINTS] > 1) 
		{
			self.attribute[ATR_HITPOINTS] =  (self.attribute[ATR_HITPOINTS] -1);

			self.aivar[AIV_Damage] -= 1;
		};
	};
};

INSTANCE ItAt_FleischflySting (C_Item)
{
	name 				=	"uklucie";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sting;
		
	visual 				=	"ItAt_FleischflySting.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE itat_LurkerSkin (C_Item) //REPTILE Skin
{
	name 				=	"gady sk�rne";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ReptileSkin;

	visual 				=	"ItAt_LurkerSkin.3DS";
	material 			=	MAT_LEATHER;

	description			= 	"Sk�ra gad�w";
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
INSTANCE itat_LurkerSkin_Young (C_Item) //REPTILE Skin
{
	name 				=	"Sk�ra mlodego czarownika";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ReptileSkin;

	visual 				=	"ItAt_LurkerSkin.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE itat_Feuersnapperhaut (C_Item) //REPTILE Skin
{
	name 				=	"ogniotrwala sk�ra";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ReptileSkin;

	visual 				=	"ItAt_LurkerSkin.3DS";
	material 			=	MAT_LEATHER;

	description			= 	"Sk�ra slimaka ogniotrwalego";
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE itat_Wassersnapperhaut (C_Item) //REPTILE Skin
{
	name 				=	"nask�rek nablyszczacza wodnego";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ReptileSkin;

	visual 				=	"ItAt_LurkerSkin.3DS";
	material 			=	MAT_LEATHER;

	description			= 	"Sk�ra snapera wodnego";
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE itat_Schattensnapperhaut (C_Item) //REPTILE Skin
{
	name 				=	"Sk�ra cienia cienista";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ReptileSkin;

	visual 				=	"ItAt_LurkerSkin.3DS";
	material 			=	MAT_LEATHER;

	description			= 	"Sk�rka migawki cieni";
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE itat_LindwurmHaut (C_Item) //REPTILE Skin
{
	name 				=	"wazka sk�ra";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_SharkSkin*10;

	visual 				=	"ItAt_LindwurmSkin.3DS";
	material 			=	MAT_LEATHER;

	description			= 	"Sk�ra pasozyta linu";
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_UndeadSharkSkin (C_Item)
{
	name 				=	"Sk�ra nieumarlego rekina bagiennego";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_SharkSkin;

	visual 				=	"ItAt_UndeadSharkSkin.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_WargFur (C_Item)
{
	name 				=	"ostrzezenie";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_WargFur;

	visual 				=	"ItAt_WargFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_WargFur_Rein (C_Item)
{
	name 				=	"futro ostrzegawcze nieuszkodzone";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_WargFur_Rein;

	visual 				=	"ItAt_WargFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_WargFur_Feuer (C_Item)
{
	name 				=	"wypalony futerko ostrzegawcze";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_WargFur_Feuer;

	visual 				=	"ItAt_WargFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_BlackwolfFur (C_Item)
{
	name 				=	"Czarny futro z wilka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_BlackwolfFur;

	visual 				=	"ItAt_WargFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_BlackwolfFur_Rein (C_Item)
{
	name 				=	"Nieuszkodzone czarne siersc z wilka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_BlackwolfFur_Rein;

	visual 				=	"ItAt_WargFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_BlackwolfFur_Feuer (C_Item)
{
	name 				=	"wypalony czarny siersc z wilka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_BlackwolfFur_Feuer;

	visual 				=	"ItAt_WargFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_WargFur_Urs (C_Item)
{
	name 				=	"ostrzezenie";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_WargFur;

	visual 				=	"ItAt_WargFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_WaterorcFur (C_Item)
{
	name 				=	"sorbet wodny";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_WargFur;

	visual 				=	"ItAt_WargFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_OrcdogFur (C_Item)
{
	name 				=	"huragan";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_WargFur;

	visual 				=	"ItAt_OrcdogFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_OrcdogFur_Rein (C_Item)
{
	name 				=	"Nieuszkodzony Orkhundfellell";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_WargFur_Rein;

	visual 				=	"ItAt_OrcdogFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_OrcdogFur_Feuer (C_Item)
{
	name 				=	"opalone futro z ps�w orkowych";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_WargFur_Feuer;

	visual 				=	"ItAt_OrcdogFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_BigOrcdogFur (C_Item)
{
	name 				=	"Duzy Orkunfellellelling";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_WargFur;

	visual 				=	"ItAt_OrcdogFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_Addon_KeilerFur (C_Item)
{
	name 				=	"czajnik";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_KeilerFur;

	visual 				=	"ItAt_WargFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_Addon_KeilerFur_Rein (C_Item)
{
	name 				=	"nieuszkodzone futro z knura";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_KeilerFur_Rein;

	visual 				=	"ItAt_WargFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_Addon_KeilerFur_Feuer (C_Item)
{
	name 				=	"spalony";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_KeilerFur_Feuer;

	visual 				=	"ItAt_WargFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};	
/******************************************************************************************/
INSTANCE ItAt_KeilerHauer (C_Item)
{
	name 				=	"dziki brosma";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_KeilerHauer;

	visual 				=	"ItAt_KeilerHauer.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_Addon_KeilerFur01 (C_Item)
{
	name 				=	"czajnik";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_KeilerFur;

	visual 				=	"ItAt_KeilerFur01.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_Addon_KeilerFur01_Rein (C_Item)
{
	name 				=	"nieuszkodzone futro z knura";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_KeilerFur_Rein;

	visual 				=	"ItAt_KeilerFur01.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_Addon_KeilerFur01_Feuer (C_Item)
{
	name 				=	"spalony";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_KeilerFur_Feuer;

	visual 				=	"ItAt_KeilerFur01.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_DrgSnapperHorn (C_Item)
{
	name 				=	"Smoczy potrzaskowy klakson";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_DrgSnapperHorn;

	visual 				=	"ItAt_DrgSnapperHorn.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_CrawlerPlate (C_Item)
{
	name 				=	"Plyty pancerne Minecrawler";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_CrawlerPlate;

	visual 				=	"ItAt_CrawlerPlate.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_ShadowFur (C_Item)
{
	name 				=	"Sk�rka cieniarza";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ShadowFur;

	visual 				=	"ItAt_ShadowFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_ShadowFur_Rein (C_Item)
{
	name 				=	"nieuszkodzona powloka bieznika cieniowego";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ShadowFur_Rein;

	visual 				=	"ItAt_ShadowFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_ShadowFur_Feuer (C_Item)
{
	name 				=	"wypalony";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ShadowFur_Feuer;

	visual 				=	"ItAt_ShadowFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_ShadowFurNew (C_Item)
{
	name 				=	"Sk�rka cieniarza";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ShadowFur;

	visual 				=	"ItAt_ShadowFurNew.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_ShadowFurNew_Rein (C_Item)
{
	name 				=	"nieuszkodzona powloka bieznika cieniowego";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ShadowFur_Rein;

	visual 				=	"ItAt_ShadowFurNew.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_ShadowFurNew_Feuer (C_Item)
{
	name 				=	"wypalony";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ShadowFur_Feuer;

	visual 				=	"ItAt_ShadowFurNew.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_FireShadowFur (C_Item)
{
	name 				=	"Sk�ra dzialacza ognia";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	500;

	visual 				=	"ItAt_FireShadowFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_WaterShadowFur (C_Item)
{
	name 				=	"plaszcz osadnika wodnego";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	500;

	visual 				=	"ItAt_WaterShadowFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_IceShadowFur (C_Item)
{
	name 				=	"Sk�ra lyzwy lodowej";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ShadowFur;

	visual 				=	"ItAt_IceShadowFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_IceShadowFur_Rein (C_Item)
{
	name 				=	"nieuszkodzona powloka lyzwiarska";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ShadowFur_Rein;

	visual 				=	"ItAt_IceShadowFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_IceShadowFur_Feuer (C_Item)
{
	name 				=	"wypalony";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ShadowFur_Feuer;

	visual 				=	"ItAt_IceShadowFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_NightmareFur (C_Item)
{
	name 				=	"Sk�rka koszmaru zmory";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	500;

	visual 				=	"ItAt_NightmareFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_SharkSkin (C_Item)
{
	name 				=	"mokradlo rekina";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_SharkSkin;

	visual 				=	"ItAt_SharkSkin.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_TrollFur (C_Item)
{
	name 				=	"futro trollingowe";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_TrollFur;

	visual 				=	"ItAt_TrollFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_TrollFur_Rein (C_Item)
{
	name 				=	"nieuszkodzone futro trollowe";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_TrollFur_Rein;

	visual 				=	"ItAt_TrollFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_TrollFur_Feuer (C_Item)
{
	name 				=	"opalone futro do polowu troll�w";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_TrollFur_Feuer;

	visual 				=	"ItAt_TrollFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_TrollH�hleFur (C_Item)
{
	name 				=	"trollina";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_TrollFur;

	visual 				=	"ItAt_TrollHoehleFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_TrollH�hleFur_Rein (C_Item)
{
	name 				=	"nieuszkodzone futro trollowe";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_TrollFur_Rein;

	visual 				=	"ItAt_TrollHoehleFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_TrollH�hleFur_Feuer (C_Item)
{
	name 				=	"wypalone futro z trollopu";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_TrollFur_Feuer;

	visual 				=	"ItAt_TrollHoehleFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_TrollBlackFur (C_Item)
{
	name 				=	"Sk�ra trolla czarnego";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_TrollBlackFur;

	visual 				=	"ItAt_TrollBlackFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_TrollBlackFur_Rein (C_Item)
{
	name 				=	"nieuszkodzona powloka z trolla czarna";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_TrollBlackFur_Rein;

	visual 				=	"ItAt_TrollBlackFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_TrollBlackFur_Feuer (C_Item)
{
	name 				=	"wypalony plaszcz czarnego trollu";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_TrollBlackFur_Feuer;

	visual 				=	"ItAt_TrollBlackFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_TrollSilberFur (C_Item)
{
	name 				=	"Nurka na troll srebrny";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	1000;

	visual 				=	"ItAt_TrollSilberFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_WaranFiretongue (C_Item)
{
	name 				=	"jezyk plomieni";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_WaranFiretongue;

	visual 				=	"ItAt_WaranFiretongue.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_ShadowHorn (C_Item)
{
	name 				=	"R�g tloka cienia";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ShadowHorn;

	visual 				=	"ItAt_ShadowHorn.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_FireShadowHorn (C_Item)
{
	name 				=	"R�g Pozarnika";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	500;

	visual 				=	"ItAt_FireShadowHorn.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_WaterShadowHorn (C_Item)
{
	name 				=	"rog�lek wodny";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	500;

	visual 				=	"ItAt_WaterShadowHorn.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_NightmareHorn (C_Item)
{
	name 				=	"R�g koszmaru.";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	500;

	visual 				=	"ItAt_NightmareHorn.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_ShadowHorn2 (C_Item)
{
	name 				=	"R�g tloka cienia";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	100;

	visual 				=	"ItAt_ShadowHorn.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_SharkTeeth (C_Item)
{
	name 				=	"zeby rekina bagiennego";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_SharkTeeth;

	visual 				=	"ItAt_SharkTeeth.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_LindwurmTeeth (C_Item)
{
	name 				=	"Zeby pasozyt�w linowych";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_SharkTeeth*10;

	visual 				=	"ItAt_LindwurmTeeth.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_UndeadSharkTeeth (C_Item)
{
	name 				=	"Zeby nieumarlego rekina bagiennego";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_SharkTeeth;

	visual 				=	"ItAt_UndeadSharkTeeth.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_TrollTooth (C_Item)
{
	name 				=	"troll brosmy";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_TrollTooth;

	visual 				=	"ItAt_TrollTooth.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
	
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	
};
/******************************************************************************************/
INSTANCE ItAt_StoneGolemHeart (C_Item)
{
	name 				=	"Serce kamiennego gojela";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	spell				= 	SPL_GOLEMWINDFIST;

	value 				=	Value_StoneGolemHeart;

	visual 				=	"ItAt_StoneGolemHeart.3DS";
	material 			=	MAT_STONE;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	""; 
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItAt_FireGolemHeart (C_Item)
{
	name 				=	"Serce rekawic przeciwpozarowych";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	spell				= 	SPL_GolemChargeFIREBALL;

	value 				=	Value_FireGolemHeart;

	visual 				=	"ItAt_FireGolemHeart.3DS";
	material 			=	MAT_STONE;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	""; 
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItAt_BalrogHeart (C_Item)
{
	name 				=	"Serce balroga";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_SHOW;

	value 				=	Value_FireGolemHeart;

	visual 				=	"ItAt_FireGolemHeart.3DS";
	material 			=	MAT_STONE;
	scemeName			=	"FOOD";
	on_state[0]		=	Use_BalrogHeart;

	description			= 	name;
	TEXT[0]				= 	"Czuje, ze powinienem jesc.";
	TEXT[1]				= 	"";
	TEXT[2]				= 	""; 
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

FUNC VOID Use_BalrogHeart()
{
	hero.attribute[ATR_HITPOINTS_MAX] += 20;
	hero.attribute[ATR_HITPOINTS] += 20;

	hero.aivar[AIV_Damage] = hero.attribute[ATR_HITPOINTS];

	hero.attribute[ATR_STRENGTH] += 3;
	hero.attribute[ATR_DEXTERITY] += 3;

	hero.protection[PROT_EDGE] += 5000;
	hero.protection[PROT_BLUNT] += 5000;

	PrintScreen ("20 HP, +3 Wytrzymalosc, +3 Umiejetnosci, +5 Ochrona przed bronia", -1, -1, FONT_SCREEN, 2);

	Mod_BalrogHeart = TRUE;
};

/******************************************************************************************/
INSTANCE ItAt_GigantHeart (C_Item)
{
	name 				=	"Toksyczne wnetrznosci olbrzyma czas�w prehistorycznych";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_SHOW;

	value 				=	Value_FireGolemHeart;

	visual 				=	"ItAt_SwampGolemHeart.3DS";
	material 			=	MAT_STONE;

	description			= 	name;
	TEXT[0]				= 	"Te jelita smierdza i ociekaja trucizna.";
	TEXT[1]				= 	"";
	TEXT[2]				= 	""; 
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItAt_IceGolemHeart (C_Item)
{
	name 				=	"Serce Euglik�w";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	spell				= 	SPL_GolemICECUBE;

	value 				=	Value_IceGolemHeart;

	visual 				=	"ItAt_IceGolemHeart.3DS";
	material 			=	MAT_STONE;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItAt_SwampGolemHeart (C_Item)
{
	name 				=	"Serce golema bagiennego";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	spell				= 	SPL_GolemGeyser;

	value 				=	Value_IceGolemHeart;

	visual 				=	"ItAt_SwampGolemHeart.3DS";
	material 			=	MAT_STONE;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_GoblinBone (C_Item)
{
	name 				=	"Kosc goblina";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_GoblinBone;

	visual 				=	"ItAt_GoblinBone.3DS";
	material 			=	MAT_WOOD;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_SkeletonBone (C_Item)
{
	name 				=	"kosc szkieletu";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_SkeletonBone;

	visual 				=	"ItAt_SkeletonBone.3DS";
	material 			=	MAT_WOOD;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_SkeletonBone_Herrscher (C_Item)
{
	name 				=	"Kosc starozytnego wladcy, kt�ry rzadzil przez tysiac lat.";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_SHOW;

	value 				=	Value_SkeletonBone;

	visual 				=	"ItAt_SkeletonBone.3DS";
	material 			=	MAT_WOOD;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_SkeletonHead (C_Item)
{
	name 				=	"czaszka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_SkeletonBone;

	visual 				=	"DT_SKELETON_V01_HEAD.3DS";
	material 			=	MAT_WOOD;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_DemonHeart (C_Item)
{
	name 				=	"Serce demona";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_DemonHeart;

	visual 				=	"ItAt_DemonHeart.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

//**************************************************************************
//					Drachentroph�en		
//**************************************************************************
INSTANCE ItAt_SoulStone (C_Item)
{
	name 				=	"dusza";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION|ITEM_SHOW;

	value 				=	Value_UndeadDragonSoulStone;

	visual 				=	"ItAt_UndeadDragonSoulStone.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
	
	INV_ZBIAS				= INVCAM_ENTF_MISC_STANDARD;
	
};
INSTANCE ItAt_SoulStone_Urnol (C_Item)
{
	name 				=	"Kamien duszny Urnola";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION|ITEM_SHOW;

	value 				=	Value_UndeadDragonSoulStone;

	visual 				=	"ItAt_UndeadDragonSoulStone.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
	
	INV_ZBIAS				= INVCAM_ENTF_MISC_STANDARD;
	
};
INSTANCE ItAt_SoulStone_Formwandler (C_Item)
{
	name 				=	"Kamien duszny od zmiany ksztaltu";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION|ITEM_SHOW;

	value 				=	Value_UndeadDragonSoulStone;

	visual 				=	"ItAt_UndeadDragonSoulStone.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
	
	INV_ZBIAS				= INVCAM_ENTF_MISC_STANDARD;
	
};
INSTANCE ItAt_SoulStone_UD (C_Item)
{
	name 				=	"Nieumarly Smoczek";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION|ITEM_SHOW;

	value 				=	Value_UndeadDragonSoulStone;

	visual 				=	"ItAt_UndeadDragonSoulStone.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
	
	INV_ZBIAS				= INVCAM_ENTF_MISC_STANDARD;
	
};
/******************************************************************************************/
INSTANCE ItAt_IcedragonHeart (C_Item)
{
	name 				=	"Serce lodowego smoka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	Value_IcedragonHeart;

	visual 				=	"ItAt_IcedragonHeart.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_RockdragonHeart (C_Item)
{
	name 				=	"Serce smoka rockowego";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	Value_RockdragonHeart;

	visual 				=	"ItAt_RockdragonHeart.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_SwampdragonHeart (C_Item)
{
	name 				=	"Serce smoka bagiennego";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION; 

	value 				=	Value_SwampdragonHeart;

	visual 				=	"ItAt_SwampdragonHeart.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_FiredragonHeart (C_Item)
{
	name 				=	"Serce Smoka Pozaru";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	Value_FiredragonHeart;

	visual 				=	"ItAt_FiredragonHeart.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_DragonBlood (C_Item)
{
	name 				=	"Krew smocza";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	Value_DragonBlood;

	visual 				=	"ItAt_DragonBlood.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
	
	INV_ZBIAS				= INVCAM_ENTF_MISC_STANDARD;
};
/******************************************************************************************/
INSTANCE ItAt_DragonElixier (C_Item)
{
	name 				=	"eliksir plomieniowy";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	Value_DragonBlood;

	visual 				=	"ItAt_DragonBlood.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
	
	INV_ZBIAS				= INVCAM_ENTF_MISC_STANDARD;
};
/******************************************************************************************/
INSTANCE ItAt_Menschenblut (C_Item)
{
	name 				=	"ludzki";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	50;

	visual 				=	"ItAt_DragonBlood.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
	
	INV_ZBIAS				= INVCAM_ENTF_MISC_STANDARD;
};
/******************************************************************************************/
INSTANCE ItAt_Hexenblut (C_Item)
{
	name 				=	"krew czarownicy";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	50;

	visual 				=	"ItAt_DragonBlood.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
	
	INV_ZBIAS				= INVCAM_ENTF_MISC_STANDARD;
};

INSTANCE ItMi_DeliriumEnergie (C_Item)
{
	name 				=	"fiolki z energia elektryczna";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	Value_DragonBlood;

	visual 				=	"ItAt_DragonBlood.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
	
	INV_ZBIAS				= INVCAM_ENTF_MISC_STANDARD;
};
/******************************************************************************************/
INSTANCE ItAt_DragonScale (C_Item)
{
	name 				=	"waga wazaca smoki";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_DragonScale;

	visual 				=	"ItAt_DragonScale.3DS";
	material 			=	MAT_STONE ;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_Seeungeheuerschuppen (C_Item)
{
	name 				=	"morski potw�r";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_SHOW;

	value 				=	Value_DragonScale;

	visual 				=	"ItAt_DragonScale.3DS";
	material 			=	MAT_STONE ;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_Wyverschuppen (C_Item)
{
	name 				=	"Wy Verschuppen";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_DragonScale;

	visual 				=	"ItAt_DragonScale.3DS";
	material 			=	MAT_STONE ;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_CrawlerKristall (C_Item)
{
	name 				=	"Krysztal krysztalu gasienicy";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	50;

	visual 				=	"ItMi_Rockcrystal.3ds";
	material 			=	MAT_STONE ;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/



