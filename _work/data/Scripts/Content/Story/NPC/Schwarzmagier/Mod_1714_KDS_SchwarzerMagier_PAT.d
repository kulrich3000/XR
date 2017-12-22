instance Mod_1714_KDS_SchwarzerMagier_PAT (Npc_Default)
{
	//-------- primary data --------
	
	name =							Name_SchwarzerMagier;
	npctype =						npctype_PAT_SchwarzerMagier;
	guild =							GIL_KDF;      
	level =							5;
	
	
	voice		= 0;
	id =							1714;


	//-------- abilities --------
	B_SetAttributesToChapter	(self, 5);
	
	aivar[AIV_MagicUser] = MAGIC_ALWAYS;

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Militia.mds");
	//				body mesh,				head mesh,				hairmesh,	face-tex,	hair-tex,	skin	
	Mdl_SetVisualBody (self,"hum_body_Naked0",1,1,"Hum_Head_Fighter", 73,  1, SCHWARZMAGIERROBE);

	Mdl_SetModelFatness (self, 0);
	
	fight_tactic	=	FAI_HUMAN_STRONG; 
	
	//-------- Talents  --------    																
	B_SetFightSkills (self, 40); 																		
	EquipItem	(self, ItMW_BeliarStab);                               
	
	//-------- inventory --------                                    

	
	//-------------Daily Routine-------------
	daily_routine = Rtn_start_1714;
};

FUNC VOID Rtn_start_1714 ()
{
	TA_Circle		(21,00,04,00,"WP_PAT_LAGER_03_06");
    TA_Circle	    (04,00,21,00,"WP_PAT_LAGER_03_06");	
};

FUNC VOID Rtn_Patherion_1714 ()
{
	TA_Potion_Alchemy		(21,00,04,00,"WP_PAT_WEG_94");
    TA_Potion_Alchemy	    (04,00,21,00,"WP_PAT_WEG_94");	
};
