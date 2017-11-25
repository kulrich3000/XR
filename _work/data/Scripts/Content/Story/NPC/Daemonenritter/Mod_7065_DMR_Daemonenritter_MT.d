INSTANCE Mod_7065_DMR_Daemonenritter_MT (Npc_Default)
{
	// ------ NSC ------
	name 		= "demonicy";
	guild 		= GIL_STRF;
	id 			= 7065;
	voice 		= 12;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 5);	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem	(self, ItMw_1h_Sld_Sword); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	CreateInvItems	(self, ItMi_DemonArmor, 1);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Fighter", 153, BodyTex_B, ITAR_Raven_Addon);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 60); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7065;
};

FUNC VOID Rtn_Start_7065()
{	
	TA_Stand_Guarding	(08,00,23,00,"OCC_CHAPEL_ENTRANCE");
	TA_Stand_Guarding	(23,00,08,00,"OCC_CHAPEL_ENTRANCE");
};
