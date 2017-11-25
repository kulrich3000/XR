INSTANCE Mod_7107_ASS_Gauner_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "racketeer"; 
	guild 		= GIL_OUT;
	id 			= 7107;
	voice 		= 3;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ItMw_1h_Vlk_Sword);														
	EquipItem	(self, ItRw_Assassinenbogen);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_B_Normal_Sharky, BodyTex_B,ITAR_Assassine_01);	
	Mdl_SetModelFatness	(self,0);
	//Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 50); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7107;
};

FUNC VOID Rtn_Start_7107()
{	
	TA_Smalltalk 	(07,20,01,20,"WP_ASSASSINE_19");
	TA_Smalltalk	(01,20,07,20,"WP_ASSASSINE_19");
};

FUNC VOID Rtn_Schlacht_7107()
{	
	TA_Stand_Guarding 	(07,20,01,20,"WP_ASSASSINE_12");
	TA_Stand_Guarding	(01,20,07,20,"WP_ASSASSINE_12");
};

FUNC VOID Rtn_Tot_7107()
{	
	TA_Stand_Guarding 	(07,20,01,20,"TOT");
	TA_Stand_Guarding	(01,20,07,20,"TOT");
};
