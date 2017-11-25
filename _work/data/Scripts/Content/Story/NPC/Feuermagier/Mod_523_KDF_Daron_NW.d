INSTANCE Mod_523_KDF_Daron_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "Daron";
	guild 		= GIL_VLK;
	id 			= 523;
	voice 		= 10;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ aivars ------
	aivar[AIV_MagicUser] = MAGIC_ALWAYS;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 5);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;																	
	EquipItem	(self, ItMW_Addon_Stab01);
	
	// ------ Equippte Waffen ------																	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
			
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Thief", Face_N_Raven, BodyTex_N, ITAR_KDF_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 55); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_523;
};

FUNC VOID Rtn_Start_523 ()
{	
	TA_Stand_Guarding		(07,35,11,35,"NW_CITY_MERCHANT_PATH_29_B");
	TA_Stand_Eating 		(11,35,12,05,"NW_CITY_MERCHANT_PATH_28_F");
	TA_Stand_Guarding 		(12,05,12,35,"MARKT");
	TA_Stand_Drinking		(12,35,13,05,"NW_CITY_MERCHANT_PATH_28_D");
	TA_Stand_Eating			(13,05,13,25,"NW_CITY_MERCHANT_PATH_30");
	TA_Stand_Guarding 		(13,25,13,55,"NW_CITY_MERCHANT_PATH_36_B");
	TA_Stand_Guarding		(13,55,18,05,"NW_CITY_MERCHANT_PATH_29_B");
	TA_Stand_Drinking		(18,05,19,05,"NW_CITY_MERCHANT_PATH_28_D");
	TA_Stand_Guarding		(19,05,20,05,"NW_CITY_MERCHANT_PATH_29_B");
	TA_Sit_Throne			(20,05,01,05,"NW_CITY_BED_ZURIS");
    TA_Sleep				(01,05,07,35,"NW_CITY_BED_DARON");
};

FUNC VOID Rtn_GuideToKloster_523()
{
	TA_Guide_Player			(08,00,20,00,"NW_MONASTERY_ENTRY_01");
	TA_Guide_Player			(20,00,08,00,"NW_MONASTERY_ENTRY_01");
};

FUNC VOID Rtn_GuideInKloster_523()
{
	TA_Guide_Player			(08,00,20,00,"NW_MONASTERY_PLACE_03");
	TA_Guide_Player			(20,00,08,00,"NW_MONASTERY_PLACE_03");
};

FUNC VOID Rtn_LifeKloster_523()
{
	TA_Stand_ArmsCrossed		(08,00,20,00,"NW_MONASTERY_ENTRY_01");
	TA_Stand_ArmsCrossed		(20,00,08,00,"NW_MONASTERY_ENTRY_01");
};

FUNC VOID Rtn_City_523()
{
	TA_Smalltalk		(08,00,20,00,"NW_CITY_MERCHANT_PATH_36");
	TA_Smalltalk	(20,00,08,00,"NW_CITY_MERCHANT_PATH_36");
};

FUNC VOID Rtn_Drachen_523()
{
	TA_Stand_ArmsCrossed		(08,00,20,00,"NW_MONASTERY_BRIDGE_06");
	TA_Stand_ArmsCrossed		(20,00,08,00,"NW_MONASTERY_BRIDGE_06");
};

FUNC VOID Rtn_Rasend_523()
{
	TA_Stand_ArmsCrossed		(08,00,20,00,"NW_MONSTERY_HERB_01");
	TA_Stand_ArmsCrossed		(20,00,08,00,"NW_MONSTERY_HERB_01");
};
