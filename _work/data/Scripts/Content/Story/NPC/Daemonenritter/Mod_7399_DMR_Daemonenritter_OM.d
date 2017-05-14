instance Mod_7399_DMR_Daemonenritter_OM (Npc_Default)
{
	// ------ NSC ------
	name 		= "Dämonenritter"; 
	guild 		= GIL_KDF;
	id 			= 7399;
	voice		= 0;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 5);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																
	EquipItem			(self, ItMw_XRSchwert_04);
	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Normal06, BodyTex_N,ITAR_Raven_Addon);	
	Mdl_SetModelFatness	(self,2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 80); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7399;
};

FUNC VOID Rtn_Start_7399()
{	
	TA_Stand_Guarding	(08,00,23,00,"OM_CAVE1_82");
	TA_Stand_Guarding	(23,00,08,00,"OM_CAVE1_82");
};

FUNC VOID Rtn_Alarm_7399()
{	
	TA_Smalltalk_Plaudern	(08,00,23,00,"OM_CAVE1_47");
	TA_Smalltalk_Plaudern	(23,00,08,00,"OM_CAVE1_47");
};
