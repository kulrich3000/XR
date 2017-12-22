instance Mod_4081_GRD_Gardist_MT (Npc_Default)
{
	// ------ NSC ------
	name 		= "guardsman"; 
	guild 		= GIL_NONE;
	id 			= 4081;
	voice		= 0;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 3);
	level = 15;															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
	EquipItem (self, ItMw_1H_quantarie_Schwert_01);	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Fighter", 102, BodyTex_P,GRD_ARMOR_M);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 30); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4081;
};

FUNC VOID Rtn_Start_4081()
{	
	TA_Stand_WP	(05,15,20,15,"OW_PATH_1_14");
    	TA_Stand_WP	(20,15,05,15,"OW_PATH_1_14");
};

FUNC VOID Rtn_Next_4081()
{	
	TA_Stand_WP	(05,15,20,15,"OW_PATH_1_15");
    	TA_Stand_WP	(20,15,05,15,"OW_PATH_1_15");
};

FUNC VOID Rtn_End_4081()
{	
	TA_RunToWP	(05,15,20,15,"OW_PATH_1_14");
    	TA_RunToWP	(20,15,05,15,"OW_PATH_1_14");
};

FUNC VOID Rtn_Tot_4081()
{	
	TA_RunToWP	(05,15,20,15,"TOT");
    	TA_RunToWP	(20,15,05,15,"TOT");
};
