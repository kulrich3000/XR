instance Mod_1777_HEX_Hexe_Pat (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Hexe; //Zuris Frau
	guild 		= GIL_STRF;
	id 			= 1777;
	voice		= 43;
	flags       = 0;																	
	npctype		= NPCTYPE_pat_hexe;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	//EquipItem (self, ItMw_1h_Vlk_Dagger);	
	// ------ visuals ------																						
	B_SetNpcVisual 		(self, FEMALE, "Hum_Head_Babe8", FaceBabe_N_Lilo, BodyTex_N, ITAR_Hexe);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 35); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1777;
};

FUNC VOID Rtn_Start_1777 ()
{	
	TA_Stand_WP 	(05,30,06,00,"WP_PAT_LAGER_05_06");
	TA_Stand_WP			(06,00,05,30,"WP_PAT_LAGER_05_06");
};
