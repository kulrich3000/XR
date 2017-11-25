INSTANCE Mod_510_DMR_Raven_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "kruk";
	guild 		= GIL_DMT;
	id 			= 510;
	voice 		= 10;
	flags      	= 2;
	npctype		= NPCTYPE_MAIN;
	
	level = 50;
	
	attribute[ATR_STRENGTH] 		= 160; 
	attribute[ATR_DEXTERITY] 		= 50;
	attribute[ATR_MANA_MAX] 		= 100;
	attribute[ATR_MANA] 			= 100;
	attribute[ATR_HITPOINTS_MAX]	= 500;
	attribute[ATR_HITPOINTS] 		= 500;

	aivar[AIV_IgnoresFakeGuild] = TRUE;
	aivar[AIV_IgnoresArmor] = TRUE;
	aivar[AIV_EnemyOverride] = TRUE;

	attribute[ATR_MANA_MAX] = 10; //Joly:f�r die Waffe

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem (self, Rabenrecht);  

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Thief", Face_N_Raven, BodyTex_N, ITAR_Raven_Addon);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 100); 

	// ------ TA anmelden ------
	daily_routine 	= Rtn_Rat_510;
};

FUNC VOID Rtn_Rat_510()
{
	TA_Stand_Guarding		(08,00,20,00,"WP_KLOSTER_KELLER_RAT_XARDAS");
	TA_Stand_Guarding		(20,00,08,00,"WP_KLOSTER_KELLER_RAT_XARDAS");
};

FUNC VOID Rtn_Tot_510()
{
	TA_Stand_WP		(08,00,20,00,"TOT");
	TA_Stand_WP		(20,00,08,00,"TOT");
};

FUNC VOID Rtn_Schiff_510()
{
	TA_Stand_Guarding		(08,00,20,00,"SHIP_CREW_04");
	TA_Stand_Guarding		(20,00,08,00,"SHIP_CREW_04");
};
