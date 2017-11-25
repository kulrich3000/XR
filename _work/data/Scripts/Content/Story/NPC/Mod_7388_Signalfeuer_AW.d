instance Mod_7388_Signalfeuer_AW (NPC_DEFAULT)
{
	// ------ SC ------
	name 		= "beacons";
	guild		= GIL_NONE;
	id			= 7388;
	voice = 1;
	level		= 0;
	Npctype		= NPCTYPE_MAIN;
	flags = 0;
	
	//***************************************************
	bodyStateInterruptableOverride 	= TRUE;
	//***************************************************
	
	// ------ XP Setup ------
	exp				= 0;
	exp_next		= 500;
	lp				= 0;
	
	// ------ Attribute ------
	attribute[ATR_STRENGTH] 		= 10;
	attribute[ATR_DEXTERITY] 		= 10;
	attribute[ATR_MANA_MAX] 		= 10;
	attribute[ATR_MANA] 			= 10;
	attribute[ATR_HITPOINTS_MAX]	= 1;
	attribute[ATR_HITPOINTS] 		= 1;
	Npc_SetTalentSkill (hero, NPC_TALENT_ERZHACKEN,1);
	
	// ------ visuals ------
	//B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", FACE_N_Player, BodyTex_N, NO_ARMOR);
	
	Mdl_SetVisual (self,"ZIEL.MDS");
	// ------ Visual ------ "body_Mesh",		bodyTex			SkinColor	headMesh,			faceTex,		teethTex,	armorInstance	
	Mdl_SetVisualBody (self, "ziel_body", 0,				0,			"", 	0,	0, 			NO_ARMOR);

	
	// ------ Kampf-Talente ------
	B_SetFightSkills 	(self, 10);

	daily_routine = Rtn_Start_7388; 
};

FUNC VOID Rtn_Start_7388 ()
{	
	TA_Stand_WP (08,00,23,00,"ADW_BL_SIGNALFEUER_02");
	TA_Stand_WP (23,00,08,00,"ADW_BL_SIGNALFEUER_02");
};
