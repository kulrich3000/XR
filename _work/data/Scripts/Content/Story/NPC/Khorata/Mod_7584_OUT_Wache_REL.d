instance Mod_7584_OUT_Wache_REL (Npc_Default)
{
	// ------ NSC ------
	name 		= "Guard"; 
	guild 		= GIL_OUT;
	id 			= 7584;
	voice 		= 7;
	flags       = 2;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------		
	EquipItem	(self, ItMw_GrobesKurzschwert);
	EquipItem			(self, ItRw_Sld_Bow);


	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_L_NormalBart02, BodyTex_L, ITAR_SLD_M);		
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 50); //Grenzen f�r Talent-Level liegen bei 30 und 60
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7584;
};

FUNC VOID Rtn_Start_7584 ()
{
	TA_Stand_Guarding		(08,00,22,00,"REL_SURFACE_150");
	TA_Stand_Guarding		(22,00,08,00,"REL_SURFACE_150");
};
