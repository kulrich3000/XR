instance Mod_1067_VLK_Buergerin_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Buergerin;
	guild 		= GIL_PAL;
	id 			= 1067;
	voice		= 19;
	flags       = 0;																	
	npctype		= NPCTYPE_AMBIENT;
	
	//-----------AIVARS----------------
	aivar[AIV_ToughGuy] = TRUE; 
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 1);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	

	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	EquipItem (self, ItMw_1H_quantarie_Schwert_01);	
	// ------ visuals ------						FaceBabe_N_HairAndCloth																
	B_SetNpcVisual 		(self, FEMALE, "Hum_Head_Babe1", FaceBabe_N_Anne, BodyTex_N, ITAR_VlkBabe_L_7);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 30); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1067;
};

FUNC VOID Rtn_Start_1067 ()
{	
	TA_Stomp_Herb	(05,00,08,00,"NW_CITY_PATH_HABOUR_04_STOMPER");
	TA_Smalltalk	(08,00,12,00,"NW_CITY_PATH_HABOUR_04_01");
	TA_Cook_Stove	(12,00,12,30,"NW_CITY_PATH_HABOUR_04_01");
	TA_Smalltalk	(12,30,16,00,"NW_CITY_PATH_HABOUR_04_01");
	TA_Stomp_Herb	(16,00,19,30,"NW_CITY_PATH_HABOUR_04_STOMPER");
    TA_Cook_Stove	(19,30,22,00,"NW_CITY_HABOUR_HUT_04_IN");
    TA_Sleep		(22,00,05,00,"NW_CITY_HABOUR_HUT_04_BED_01");
};
