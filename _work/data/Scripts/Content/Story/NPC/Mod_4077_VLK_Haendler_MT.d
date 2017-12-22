instance Mod_4077_VLK_Haendler_MT (Npc_Default)
{
	// ------ NSC ------
	name 		= "monger"; 
	guild 		= GIL_NONE;
	id 			= 4077;
	voice		= 0;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 5);
	level = 15;																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem (self,ItMw_Kriegshammer1); 
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self, ItMi_Nugget, Hlp_Random(4)+1);

		
	// ------ visuals ------																		
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald.", Face_N_NormalBart_Graham, BodyTex_N, ITAR_VLK_H);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 35); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4077;
};

FUNC VOID Rtn_Start_4077()
{	
	TA_Stand_WP	(05,15,20,15,"OW_PATH_1_14");
    	TA_Stand_WP	(20,15,05,15,"OW_PATH_1_14");
};

FUNC VOID Rtn_Next_4077()
{	
	TA_Stand_WP	(05,15,20,15,"OW_PATH_1_15");
    	TA_Stand_WP	(20,15,05,15,"OW_PATH_1_15");
};

FUNC VOID Rtn_Tot_4077()
{	
	TA_Stand_WP	(05,15,20,15,"TOT");
    	TA_Stand_WP	(20,15,05,15,"TOT");
};

FUNC VOID Rtn_End_4077()
{	
	TA_RunToWP	(05,15,20,15,"WP_INTRO_FALL3");
    	TA_RunToWP	(20,15,05,15,"WP_INTRO_FALL3");
};
