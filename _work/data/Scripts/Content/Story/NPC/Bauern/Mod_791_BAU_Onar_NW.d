instance Mod_791_BAU_Onar_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "Onar";
	guild 		= GIL_NONE;
	id 			= 791;
	voice 		= 32;
	flags       = 0;		//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_1H_quantarie_Fantasyschwert_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_OldBald_Jeremiah, BodyTex_N, ITAR_Vlk_H);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 70); //Grenzen f�r Talent-Level liegen bei 30 und 60i

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_791;
};

FUNC VOID Rtn_Start_791 ()
{
	TA_Sit_Throne			(09,00,21,00,"NW_BIGFARM_HOUSE_ONAR_SIT");
    TA_Sleep				(21,00,09,00,"ONARSBETT");		
};
