instance Mod_949_SRF_Finn_MT (Npc_Default)
{
	// ------ NSC ------
	name 		= "Finlandia";
	guild 		= GIL_NONE;
	id 			= 949;
	voice		= 0;
	flags      	= 0;
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self,3);
	
	// ------ Kampf-Taktik ------
	fight_tactic = FAI_HUMAN_NORMAL;
	
	// ------ Equippte Waffen ------																	
	EquipItem (self, ItMW_2h_Axe_L_01);
		
	// ------ Inventory ------
	B_CreateAmbientInv (self); 
	
	// ------ visuals ------																		
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_NormalBart02, BodyTex_N, ITAR_Prisoner);	
	Mdl_SetModelFatness	(self, -1 );
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 60); 

	// ------ TA anmelden ------
	daily_routine 	= Rtn_Start_949;
};
FUNC VOID Rtn_Start_949 ()
{
  	TA_Stand_Eating 	   (10,00,20,00,"BL_DOWN_RING_04");	
    TA_Smalltalk 	  	   (20,00,02,00,"BL_DOWN_RING_02");	
    TA_Sit_Bench 		   (02,00,10,00,"BL_DOWN_04_BENCH");
};
