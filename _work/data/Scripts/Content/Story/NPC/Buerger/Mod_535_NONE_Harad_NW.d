instance Mod_535_NONE_Harad_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "Harad";
	guild 		= GIL_PAL;
	id 			= 535;
	voice 		= 28;
	flags       = 0;															
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 5);																	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ItMw_Todbringer);
	
	// ------ Inventory ------
	// H�ndler
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_NormalBart20, BodyTex_N, ITAR_Smith);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 35); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_535;
};

FUNC VOID Rtn_Start_535 ()
{	
	TA_Sleep		(22,00,07,00,"NW_CITY_BED_HARAD"); 
	
	TA_Smith_Fire	(07,00,07,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(07,10,07,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire	(07,20,07,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(07,30,07,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool	(07,40,07,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil	(07,50,08,00,"NW_CITY_SMITH_ANVIL");
	
	TA_Smith_Fire	(08,00,08,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(08,10,08,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire	(08,20,08,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(08,30,08,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool	(08,40,08,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil	(08,50,09,00,"NW_CITY_SMITH_ANVIL");

	TA_Smith_Fire	(09,00,09,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(09,10,09,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire	(09,20,09,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(09,30,09,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool	(09,40,09,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil	(09,50,10,00,"NW_CITY_SMITH_ANVIL");

	TA_Smith_Fire	(10,00,10,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(10,10,10,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire	(10,20,10,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(10,30,10,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool	(10,40,10,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil	(10,50,11,00,"NW_CITY_SMITH_ANVIL");    
          
	TA_Smith_Fire	(11,00,11,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(11,10,11,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire	(11,20,11,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(11,30,11,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool	(11,40,11,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil	(11,50,12,00,"NW_CITY_SMITH_ANVIL");

	TA_Smith_Fire	(12,00,12,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(12,10,12,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire	(12,20,12,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(12,30,12,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool	(12,40,12,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil	(12,50,13,00,"NW_CITY_SMITH_ANVIL");
          
	TA_Smith_Fire	(13,00,13,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(13,10,13,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire	(13,20,13,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(13,30,13,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool	(13,40,13,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil	(13,50,14,00,"NW_CITY_SMITH_ANVIL");

	TA_Smith_Fire	(14,00,14,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(14,10,14,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire	(14,20,14,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(14,30,14,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool	(14,40,14,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil	(14,50,15,00,"NW_CITY_SMITH_ANVIL");

	TA_Smith_Fire	(15,00,15,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(15,10,15,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire	(15,20,15,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(15,30,15,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool	(15,40,15,50,"NW_CITY_SMITH_COOL");
 	TA_Smith_Anvil	(15,50,16,00,"NW_CITY_SMITH_ANVIL");

	TA_Smith_Fire	(16,00,16,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(16,10,16,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire	(16,20,16,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(16,30,16,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool	(16,40,16,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil	(16,50,17,00,"NW_CITY_SMITH_ANVIL");

	TA_Smith_Fire	(17,00,17,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(17,10,17,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire	(17,20,17,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(17,30,17,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool	(17,40,17,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil	(17,50,18,00,"NW_CITY_SMITH_ANVIL");

	TA_Smith_Fire	(18,00,18,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(18,10,18,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire	(18,20,18,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(18,30,18,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool	(18,40,18,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil	(18,50,19,00,"NW_CITY_SMITH_ANVIL");

	TA_Smith_Fire	(19,00,19,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(19,10,19,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire	(19,20,19,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(19,30,19,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool	(19,40,19,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil	(19,50,20,00,"NW_CITY_SMITH_ANVIL");

	TA_Smith_Fire	(20,00,20,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(20,10,20,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire	(20,20,20,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(20,30,20,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool	(20,40,20,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil	(20,50,21,00,"NW_CITY_SMITH_ANVIL");
	
	TA_Smith_Fire	(21,00,21,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(21,10,21,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire	(21,20,21,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil	(21,30,21,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool	(21,40,21,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil	(21,50,22,00,"NW_CITY_SMITH_ANVIL");
};

FUNC VOID Rtn_InHaus_535 ()
{
	TA_Sit_Chair		(07,00,22,00,"NW_CITY_SMITH_01_01_B"); 
	TA_Sleep		(22,00,07,00,"NW_CITY_BED_HARAD"); 
};

FUNC VOID Rtn_Knast_535 ()
{
	TA_Sit_Campfire		(07,00,22,00,"NW_CITY_HABOUR_KASERN_RENGARU"); 
	TA_Sit_Campfire		(22,00,07,00,"NW_CITY_HABOUR_KASERN_RENGARU"); 
};