instance Mod_7027_OUT_Entfuehrer_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "porywacze"; 
	guild 		= GIL_OUT;
	id 			= 7027;
	voice 		= 8;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 2);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ItMw_1H_quantarie_Schwert_01); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Lefty, BodyTex_N,ITAR_Vlk_M);
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 30); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7027;
};

FUNC VOID Rtn_Start_7027()
{	
	TA_Stand_ArmsCrossed	(05,00,20,00,"NW_CITY_TO_LIGHTHOUSE_06");
	TA_Stand_ArmsCrossed	(20,00,05,00,"NW_CITY_TO_LIGHTHOUSE_06");
};
