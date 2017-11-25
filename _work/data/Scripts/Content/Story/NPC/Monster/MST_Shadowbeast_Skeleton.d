//************************************
//	Shadowbeast-Skeleton PROTOTYPE
//************************************

PROTOTYPE Mst_Default_Shadowbeast_Skeleton(C_Npc)			
{
	//----- Monster ----
	name							=	"szkielet cienia";
	guild							=	GIL_SHADOWBEAST_SKELETON;
	aivar[AIV_MM_REAL_ID]			= 	ID_SHADOWBEAST_SKELETON;
	level							=	40;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	200;
	attribute	[ATR_DEXTERITY]		=	25;
	attribute	[ATR_HITPOINTS_MAX]	=	450;
	attribute	[ATR_HITPOINTS]		=	450;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	150000;
	protection	[PROT_EDGE]			=	150000;
	protection	[PROT_POINT]		=	-1;
	protection	[PROT_FIRE]			=	150;
	protection	[PROT_FLY]			=	150;
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
	fight_tactic	=	FAI_SHADOWBEAST;
	
	//----- Sense & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
};

//************
//	Visuals
//************

func void B_SetVisuals_Shadowbeast_Skeleton()
{
	Mdl_SetVisual			(self, "Shadow.mds");
	//								Body-Mesh					Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self, "Shadowbeast_Skeleton_Body",	DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//*****************************
//	Shadowbeast_Skeleton    	
//*****************************

INSTANCE Shadowbeast_Skeleton	(Mst_Default_Shadowbeast_Skeleton)
{
	B_SetVisuals_Shadowbeast_Skeleton();
	Npc_SetToFistMode(self);
};

INSTANCE Nightmare_Skeleton	(Mst_Default_Shadowbeast_Skeleton)
{
	name	= "koszmarny szkielet szkieletowy";

	aivar[AIV_MM_REAL_ID]			= 	ID_NIGHTMARE;

	level	= 50;

	effect	= "SPELLFX_DARKARMOR";

	attribute	[ATR_STRENGTH]		=	280;
	attribute	[ATR_DEXTERITY]		=	20;
	attribute	[ATR_HITPOINTS_MAX]	=	800;
	attribute	[ATR_HITPOINTS]		=	800;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protections ----
	protection	[PROT_BLUNT]		=	150000;
	protection	[PROT_EDGE]			=	150000;
	protection	[PROT_POINT]		=	100000;
	protection	[PROT_FIRE]			=	150;
	protection	[PROT_FLY]			=	150;
	protection	[PROT_MAGIC]		=	100;

	self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS_MAX];

	B_SetVisuals_Shadowbeast_Skeleton();
	Npc_SetToFistMode(self);
};
