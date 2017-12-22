INSTANCE Mod_7146_ASS_Mustafa_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "mustafa"; 
	guild 		= GIL_OUT;
	id 			= 7146;
	voice		= 0;
	flags       = 2;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 6);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ItMw_Katana);														
	EquipItem	(self, ItRw_Runenbogen);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_B_Normal_Sharky, BodyTex_B,ITAR_Assassine_01);	
	Mdl_SetModelFatness	(self,0);
	//Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 100); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7146;
};

FUNC VOID Rtn_Start_7146()
{	
	TA_Sit_Throne 	(07,20,01,20,"WP_ASSASSINE_54");
	TA_Sit_Throne	(01,20,07,20,"WP_ASSASSINE_54");
};

FUNC VOID Rtn_AtKamal_7146()
{	
	TA_Stand_ArmsCrossed 	(07,20,01,20,"WP_ASSASSINE_53");
	TA_Stand_ArmsCrossed	(01,20,07,20,"WP_ASSASSINE_53");
};

FUNC VOID Rtn_Follow_7146()
{	
	TA_Follow_Player 	(07,20,01,20,"WP_ASSASSINE_41");
	TA_Follow_Player	(01,20,07,20,"WP_ASSASSINE_41");
};

FUNC VOID Rtn_AtKisten_7146()
{	
	TA_Stand_ArmsCrossed 	(07,20,01,20,"WP_ASSASSINE_41");
	TA_Stand_ArmsCrossed	(01,20,07,20,"WP_ASSASSINE_41");
};

FUNC VOID Rtn_Schlacht_7146()
{	
	TA_Stand_Guarding 	(07,20,01,20,"WP_ASSASSINE_51");
	TA_Stand_Guarding	(01,20,07,20,"WP_ASSASSINE_51");
};

FUNC VOID Rtn_Tot_7146()
{	
	TA_Stand_Guarding 	(07,20,01,20,"TOT");
	TA_Stand_Guarding	(01,20,07,20,"TOT");
};
