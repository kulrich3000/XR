instance Mod_1339_PSINOV_Novize_MT (Npc_Default)
{
	//-------- primary data --------
	name 		=		Name_Novize;
	Npctype 	=		Npctype_mt_sumpfnovize;
	guild 		=		GIL_out;
	level 		=		3;
	flags 		=		0;
	
	voice 		=		3;
	id 			=		1339;
		
	//-------- abilities --------
	attribute[ATR_STRENGTH] 		=	10;
	attribute[ATR_DEXTERITY] 		=	10;
	attribute[ATR_MANA_MAX] 		=	0;
	attribute[ATR_MANA] 			=	0;
	attribute[ATR_HITPOINTS_MAX] 	=	76;
	attribute[ATR_HITPOINTS] 		=	76;

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Relaxed.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung
	Mdl_SetVisualBody (self,"hum_body_Naked0", 1, 1,"Hum_Head_Psionic", 34,  1, NOV_ARMOR_L);

	Mdl_SetModelFatness(self,0);
	
	fight_tactic	=	FAI_HUMAN_COWARD;

	//-------- Talente --------
	
		
	//-------- inventory --------

	
	
	//-------------Daily Routine-------------
	daily_routine = Rtn_start_1339;
};

FUNC VOID Rtn_start_1339 ()
{
	TA_Sleep 	(23,05,07,30,"PSI_27_HUT_IN");
	TA_Listen	(07,30,23,05,"PSI_PLATFORM_1");	
};

FUNC VOID Rtn_Sumpfmensch_1339 ()
{
	TA_Sit_Campfire	(22,00,07,00,"PSI_PLACE");
	TA_Listen	(07,00,22,00,"PSI_PLATFORM_1");	
};

FUNC VOID Rtn_Sumpfmensch2_1339 ()
{
	TA_Smalltalk_Sumpfmensch01	(22,00,07,00,"PSI_PATH_2_6");	
	TA_Listen	(07,00,22,00,"PSI_PLATFORM_1");	
};

FUNC VOID Rtn_Tot_1339 ()
{
	TA_Stand_WP 	(08,00,20,00,"TOT");
	TA_Stand_WP 	(20,00,08,00,"TOT");
};
