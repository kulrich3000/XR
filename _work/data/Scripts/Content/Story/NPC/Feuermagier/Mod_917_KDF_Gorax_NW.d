INSTANCE Mod_917_KDF_Gorax_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "goryl";
	guild 		= GIL_VLK;
	id 			= 917;
	voice		= 0;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);																
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;																	
	EquipItem	(self, ItMW_Addon_Stab01);
	
	aivar[AIV_MagicUser] = MAGIC_ALWAYS;
	
	// ------ Equippte Waffen ------																	
	
	
	// ------ Inventory ------
	//H�ndler!
	
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald",Face_N_OldBald_Jeremiah, BodyTex_N, ITAR_KDF_L);		
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 45); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_917;
};

FUNC VOID Rtn_Start_917 ()
{	
	TA_Stand_Guarding	(08,00,23,00,"NW_MONASTERY_WINEMAKER_01");
	TA_Sleep			(23,00,08,00,"NW_MONASTERY_MAGE02_BED_01");
};
