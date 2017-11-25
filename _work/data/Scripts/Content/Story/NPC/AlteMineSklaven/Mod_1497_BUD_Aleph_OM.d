instance Mod_1497_BUD_Aleph_OM (Npc_Default)
{
	//-------- primary data --------
	
	name =							"Alef";
	npctype =						npctype_main;
	guild =							GIL_OUT;      
	level =							5;	
	voice =							5;
	id =							1497;


	//-------- abilities --------

	attribute[ATR_STRENGTH] =		25;
	attribute[ATR_DEXTERITY] =		15;
	attribute[ATR_MANA_MAX] =		0;
	attribute[ATR_MANA] =			0;
	attribute[ATR_HITPOINTS_MAX] =	100;
	attribute[ATR_HITPOINTS] =		100;

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Tired.mds");
	//				body mesh,				head mesh,				hairmesh,	face-tex,	hair-tex,	skin	
	Mdl_SetVisualBody (self,"hum_body_Naked0",3,1,"Hum_Head_Thief", 71,  1, VLK_ARMOR_M);

	Mdl_SetModelFatness (self, 0);
	
	fight_tactic	=	FAI_HUMAN_COWARD; 

	//-------- Talents --------                  																
	B_SetFightSkills (self, 30); 
	B_SetAttributesToChapter (self, 2);
	
	//-------- inventory --------    
	CreateInvItems	(self, ItKe_Santino, 1);
	CreateInvItems	(self, ItMi_Nugget, 26);
	CreateInvItems	(self, ItMw_2H_Axe_L_01, 1);
	CreateInvItems	(self, ItFo_Water, 1);
	CreateInvItems	(self, ItFo_Cheese, 1);

	

	//-------------Daily Routine-------------
	daily_routine = Rtn_start_1497;
};

FUNC VOID Rtn_start_1497 ()
{   
	TA_Pick_Ore	(16,00,04,00,"OM_049");
	TA_Pick_Ore	(04,00,16,00,"OM_049");
};
