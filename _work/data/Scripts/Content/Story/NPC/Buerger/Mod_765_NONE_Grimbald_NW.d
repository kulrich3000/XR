INSTANCE Mod_765_NONE_Grimbald_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "grimbald";
	guild 		= GIL_NONE;
	id 			= 765;
	voice 		= 7;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 5);	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem	(self, ItMw_1H_quantarie_Schwert_01); 
	EquipItem	(self, ItRw_Sld_Bow);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Psionic", Face_B_Normal_Kirgo, BodyTex_B, ITAR_Leather_L);		
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 70); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_765;
};

FUNC VOID Rtn_Start_765 ()
{	
	TA_Stand_Guarding 	(08,00,23,00,"NW_TROLLAREA_PATH_79"); 
    TA_Stand_Guarding	(23,00,08,00,"NW_TROLLAREA_PATH_79");
};

FUNC VOID Rtn_Follow_765 ()
{	
	TA_Follow_Player 	(08,00,23,00,"NW_TROLLAREA_PATH_79"); 
    TA_Follow_Player	(23,00,08,00,"NW_TROLLAREA_PATH_79");
};

FUNC VOID Rtn_Relendel_765 ()
{	
	TA_Guide_Player 	(08,00,23,00,"TO_REL_05"); 
    TA_Guide_Player	(23,00,08,00,"TO_REL_05");
};
