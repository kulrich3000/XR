INSTANCE Gormgniez_11007_FM	(Mst_Default_Gobbo_Green)
{
	name	=	"Gormgniez";
	
	guild							=	GIL_GOBBO;
	aivar[AIV_MM_REAL_ID]			= 	ID_KOBOLD;
	id = 11007;
	voice = 20;
	flags = 2;

	level							=	10;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	100;
	attribute	[ATR_DEXTERITY]		=	100;
	attribute	[ATR_HITPOINTS_MAX]	=	500;
	attribute	[ATR_HITPOINTS]		=	500;
	attribute	[ATR_MANA_MAX] 		=	1000;
	attribute	[ATR_MANA] 			=	1000;

	self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	100000;
	protection	[PROT_EDGE]			=	100000;
	protection	[PROT_POINT]		=	100000;	
	protection	[PROT_FIRE]			=	100;	
	protection	[PROT_FLY]			=	100;
	protection	[PROT_MAGIC]		=	100;
	
	//----- Damage Types ----
	damagetype 						=	DAM_MAGIC;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	599;
//	damage		[DAM_INDEX_FLY]		=	1;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_GOBBO;
	
	//----- Senses & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;

	aivar[AIV_FightDistCancel] = FIGHT_DIST_CANCEL;

	aivar[AIV_Partymember] = TRUE;
	
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"KoboldBlau_Body",		0,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);

	daily_routine = Rtn_Start_11007;
	
};

FUNC VOID Rtn_Start_11007()
{
	TA_Roam	(08,00,20,00,"FM_184");
	TA_Roam	(20,00,08,00,"FM_184");
};

FUNC VOID Rtn_Tot_11007()
{
	TA_Roam	(08,00,20,00,"TOT");
	TA_Roam	(20,00,08,00,"TOT");
};
