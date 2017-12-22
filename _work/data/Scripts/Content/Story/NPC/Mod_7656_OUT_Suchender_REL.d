instance Mod_7656_OUT_Suchender_REL (Npc_Default)
{
	//-------- primary data --------
	
	name 		=	"poszukiwacz";
	npctype		= 	npctype_main;
	guild 		=	GIL_STRF;
	level 		=	10;
	voice		= 0;
	id 			=	7656;
	flags = 0;
		
	//-------- abilities --------
	B_SetAttributesToChapter (self, 6);

	//-------- visuals --------
	// 			animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Militia.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung	
	Mdl_SetVisualBody (self,"hum_body_Naked0", 0, 3,"Hum_Head_FatBald", 2,  1, ITAR_DEMENTOR);
    	Mdl_SetModelFatness(self,0);
    	
    	fight_tactic	=	FAI_HUMAN_STRONG;		
			
	//-------- inventory --------

	B_SetFightSkillS	(self, 100);

	EquipItem	(self, ItMw_Ritualdolch_Seuche);
	
	//-------------Daily Routine-------------
	daily_routine = Rtn_start_7656;
};

FUNC VOID Rtn_start_7656 ()
{
	TA_Stand_WP (08,00,20,00,"REL_MOOR_037");
	TA_Stand_WP (20,00,08,00,"REL_MOOR_037");
};
