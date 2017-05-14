instance Mod_1945_Waechter_03_NW (Npc_Default)
{
	//-------- primary data --------
	name 		=		"W�chter";
	Npctype 		=		Npctype_main;
	guild 		=		GIL_out;
	level 		=		20;
	 	
	voice		= 0;
	id 			=		1945;
		
	//-------- abilities --------
	B_SetAttributesToChapter	(self, 1);

	level = 5;


	EquipItem	(self, ItMw_1h_Sld_Sword);

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Relaxed.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung
	Mdl_SetVisualBody (self,"hum_body_Naked0", 1, 1,"Hum_Head_FatBald", 28,  1, ITAR_RyansWache);

	Mdl_SetModelFatness(self,0);
	
	B_SetFightSkills	(self, 10);
	B_CreateAmbientInv 	(self);

	fight_tactic	=	FAI_HUMAN_COWARD;

	//-------- Talente --------
	
		
	//-------- inventory --------

	        
	//-------------Daily Routine-------------
	daily_routine = Rtn_start_1945;

	//------------- //MISSIONs-------------
};

FUNC VOID Rtn_start_1945 ()
{
	TA_Stand_ArmsCrossed	(02,00,08,00,"NW_MAGECAVE_05");
	TA_Stand_ArmsCrossed	(08,00,02,00,"NW_MAGECAVE_05"); 
};

FUNC VOID Rtn_Tot_1945 ()
{
	TA_Stand_ArmsCrossed	(02,00,08,00,"TOT");
	TA_Stand_ArmsCrossed	(08,00,02,00,"TOT"); 
};