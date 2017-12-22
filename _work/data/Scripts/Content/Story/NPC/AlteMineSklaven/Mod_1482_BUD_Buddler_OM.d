instance Mod_1482_BUD_Buddler_OM (Npc_Default)
{
	//-------- primary data --------
	
	name =							Name_Buddler;
	npctype =						npctype_om_buddler;
	guild =							GIL_OUT;      
	level =							3;
	
	
	voice =							0;
	id =							1482;


	//-------- abilities --------
	
	attribute[ATR_STRENGTH] =		15;
	attribute[ATR_DEXTERITY] =		10;
	attribute[ATR_MANA_MAX] =		0;
	attribute[ATR_MANA] =			0;
	attribute[ATR_HITPOINTS_MAX] =	76;
	attribute[ATR_HITPOINTS] =		76;

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Tired.mds");
	//				body mesh,				head mesh,				hairmesh,	face-tex,	hair-tex,	skin	
	Mdl_SetVisualBody (self,"hum_body_Naked0",3,1,"Hum_Head_Fighter", 70,  1, VLK_ARMOR_L);

	Mdl_SetModelFatness (self, 0);
	
	fight_tactic	=	FAI_HUMAN_COWARD; 
	//-------- Talents  --------     																
	B_SetFightSkills (self, 30); 
	B_SetAttributesToChapter (self, 2);                               

	//-------- inventory --------                                    

	

	//-------------Daily Routine-------------
	daily_routine = Rtn_start_1482;
};

FUNC VOID Rtn_start_1482 ()
{
	TA_Pick_Ore		(00,00,23,00,"OM_023");
	TA_Pick_Ore		(23,00,24,00,"OM_023");
};

FUNC VOID Rtn_Pause_1482 ()
{
	TA_Stand_Eating		(00,00,23,00,"OM_023");
	TA_Stand_Eating		(23,00,24,00,"OM_023");
};
