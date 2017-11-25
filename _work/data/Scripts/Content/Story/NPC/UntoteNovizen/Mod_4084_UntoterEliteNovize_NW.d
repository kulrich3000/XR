instance Mod_4084_UntoterEliteNovize_NW (Npc_Default)
{
	//-------- primary data --------
	name 		=		"Undead Elite Novice";
	Npctype 		=		Npctype_UNTOTERNOVIZE;
	guild 		=		GIL_STRF;
	level 		=		50;
	 	
	voice 		=		2;
	id 			=		4084;
		
	//-------- abilities --------
	B_SetAttributesToChapter	(self, 4);
	level 		=		50;


	EquipItem	(self, ItMw_1h_Nov_Mace);

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Relaxed.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung
	Mdl_SetVisualBody (self,"hum_body_Naked0", 15, 0,"Hum_Head_FatBald", 201,  1, ITAR_UntoterNovize);

	Mdl_SetModelFatness(self,0);
	
	B_SetFightSkills	(self, 65);
	B_CreateAmbientInv 	(self);

	fight_tactic	=	FAI_HUMAN_STRONG;

	//-------- Talente --------
	
		
	//-------- inventory --------

	        
	//-------------Daily Routine-------------
	daily_routine = Rtn_start_4084;

	//------------- //MISSIONs-------------
};

FUNC VOID Rtn_start_4084 ()
{
	TA_Stand_WP	(02,00,08,00,"NW_TROLLAREA_RUINS_34");
	TA_Stand_WP	(08,00,02,00,"NW_TROLLAREA_RUINS_34"); 
};
