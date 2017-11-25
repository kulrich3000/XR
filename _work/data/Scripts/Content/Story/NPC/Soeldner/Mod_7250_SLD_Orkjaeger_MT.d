instance Mod_7250_SLD_Orkjaeger_MT (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_ORKJAEGER; 
	guild 		= GIL_mil;
	id 			= 7250;
	voice 		= 11;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MT_ORKJAEGER;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------	
	EquipItem	(self, ItMw_Orkschlaechter);



	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------		
	Mdl_SetVisual		(self,"HUMANS.MDS");							
	Mdl_SetVisualBody (self,"hum_body_Naked0",2,1,"Hum_Head_Bald", 4,  1, ITAR_SLD_H);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 50); //Grenzen f�r Talent-Level liegen bei 30 und 60
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7250;
};

FUNC VOID Rtn_Start_7250 ()
{
	TA_Stand_Guarding 	(07,45,23,45,"OW_PATH_198_ORCGRAVEYARD6");
	TA_Stand_Guarding	(23,45,07,45,"OW_PATH_198_ORCGRAVEYARD6");		
};

FUNC VOID Rtn_Tot_7250()
{
	TA_Stand_WP		(08,00,20,00,"TOT");
	TA_Stand_WP		(20,00,08,00,"TOT");
};
