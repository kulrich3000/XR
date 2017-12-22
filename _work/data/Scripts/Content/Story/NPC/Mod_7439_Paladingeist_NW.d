instance Mod_7439_Paladingeist_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "okowita paladyn";
	guild 		= GIL_NONE;
	id 			= 7439;
	voice		= 0;
	flags       = NPC_FLAG_GHOST|2;																	
	npctype		= NPCTYPE_MAIN;			
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 5);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 65); //Grenzen f�r Talent-Level liegen bei 30 und 60
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_Paladinschwert);
	
	// ------ Inventory ------

		
	// ------ visuals ------																				//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Weak_Orry, BodyTex_N, ITAR_pal_h);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7439;
};

FUNC VOID Rtn_Start_7439 ()
{	
	TA_Stand_Guarding_WP		(08,05,22,05,"NW_LITTLESTONEHENDGE_02");
	TA_Stand_Guarding_WP		(22,05,08,05,"NW_LITTLESTONEHENDGE_02");
};

FUNC VOID Rtn_Tot_7439 ()
{	
	TA_Stand_Guarding_WP		(08,05,22,05,"TOT");
	TA_Stand_Guarding_WP		(22,05,08,05,"TOT");
};

