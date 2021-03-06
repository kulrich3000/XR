instance Mod_7518_OUT_Davon_REL (Npc_Default)
{
	// ------ NSC ------
	name 		= "Davon"; 
	guild 		= GIL_OUT;
	id 			= 7518;
	voice 		= 24;
	flags       = 2;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 3);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
 
	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_NormalBart_Senyan, BodyTex_N,ITAR_Vlk_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 40); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7518;
};

FUNC VOID Rtn_Start_7518()
{	
	TA_Practice_Sword	(08,00,22,00,"REL_CITY_382");
	TA_Sleep		(22,00,08,00,"REL_CITY_074");
};

FUNC VOID Rtn_Rattenjagd_7518()
{	
	TA_RunToWP	(08,00,22,00,"REL_CITY_381");
	TA_RunToWP	(22,00,08,00,"REL_CITY_381");
};

FUNC VOID Rtn_FollowToMine_7518()
{	
	TA_Follow_Player	(08,00,20,00,"REL_002");
	TA_Follow_Player	(20,00,08,00,"REL_002");
};