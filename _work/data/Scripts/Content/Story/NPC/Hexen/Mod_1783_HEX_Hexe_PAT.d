instance Mod_1783_HEX_Hexe_PAT (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_hexe;	
	guild 		= GIL_strf;
	id 			= 1783;
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

		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, FEMALE, "Hum_Head_Babe", FaceBabe_N_PinkHair, BodyTex_N, ITAR_hexe);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 30); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1783;
};

FUNC VOID Rtn_Start_1783 ()
{	
	TA_Stand_WP	(08,00,22,00,"WP_PAT_WIESE_01");
    TA_Stand_Wp		(22,00,08,00,"WP_PAT_WIESE_01"); //FIXME
};
