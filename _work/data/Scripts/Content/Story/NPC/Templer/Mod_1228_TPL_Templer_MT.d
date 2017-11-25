instance Mod_1228_TPL_Templer_MT (Npc_Default)
{
	//-------- primary data --------
	name =							Name_Templer;
	npctype =						NPCTYPE_mt_templer;
	guild =							GIL_out;
	level =							17;
	
	voice =							13;
	id =							1228;
		
	//-------- abilities --------
	attribute[ATR_STRENGTH] =		130;
	attribute[ATR_DEXTERITY] =		65;
	attribute[ATR_MANA_MAX] =		0;
	attribute[ATR_MANA] =			0;
	attribute[ATR_HITPOINTS_MAX] =	244;
	attribute[ATR_HITPOINTS] =		244;

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Mage.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung	
	Mdl_SetVisualBody (self,"hum_body_Naked0", 1, 1 ,"Hum_Head_Psionic", 64 ,  1, TPL_ARMOR_M);

	Mdl_SetModelFatness(self,0);
	
	fight_tactic	=	FAI_HUMAN_STRONG;

	//-------- Talente -------- 

	Npc_SetTalentSkill (self, NPC_TALENT_2H,1);
	
	//-------- inventory --------
	
	EquipItem (self, ItMw_2H_Sword_Light_02);
	
	
	//------------- //MISSIONs-------------

	//-------------Daily Routine-------------
	daily_routine = Rtn_start_1228;
};

FUNC VOID Rtn_start_1228 () //Steg 3 - Insel 1
{
	TA_Stand_Guarding		(06,00,07,00,"PSI_GUARD3_MOVEMENT2");
	TA_Smalltalk	(07,00,08,00,"PSI_SWAMP_1");
	TA_Stand_Guarding		(08,00,09,00,"PSI_GUARD3_MOVEMENT2");
	TA_Smalltalk	(09,00,10,00,"PSI_SWAMP_1");
	
	TA_Stand_Guarding		(10,00,11,00,"PSI_GUARD3_MOVEMENT2");
	TA_Smalltalk	(11,00,12,00,"PSI_SWAMP_1");
	TA_Stand_Guarding		(12,00,13,00,"PSI_GUARD3_MOVEMENT2");
	TA_Smalltalk	(13,00,14,00,"PSI_SWAMP_1");
	
	TA_Stand_Guarding		(14,00,15,00,"PSI_GUARD3_MOVEMENT2");
	TA_Smalltalk	(15,00,16,00,"PSI_SWAMP_1");
	TA_Stand_Guarding		(16,00,17,00,"PSI_GUARD3_MOVEMENT2");
	TA_Smalltalk	(17,00,18,00,"PSI_SWAMP_1");
	
	TA_Stand_Guarding		(18,00,19,00,"PSI_GUARD3_MOVEMENT2");
	TA_Smalltalk	(19,00,20,00,"PSI_SWAMP_1");
	TA_Stand_Guarding		(20,00,21,00,"PSI_GUARD3_MOVEMENT2");
	TA_Smalltalk	(21,00,22,00,"PSI_SWAMP_1");
	
	TA_Stand_Guarding		(22,00,23,00,"PSI_GUARD3_MOVEMENT2");
	TA_Smalltalk	(23,00,00,00,"PSI_SWAMP_1");
	TA_Stand_Guarding		(00,00,01,00,"PSI_GUARD3_MOVEMENT2");
	TA_Smalltalk	(01,00,02,00,"PSI_SWAMP_1");
	
	TA_Stand_Guarding		(02,00,03,00,"PSI_GUARD3_MOVEMENT2");
	TA_Smalltalk	(03,00,04,00,"PSI_SWAMP_1");
	TA_Stand_Guarding		(04,00,05,00,"PSI_GUARD3_MOVEMENT2");
	TA_Smalltalk	(05,00,06,00,"PSI_SWAMP_1");
};

FUNC VOID Rtn_Tot_1228 ()
{
	TA_Stand_WP 	(08,00,20,00,"TOT");
	TA_Stand_WP 	(20,00,08,00,"TOT");
};
