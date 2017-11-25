instance Mod_7001_HoherUntoterMagier_AW (Npc_Default)
{
	//-------- primary data --------
	name 		=		"High Undead Mage";
	Npctype 		=		Npctype_UNTOTERMAGIER;
	guild 		=		GIL_STRF;
	level 		=		80;
	 	
	voice 		=		2;
	id 			=		7001;
		
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
	daily_routine = Rtn_start_7001;

	//------------- //MISSIONs-------------
};

FUNC VOID Rtn_start_7001 ()
{
	TA_Stand_WP	(02,00,08,00,"ADW_PIRATECAMP_CAVE3_04");
	TA_Stand_WP	(08,00,02,00,"ADW_PIRATECAMP_CAVE3_04"); 
};
