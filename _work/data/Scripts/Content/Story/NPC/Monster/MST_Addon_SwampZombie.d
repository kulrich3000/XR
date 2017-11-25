//*********************
//	Zombie Prototype	
//*********************

PROTOTYPE Mst_Default_SwampZombie(C_Npc)			
{
	//----- Monster ----
	name							=	"bog body";
	guild							=	GIL_ZOMBIE;
	aivar[AIV_MM_REAL_ID]			= 	ID_ZOMBIE;
	level							=	6;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	Hlp_Random(51) + 100;	// 100 - 150
	attribute	[ATR_DEXTERITY]		=	Hlp_Random(21);		// 0 - 20
	attribute	[ATR_HITPOINTS_MAX]	=	Hlp_Random(101) + 200;	// 200 - 300
	attribute	[ATR_HITPOINTS]		=	attribute[ATR_HITPOINTS_MAX];
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 		=	0;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	Hlp_Random(51)*1000 + 50000;	// 50 - 100
	protection	[PROT_EDGE]		=	Hlp_Random(51)*1000 + 50000;	// 50 - 100
	protection	[PROT_POINT]		=	Hlp_Random(51)*1000 + 50000;	// 50 - 100
	protection	[PROT_FIRE]		=	Hlp_Random(51) + 50;		// 50 - 100
	protection	[PROT_FLY]		=	75;
	protection	[PROT_MAGIC]		=	Hlp_Random(31) + 15;		// 15 - 45

	self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS_MAX];
	
	//----- Damage Type ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf Taktik ----
	fight_tactic	=	FAI_ZOMBIE;
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;

	CreateInvItems	(self, ItFoMuttonZombie, 1);
};


//*************
//	Visuals
//*************

//-------------------------------------------------------------
// Zwei Hautfarben mit jeweils zwei Gesichtstexturen
//-------------------------------------------------------------
func void B_SetVisuals_SwampZombie()
{
	var int rnd;
	rnd = Hlp_Random(2);
	var int rnd2;
	rnd2 = Hlp_Random(2) + 2*rnd;

	Mdl_SetVisual			(self,	"SwampZombie.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody 		(self,	"Zom_Body",		1,			rnd,			"Zom_Head", 5+rnd2,  		DEFAULT,	-1);
};
func void B_SetVisuals_SwampZombie2()
{
	var int rnd;
	rnd = Hlp_Random(2);
	var int rnd2;
	rnd2 = Hlp_Random(2) + 2*rnd;

	Mdl_SetVisual			(self,	"SwampZombie.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody 		(self,	"Zom_Body",		1,			rnd,			"Zom_Head", 5+rnd2,  		DEFAULT,	ItAr_Hum_Dht2S_Armor);
};

//***********
//	Zombie01   
//***********

INSTANCE SwampZombie		(Mst_Default_SwampZombie)
{
	B_SetVisuals_SwampZombie();
	Npc_SetToFistMode(self);
};

INSTANCE SwampZombie_Moor		(Mst_Default_SwampZombie)
{
	B_SetVisuals_SwampZombie();
	Npc_SetToFistMode(self);
};

INSTANCE SwampZombie_Moor2		(Mst_Default_SwampZombie)
{
	B_SetVisuals_SwampZombie2();
	Npc_SetToFistMode(self);
};
