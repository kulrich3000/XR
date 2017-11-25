instance Mod_7411_BAU_Deppenhans_REL (Npc_Default)
{
	// ------ NSC ------
	name 		= "morons";
	guild 		= GIL_out;
	id 			= 7411;
	voice 		= 31;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 1);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 15); //Grenzen f�r Talent-Level liegen bei 30 und 60
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_1h_Bau_Mace);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_P_Normal03, BodyTex_P, ITAR_BAU_M);		
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7411;
};

FUNC VOID Rtn_Start_7411 ()
{	
	TA_Stand_Guarding	(08,05,19,05,"REL_SURFACE_106");
	TA_Sit_Chair		(19,05,22,05,"REL_SCHEUNESCHLAFEN3");
	TA_Sleep		(22,05,07,05,"REL_SURFACE_214");
	TA_Sit_Chair		(07,05,08,05,"REL_VORRTSLAGER");
};

FUNC VOID Rtn_Truhe_7411 ()
{	
	TA_RunToWP	(08,05,22,05,"REL_SURFACE_220");
	TA_RunToWP	(22,05,08,05,"REL_SURFACE_220");
};

