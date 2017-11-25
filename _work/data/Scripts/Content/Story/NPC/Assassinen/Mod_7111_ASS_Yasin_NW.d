INSTANCE Mod_7111_ASS_Yasin_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "Yasin"; 
	guild 		= GIL_OUT;
	id 			= 7111;
	voice 		= 13;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ItMw_1h_Vlk_Sword);														
	EquipItem	(self, ItRw_Assassinenbogen);
	
	// ------ Inventory ------
	CreateInvItems (self, ItMi_Gold, 25);
	CreateInvItems (self, ItFo_Apple, 2);
	CreateInvItems (self, ItFo_Bacon, 1);
	CreateInvItems (self, ItRw_Arrow, 20);
	CreateInvItems (self, ItFo_Milk, 2);
	CreateInvItems (self, ItFo_Mutton, 5);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_B_Normal_Sharky, BodyTex_B,ITAR_Assassine_01);	
	Mdl_SetModelFatness	(self,0);
	//Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 50); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7111;
};

FUNC VOID Rtn_Start_7111()
{	
	TA_Smalltalk_Assassine3 	(07,20,01,20,"WP_ASSASSINE_21");
	TA_Smalltalk_Assassine3		(01,20,07,20,"WP_ASSASSINE_21");
};

FUNC VOID Rtn_Schlacht_7111()
{	
	TA_Stand_Guarding 	(07,20,01,20,"WP_ASSASSINE_12");
	TA_Stand_Guarding	(01,20,07,20,"WP_ASSASSINE_12");
};

FUNC VOID Rtn_Tot_7111()
{	
	TA_Stand_Guarding 	(07,20,01,20,"TOT");
	TA_Stand_Guarding	(01,20,07,20,"TOT");
};

FUNC VOID Rtn_Miliz_7111()
{	
	TA_Stand_Guarding 	(07,20,01,20,"WP_ASSASSINE_08");
	TA_Stand_Guarding	(01,20,07,20,"WP_ASSASSINE_08");
};
