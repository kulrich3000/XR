INSTANCE Mod_7212_NONE_Schlaeger_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "gacek"; 
	guild 		= GIL_OUT;
	id 			= 7212;
	voice 		= 11;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	//-----------AIVARS----------------
	aivar[AIV_ToughGuy] = TRUE; 
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ItMw_Zweihaender); 
	
	
	// ------ Inventory ------

		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Thief", Face_L_Ian, BodyTex_L,ITAR_Sld_L );	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 50); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7212;
};

FUNC VOID Rtn_Start_7212 ()
{	
	TA_Smalltalk_Plaudern	(18,00,06,00,"NW_CITY_KANAL_14");
	TA_Smalltalk_Plaudern	(06,00,18,00,"TOT");
};

FUNC VOID Rtn_Tot_7212()
{	
	TA_Sit_Bench	(08,00,20,00,"NW_CANTHARINSEL_22");
	TA_Sit_Bench	(20,00,08,00,"NW_CANTHARINSEL_22");
};
