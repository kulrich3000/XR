instance Mod_1246_RIT_Ritter_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Ritter;
	guild 		= GIL_PAL;
	id 			= 1246;
	voice 		= 12;
	flags       = 0;																	
	npctype		= NPCTYPE_nw_paladin;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 5);																	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ItMw_Schwert_02);
		
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Fighter", Face_N_NormalBart_Grim, BodyTex_N, ITAR_PAL_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 80); 
		
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1246;
};

FUNC VOID Rtn_Start_1246 ()
{
	TA_Practice_Sword	(08,00,23,00,"NW_CITY_PALCAMP_10");
	TA_Smalltalk		(23,00,08,00,"NW_CITY_PALCAMP_14");	
};

FUNC VOID Rtn_Lich_1246 ()
{
	TA_Stand_ArmsCrossed	(07,00,19,00,"NW_CITY_TO_FOREST_03");
	TA_Stand_ArmsCrossed	(19,00,07,00,"NW_CITY_TO_FOREST_03");	
};
