instance Mod_1778_HEX_Hexe_PAT (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_hexe; 
	guild 		= GIL_strf;
	id 			= 1778;
	voice		= 43;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_pat_hexe;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	//EquipItem			(self, ItMw_1h_Bau_Mace);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, FEMALE, "Hum_Head_Babe4", FaceBabe_N_VlkBlonde, BodyTexBabe_N, ITAR_hexe);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 20); //Grenzen f�r Talent-Level liegen bei 30 und 60

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1778;
};

FUNC VOID Rtn_Start_1778 ()
{	
	TA_Stand_WP 			(06,00,22,00,"WP_PAT_LAGER_05_01");
    TA_Stand_WP			(22,00,06,00,"WP_PAT_LAGER_05_01");
};



