instance Mod_4085_HoherUntoterMagier_NW (Npc_Default)
{
	//-------- primary data --------
	name 		=		"Hoher Untoter Magier";
	Npctype 		=		Npctype_UNTOTERMAGIER;
	guild 		=		GIL_STRF;
	level 		=		80;
	 	
	voice		= 0;
	id 			=		4085;
		
	//-------- abilities --------
	B_SetAttributesToChapter	(self, 4);
	level 		=		80;


	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Relaxed.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung
	Mdl_SetVisualBody (self,"hum_body_Naked0", 15, 0,"Hum_Head_FatBald", 200,  1, ITAR_UntoterMagier);

	Mdl_SetModelFatness(self,0);
	
	B_SetFightSkills	(self, 65);
	B_CreateAmbientInv 	(self);

	fight_tactic	=	FAI_HUMAN_STRONG;

	//-------- Talente --------
	
		
	//-------- inventory --------

	        
	//-------------Daily Routine-------------
	daily_routine = Rtn_start_4085;

	//------------- //MISSIONs-------------
};

FUNC VOID Rtn_start_4085 ()
{
	TA_Stand_WP	(02,00,08,00,"NW_TROLLAREA_RUINS_34");
	TA_Stand_WP	(08,00,02,00,"NW_TROLLAREA_RUINS_34"); 
};