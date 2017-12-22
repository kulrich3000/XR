instance Mod_1298_SLD_Organisator_MT (Npc_Default)
{
	//-------- primary data --------
	
	name =					Name_Organisator;
	Npctype =				NPCTYPE_mt_soeldner;
	guild =					GIL_mil;       
	level =					4;

	
	voice		= 0;
	id =					1298;


	//-------- abilities --------
	B_SetAttributesToChapter	(self, 4);
	EquipItem	(self, ItMw_GrobesKurzschwert);

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Relaxed.mds");
	//				body mesh,				head mesh,				hairmesh,	face-tex,	hair-tex,	skin	
	Mdl_SetVisualBody (self,"hum_body_Naked0",1, 2,"Hum_Head_FatBald", 11, 2, SLD_ARMOR_L);
	
	Mdl_SetModelFatness (self, 0);
	
	fight_tactic	=	FAI_HUMAN_STRONG; 
	
	//-------- Talente --------
	
	Npc_SetTalentSkill (self, NPC_TALENT_BOW,1);
	Npc_SetTalentSkill (self, NPC_TALENT_1H,1);	
	
	Npc_SetTalentSkill (self, NPC_TALENT_SNEAK,	1);	
	
	//-------- inventory --------                                    

	
	//-------------Daily Routine-------------

	daily_routine = Rtn_start_1298;

};

FUNC VOID Rtn_start_1298 ()
{
	TA_Smalltalk	(20,00,08,00,"OW_PATH_067");
	TA_Smalltalk	(08,00,20,00,"OW_PATH_067");
};
