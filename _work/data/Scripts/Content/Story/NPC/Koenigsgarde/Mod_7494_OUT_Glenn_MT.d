instance Mod_7494_OUT_Glenn_MT (Npc_Default)
{
	// ------ NSC ------
	name 		= "blask"; 
	guild 		= GIL_OUT;
	id 			= 7494;
	voice		= 0;
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
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Weak_Herek, BodyTex_N, ITAR_Vlk_M);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 30); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7494;
};

FUNC VOID Rtn_Start_7494()
{	
	TA_Stand_ArmsCrossed	(08,00,23,00,"OW_PATH_1_17");
	TA_Stand_ArmsCrossed	(23,00,08,00,"OW_PATH_1_17");	
};

FUNC VOID Rtn_Tot_7494 ()
{
	TA_Stand_Eating	(08,00,23,00,"TOT");
	TA_Stand_Eating	(23,00,08,00,"TOT");	
};
