instance Mod_7384_OUT_Dragan_MT (Npc_Default)
{
	// ------ NSC ------
	name 		= "dragon";
	guild 		= GIL_OUT;
	id 			= 7384;
	voice 		= 13;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_main;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 5);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 65); //Grenzen f�r Talent-Level liegen bei 30 und 60
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_Nagelknueppel);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																				//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Fighter", Face_N_Normal17, BodyTex_N, stt_armor_m);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7384;
};

FUNC VOID Rtn_Start_7384 ()
{	
	TA_Sit_Bench		(08,05,22,05,"OCR_OUTSIDE_ARENA_HANGAROUND");
	TA_Roast_Scavenger	(22,05,08,05,"OCR_OUTSIDE_ARENA_HANGAROUND");
};

FUNC VOID Rtn_Kampf_7384 ()
{	
	TA_Watch_ArenaFight		(08,05,22,05,"OCR_ARENA_08");
	TA_Watch_ArenaFight		(22,05,08,05,"OCR_ARENA_08");
};

func VOID Rtn_Flucht_7384 ()
{
	TA_FleeToWP (08,00,20,00,"TOT");
	TA_FleeToWP (20,00,08,00,"TOT");
};
