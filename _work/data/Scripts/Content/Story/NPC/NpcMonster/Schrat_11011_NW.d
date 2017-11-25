INSTANCE Schrat_11011_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "demon";	
	guild 		= GIL_DMT;
	id 			= 11011;
	voice 		= 10;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	level = 40;
	
	// ------ Attribute ------
	attribute[ATR_HITPOINTS_MAX] = 500;
	attribute[ATR_HITPOINTS] = 500;
	attribute[ATR_STRENGTH] = 250;	

	self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
	EquipItem (self, itmw_1h_bau_mace);
	
	// ------ Inventory ------
	// H�ndler
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Psionic.", 219, 26, NO_ARMOR);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 35); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_11011;
};

FUNC VOID Rtn_Start_11011 ()
{	
	TA_Stand_ArmsCrossed	(08,00,22,00,"NW_FOREST_TO_DRAGON_07");
	TA_Stand_ArmsCrossed	(22,00,08,00,"NW_FOREST_TO_DRAGON_07");
};

FUNC VOID Rtn_Lebt_11011 ()
{	
	TA_Sit_Campfire	(08,00,22,00,"NW_FOREST_TO_DRAGON_06");
	TA_Sit_Campfire	(22,00,08,00,"NW_FOREST_TO_DRAGON_06");
};
