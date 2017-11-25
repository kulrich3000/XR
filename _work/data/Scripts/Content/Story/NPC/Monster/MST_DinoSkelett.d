//********************************
//	RazorSkelett Prototype			
//********************************

PROTOTYPE Mst_Default_RazorSkelett(C_Npc)			
{
	//----- Monster ----
	name							=	"szkielet nosorozec";
	guild							=	GIL_SNAPPER;
	aivar[AIV_MM_REAL_ID]			= 	ID_RazorSkelett;
	level							=	40;
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	Hlp_Random(101) + 250; 
	attribute	[ATR_DEXTERITY]		=	Hlp_Random(21) + 10;
	attribute	[ATR_HITPOINTS_MAX]	=	Hlp_Random(201) + 700;
	attribute	[ATR_HITPOINTS]		=	attribute[ATR_HITPOINTS_MAX];
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 		=	0;
	
	//------ Protections ----	
	protection	[PROT_BLUNT]		=	Hlp_Random(61)*1000 + 80000;
	protection	[PROT_EDGE]		=	Hlp_Random(61)*1000 + 80000;
	protection	[PROT_POINT]		=	Hlp_Random(61)*1000 + 80000;	
	protection	[PROT_FIRE]		=	Hlp_Random(61) + 80;
	protection	[PROT_FLY]		=	110;
	protection	[PROT_MAGIC]		=	Hlp_Random(31) + 40;

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
	fight_tactic	=	FAI_SNAPPER;
	
	//----- Senses & Ranges ----	
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = TRUE;
	aivar[AIV_MM_Packhunter]	= TRUE;
	
	//----- Daily Routine ----	
	start_aistate				= ZS_MM_AllScheduler;
	
	aivar[AIV_MM_RestStart]		= OnlyRoutine;
};


//***********
//	Visuals
//***********

func void B_SetVisuals_RazorSkelett()
{
	Mdl_SetVisual			(self,	"Razor.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"RAZSKELET_BODY",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//********************
//	RazorSkelett    
//********************

INSTANCE RazorSkelett	(Mst_Default_RazorSkelett)
{
	B_SetVisuals_RazorSkelett();
	Npc_SetToFistMode(self);
};

INSTANCE RazorSkelett_Bib_01	(Mst_Default_RazorSkelett)
{
	B_SetVisuals_RazorSkelett();
	Npc_SetToFistMode(self);
};

INSTANCE RazorSkelett_Bib_02	(Mst_Default_RazorSkelett)
{
	B_SetVisuals_RazorSkelett();
	Npc_SetToFistMode(self);
};

INSTANCE RazorSkelett_Bib_03	(Mst_Default_RazorSkelett)
{
	B_SetVisuals_RazorSkelett();
	Npc_SetToFistMode(self);
};

INSTANCE RazorSkelett_Bib_04	(Mst_Default_RazorSkelett)
{
	B_SetVisuals_RazorSkelett();
	Npc_SetToFistMode(self);
};

INSTANCE RazorSkelett_Bib_05	(Mst_Default_RazorSkelett)
{
	B_SetVisuals_RazorSkelett();
	Npc_SetToFistMode(self);
};

INSTANCE RazorSkelett_Bib_06	(Mst_Default_RazorSkelett)
{
	B_SetVisuals_RazorSkelett();
	Npc_SetToFistMode(self);
};

INSTANCE RazorSkelett_Bib_07	(Mst_Default_RazorSkelett)
{
	B_SetVisuals_RazorSkelett();
	Npc_SetToFistMode(self);
};
