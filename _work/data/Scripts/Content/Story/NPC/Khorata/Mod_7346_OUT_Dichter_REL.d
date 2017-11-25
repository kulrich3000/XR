instance Mod_7346_OUT_Dichter_REL (Npc_Default)
{
	// ------ NSC ------
	name 		= "writer";
	guild 		= GIL_OUT;
	id 			= 7346;
	voice 		= 34;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 1);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_1h_Bau_Mace);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_CoolPock, BodyTex_N, ITAR_VLK_M);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 0); //Grenzen f�r Talent-Level liegen bei 30 und 60
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_7346;
};

FUNC VOID Rtn_PreStart_7346 ()
{	
	TA_Sit_Chair		(08,00,22,00,"REL_CITY_247");
  	TA_Sleep		(22,00,08,00,"REL_CITY_247");
};

FUNC VOID Rtn_Tot_7346 ()
{	
	TA_Stand_WP		(08,00,22,00,"TOT");
  	TA_Stand_WP		(22,00,08,00,"TOT");
};

FUNC VOID Rtn_Margarethe_7346 ()
{	
	TA_Sit_Chair		(08,00,22,00,"REL_CITY_163");
  	TA_Sleep		(22,00,08,00,"REL_CITY_162");
};
