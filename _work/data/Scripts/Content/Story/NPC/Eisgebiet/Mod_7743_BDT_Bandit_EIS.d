INSTANCE Mod_7743_BDT_Bandit_EIS (Npc_Default)
{
	// ------ NSC ------
	name 		= "bandyta";
	guild 		= GIL_STRF;
	id 			= 7743;
	voice 		= 08;
	flags       = 0;																	
	npctype		= NPCTYPE_nw_bandit;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 3);	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem	(self, ItMw_Banditenschwert); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", Face_N_NormalBart_Dexter, BodyTex_N, ITAR_bdt_m_01);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 45); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7743;
};

FUNC VOID Rtn_Start_7743 ()
{	
	TA_Smith_Sharp		(08,00,20,00,"NORDOSTENLOCH_7");
	TA_Smith_Sharp		(20,00,08,00,"NORDOSTENLOCH_7");
};
