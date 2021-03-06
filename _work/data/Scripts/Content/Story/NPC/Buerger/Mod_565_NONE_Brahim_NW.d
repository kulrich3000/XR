INSTANCE Mod_565_NONE_Brahim_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "Brahim"; 
	guild 		= GIL_PAL;
	id 			= 565;
	voice		= 0;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	//-----------AIVARS----------------
	aivar[AIV_ToughGuy] = TRUE; 
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 3);															
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
	
	// ------ Inventory ------
	// H�ndler


		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_CoolPock, BodyTex_N,ITAR_Vlk_L );	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self,30); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_565;
};

FUNC VOID Rtn_Start_565()
{	
	TA_Sit_Bench		(08,00,22,00,"NW_CITY_HABOUR_HUT_01_FRONT");
    TA_Sleep			(22,00,08,00,"NW_CITY_BED_BRAHIM");
};

FUNC VOID Rtn_PortDa_565()
{	
	TA_Sit_Bench		(08,00,22,00,"NW_CITY_HABOUR_HUT_01_FRONT");
    TA_Sleep			(22,00,08,00,"NW_CITY_HOTEL_BED_08");
};