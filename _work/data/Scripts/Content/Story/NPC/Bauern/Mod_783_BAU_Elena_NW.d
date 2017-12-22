instance Mod_783_BAU_Elena_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "Elena";
	guild 		= GIL_DMT;
	id 			= 783;
	voice		= 12;
	flags       = 2;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_1h_Bau_Mace);
	
	// ------ Inventory ------
	//B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, FEMALE, "Hum_Head_Babe", FaceBabe_N_GreyCloth, BodyTexBabe_N, ITAR_BauBabe_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 45); //Grenzen f�r Talent-Level liegen bei 30 und 60
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_783;
};

FUNC VOID Rtn_Start_783 ()
{	
	TA_Stand_ArmsCrossed (07,30,20,30,"NW_BIGFARM_STABLE_OUT_04");
    TA_Sit_Throne		 (20,30,07,30,"NW_BIGFARM_HOUSE_UP1_SESSEL");
};

FUNC VOID Rtn_Hexe_783 ()
{	
	TA_Stand_ArmsCrossed 	(07,30,20,30,"NW_BIGFARM_STABLE_OUT_04");
	TA_Circle	(20,30,07,30,"NW_BIGFARM_FOREST_08");
};

FUNC VOID Rtn_Transform_783 ()
{	
	TA_Transform_Wolf 	(07,30,20,30,"NW_BIGFARM_FOREST_08");
	TA_Transform_Wolf	(20,30,07,30,"NW_BIGFARM_FOREST_08");
};

FUNC VOID Rtn_ToPepe_783 ()
{	
	TA_Guide_Player		(07,30,20,30,"NW_BIGFARM_FOREST_03_NAVIGATION3");
	TA_Guide_Player		(20,30,07,30,"NW_BIGFARM_FOREST_03_NAVIGATION3");
};

FUNC VOID Rtn_WaitingforWolf_783 ()
{	
	TA_Stand_ArmsCrossed		(05,00,21,00,"NW_BIGFARM_FOREST_03_NAVIGATION3");
	TA_Stand_ArmsCrossed		(21,00,05,00,"NW_BIGFARM_FOREST_03_NAVIGATION3");
};

FUNC VOID Rtn_Wolf_783()
{
	TA_Stand_WP	(08,00,20,00,"NW_BIGFARM_SHEEP2_02");
	TA_Stand_WP	(20,00,08,00,"NW_BIGFARM_SHEEP2_02");
};

FUNC VOID Rtn_Tot_783 ()
{	
	TA_Stand_WP		(07,00,20,00,"TOT");
	TA_Stand_WP		(20,00,07,00,"TOT");
};
