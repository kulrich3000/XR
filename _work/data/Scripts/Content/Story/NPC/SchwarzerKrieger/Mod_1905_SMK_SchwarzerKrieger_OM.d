instance Mod_1905_SMK_SchwarzerKrieger_OM (Npc_Default)
{
	//-------- primary data --------
	
	name 		=	NAME_schwarzerkrieger;
	npctype		= 	NPCTYPE_om_schwarzerkrieger;
	guild 		=	GIL_kdf;
	level 		=	10;
	voice		= 0;
	id 			=	1905;
		
	//-------- abilities --------
	B_SetAttributesToChapter	(self, 5);
	EquipItem	(self, ItMw_BeliarsRache);

	//-------- visuals --------
	// 			animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Militia.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung	
	Mdl_SetVisualBody (self,"hum_body_Naked0", 0, 1,"Hum_Head_FatBald", 19,  1, itar_smk_L);
        
    	
    	fight_tactic	=	FAI_HUMAN_STRONG;

	//-------- Talente -------- 
				
	Npc_SetTalentSkill (self, NPC_TALENT_1H,1);
	Npc_SetTalentSkill (self, NPC_TALENT_1H,1);		
			
	//-------- inventory --------	        
	
	//-------------Daily Routine-------------
	daily_routine = Rtn_start_1905;
};

FUNC VOID Rtn_start_1905 ()
{
    TA_Stand_Guarding (00,00,06,00,"OM_CAVE1_63");
	TA_Stand_Guarding (06,00,24,00,"OM_CAVE1_63");
	
};




