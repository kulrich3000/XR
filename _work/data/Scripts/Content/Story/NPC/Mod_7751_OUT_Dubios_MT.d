instance Mod_7751_OUT_Dubios_MT (Npc_Default)
{
	// ------ NSC ------
	name 		= "Dublinska liczba"; 
	guild 		= GIL_OUT;
	id 			= 7751;
	voice 		= 6;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 2);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ItMw_1H_quantarie_Schwert_01); 
	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Weak_Herek, BodyTex_N,ITAR_Vlk_M);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 30); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_7751;
};

FUNC VOID Rtn_PreStart_7751()
{
	TA_Stand_Guarding		(08,00,23,00,"OW_PATH_1_5_3");
	TA_Stand_Guarding		(23,00,08,00,"OW_PATH_1_5_3");
};
