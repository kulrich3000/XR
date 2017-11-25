//***************************
//	Demon LORD Prototype	
//***************************

PROTOTYPE Mst_Default_Minotaurus(C_Npc)			
{
	//----- Monster -----
	name							= "Minotaur";
	guild							= GIL_UNDEADORC;
	aivar[AIV_MM_REAL_ID]			= ID_Minotaurus;
	level							= 150;
	
	//------ Attribute ----	
	attribute	[ATR_STRENGTH]		= 300;
	attribute	[ATR_DEXTERITY]		= 40;
	attribute	[ATR_HITPOINTS_MAX]	= 1000;
	attribute	[ATR_HITPOINTS]		= 1000;
	attribute	[ATR_MANA_MAX] 		= 200;
	attribute	[ATR_MANA] 			= 200;
	
	//------ Protections ----
	protection	[PROT_BLUNT]		= 150000;
	protection	[PROT_EDGE]			= 150000;
	protection	[PROT_POINT]		= 150000;
	protection	[PROT_FIRE]			= 150;		
	protection	[PROT_FLY]			= 150;	
	protection	[PROT_MAGIC]		= 100;

	self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS_MAX];
	
	//----- Damage Types -----
	damagetype 						=	DAM_EDGE|DAM_FIRE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//------ Fight-Tatik ----
	fight_tactic	=	FAI_DEMON;
	
	//------ Senses & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = TRUE;
	aivar[AIV_MM_Packhunter] 	= FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;
	
	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};


//*****************
//	Visuals
//*****************

func void B_SetVisuals_Minotaurus()
{
	Mdl_SetVisual		(self,	"Minotaurus.mds");
	//							Body-Mesh			Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody	(self,	"MIN_BODY",	DEFAULT,	DEFAULT,	"",	DEFAULT,  	DEFAULT,	-1);
};

//****************
//	Minotaurus    														
//****************

INSTANCE Minotaurus	(Mst_Default_Minotaurus)
{
	B_SetVisuals_Minotaurus();
	Npc_SetToFistMode(self);
};

INSTANCE Minotaurus_Xeres	(Mst_Default_Minotaurus)
{
	name		= "Xeze";

	attribute	[ATR_STRENGTH]		= 600;
	attribute	[ATR_HITPOINTS_MAX]	= 2000;
	attribute	[ATR_HITPOINTS]		= 2000;

	B_SetVisuals_Minotaurus();
	Npc_SetToFistMode(self);
};
