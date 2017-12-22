instance Mod_1063_VLK_Buergerin_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Buergerin;	
	guild 		= GIL_PAL;
	id 			= 1063;
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
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, FEMALE, "Hum_Head_BabeHair", FaceBabe_N_HairAndCloth, BodyTex_N, ITAR_VlkBabe_L);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 15); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1063;
};

FUNC VOID Rtn_Start_1063 ()
{	
	TA_Smalltalk		(12,00,16,00,"NW_CITY_HABOUR_STOMPER_01");
    TA_Stomp_Herb		(16,00,20,00,"NW_CITY_HABOUR_STOMPER_01");
    TA_Smalltalk		(20,00,00,00,"NW_CITY_HABOUR_SMALLTALK_02");
    TA_Sleep			(00,00,05,00,"NW_CITY_HABOUR_HUT_06_BED_01");
};
