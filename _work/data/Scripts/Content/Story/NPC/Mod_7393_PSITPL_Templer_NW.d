instance Mod_7393_PSITPL_Templer_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "Fanatical Templar"; 
	guild 		= GIL_STRF;
	id 			= 7393;
	voice		= 0;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_NW_fanatiker;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem (self, ItMw_2H_Axe_L_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_NormalBart_Graham, BodyTex_N, ITAR_TemplerFanatiker);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 50); //Grenzen f�r Talent-Level liegen bei 30 und 60

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7393;
};

FUNC VOID Rtn_Start_7393 ()
{	
	TA_Sit_Chair		(08,00,22,00,"NW_LIGHTHOUSE_IN_02");
	TA_Sit_Chair		(22,00,08,00,"NW_LIGHTHOUSE_IN_02");
};

FUNC VOID Rtn_Teleport_7393()
{
	TA_Stand_WP		(08,00,22,00,"NW_CITY_TO_LIGHTHOUSE_16");
	TA_Stand_WP		(22,00,08,00,"NW_CITY_TO_LIGHTHOUSE_16");
};

FUNC VOID Rtn_Tot_7393()
{
	TA_Stand_WP		(08,00,22,00,"TOT");
	TA_Stand_WP		(22,00,08,00,"TOT");
};
