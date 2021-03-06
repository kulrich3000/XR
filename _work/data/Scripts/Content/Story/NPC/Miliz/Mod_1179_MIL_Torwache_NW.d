instance Mod_1179_MIL_Torwache_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Torwache;	
	guild 		= GIL_PAL;
	id 			= 1179;
	voice		= 0;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 3);																	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ItMw_Milizschwert);
	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																		
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Normal05, BodyTex_N, ITAR_MIL_L);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 80); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1179;
};

FUNC VOID Rtn_Start_1179 ()
{	
	TA_Guard_Passage	(08,00,23,00,"NW_CITY_GUARDOFFICE_GUARD_01");
    TA_Guard_Passage	(23,00,08,00,"NW_CITY_GUARDOFFICE_GUARD_01");
};
