instance Mod_780_SLD_Buster_MT (Npc_Default)
{
	// ------ NSC ------
	name 		= "gwar";
	guild 		= GIL_MIL;
	id 			= 780;
	voice		= 6;
	flags       = 0;										//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 1);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;	// MASTER / STRONG / NORMAL / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_GrobesKurzschwert);
	EquipItem			(self, ItRw_Sld_Bow);
	CreateInvItems 		(self, ItRw_Arrow, 10);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Drax, BodyTex_N, ITAR_SLD_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 30); //Grenzen f�r Talent-Level liegen bei 30 und 60

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_780;
};

FUNC VOID Rtn_Start_780 ()
{
	TA_Stand_Guarding 		(08,00,20,00,"NC_PATH_JARVIS");
    TA_Stand_Guarding			(20,00,08,00,"NC_PATH_JARVIS");
};
