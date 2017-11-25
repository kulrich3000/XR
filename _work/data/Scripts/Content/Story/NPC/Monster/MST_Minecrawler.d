//*****************************
//	Minecrawler Prototype
//*****************************

PROTOTYPE Mst_Default_Minecrawler(C_Npc)			
{
	//----- Monster ----
	name							=	"Minecrawler";
	guild							=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]			= 	ID_MINECRAWLER;
	level							=	12;

	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	60;
	attribute	[ATR_DEXTERITY]		=	15;
	attribute	[ATR_HITPOINTS_MAX]	=	120;
	attribute	[ATR_HITPOINTS]		=	120;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	60000;
	protection	[PROT_EDGE]			=	60000;
	protection	[PROT_POINT]		=	60000;
	protection	[PROT_FIRE]			=	60;
	protection	[PROT_FLY]			=	60;
	protection	[PROT_MAGIC]		=	20;

	self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS_MAX];
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_MINECRAWLER;
	
	//----- Sense & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_WuselStart] 	= OnlyRoutine;
};


//***********
// Visuals
//***********

func void B_SetVisuals_Minecrawler()
{
	Mdl_SetVisual			(self,	"Crawler.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Crw_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

func void B_SetVisuals_Kristallcrawler()
{
	Mdl_SetVisual			(self,	"Crawler.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"KristallCrw_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//*****************
//	Minecrawler
//*****************

INSTANCE Minecrawler	(Mst_Default_Minecrawler)
{
	B_SetVisuals_Minecrawler();
	Npc_SetToFistMode(self);
};

INSTANCE KristallMinecrawler	(Mst_Default_Minecrawler)
{
	name	=	"crystal crawler";
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	90;
	attribute	[ATR_DEXTERITY]		=	20;
	attribute	[ATR_HITPOINTS_MAX]	=	180;
	attribute	[ATR_HITPOINTS]		=	180;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	90000;
	protection	[PROT_EDGE]			=	90000;
	protection	[PROT_POINT]		=	90000;
	protection	[PROT_FIRE]			=	90;
	protection	[PROT_FLY]			=	90;
	protection	[PROT_MAGIC]		=	0;

	CreateInvItems	(self, ItMi_RockCrystal, 2);

	B_SetVisuals_Kristallcrawler();
	Npc_SetToFistMode(self);
};


INSTANCE Kristallcrawler	(Mst_Default_Minecrawler)
{
        name			=	"crystal crawler";
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	90;
	attribute	[ATR_DEXTERITY]		=	20;
	attribute	[ATR_HITPOINTS_MAX]	=	180;
	attribute	[ATR_HITPOINTS]		=	180;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	90000;
	protection	[PROT_EDGE]			=	90000;
	protection	[PROT_POINT]		=	90000;
	protection	[PROT_FIRE]			=	90;
	protection	[PROT_FLY]			=	90;
	protection	[PROT_MAGIC]		=	0;

	CreateInvItems	(self, ItMi_RockCrystal, 2);

	B_SetVisuals_Kristallcrawler();
	Npc_SetToFistMode(self);
};
//*****************
//	Minecrawler_Priest im PriesterHaus der ADW
//*****************

INSTANCE Minecrawler_Priest	(Mst_Default_Minecrawler)
{
	B_SetVisuals_Minecrawler();
	Npc_SetToFistMode(self);
};
INSTANCE GoldMinecrawler	(Mst_Default_Minecrawler)
{
	B_SetVisuals_Minecrawler();
	Npc_SetToFistMode(self);
};

INSTANCE Insekt_02	(Mst_Default_Minecrawler)
{
	level							=	1;

	aivar[AIV_MM_REAL_ID]			= 	ID_INSEKT;

	//----- Attribute ----
	attribute	[ATR_STRENGTH]		= 10;
	attribute	[ATR_DEXTERITY]		= 0;
	attribute	[ATR_HITPOINTS_MAX]	= 10;
	attribute	[ATR_HITPOINTS]		= 10;
	attribute	[ATR_MANA_MAX] 		= 0;
	attribute	[ATR_MANA] 			= 0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		= 0;
	protection	[PROT_EDGE]			= 0;
	protection	[PROT_POINT]		= 0;
	protection	[PROT_FIRE]			= 0;
	protection	[PROT_FLY]			= 0;
	protection	[PROT_MAGIC]		= 0;

	self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS_MAX];

	B_SetVisuals_Minecrawler();
	Npc_SetToFistMode(self);

	Mdl_SetModelScale(self, 0.2, 0.2, 0.2);
};

INSTANCE Insekt_05	(Mst_Default_Minecrawler)
{
	level							=	1;

	aivar[AIV_MM_REAL_ID]			= 	ID_INSEKT;

	//----- Attribute ----
	attribute	[ATR_STRENGTH]		= 10;
	attribute	[ATR_DEXTERITY]		= 0;
	attribute	[ATR_HITPOINTS_MAX]	= 10;
	attribute	[ATR_HITPOINTS]		= 10;
	attribute	[ATR_MANA_MAX] 		= 0;
	attribute	[ATR_MANA] 			= 0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		= 0;
	protection	[PROT_EDGE]			= 0;
	protection	[PROT_POINT]		= 0;
	protection	[PROT_FIRE]			= 0;
	protection	[PROT_FLY]			= 0;
	protection	[PROT_MAGIC]		= 0;

	self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS_MAX];

	B_SetVisuals_Minecrawler();
	Npc_SetToFistMode(self);

	Mdl_SetModelScale(self, 0.2, 0.2, 0.2);
};
