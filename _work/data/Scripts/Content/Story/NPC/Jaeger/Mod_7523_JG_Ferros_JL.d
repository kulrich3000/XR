instance Mod_7523_JG_Ferros_JL (Npc_Default)
{
	// ------ NSC ------
	name 		= "zelazka"; 
	guild 		= GIL_OUT;
	id 			= 7523;
	voice 		= 6;
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
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Weak_Herek, BodyTex_N,ITAR_Smith);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 30); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7523;
};

FUNC VOID Rtn_Start_7523()
{		
	TA_Sleep		(22,00,07,00,"JL_39"); 
	
	TA_Smith_Fire	(07,00,07,10,"JL_36");
	TA_Smith_Anvil	(07,10,07,20,"JL_36");
	TA_Smith_Fire	(07,20,07,30,"JL_36");
	TA_Smith_Anvil	(07,30,07,40,"JL_36");
	TA_Smith_Cool	(07,40,07,50,"JL_36");
	TA_Smith_Anvil	(07,50,08,00,"JL_36");
	
	TA_Smith_Fire	(08,00,08,10,"JL_36");
	TA_Smith_Anvil	(08,10,08,20,"JL_36");
	TA_Smith_Fire	(08,20,08,30,"JL_36");
	TA_Smith_Anvil	(08,30,08,40,"JL_36");
	TA_Smith_Cool	(08,40,08,50,"JL_36");
	TA_Smith_Anvil	(08,50,09,00,"JL_36");

	TA_Smalltalk 	(09,00,12,00,"JL_35");

	TA_Smith_Fire	(12,00,12,10,"JL_36");
	TA_Smith_Anvil	(12,10,12,20,"JL_36");
	TA_Smith_Fire	(12,20,12,30,"JL_36");
	TA_Smith_Anvil	(12,30,12,40,"JL_36");
	TA_Smith_Cool	(12,40,12,50,"JL_36");
	TA_Smith_Anvil	(12,50,13,00,"JL_36");
          
	TA_Smith_Fire	(13,00,13,10,"JL_36");
	TA_Smith_Anvil	(13,10,13,20,"JL_36");
	TA_Smith_Fire	(13,20,13,30,"JL_36");
	TA_Smith_Anvil	(13,30,13,40,"JL_36");
	TA_Smith_Cool	(13,40,13,50,"JL_36");
	TA_Smith_Anvil	(13,50,14,00,"JL_36");

	TA_Smith_Fire	(14,00,14,10,"JL_36");
	TA_Smith_Anvil	(14,10,14,20,"JL_36");
	TA_Smith_Fire	(14,20,14,30,"JL_36");
	TA_Smith_Anvil	(14,30,14,40,"JL_36");
	TA_Smith_Cool	(14,40,14,50,"JL_36");
	TA_Smith_Anvil	(14,50,15,00,"JL_36");

	TA_Smith_Fire	(15,00,15,10,"JL_36");
	TA_Smith_Anvil	(15,10,15,20,"JL_36");
	TA_Smith_Fire	(15,20,15,30,"JL_36");
	TA_Smith_Anvil	(15,30,15,40,"JL_36");
	TA_Smith_Cool	(15,40,15,50,"JL_36");
 	TA_Smith_Anvil	(15,50,16,00,"JL_36");

	TA_Smith_Fire	(16,00,16,10,"JL_36");
	TA_Smith_Anvil	(16,10,16,20,"JL_36");
	TA_Smith_Fire	(16,20,16,30,"JL_36");
	TA_Smith_Anvil	(16,30,16,40,"JL_36");
	TA_Smith_Cool	(16,40,16,50,"JL_36");
	TA_Smith_Anvil	(16,50,17,00,"JL_36");

	TA_Smith_Fire	(17,00,17,10,"JL_36");
	TA_Smith_Anvil	(17,10,17,20,"JL_36");
	TA_Smith_Fire	(17,20,17,30,"JL_36");
	TA_Smith_Anvil	(17,30,17,40,"JL_36");
	TA_Smith_Cool	(17,40,17,50,"JL_36");
	TA_Smith_Anvil	(17,50,18,00,"JL_36");

	TA_Smith_Fire	(18,00,18,10,"JL_36");
	TA_Smith_Anvil	(18,10,18,20,"JL_36");
	TA_Smith_Fire	(18,20,18,30,"JL_36");
	TA_Smith_Anvil	(18,30,18,40,"JL_36");
	TA_Smith_Cool	(18,40,18,50,"JL_36");
	TA_Smith_Anvil	(18,50,19,00,"JL_36");

	TA_Smith_Fire	(19,00,19,10,"JL_36");
	TA_Smith_Anvil	(19,10,19,20,"JL_36");
	TA_Smith_Fire	(19,20,19,30,"JL_36");
	TA_Smith_Anvil	(19,30,19,40,"JL_36");
	TA_Smith_Cool	(19,40,19,50,"JL_36");
	TA_Smith_Anvil	(19,50,20,00,"JL_36");

	TA_Smith_Fire	(20,00,20,10,"JL_36");
	TA_Smith_Anvil	(20,10,20,20,"JL_36");
	TA_Smith_Fire	(20,20,20,30,"JL_36");
	TA_Smith_Anvil	(20,30,20,40,"JL_36");
	TA_Smith_Cool	(20,40,20,50,"JL_36");
	TA_Smith_Anvil	(20,50,21,00,"JL_36");
	
	TA_Smith_Fire	(21,00,21,10,"JL_36");
	TA_Smith_Anvil	(21,10,21,20,"JL_36");
	TA_Smith_Fire	(21,20,21,30,"JL_36");
	TA_Smith_Anvil	(21,30,21,40,"JL_36");
	TA_Smith_Cool	(21,40,21,50,"JL_36");
	TA_Smith_Anvil	(21,50,22,00,"JL_36");
};
