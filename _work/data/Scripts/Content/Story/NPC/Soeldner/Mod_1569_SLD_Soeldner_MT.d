instance Mod_1569_SLD_Soeldner_MT (Npc_Default)
{
	//-------- primary data --------
	
	name =							Name_Soeldner;
	Npctype =						NpcType_mt_soeldner;
	guild =							GIL_mil;       
	level =							16;
	
	voice		= 0;
	id =							1569;


	//-------- abilities --------
	B_SetAttributesToChapter	(self, 4);
	EquipItem	(self, ItMw_GrobesKurzschwert);


	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Militia.mds");
	//				body mesh,				head mesh,				hairmesh,	face-tex,	hair-tex,	skin	
	Mdl_SetVisualBody (self,"hum_body_Naked0",0, 1,"Hum_Head_FatBald", 49, 1,ITAR_SLD_M);
	
	Mdl_SetModelFatness (self, 0);
	
	fight_tactic	=	FAI_HUMAN_STRONG; 
	
	//-------- Talente --------
	
	Npc_SetTalentSkill (self, NPC_TALENT_1H,1);
	Npc_SetTalentSkill (self, NPC_TALENT_2H,1);
	

	//-------- inventory --------                                    

	
	
	//-------------Daily Routine-------------

	daily_routine = Rtn_FMCstart_1569;

};

FUNC VOID Rtn_FMCstart_1569 ()
{
	TA_Stand_Guarding	(01,00,13,00,	"FMC_HUT10_OUT");
	TA_Stand_Guarding	(13,00,01,00,	"FMC_HUT10_OUT");
};










