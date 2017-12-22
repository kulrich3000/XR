instance Mod_7288_HS_Drogenminister_REL (Npc_Default)
{
	// ------ NSC ------
	name 		= "Royal Minister of Drugs"; 
	guild 		= GIL_OUT;
	id 			= 7288;
	voice		= 0;
	flags       = 0;
	npctype		= NPCTYPE_MAIN;
	
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 2);															
	
	aivar[AIV_ToughGuy] 			= TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft] 		= TRUE;
	aivar[AIV_IGNORE_Sheepkiller] 	= TRUE;
	aivar[AIV_IgnoresArmor] 		= TRUE;
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ItMw_1h_Bau_Mace); 
		
	// ------ Inventory ------
	// 

	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", Face_B_Normal01, BodyTex_B,ITAR_Hofstaatler);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 30); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7288;
};

FUNC VOID Rtn_Start_7288 ()
{	
	TA_Stand_ArmsCrossed		(08,00,23,00,"REL_340");
	TA_Sleep			(23,00,08,00,"REL_341");		
};
