instance Mod_7709_OUT_Attila_REL (Npc_Default)
{
	// ------ NSC ------
	name 		= "Attila";
	guild 		= GIL_OUT;
	id 			= 7709;
	voice 		= 9;
	flags       = 0;									//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	//---------- Aivars ------------------
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_Sturmbringer);
	EquipItem			(self, ItRw_Mil_Crossbow);
	
	// ------ Inventory ------
	CreateInvItem (self, ItKe_ThiefGuildKey_MIS);  // Schl�ssel zur geheimen Diebesgilde
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_L_Tough_Santino, BodyTex_L, ITAR_Leather_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 30); //Grenzen f�r Talent-Level liegen bei 30 und 60
	
	// ------ TA ------
	daily_routine 		= Rtn_Start_7709;
};

FUNC VOID Rtn_Start_7709 ()
{	
	TA_Stand_Guarding (04,00,22,00,"REL_CITY_057");	
	TA_Stand_Guarding (22,00,04,00,"REL_CITY_057"); 
};

FUNC VOID Rtn_VorBib_7709 ()
{	
	TA_Stand_Guarding (04,00,22,00,"REL_CITY_145");	
	TA_Stand_Guarding (22,00,04,00,"REL_CITY_145"); 
};

FUNC VOID Rtn_ToSchneider_7709 ()
{	
	TA_Guide_Player (04,00,22,00,"REL_CITY_231");	
	TA_Guide_Player (22,00,04,00,"REL_CITY_231"); 
};

FUNC VOID Rtn_InHaus_7709()
{	
	TA_Stand_ArmsCrossed	(08,00,20,00,"REL_CITY_057");
	TA_Stand_ArmsCrossed 	(20,00,08,00,"REL_CITY_057");
};

FUNC VOID Rtn_Hacken_7709()
{	
	TA_Pick_Ore		(08,00,20,00,"REL_CITY_060");
	TA_Pick_Ore	 	(20,00,08,00,"REL_CITY_060");
};

FUNC VOID Rtn_Schatzkammer_7709()
{	
	TA_Follow_Player	(08,00,20,00,"REL_CITY_060");
	TA_Follow_Player 	(20,00,08,00,"REL_CITY_060");
};

FUNC VOID Rtn_InSchatzkammer_7709()
{	
	TA_Pick_FP		(08,00,20,00,"REL_CITY_KANAL_027");
	TA_Pick_FP	 	(20,00,08,00,"REL_CITY_KANAL_027");
};
