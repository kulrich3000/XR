//*************************
//	BlackGobbo Prototype	
//*************************

PROTOTYPE Mst_Default_Gobbo_Warrior (C_NPC)			
{
	//----- Monster ----
	name							=	"Goblin - Warrior";
	guild							=	GIL_GOBBO;
	aivar[AIV_MM_REAL_ID]			= 	ID_GOBBO_BLACK;
	level							=	15;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	Hlp_Random(41) + 55;	// 55 - 95
	attribute	[ATR_DEXTERITY]		=	Hlp_Random(21) + 5;	// 5 - 25
	attribute	[ATR_HITPOINTS_MAX]	=	Hlp_Random(41) + 55;	// 55 - 95
	attribute	[ATR_HITPOINTS]		=	Hlp_Random(41) + 55;	// 55 - 95
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 		=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	Hlp_Random(41)*1000 + 55000;	// 55 - 95
	protection	[PROT_EDGE]		=	Hlp_Random(41)*1000 + 55000;	// 55 - 95
	protection	[PROT_POINT]		=	Hlp_Random(41)*1000 + 55000;	// 55 - 95
	protection	[PROT_FIRE]		=	Hlp_Random(41) + 55;		// 55 - 95
	protection	[PROT_FLY]		=	75;
	protection	[PROT_MAGIC]		=	Hlp_Random(31);			// 0 - 30

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
	fight_tactic	=	FAI_GOBBO;
	
	//----- Senses & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	aivar[AIV_MM_Packhunter]	= TRUE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;	
};


//***************
//	Visuals
//***************

func void B_SetVisuals_Gobbo_Warrior ()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gob_Body",		2,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

//***************
//	Visuals
//***************

func void B_SetVisuals_Gobbo_Warrior_Visir ()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gob_Body",		3,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

func void B_SetVisuals_Gobbo_Tugettso01()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gob_Body4",		0,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

func void B_SetVisuals_Gobbo_Tugettso02()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gob_Body5",		0,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

func void B_SetVisuals_Gobbo_Tugettso03()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gob_Body6",		0,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

func void B_SetVisuals_Gobbo_Tugettso04()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Goboscham_Body",		0,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

// ***********
// Black Gobbo   	
// ***********

INSTANCE Gobbo_Warrior (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Warrior();
	
	Npc_SetToFightMode (self, ItMw_1h_Misc_Sword); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
	Mdl_SetModelScale(self, 1.15, 1.15, 1.15);
};

INSTANCE Gobbo_Warrior_Weg (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Warrior();
	
	Npc_SetToFightMode (self, ItMw_1h_Misc_Sword); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
	Mdl_SetModelScale(self, 1.15, 1.15, 1.15);
};

INSTANCE Gobbo_Warrior_Mario_01 (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Warrior();
	
	Npc_SetToFightMode (self, ItMw_1h_Misc_Sword); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
	Mdl_SetModelScale(self, 1.15, 1.15, 1.15);
};

INSTANCE Gobbo_Warrior_Mario_02 (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Warrior();
	
	Npc_SetToFightMode (self, ItMw_1h_Misc_Sword); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
	Mdl_SetModelScale(self, 1.15, 1.15, 1.15);
};
// ***********
// Black Gobbo   	
// ***********

INSTANCE Gobbo_Warrior_Visir (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Warrior_Visir();
	
	Npc_SetToFightMode (self, ItMw_1h_Misc_Axe); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
	Mdl_SetModelScale(self, 1.15, 1.15, 1.15);
};

INSTANCE Summoned_Gobbo_Warrior (Mst_Default_Gobbo_Warrior)
{
	name							= "Summoned Goblin - Warrior";
	guild							= GIL_SUMMONED_GOBBO_SKELETON;
	aivar[AIV_MM_REAL_ID]			= ID_SUMMONED_GOBBO_WARRIOR;
	level							= 0;

	aivar[AIV_PARTYMEMBER] = TRUE;
	B_SetAttitude (self, ATT_FRIENDLY); 
	
	start_aistate = ZS_MM_Rtn_Summoned;
	
	B_SetVisuals_Gobbo_WARRIOR();

	Npc_SetToFightMode (self, ItMw_1h_Misc_Sword); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
};

INSTANCE Gobbo_Tugettso01 (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Tugettso01();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
};

INSTANCE Gobbo_Tugettso01_Weg (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Tugettso01();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
};

INSTANCE Gobbo_Tugettso02 (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Tugettso02();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
};

INSTANCE Gobbo_Tugettso02_Weg (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Tugettso02();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
};

INSTANCE Gobbo_Tugettso03 (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Tugettso03();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
};

INSTANCE Gobbo_Tugettso03_Weg (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Tugettso03();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
};

INSTANCE Gobbo_Tugettso04 (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Tugettso04();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
};

INSTANCE Gobbo_Tugettso04_Weg (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Tugettso04();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
};
