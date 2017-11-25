instance Mod_1987_PSIGUR_Guru_FI (Npc_Default)
{
	//-------- primary data --------
	name 		=		"Fanatic Guru";
	Npctype 	=		NPCTYPE_Main;
	guild 		=		GIL_DMT;
	level 		=		28;
	
	voice 		=		12;
	id 			=		1987;
		
	///-------- abilities --------
	attribute[ATR_STRENGTH] 		=	70;
	attribute[ATR_DEXTERITY] 		=	60;
	attribute[ATR_MANA_MAX] 		=	50;
	attribute[ATR_MANA] 			=	50;
	attribute[ATR_HITPOINTS_MAX] 	=	376;
	attribute[ATR_HITPOINTS] 		=	376;

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Mage.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung	
	Mdl_SetVisualBody (self,"hum_body_Naked0", 1, 1 ,"Hum_Head_Psionic", 166,  1, ITAR_GURUFANATIKER);

	
	Mdl_SetModelFatness(self,0);

	//-------- Talente --------
	
	//-------- inventory --------
	
	EquipItem (self, Oruns_Keule);
	B_SetAttributesToChapter (self, 6);
	//-------------Daily Routine-------------
	daily_routine = Rtn_start_1987;
	fight_tactic	=	FAI_HUMAN_MAGE;
};

FUNC VOID Rtn_start_1987 ()
{
    TA_Stand_ArmsCrossed			(07,00,00,00,"FI_72");
    TA_Stand_ArmsCrossed		(00,00,07,00,"FI_72");
};

FUNC VOID Rtn_sleeper_1987 ()
{
    TA_Pray_Sleeper_FP			(07,00,00,00,"FI_72");
    TA_Pray_Sleeper_FP		(00,00,07,00,"FI_72");
};
