instance Mod_1186_MIL_Miliz_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Miliz;	
	guild 		= GIL_pal;
	id 			= 1186;
	voice		= 0;
	flags       = 0;																
	npctype		= NPCTYPE_nw_miliz;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 3);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ItMw_Milizschwert);
	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_L_Tough01, BodyTex_L, ITAR_MIL_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 40); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1186;
};

FUNC VOID Rtn_Start_1186()
{	
	TA_Stand_Guarding	(01,00,03,00,"NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding	(03,00,05,00,"NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding	(05,00,07,00,"NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding	(07,00,09,00,"NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding	(09,00,11,00,"NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding	(11,00,13,00,"NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding	(13,00,15,00,"NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding	(15,00,17,00,"NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding	(17,00,19,00,"NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding	(19,00,21,00,"NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding	(21,00,23,00,"NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding	(23,00,01,00,"NW_CITY_MAINSTREET_07");
};
