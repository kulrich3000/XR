instance Mod_1182_MIL_Tuerwache_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Miliz; 	
	guild 		= GIL_pal;
	id 			= 1182;
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
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Horatio, BodyTex_N, ITAR_MIL_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 60); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1182;
};

FUNC VOID Rtn_Start_1182 ()
{	
  TA_Stand_Guarding		(12,00,14,00,"NW_CITY_UPTOWN_PATH_13");     
  TA_Stand_ArmsCrossed	(14,00,16,00,"NW_CITY_UPTOWN_PATH_05");           
  TA_Stand_Guarding		(16,00,18,00,"NW_CITY_UPTOWN_PATH_09");     
  TA_Stand_Guarding		(18,00,20,00,"NW_CITY_UPTOWN_PATH_13");     
  TA_Stand_ArmsCrossed	(20,00,22,00,"NW_CITY_UPTOWN_PATH_05");           
                                                                    
  TA_Stand_Guarding		(22,00,23,30,"NW_CITY_UPTOWN_PATH_09");     
  TA_Stand_Guarding		(23,30,01,00,"NW_CITY_UPTOWN_PATH_14");           
  TA_Stand_ArmsCrossed	(01,00,02,30,"NW_CITY_UPTOWN_PATH_09");     
  TA_Stand_Guarding		(02,30,04,00,"NW_CITY_UPTOWN_PATH_13");     
  TA_Stand_Guarding		(04,00,05,30,"NW_CITY_UPTOWN_PATH_14");           
                                                                    
  TA_Stand_Guarding		(05,30,08,00,"NW_CITY_UPTOWN_PATH_13");  
  TA_Stand_ArmsCrossed	(08,00,10,00,"NW_CITY_UPTOWN_PATH_05");  
  TA_Stand_Guarding		(10,00,12,00,"NW_CITY_UPTOWN_PATH_09");  
};



