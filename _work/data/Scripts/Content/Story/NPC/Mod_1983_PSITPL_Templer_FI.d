instance Mod_1983_PSITPL_Templer_FI (Npc_Default)
{
	// ------ NSC ------
	name 		= "templariusz"; 
	guild 		= GIL_DMT;
	id 			= 1983;
	voice		= 0;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_mt_fanatiker;
	
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
	daily_routine 		= Rtn_Start_1983;
};

FUNC VOID Rtn_Start_1983 ()
{	
	TA_Stand_ArmsCrossed				(08,00,23,00,"FI_70");
    TA_Stand_ArmsCrossed				(23,00,08,00,"FI_70");
};

FUNC VOID Rtn_Sleeper_1983 ()
{	
	TA_Pray_Sleeper_FP				(08,00,23,00,"FI_70");
    TA_Pray_Sleeper_FP				(23,00,08,00,"FI_70");
};
